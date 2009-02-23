#!/bin/sh
#
# $NetBSD: lwresd.sh,v 1.1.1.1 2009/01/04 00:21:36 adrianp Exp $
#
# PROVIDE: lwresd
# REQUIRE: SERVERS

. /etc/rc.subr

name="lwresd"
rcvar=${name}
command="@PREFIX@/sbin/${name}"
pidfile="@VARBASE@/run/lwresd/${name}.pid"
extra_commands="reload"
start_precmd="lwresd_precmd"

lwresd_precmd()
{
	if [ ! -d @VARBASE@/run/lwresd ]; then
		@MKDIR@ @VARBASE@/run/lwresd
	fi
}

load_rc_config ${name}		# check /etc/rc.conf.d/named9
run_rc_command "$1"
