#! /bin/sh

if [ "enable" = "$1" ]; then
    echo "Setting permission enabld on shared tmux session"
    chmod 777 /tmp/pair
    exit 0
else
    echo "Setting permission disabled on shared tmux session"
    chmod 770 /tmp/pair
    exit 1
fi

echo "Usage: enable"
exit 1
