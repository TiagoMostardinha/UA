import java.io.IOException;
import java.util.HashMap;
import java.util.function.*;

public class exemplo2 {
    public static void main(String[] args) throws IOException {
        // add Restriction
        HashMap<String, Object> lambdaMap = new HashMap<>();

        // type table ATable -> "The Table!" { ... }
        Table ATable = new Table<>("name\ttext\t\tName:", "number\tinteger\t\t");

        ATable.setName("The Table!");

        // t: ATable;
        Table t = new Table<>();

        // t := new
        t = ATable.clone();

        // c: integer
        int c;

        // c := 1;
        c = 1;

        // ["One", c] >> t
        t.addRow(new Object[] { "One", c });

        // [] >> t;
        t.addRow(new Object[] {});

        // c := c+1
        c = c + 1;

        // ["Two", c] >> t
        t.addRow(new Object[] { "Two", c });

        // [] >> t;
        t.addRow(new Object[] {});

        // c := c+1
        c = c + 1;

        // ["Three", c] >> t
        t.addRow(new Object[] { "Three", c });

        // [] >> t;
        t.addRow(new Object[] {});

        // println t;
        t.printTable();

        // tt: ATable
        Table tt = new Table<>();

        // tt -> "Table of names (view)"
        tt.setName("Table of names (view)");

        // tt := t.name
        tt.addColumn(t.getVar("name"), t.getColumn("name"));

        // println tt
        tt.printTable();

        // ttt: ATable;
        Table ttt = new Table<>();

        // ttt := new(t.name)
        ttt.addColumn(t.getVar("name"), t.getColumn("name"));

        // ttt -> "Table of names (copy)";
        ttt.setName("Table of names (copy)");

        // ["Four", c] >> t
        // t.addRow(new Object[] { "Four", c + 1 });

        // println ttt
        ttt.printTable();

        // println "Yet another print of a table" center (length t.name + 1 + length
        // t.number + 3);
        t.printTable(1, 3);

        // for elem in t do -- iterate table lines
        // elem.name := elem.name + ":";
        t.doLambda(a -> a + ":", "name");

        // println "|",elem.name, "|", elem.number, "|";
        // t.doLambda((a, b) -> "|" + a + "|" + b + "|", "name", "number"); -> missing

        // t2: ATable;
        Table t2 = new Table<>();

        // t2 := read "list1.csv";
        t2.readAsCSV("list1.csv");

        // println t2;
        t2.printTable();

        // t2 := read "list2.csv" using column 2 as name, column 1 as number; -> missing
        // println t2;
        // t2 := read "list1.csv" using "name" as name, "number" as number; missing
        // println t2;

    }
}

