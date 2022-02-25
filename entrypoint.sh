#!/bin/bash

set -e

sed -i "s|SERVICECONTAINER|${SERVICE_PORT}|" /etc/torrc
exec tor -f /etc/torrc
