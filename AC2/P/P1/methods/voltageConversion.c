int voltageConversion(int VAL_AD){
    return ((VAL_AD/4)*33+511)/1023;
}
