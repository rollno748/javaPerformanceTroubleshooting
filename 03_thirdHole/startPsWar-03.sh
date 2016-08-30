#!/bin/sh
dir=$(dirname "$0")

export PG_WAR=$dir/../warProject/target/performanceGolf.war
. $dir/../bin/setenv.sh

#export MY_AGENT=-javaagent:/Users/erikostermueller/Documents/src/jdist/jdbc-performance-logger/JDBC-Performance-Logger-0.8.0/jdbc-perf-logger-agent/target/jdbc-perf-logger-agent-0.8.0.jar

$JAVA_HOME/bin/java $MY_AGENT -jar $PG_WAR
