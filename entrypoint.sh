#/bin/sh

echo "timemachine:${PASSWORD}" | chpasswd && \
chown -R timemachine /timemachine && \
/usr/sbin/netatalk -d