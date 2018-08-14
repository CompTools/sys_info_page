#!/bin/bash
# Program to output a system information page

TITLE="System Information Report for $HOSTNAME"
CURRENT_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generates $CURRENT_TIME, by $USER"

report_uptime(){
    cat <<- _EOF_
        <h2>System uptime</h2>
        <pre>$(uptime)</pre>
_EOF_
    return
}

report_disk_space(){
    cat <<- _EOF_
        <h2>Disk Space Utilization</h2>
        <pre>$(du -sh /home/magitz/*)</pre>
_EOF_
    return
}

report_home_space(){
    cat <<- _EOF_
        <h2>Home Space Utilization</h2>
        <pre>$(du -sh /home/magitz/*)</pre>
_EOF_
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
