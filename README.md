# icecast-docker

Simple Ubuntu based docker image containing icecast streaming server.

## Usage

Per default the shipped config from `/etc/icecast2/icecast.xml` is used. To override it, simply mount a custom config at this path.

A sample [docker-compose.yml](docker-compose.example.yml) file is also available.
