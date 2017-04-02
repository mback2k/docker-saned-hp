#!/bin/sh
set -e

# setup custom ACL and fallback to localhost
if [ -n "${SANED_ACL}" ]; then
    echo ${SANED_ACL} >> /etc/sane.d/saned.conf
else
    echo "localhost" >> /etc/sane.d/saned.conf
fi
