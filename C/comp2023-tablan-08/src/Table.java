import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.function.*;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

class Table<T> implements Cloneable {
    private String TableName;
    private LinkedHashMap<String, ArrayList<T>> data = new LinkedHashMap<String, ArrayList<T>>();
    private HashMap<String, String> varTable = new HashMap<String, String>();
    private HashMap<String, Object> lambdaMap = new HashMap<>();

    // Constructor
    public Table(String... newColumn) {
        if (newColumn.length == 0) {
            System.out.println("Empty Table");
            return;
        }

        for (String col : newColumn) {
            createColumn(col);
        }
    }

    private void createColumn(String col) {
        String[] infoCol = col.split("\t");
        this.varTable.put(infoCol[0], col);

        if (infoCol[1].equals("text")) {
            this.data.put(col, (ArrayList<T>) new ArrayList<String>());
        } else if (infoCol[1].equals("integer")) {
            this.data.put(col, (ArrayList<T>) new ArrayList<Integer>());
        } else if (infoCol[1].equals("real")) {
            this.data.put(col, (ArrayList<T>) new ArrayList<Double>());
        } else {
            throw new IllegalArgumentException("Invalid type");
        }
    }

    // Gets var from varTable
    public String getVar(String key) {
        return varTable.get(key);
    }

    // Gets header from key
    private String getHeader(String key) {
        String[] varSplit = key.split("\t", -1);
        if (varSplit[3].isEmpty()) {
            return "";
        }
        return varSplit[3];
    }

    // Rename header of var
    public void renameHeader(String key, String header) {
        String var = getVar(key);

        String[] varSplit = var.split("\t");
        String newVar = varSplit[0] + "\t" + varSplit[1] + "\t \t " + header;

        varTable.put(key, newVar);
        data.put(newVar, data.get(var));
        data.remove(var);
    }

    // Add row to table
    public void addRow(Object[] row) {
        if (row.length == 0) {
            row = new Object[data.size()];
            for (int i = 0; i < row.length; i++) {
                row[i] = null;
            }
        }

        int i = 0;
        for (String key : data.keySet()) {
            try {
                data.get(key).add((T) row[i]);

            } catch (Exception e) {
                data.get(key).add(null);
            }
            i++;
        }

        fillLambdaTable();
    }

    private void fillLambdaTable() {
        for (String key : data.keySet()) {
            String lambda = key.split("\t", -1)[2];
            System.out.println(lambda);
            if (!lambda.isEmpty()) {

                //print what class lambdaMap.get(lambda) is
                this.doLambda((BiFunction<T, T, T>)lambdaMap.get(lambda), "n1", "n2");
                

            }
        }
    }

    // gets index from the column
    public Integer getIndex(String var) {
        return new ArrayList<String>(data.keySet()).indexOf(this.getVar(var));
    }

    // Get row from table
    public Object[] getRow(int index) {
        Object[] row = new Object[data.size()];
        int i = 0;
        for (String key : data.keySet()) {
            row[i] = data.get(key).get(index);
            i++;
        }
        return row;
    }

    // Get all row from table
    public ArrayList<Object[]> getAllRow() {
        ArrayList<Object[]> allRow = new ArrayList<Object[]>();
        for (int i = 0; i < this.getLength(); i++) {
            allRow.add(getRow(i));
        }
        return allRow;
    }

    // Get column from table
    public ArrayList<T> getColumn(String key) {
        return data.get(getVar(key));
    }

    // Add column to table
    public void addColumn(String var, ArrayList<T> column) {
        if (varTable.containsKey(var)) {
            this.data.put(getVar(var), column);
        } else {
            createColumn(var);
            this.data.put(var, column);
        }
    }

    // Set TableName
    public void setName(String tname) {
        this.TableName = tname;
    }

    // Get Length of Column
    public int getLength() {
        return data.get(data.keySet().toArray()[0]).size();
    }

    public void printTable() {
        StringBuilder view = new StringBuilder();

        view.append("|").append(TableName).append("|\n");

        // Calculate the maximum width for each column
        HashMap<String, Integer> columnWidths = new HashMap<>();
        for (String key : data.keySet()) {
            int maxWidth = getHeader(key).length();
            for (T value : data.get(key)) {
                try {
                    maxWidth = Math.max(maxWidth, value.toString().length());
                } catch (NullPointerException e) {
                    maxWidth = Math.max(maxWidth, 0);
                }
            }
            columnWidths.put(key, maxWidth);
        }

        // Add header row to the output
        view.append("|");
        for (String key : data.keySet()) {
            view.append(String.format("%-" + columnWidths.get(key) + "s", getHeader(key))).append("|");
        }
        view.append("\n");

        // get max length of column
        int max = 0;
        for (ArrayList<T> value : data.values()) {
            if (value.size() > max) {
                max = value.size();
            }
        }

        for (int i = 0; i < max; i++) {
            view.append("|");
            for (String key : data.keySet()) {
                // check if list is not empty
                if (!data.get(key).isEmpty() && i < data.get(key).size()) {
                    T cellValue = data.get(key).get(i);
                    String cellText = (cellValue == null) ? "" : cellValue.toString(); // Check if the value is null,
                                                                                       // and use an empty string if it
                                                                                       // is
                    view.append(String.format("%-" + columnWidths.get(key) + "s", cellText)).append("|");
                } else {
                    view.append(String.format("%-" + columnWidths.get(key) + "s", "")).append("|");
                }
            }
            view.append("\n");
        }

        System.out.print(view.toString());
    }

    // if t.name + 1 then t.name + " ", if t.name + 2 then t.name + " "
    // if 1 + t.name then " " + t.name, if 2 + t.name then " " + t.name
    public void printTable(int... padding) {
        StringBuilder view = new StringBuilder();

        view.append("|").append(TableName).append("|\n");

        // Calculate the maximum width for each column
        HashMap<String, Integer> columnWidths = new HashMap<>();
        for (String key : data.keySet()) {
            int maxWidth = getHeader(key).length();
            for (T value : data.get(key)) {
                try {
                    maxWidth = Math.max(maxWidth, value.toString().length());
                } catch (NullPointerException e) {
                    maxWidth = Math.max(maxWidth, 0);
                }
            }
            columnWidths.put(key, maxWidth);
        }

        // Add header row to the output
        view.append("|");
        for (String key : data.keySet()) {
            view.append(String.format("%" + padding[0] + "s%-" + columnWidths.get(key) + "s", "", getHeader(key)))
                    .append("|");
        }
        view.append("\n");

        // get max length of column
        int max = 0;
        for (ArrayList<T> value : data.values()) {
            if (value.size() > max) {
                max = value.size();
            }
        }

        for (int i = 0; i < max; i++) {
            view.append("|");
            for (String key : data.keySet()) {
                // check if list is not empty
                if (!data.get(key).isEmpty() && i < data.get(key).size()) {
                    T cellValue = data.get(key).get(i);
                    String cellText = (cellValue == null) ? "" : cellValue.toString();
                    view.append(String.format("%" + padding[1] + "s%-" + columnWidths.get(key) + "s", "", cellText))
                            .append("|");
                } else {
                    view.append(String.format("%" + padding[1] + "s%-" + columnWidths.get(key) + "s", "", ""))
                            .append("|");
                }
            }
            view.append("\n");
        }

        System.out.print(view.toString());
    }

    public void readAsCSV(String path) throws IOException {
        BufferedReader reader = new BufferedReader(new FileReader("../examples/" + path));
    
        String line;
        ArrayList<T> headers = new ArrayList<>();
        String[] fields = reader.readLine().split(",|;");
        for (String field : fields) {
            headers.add((T) field);
        }
    
        ArrayList<ArrayList<T>> col = new ArrayList<>();
        while ((line = reader.readLine()) != null) {
            fields = line.split(",|;");
    
            if (col.size() == 0) {
                for (String field : fields) {
                    ArrayList<T> temp = new ArrayList<>();
                    col.add(temp);
                }
            }
    
            for (int i = 0; i < fields.length; i++) {
                col.get(i).add((T) fields[i]);
            }
        }
        reader.close();
    
        for (int i = 0; i < col.size(); i++) {
            String key = "key\tstring\t \t" + headers.get(i);
            this.data.put(key, col.get(i));
        }
    }

   
    // public void processColumn(Object[] args) {
    //     System.out.println("dfgdfsgsrgsrgerg");
    //     if (args.length == 2) {
    //         String columnKey = args[0].toString();
    //         String appendString = args[1].toString();
    //         ArrayList<T> column = getColumn(columnKey);
    //         ArrayList<T> updatedColumn = new ArrayList<T>();
        
    //         for (T value : column) {
    //             if (value == null) {
    //                 updatedColumn.add(null);
    //             } else {
    //                 String updatedValue = value.toString() + appendString;
    //                 updatedColumn.add((T) updatedValue);
    //             }
    //         }
        
    //         // Update the column with the modified values
    //         data.put(getVar(columnKey), updatedColumn);
    //     } else if (args.length == 3) {
    //         String columnKey = args[0].toString();
    //         String operation = args[1].toString();
    //         Double operand = Double.parseDouble(args[2].toString());
            
    //         ArrayList<T> column = getColumn(columnKey);
    
    //         for (int i = 0; i < column.size(); i++) {
    //             T value = column.get(i);
    //             if (value == null) {
    //                 continue;
    //             }
        
    //             if (value instanceof Number) {
    //                 Number numberValue = (Number) value;
        
    //                 if (value instanceof Integer) {
    //                     int intValue = numberValue.intValue();
    //                     switch (operation) {
    //                         case "+":
    //                             column.set(i, (T) Double.valueOf(intValue +  operand));
    //                             break;
    //                         case "-":
    //                             column.set(i, (T) Double.valueOf(intValue -  operand));
    //                             break;
    //                         case "*":
    //                             column.set(i, (T) Double.valueOf(intValue *  operand));
    //                             break;
    //                         case "/":
    //                             column.set(i, (T) Double.valueOf(intValue /  operand));
    //                             break;
    //                         default:
    //                             throw new IllegalArgumentException("Invalid operation: " + operation);
    //                     }
    //                 } else if (value instanceof Double) {
    //                     double doubleValue = numberValue.doubleValue();
    //                     switch (operation) {
    //                         case "+":
    //                             column.set(i, (T) Double.valueOf(doubleValue + operand));
    //                             break;
    //                         case "-":
    //                             column.set(i, (T) Double.valueOf(doubleValue - operand));
    //                             break;
    //                         case "*":
    //                             column.set(i, (T) Double.valueOf(doubleValue * operand));
    //                             break;
    //                         case "/":
    //                             column.set(i, (T) Double.valueOf(doubleValue / operand));
    //                             break;
    //                         default:
    //                             throw new IllegalArgumentException("Invalid operation: " + operation);
    //                     }
    //                 } else {
    //                     throw new IllegalArgumentException("Unsupported column type");
    //                 }
    //             } else {
    //                 throw new IllegalArgumentException("Unsupported column type");
    //             }
    //         }
    //     } else {
    //         throw new IllegalArgumentException("Invalid number of arguments. Expected either 2 or 3.");
    //     }
    // }
    
    



    @Override
    public Table<T> clone() {
        try {
            // Create a shallow copy of the Table object
            Table<T> clonedTable = (Table<T>) super.clone();

            // Create deep copies of the LinkedHashMap and HashMap objects
            clonedTable.data = new LinkedHashMap<String, ArrayList<T>>(this.data);
            clonedTable.varTable = new HashMap<String, String>(this.varTable);

            // Create deep copies of the ArrayList objects in the LinkedHashMap
            for (String key : this.data.keySet()) {
                clonedTable.data.put(key, new ArrayList<T>(this.data.get(key)));
            }

            return clonedTable;
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }

    // function that accepts an BiFunction<T, T, T> object as a parameter
    public void doLambda(Function<T, T> lambda, String arg1) {

        int i = 0;
        for (T row : this.getColumn(arg1)) {
            if (row == null) {
                i++;
                continue;
            }
            row = lambda.apply(row);
            this.data.get(this.getVar(arg1)).set(i++, row);
        }
    }

    public void setLambdaMap(HashMap<String, Object> map) {
        this.lambdaMap = map;
    }

    public void doLambda(BiFunction<T, T, T> lambda, String arg1, String arg2) {

        int i = 0;

        System.out.println(this.data.get("n1"));

        ArrayList<T> col1 = this.getColumn(arg1);
        ArrayList<T> col2 = this.getColumn(arg2);

        System.out.println(col1);
        System.out.println(col2);

        for (T row : col1) {
            if (row == null) {
                i++;
                continue;
            }
            try {
                row = lambda.apply((T) row.toString(), (T) col2.get(i++).toString());
                System.out.println(row);
            } catch (Exception e) {
                System.out.println("Error: " + e);
            }

        }
    }

}
