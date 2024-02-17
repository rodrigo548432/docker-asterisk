
# docker-asterisk

This is a simple Asterisk server running inside Docker container.

This container uses Alpine 3.19.1 and Asterisk 20.5.2.

### How to use it
All Asterisk configuration files are placed in asterisk folder. For now, it has a simple configuration in sip.conf, extensions.conf and rtp.conf, that allows you to have two usage numbers (1001 and 1002) and a demo number (1000).

### Building it
To make it simple, you can just copy and paste both commands bellow:

    docker build . -t docker-asterisk
    docker-compose -f docker-compose.yml up -d

Remember to update docker-compose.yml in case you changed the ports for your Asterisk server.
#
Feel free to adapt as you need.
