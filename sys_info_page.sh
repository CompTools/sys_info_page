#!/bin/bash
# Program to output a system information page

TITLE="System Information Report for $HOSTNAME"
CURRENT_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generates $CURRENT_TIME, by $USER"

report_uptime(){
    echo "Function report_uptime executed"
    return
}

report_disk_space(){
    echo "Function report_disk_space executed"
    return
}

report_home_space(){
    echo "Function report_home_space executed"
    return
}

cat << _EOF_
<HTML>
    <HEAD>
        <TITLE>$TITLE</TITLE>
    </HEAD>
    <BODY>
        <H1>$TITLE</H1>
        <p>$TIME_STAMP</p>
        $(report_uptime)
        $(report_disk_space)
        $(report_home_space)
    </BODY>
</HTML>
_EOF_
