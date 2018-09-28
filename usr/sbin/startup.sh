#!/bin/bash

echo "/etc/init.d/MarkLogic start && tail -F /dev/null" >> /var/log/startup.log

/etc/init.d/MarkLogic start >> /var/log/startup.log && tail -F /dev/null