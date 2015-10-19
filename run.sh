#!/bin/bash

[ -f /etc/vernemq/vernemq.conf ] || cp /tmp/vernemq.conf.default /etc/vernemq/vernemq.conf
[ -f /etc/vernemq/vmq.acl ] || cp /tmp/vmq.acl.default /etc/vernemq/vmq.acl
[ -f /etc/vernemq/vmq.passwd ] || cp /tmp/vmq.passwd.default /etc/vernemq/vmq.passwd

vernemq console

