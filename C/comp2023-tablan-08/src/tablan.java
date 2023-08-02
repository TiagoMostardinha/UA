import java.io.FileWriter;
import java.io.IOException;

public class tablan<T>{
    private int rows;
    private int columns;
    private Object[][] data;
    boolean hasHeader;
    private T[] headers;

    public tablan(boolean isCol,T...headers) {

        if(isCol){
            this.rows = headers.length;
            this.columns = 1;
            for(int i = 0; i < headers.length; i++){
                data[0][i] = headers[i];
            }
        }else{
            this.rows = 1;
            this.columns = headers.length;
            data = new Object[rows][headers.length];

        }


    }

    public int getRows() {
        return rows;
    }

    public int getColumns() {
        return columns;
    }

    public Object getData(int row, int column) {
        return data[row][column];
    }

    public void setData(int row, int column, Object value) {
        data[row][column] = value;
    }

    public void addRow(Object[] rowData) {
        if (rowData.length != columns) {
            throw new IllegalArgumentException("Invalid row data. Number of columns mismatch.");
        }
        Object[][] newData = new Object[rows + 1][columns];
        for (int i = 0; i < rows; i++) {
            newData[i] = data[i];
        }
        newData[rows] = rowData;
        data = newData;
        rows++;
    }

    public void printTable() {
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < columns; j++) {
                if(j < columns -1){
                    System.out.print(data[i][j] + ",");
                }else{
                    System.out.print(data[i][j]);
                }
            }
            System.out.println();
        }
    }

    public void printAsCSV(String fileName) {
        try (FileWriter writer = new FileWriter(fileName)) {
            for (int i = 0; i < rows; i++) {
                for (int j = 0; j < columns; j++) {
                    writer.append(data[i][j].toString());
                    if (j != columns - 1) {
                        writer.append(",");
                    }
                }
                writer.append(System.lineSeparator());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void printHeader() {
        for (int j = 0; j < columns; j++) {
            System.out.print(data[0][j] + "\t");
        }
        System.out.println();
    }

    public void addHeader(Object[] headerData) {
        if (headerData.length != columns) {
            throw new IllegalArgumentException("Invalid header data. Number of columns mismatch.");
        }else if(hasHeader){
            for (int j = 0; j < columns; j++) {
                if(data[0][j] == ""){
                    data[0][j] = headerData[j];
                }
            }
        }else{
            Object[][] newData = new Object[rows + 1][columns];
            newData[0] = headerData;
            System.arraycopy(data, 0, newData, 1, rows);
            data = newData;
            rows++;
            hasHeader = true;
        }
    }

    public void copyColumn(tablan sourceTable, String sourceColumnName) {
        int sourceColumnIndex = -1;
    
        for (int j = 0; j < sourceTable.getColumns(); j++) {
            if (sourceTable.getData(0, j).equals(sourceColumnName)) {
                sourceColumnIndex = j;
                break;
            }
        }
    
        if (sourceColumnIndex == -1) {
            throw new IllegalArgumentException("Invalid source column name.");
        }
    
        if (sourceTable.getRows() != rows) {
            throw new IllegalArgumentException("Source and destination tables must have the same number of rows.");
        }
    
        int destinationColumnIndex = 0;
        boolean columnFound = false;
    
        while (!columnFound && destinationColumnIndex < columns) {
            for (int i = 0; i < rows; i++) {
                if (getData(i, destinationColumnIndex) == null) {
                    columnFound = true;
                    break;
                }
            }
    
            if (!columnFound) {
                destinationColumnIndex++;
            }
        }
    
        if (!columnFound) {
            throw new IllegalStateException("No available column in the destination table.");
        }
    
        for (int i = 0; i < rows; i++) {
            Object value = sourceTable.getData(i, sourceColumnIndex);
            setData(i, destinationColumnIndex, value);
        }
    }
    
}
