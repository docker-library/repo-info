<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `teamspeak`

-	[`teamspeak:3.13`](#teamspeak313)
-	[`teamspeak:3.13.8`](#teamspeak3138)
-	[`teamspeak:latest`](#teamspeaklatest)

## `teamspeak:3.13`

```console
$ docker pull teamspeak@sha256:4833e67ffe7ecaaef63241be145f65720ee6a927a2c83029a7fa762c902dd3b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `teamspeak:3.13` - linux; amd64

```console
$ docker pull teamspeak@sha256:afd780eb7140a2e0e3c8480f59b81102bbc9da1096a622b9d7c59012f63e646f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17504850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518608cc5ea20e81bbad67bd22da59fdb965d468e1b50cbbe7d8f1dfb7e3a0ac`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:14:12 GMT
RUN set -eux;     apk add --no-cache ca-certificates libstdc++ su-exec libpq;     addgroup -g 9987 ts3server;     adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;     install -d -o ts3server -g ts3server -m 775 /var/ts3server /var/run/ts3server /opt/ts3server # buildkit
# Wed, 21 Oct 2026 21:14:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server TS3SERVER_FILETRANSFER_PORT=30033
# Wed, 21 Oct 2026 21:14:15 GMT
LABEL com.teamspeak.title=TeamSpeak 3 Server
# Wed, 21 Oct 2026 21:14:15 GMT
LABEL com.teamspeak.version=3.13.8
# Wed, 21 Oct 2026 21:14:15 GMT
LABEL com.teamspeak.description=TeamSpeak 3 Server on Alpine Linux
# Wed, 21 Oct 2026 21:14:15 GMT
ARG TEAMSPEAK_CHECKSUM=b04af5fbcbca3e847336389569eca3bff6339cba6f13f0151d6b012360e038ae
# Wed, 21 Oct 2026 21:14:15 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.13.8/teamspeak3-server_linux_alpine-3.13.8.tar.bz2
# Wed, 21 Oct 2026 21:14:15 GMT
# ARGS: TEAMSPEAK_CHECKSUM=b04af5fbcbca3e847336389569eca3bff6339cba6f13f0151d6b012360e038ae TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.13.8/teamspeak3-server_linux_alpine-3.13.8.tar.bz2
RUN set -eux;     apk add --no-cache --virtual .fetch-deps tar;     wget "${TEAMSPEAK_URL}" -O server.tar.bz2;     echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;     mkdir -p /opt/ts3server;     tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;     rm server.tar.bz2;     apk del .fetch-deps;     mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;     ldconfig /usr/local/lib;     rm -rf /opt/ts3server/redist # buildkit
# Wed, 21 Oct 2026 21:14:15 GMT
VOLUME [/var/ts3server/]
# Wed, 21 Oct 2026 21:14:15 GMT
WORKDIR /var/ts3server/
# Wed, 21 Oct 2026 21:14:15 GMT
EXPOSE map[10011/tcp:{} 30033/tcp:{} 9987/udp:{}]
# Wed, 21 Oct 2026 21:14:15 GMT
COPY entrypoint.sh /opt/ts3server # buildkit
# Wed, 21 Oct 2026 21:14:15 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 21 Oct 2026 21:14:15 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2daf24fb543a3dd743e96ddc4005b80fda2e03b7d4ca401cc7223f58252e3f7c`  
		Last Modified: Wed, 21 Oct 2026 21:14:19 GMT  
		Size: 1.5 MB (1490970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901ecf2c98e61fc40748190a0e5ea90c38a2cf05e289e87c667d864fc1b3cbce`  
		Last Modified: Wed, 21 Oct 2026 21:14:19 GMT  
		Size: 12.2 MB (12160069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01661120d3889bb84712b959d3ae9b22f755404ebf7fa9198afa035235ab2045`  
		Last Modified: Wed, 21 Oct 2026 21:14:19 GMT  
		Size: 1.6 KB (1552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `teamspeak:3.13` - unknown; unknown

```console
$ docker pull teamspeak@sha256:e847da12ad7405b303741e99be54ef034f8f96145a548287f618812894c55827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f17f1337d12fa94cbb8653add4eec868e61622fae8b20c7b90741dd8c178321`

```dockerfile
```

-	Layers:
	-	`sha256:ab83e4878561914d8fc46a90d9fa914081f8d44201da8fc21a565b27b599fd7a`  
		Last Modified: Wed, 21 Oct 2026 21:14:19 GMT  
		Size: 13.2 KB (13213 bytes)  
		MIME: application/vnd.in-toto+json

## `teamspeak:3.13.8`

```console
$ docker pull teamspeak@sha256:4833e67ffe7ecaaef63241be145f65720ee6a927a2c83029a7fa762c902dd3b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `teamspeak:3.13.8` - linux; amd64

```console
$ docker pull teamspeak@sha256:afd780eb7140a2e0e3c8480f59b81102bbc9da1096a622b9d7c59012f63e646f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17504850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518608cc5ea20e81bbad67bd22da59fdb965d468e1b50cbbe7d8f1dfb7e3a0ac`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:14:12 GMT
RUN set -eux;     apk add --no-cache ca-certificates libstdc++ su-exec libpq;     addgroup -g 9987 ts3server;     adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;     install -d -o ts3server -g ts3server -m 775 /var/ts3server /var/run/ts3server /opt/ts3server # buildkit
# Wed, 21 Oct 2026 21:14:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server TS3SERVER_FILETRANSFER_PORT=30033
# Wed, 21 Oct 2026 21:14:15 GMT
LABEL com.teamspeak.title=TeamSpeak 3 Server
# Wed, 21 Oct 2026 21:14:15 GMT
LABEL com.teamspeak.version=3.13.8
# Wed, 21 Oct 2026 21:14:15 GMT
LABEL com.teamspeak.description=TeamSpeak 3 Server on Alpine Linux
# Wed, 21 Oct 2026 21:14:15 GMT
ARG TEAMSPEAK_CHECKSUM=b04af5fbcbca3e847336389569eca3bff6339cba6f13f0151d6b012360e038ae
# Wed, 21 Oct 2026 21:14:15 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.13.8/teamspeak3-server_linux_alpine-3.13.8.tar.bz2
# Wed, 21 Oct 2026 21:14:15 GMT
# ARGS: TEAMSPEAK_CHECKSUM=b04af5fbcbca3e847336389569eca3bff6339cba6f13f0151d6b012360e038ae TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.13.8/teamspeak3-server_linux_alpine-3.13.8.tar.bz2
RUN set -eux;     apk add --no-cache --virtual .fetch-deps tar;     wget "${TEAMSPEAK_URL}" -O server.tar.bz2;     echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;     mkdir -p /opt/ts3server;     tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;     rm server.tar.bz2;     apk del .fetch-deps;     mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;     ldconfig /usr/local/lib;     rm -rf /opt/ts3server/redist # buildkit
# Wed, 21 Oct 2026 21:14:15 GMT
VOLUME [/var/ts3server/]
# Wed, 21 Oct 2026 21:14:15 GMT
WORKDIR /var/ts3server/
# Wed, 21 Oct 2026 21:14:15 GMT
EXPOSE map[10011/tcp:{} 30033/tcp:{} 9987/udp:{}]
# Wed, 21 Oct 2026 21:14:15 GMT
COPY entrypoint.sh /opt/ts3server # buildkit
# Wed, 21 Oct 2026 21:14:15 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 21 Oct 2026 21:14:15 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2daf24fb543a3dd743e96ddc4005b80fda2e03b7d4ca401cc7223f58252e3f7c`  
		Last Modified: Wed, 21 Oct 2026 21:14:19 GMT  
		Size: 1.5 MB (1490970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901ecf2c98e61fc40748190a0e5ea90c38a2cf05e289e87c667d864fc1b3cbce`  
		Last Modified: Wed, 21 Oct 2026 21:14:19 GMT  
		Size: 12.2 MB (12160069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01661120d3889bb84712b959d3ae9b22f755404ebf7fa9198afa035235ab2045`  
		Last Modified: Wed, 21 Oct 2026 21:14:19 GMT  
		Size: 1.6 KB (1552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `teamspeak:3.13.8` - unknown; unknown

```console
$ docker pull teamspeak@sha256:e847da12ad7405b303741e99be54ef034f8f96145a548287f618812894c55827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f17f1337d12fa94cbb8653add4eec868e61622fae8b20c7b90741dd8c178321`

```dockerfile
```

-	Layers:
	-	`sha256:ab83e4878561914d8fc46a90d9fa914081f8d44201da8fc21a565b27b599fd7a`  
		Last Modified: Wed, 21 Oct 2026 21:14:19 GMT  
		Size: 13.2 KB (13213 bytes)  
		MIME: application/vnd.in-toto+json

## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:4833e67ffe7ecaaef63241be145f65720ee6a927a2c83029a7fa762c902dd3b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:afd780eb7140a2e0e3c8480f59b81102bbc9da1096a622b9d7c59012f63e646f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17504850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518608cc5ea20e81bbad67bd22da59fdb965d468e1b50cbbe7d8f1dfb7e3a0ac`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:14:12 GMT
RUN set -eux;     apk add --no-cache ca-certificates libstdc++ su-exec libpq;     addgroup -g 9987 ts3server;     adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;     install -d -o ts3server -g ts3server -m 775 /var/ts3server /var/run/ts3server /opt/ts3server # buildkit
# Wed, 21 Oct 2026 21:14:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server TS3SERVER_FILETRANSFER_PORT=30033
# Wed, 21 Oct 2026 21:14:15 GMT
LABEL com.teamspeak.title=TeamSpeak 3 Server
# Wed, 21 Oct 2026 21:14:15 GMT
LABEL com.teamspeak.version=3.13.8
# Wed, 21 Oct 2026 21:14:15 GMT
LABEL com.teamspeak.description=TeamSpeak 3 Server on Alpine Linux
# Wed, 21 Oct 2026 21:14:15 GMT
ARG TEAMSPEAK_CHECKSUM=b04af5fbcbca3e847336389569eca3bff6339cba6f13f0151d6b012360e038ae
# Wed, 21 Oct 2026 21:14:15 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.13.8/teamspeak3-server_linux_alpine-3.13.8.tar.bz2
# Wed, 21 Oct 2026 21:14:15 GMT
# ARGS: TEAMSPEAK_CHECKSUM=b04af5fbcbca3e847336389569eca3bff6339cba6f13f0151d6b012360e038ae TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.13.8/teamspeak3-server_linux_alpine-3.13.8.tar.bz2
RUN set -eux;     apk add --no-cache --virtual .fetch-deps tar;     wget "${TEAMSPEAK_URL}" -O server.tar.bz2;     echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;     mkdir -p /opt/ts3server;     tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;     rm server.tar.bz2;     apk del .fetch-deps;     mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;     ldconfig /usr/local/lib;     rm -rf /opt/ts3server/redist # buildkit
# Wed, 21 Oct 2026 21:14:15 GMT
VOLUME [/var/ts3server/]
# Wed, 21 Oct 2026 21:14:15 GMT
WORKDIR /var/ts3server/
# Wed, 21 Oct 2026 21:14:15 GMT
EXPOSE map[10011/tcp:{} 30033/tcp:{} 9987/udp:{}]
# Wed, 21 Oct 2026 21:14:15 GMT
COPY entrypoint.sh /opt/ts3server # buildkit
# Wed, 21 Oct 2026 21:14:15 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 21 Oct 2026 21:14:15 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2daf24fb543a3dd743e96ddc4005b80fda2e03b7d4ca401cc7223f58252e3f7c`  
		Last Modified: Wed, 21 Oct 2026 21:14:19 GMT  
		Size: 1.5 MB (1490970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901ecf2c98e61fc40748190a0e5ea90c38a2cf05e289e87c667d864fc1b3cbce`  
		Last Modified: Wed, 21 Oct 2026 21:14:19 GMT  
		Size: 12.2 MB (12160069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01661120d3889bb84712b959d3ae9b22f755404ebf7fa9198afa035235ab2045`  
		Last Modified: Wed, 21 Oct 2026 21:14:19 GMT  
		Size: 1.6 KB (1552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `teamspeak:latest` - unknown; unknown

```console
$ docker pull teamspeak@sha256:e847da12ad7405b303741e99be54ef034f8f96145a548287f618812894c55827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f17f1337d12fa94cbb8653add4eec868e61622fae8b20c7b90741dd8c178321`

```dockerfile
```

-	Layers:
	-	`sha256:ab83e4878561914d8fc46a90d9fa914081f8d44201da8fc21a565b27b599fd7a`  
		Last Modified: Wed, 21 Oct 2026 21:14:19 GMT  
		Size: 13.2 KB (13213 bytes)  
		MIME: application/vnd.in-toto+json
