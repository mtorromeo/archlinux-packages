#!/bin/sh
set -e

[ -f /etc/profile.d/jre.sh ] && . /etc/profile.d/jre.sh
[ -f /etc/profile.d/jdk.sh ] && . /etc/profile.d/jdk.sh

mkdir -p ~/.ipmiview
cd ~/.ipmiview

export PATH="/opt/ipmiview:$PATH"
exec java -Djava.library.path=/opt/ipmiview -jar /opt/ipmiview/IPMIView20.jar "$@"
