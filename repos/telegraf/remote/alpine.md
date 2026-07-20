## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:cd926aecf11809ffe1b6125a752dd22a4336e150f061bcc202f74b46b785817d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:088aca5e52342053d32f9ca07bbfae07bf6be09c9b17a798fb3342350a7d91e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90270042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b18f975e8292043c05b0cb03082c37f7665a64d3b9ff990a1a92d5b74543ef7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:45:55 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:46:02 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:46:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:46:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:46:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5950408526ad141259bf206603c4f7d544c3772142eb231964c7175afcd3e655`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083df7ecc2cfb53a924c2916a995584f12d9b95d1c7badf84a2e6d2868c644c8`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 2.6 MB (2567510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ae38ee38583326101645f9e20629b31d27cd4cf59285f7f45c4c561dd2a241`  
		Last Modified: Mon, 20 Jul 2026 22:46:19 GMT  
		Size: 83.9 MB (83857214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f438d1484e07b133778bdb76fae32a71c15928c801b145aa798811754e9201e`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:03aa2c72690592071f3008b1f6b983caf066609ae405cc595bf24c902d6d2fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1169756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e0ebe5d16f1f7f4589f37cadb02c948f6fc4b62a9ff60cb69343a35f56a40a`

```dockerfile
```

-	Layers:
	-	`sha256:8af4b6b7c4b13928957d4546454969b13b2bd69b8563b5fdd6278a8a5a578614`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 1.2 MB (1154536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79fb96e4644a0e7d0afbf778fee3fc37ab2598fa04b4a5df0a5e5f207d26736`  
		Last Modified: Mon, 20 Jul 2026 22:46:17 GMT  
		Size: 15.2 KB (15220 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:f53fcaccaf6173146605515332406d34fa66fb01a666bda2c673ca2015fd8027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81717398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f348efe2bc8b5e61f77bb6ce3c35b2434b1be11259b83a004fd6c43d4e08552`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:48:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 20 Jul 2026 22:48:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap &&     update-ca-certificates # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:48:22 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:48:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:48:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:48:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82240a925d08347c57376e74756c2aba9759436eaabc5dc9d5ac9b69653f8426`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3b3d2d83bc5bc9c9baa538181c5d70a4920b8f3055eeea4dacea9130b4545d`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 2.6 MB (2616530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cfec44b4cb32f088e979fa1274d13265210e5f6107fb438aeba7205c6b8908`  
		Last Modified: Mon, 20 Jul 2026 22:48:38 GMT  
		Size: 74.9 MB (74918108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a0e002568cc3d617d80c5fbed5c2d9f6fafec97a934fcf5d6c8a2bdc96d070`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:c6fbc4aacab17a143a3177d9f001729c1d3d29572e32f82c8148586a174b305e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1164867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5db4e043f30f69552ecbb512902c0bc4b0a8a494d14924df66e0076921ec21`

```dockerfile
```

-	Layers:
	-	`sha256:50470fd28ca7a74663731e9e1ed3e3968b1811aeaeaa5f4f8d4a9f2c0ceeb30a`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 1.1 MB (1149525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:063bfd09947f1d1387b7dc4c876482f759945e2b69ffc9dd4db630cd0b89dbc4`  
		Last Modified: Mon, 20 Jul 2026 22:48:36 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json
