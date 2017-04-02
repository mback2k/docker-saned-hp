#!/bin/sh
set -e

# create the run folder for dbus (if it is missing)
if [ ! -d "/var/run/dbus" ]; then
    mkdir -p /var/run/dbus
fi

# remove the pid file from the previous run (if it exists)
if [ -e "/var/run/dbus/pid" ]; then
    rm /var/run/dbus/pid
fi
