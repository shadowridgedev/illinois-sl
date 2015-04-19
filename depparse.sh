#!/usr/bin/env bash

#mvn -q dependency:copy-dependencies
#mvn -q compile

ME=`basename $0` # for usage message

if [ "$#" -ne 1 ]; then 	# number of args
    echo "USAGE: "
    echo "$ME <config file>"
    exit
fi

CP="./config/:./target/classes/:./target/dependency/*"

OPTIONS="-Xss40m -ea -cp $CP"
PACKAGE_PREFIX="edu.illinois.cs.cogcomp"

MAIN="$PACKAGE_PREFIX.sl.applications.depparse.io.MainClass"

time nice java $OPTIONS $MAIN $CONFIG_STR $*
