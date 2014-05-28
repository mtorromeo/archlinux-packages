#!/bin/sh
set -e

[ -f /etc/profile.d/jre.sh ] && . /etc/profile.d/jre.sh
[ -f /etc/profile.d/jdk.sh ] && . /etc/profile.d/jdk.sh

java_args=$(echo $@ | sed "s|-jar iKVM.jar|-jar /opt/ipmiview/iKVM.jar|;s|-Djava.library.path=.|-Djava.library.path=/opt/ipmiview|")
exec $JAVA_HOME/bin/java $java_args
