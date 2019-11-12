#!/usr/bin/env bash
set -e

postfix start-fg &
rsyslogd -n &
sleep 2
tail -f /var/log/mail.log