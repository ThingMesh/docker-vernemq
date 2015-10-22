#!/bin/bash
#
# Verne.mq Docker Image
# 
# Author: Lars Boegild Thomsen <lth@bright-things.com>
# 

[ -f /etc/vernemq/vernemq.conf ] || cp /tmp/vernemq.conf.default /etc/vernemq/vernemq.conf
[ -f /etc/vernemq/vmq.acl ] || cp /tmp/vmq.acl.default /etc/vernemq/vmq.acl
[ -f /etc/vernemq/vmq.passwd ] || cp /tmp/vmq.passwd.default /etc/vernemq/vmq.passwd

case $1 in
	run)
		vernemq start
		exec bin/bash
		;;
	shell) 
		exec bin/bash
		;;
	usage) 
		less usage
		;;
	*)
		cat <<-EOF
			Verne.mq Docker Image

			Usage: docker run --tty --interactive [command]

			Commands:

			  run         Run vernemq
			  shell       Run a bash shell without starting vernemq
			  usage       Show more usage information

		EOF
		;;
esac

# vim: ts=4
