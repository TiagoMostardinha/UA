#!/bin/bash
cp ../src/Geometrics.java .
cp ../src/Figure.java .
cp ../src/Gui.java .
cp ../src/Point.java .
cp ../src/Line.java .
cp ../src/Circle.java .
javac Output.java
java Output

rm Geometrics.* Figure.* Gui.* Point.* Line.* Circle.*