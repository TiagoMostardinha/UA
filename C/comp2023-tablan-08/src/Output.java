import java.util.*;

public class Output {
    public static void main(String[] args){
        HashMap<String, Object> lambdaMap = new HashMap<>();
        Table ATable = new Table <>("name\ttext\t\tName:", "number\tinteger\t\tNumber:");
        ATable.setName("The Table!");
        Table t = new Table<>();
        t = ATable.clone();
        int c;
        c = 1;
        t.addRow(new Object[] {"One", c});
        t.addRow(new Object[] {});
        c = c + 1;
        t.addRow(new Object[] {"Two", c});
        t.addRow(new Object[] {});
        c = c + 1;
        t.addRow(new Object[] {"Three", c});
        t.addRow(new Object[] {});
        t.printTable();
        Table tt = new Table<>();
        tt.setName("Table of names (view)");
        tt.addColumn(t.getVar("name"),t.getColumn("name"));
        Table ttt = new Table<>();
        ttt = ATable.clone();
        ttt.setName("Table of names (copy)");
        t.addRow(new Object[] {"Four", c+1});
        tt.printTable();
        ttt.printTable();
        System.out.println("Yet another print of a table");
        for(Object[] elem : t.getAllRow()){
            System.out.println("|");
            elem = elem.name + ":";
        };
        Table t2 = new Table<>();
        t2 = ATable.clone();
        t2.printTable();
        t2 = ATable.clone();
        t2.printTable();
        t2 = ATable.clone();
        t2.printTable();
    }
}