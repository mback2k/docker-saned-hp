#!/bin/sh
set -e

# enable an additional DLL
if [ -n "${SANED_DLL}" ]; then
    echo ${SANED_DLL} >> /etc/sane.d/dll.conf
fi
