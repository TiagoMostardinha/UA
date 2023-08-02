public class Auxilliar {
    public String datatypeConvert(String type){

        switch (type) {
            case "integer":
                return "int";
            case "text":
                return "String";
            case "real":
                return "Double";
            case "table":
                return "tablan";
            default:
                break;
        }

        return "";
    }
}
