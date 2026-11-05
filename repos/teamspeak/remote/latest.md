## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:e11b8a7504ac8c1eac21e0365a71c67c2a2247c419e8fe7631ad3178187fe95c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:d423be5b45356ea2f6ad8e64a353c6cd6a907a689e64e1b8c7cd3060e81ed105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17505227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8c6455427ed91ac976ec6e2e7410c9bf58a3173ba91b5942c654d98b59131a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:20 GMT
RUN set -eux;     apk add --no-cache ca-certificates libstdc++ su-exec libpq;     addgroup -g 9987 ts3server;     adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;     install -d -o ts3server -g ts3server -m 775 /var/ts3server /var/run/ts3server /opt/ts3server # buildkit
# Thu, 05 Nov 2026 19:11:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server TS3SERVER_FILETRANSFER_PORT=30033
# Thu, 05 Nov 2026 19:11:22 GMT
LABEL com.teamspeak.title=TeamSpeak 3 Server
# Thu, 05 Nov 2026 19:11:22 GMT
LABEL com.teamspeak.version=3.13.8
# Thu, 05 Nov 2026 19:11:22 GMT
LABEL com.teamspeak.description=TeamSpeak 3 Server on Alpine Linux
# Thu, 05 Nov 2026 19:11:22 GMT
ARG TEAMSPEAK_CHECKSUM=b04af5fbcbca3e847336389569eca3bff6339cba6f13f0151d6b012360e038ae
# Thu, 05 Nov 2026 19:11:22 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.13.8/teamspeak3-server_linux_alpine-3.13.8.tar.bz2
# Thu, 05 Nov 2026 19:11:22 GMT
# ARGS: TEAMSPEAK_CHECKSUM=b04af5fbcbca3e847336389569eca3bff6339cba6f13f0151d6b012360e038ae TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.13.8/teamspeak3-server_linux_alpine-3.13.8.tar.bz2
RUN set -eux;     apk add --no-cache --virtual .fetch-deps tar;     wget "${TEAMSPEAK_URL}" -O server.tar.bz2;     echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;     mkdir -p /opt/ts3server;     tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;     rm server.tar.bz2;     apk del .fetch-deps;     mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;     ldconfig /usr/local/lib;     rm -rf /opt/ts3server/redist # buildkit
# Thu, 05 Nov 2026 19:11:22 GMT
VOLUME [/var/ts3server/]
# Thu, 05 Nov 2026 19:11:22 GMT
WORKDIR /var/ts3server/
# Thu, 05 Nov 2026 19:11:22 GMT
EXPOSE map[10011/tcp:{} 30033/tcp:{} 9987/udp:{}]
# Thu, 05 Nov 2026 19:11:22 GMT
COPY entrypoint.sh /opt/ts3server # buildkit
# Thu, 05 Nov 2026 19:11:22 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 05 Nov 2026 19:11:22 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7737de4ba6efcac06bb6fbed3eeae275ab0a0809536525d3c0ab7ca04a32ad1`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 1.5 MB (1490989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f10970616cdf9fb860c814c5c13fb0d00b62ead92911a17bdc9c7e08eeaab7e`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 12.2 MB (12160069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1546498401b09da0be2c2d84ce1aacaa0edfdff59bbecbead7c538c22a2bea61`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 1.5 KB (1548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `teamspeak:latest` - unknown; unknown

```console
$ docker pull teamspeak@sha256:d6487b9c93f559f8940b860784fad12a9001128b11ef2755943b1d7c5f50dd17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8840a8e376d1083bc65accbbc86358a89731c7928c9a97d75764dc9d30bd1a97`

```dockerfile
```

-	Layers:
	-	`sha256:4e9471d56974966ff5c7f957eaeec57cdb04f2bad9e17d17e9aebcb5f10c5dad`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 13.2 KB (13212 bytes)  
		MIME: application/vnd.in-toto+json
