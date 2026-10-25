#!/bin/bash

FIRST_NAME="Stefan"
LAST_NAME="Markan"

FOLDER="${FIRST_NAME}_${LAST_NAME}_labb"

COMPILE_MSG="Compiling.."
RUN_MSG="Running.."
DONE_MSG="Done."
CLEANUP_MSG="Removing .class files.."

echo $NAME
mkdir -p "${FOLDER}"
cp *.java "./$FOLDER"

cd $FOLDER | pwd
echo $COMPILE_MSG
javac *.java

echo $RUN_MSG
java GuessingGame

echo $DONE_MSG
echo $CLEANUP_MSG
rm *.class
ls $FOLDER