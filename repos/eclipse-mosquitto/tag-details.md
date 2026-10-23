<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.6-openssl`](#eclipse-mosquitto16-openssl)
-	[`eclipse-mosquitto:1.6.15-openssl`](#eclipse-mosquitto1615-openssl)
-	[`eclipse-mosquitto:2`](#eclipse-mosquitto2)
-	[`eclipse-mosquitto:2-openssl`](#eclipse-mosquitto2-openssl)
-	[`eclipse-mosquitto:2.0`](#eclipse-mosquitto20)
-	[`eclipse-mosquitto:2.0-openssl`](#eclipse-mosquitto20-openssl)
-	[`eclipse-mosquitto:2.0.22`](#eclipse-mosquitto2022)
-	[`eclipse-mosquitto:2.0.22-openssl`](#eclipse-mosquitto2022-openssl)
-	[`eclipse-mosquitto:2.1-alpine`](#eclipse-mosquitto21-alpine)
-	[`eclipse-mosquitto:2.1.2-alpine`](#eclipse-mosquitto212-alpine)
-	[`eclipse-mosquitto:alpine`](#eclipse-mosquittoalpine)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)
-	[`eclipse-mosquitto:openssl`](#eclipse-mosquittoopenssl)

## `eclipse-mosquitto:1.6-openssl`

```console
$ docker pull eclipse-mosquitto@sha256:2a715a179777501daf0c339c118b5eb9608488f0e22e57072de4c51b7d3c6781
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:1.6-openssl` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:d83a6c964bd949abfc1adc9ad7cd0c3ce981faeda2c6c3511f0526ac4bd1aa2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7605997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c13372bfc8a51276fb7e83b4d3395acf14cbb890c3c58dea7cb03765f2a3ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:47:12 GMT
ENV VERSION=1.6.15 DOWNLOAD_SHA256=5ff2271512f745bf1a451072cd3768a5daed71e90c5179fae12b049d6c02aa0f GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:47:12 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=1.6.15
# Fri, 23 Oct 2026 06:47:12 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/src/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v10 /usr/share/licenses/mosquitto/epl-v10 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:47:12 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:47:12 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:47:12 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:47:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:47:12 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d756119ef6b60dd6c436cfc5ceb532327bd4ce842924bfa2498ff5c96e20df0f`  
		Last Modified: Fri, 23 Oct 2026 06:47:17 GMT  
		Size: 3.8 MB (3753529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2823d84cabc87c944993fc658ef9336394a5a23c311f38ef59d3d32ba1f3bc`  
		Last Modified: Fri, 23 Oct 2026 06:47:16 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:1.6-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:40f3601c9dea371e89b5c476a146ec69930681a24010c29545ae931b75babc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.7 KB (553695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6629f1f9c17d6cef362136696561a14d9e3d73e57885e2f60abd6b10d565f28`

```dockerfile
```

-	Layers:
	-	`sha256:274b0d526e16cb2cdac0df26faa3424bc56b8c58bf6599147ffc8f84dfce6374`  
		Last Modified: Fri, 23 Oct 2026 06:47:16 GMT  
		Size: 536.2 KB (536205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5171ac65ca8199efbd6b66ba4ba5eddb9861a7aa8044bda857b5f2a86095a7a6`  
		Last Modified: Fri, 23 Oct 2026 06:47:16 GMT  
		Size: 17.5 KB (17490 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:1.6-openssl` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:224fe3bb79e1c0bfeafb041b113fddc8a8faff9984039f8a0ac59bf69fc0a5a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6888328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145128ca1be2339c8569a6e353e181f5e90a085989f31d1dd0e6c1772bea41fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:06:11 GMT
ENV VERSION=1.6.15 DOWNLOAD_SHA256=5ff2271512f745bf1a451072cd3768a5daed71e90c5179fae12b049d6c02aa0f GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:06:11 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=1.6.15
# Fri, 23 Oct 2026 09:06:11 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/src/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v10 /usr/share/licenses/mosquitto/epl-v10 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:06:11 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:06:11 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:06:11 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:06:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:06:11 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e836292f44d9f87427309b9806dd8f16e75a817856c29bf3f57ba1629921762`  
		Last Modified: Fri, 23 Oct 2026 09:06:15 GMT  
		Size: 3.3 MB (3329902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173d3b7e38082ecf69932e4551623dc10ea0732ad4e8ec73ef9d8f0894b15e34`  
		Last Modified: Fri, 23 Oct 2026 09:06:14 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:1.6-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:ab7a67b9d2db08340990b9202cdd04f83bdffabd2200d5bde49e08d6e67bb892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 KB (17339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9556b2a2cc904da6b7afab14b63e59776967db20a8c5a2d12c71c6df11aadb61`

```dockerfile
```

-	Layers:
	-	`sha256:f900f869a82544f6ff0e3d981372a0c755db6c02bf445bd8146495782cf87f15`  
		Last Modified: Fri, 23 Oct 2026 09:06:14 GMT  
		Size: 17.3 KB (17339 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:1.6-openssl` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:c9bb08389bf970e44943a808804b15020e75b99f3f8cafa61173c48581507205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7922670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d1c5febd56cd5ceb41905693444cf9c0808cb6bd7896ff6a3a34138309c50d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:52:25 GMT
ENV VERSION=1.6.15 DOWNLOAD_SHA256=5ff2271512f745bf1a451072cd3768a5daed71e90c5179fae12b049d6c02aa0f GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:52:25 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=1.6.15
# Fri, 23 Oct 2026 08:52:25 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/src/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v10 /usr/share/licenses/mosquitto/epl-v10 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:52:25 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:52:25 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 08:52:25 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:52:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:52:25 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ab9788ddceaca3d0974251f1ca7675ca676d807043d542152321321d6456c7`  
		Last Modified: Fri, 23 Oct 2026 08:52:30 GMT  
		Size: 3.7 MB (3732937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55bf11fcd96f8c504be8e9edda469e36a67593e5dd3c0f48edf7d79443b4a703`  
		Last Modified: Fri, 23 Oct 2026 08:52:30 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:1.6-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:b52e78e089c093bfa1653727e5188eced959bd40ccf3ec9c7a8ce91b566a2e97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.2 KB (553156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc4da63f0bbd5b7da0e267d6963f1fc07cbb1a4001c1c311dcbbc417607c098e`

```dockerfile
```

-	Layers:
	-	`sha256:cf7953e1e2bfb4378b99d3f5dd2301d54ad4381bcf89694591ca1eb7af9f2e0d`  
		Last Modified: Fri, 23 Oct 2026 08:52:30 GMT  
		Size: 535.6 KB (535587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d820950cad3a6d8c747e3b48d5170eb8a40bc6cca9a1c33f4108e70abe2e023`  
		Last Modified: Fri, 23 Oct 2026 08:52:30 GMT  
		Size: 17.6 KB (17569 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:1.6-openssl` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:aea966f627f5ec8a79598fe4c181f9fea823d30cf9095b9f2811596692fe03dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7264133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8378b0a775d502af0590510887f74971523793c0ed54644b46920608fe41111a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:27 GMT
ENV VERSION=1.6.15 DOWNLOAD_SHA256=5ff2271512f745bf1a451072cd3768a5daed71e90c5179fae12b049d6c02aa0f GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:27 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=1.6.15
# Fri, 23 Oct 2026 06:26:27 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/src/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v10 /usr/share/licenses/mosquitto/epl-v10 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:27 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:27 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:26:27 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:27 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33d559299bef4642b929aeff0db7412ebe495680014632ae6e668f464d52d5f`  
		Last Modified: Fri, 23 Oct 2026 06:26:32 GMT  
		Size: 3.6 MB (3586587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b99d22ede08e1d26dcb1146b63d390ac231232be4fd2e649e3df036584a23d`  
		Last Modified: Fri, 23 Oct 2026 06:26:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:1.6-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:18723892a6899bc7d1f30263e8231c396b6d66fceb79c710155381de5d986212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.7 KB (553657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3135e8483b117108c0daf59ed053ea786446f331cd885e8c32f7e67ea7971ee5`

```dockerfile
```

-	Layers:
	-	`sha256:d9d96fba2ba28593885c726ec7fd2fcfb76e94327068439ba31ac9652541b207`  
		Last Modified: Fri, 23 Oct 2026 06:26:31 GMT  
		Size: 536.2 KB (536190 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f1f7f515f49717ebe2b4e0104dec0e51eee88c240baaf6d878b4998d1443925`  
		Last Modified: Fri, 23 Oct 2026 06:26:31 GMT  
		Size: 17.5 KB (17467 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:1.6-openssl` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:27e92fbc28d1aa478682fc873640a20e1957426062cc1be3efbe7edbf29f1af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7463694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5074b10eeb4d1d63eeb9c5b68aa8e18091a4b68d58a311fcf93b92d1fcd691a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:05:52 GMT
ENV VERSION=1.6.15 DOWNLOAD_SHA256=5ff2271512f745bf1a451072cd3768a5daed71e90c5179fae12b049d6c02aa0f GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:05:52 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=1.6.15
# Thu, 22 Oct 2026 21:05:52 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/src/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v10 /usr/share/licenses/mosquitto/epl-v10 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:05:52 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:05:53 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 22 Oct 2026 21:05:53 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:05:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:05:53 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0263503e7da59278dab1749a3d162efca7dcaa4c2894754bf3c4b9e755f2c60a`  
		Last Modified: Thu, 22 Oct 2026 21:06:10 GMT  
		Size: 3.6 MB (3645077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a13b19db8dc834c1febdec2952655c7c7f08044bea1fbef318a4f804ecebbb6`  
		Last Modified: Thu, 22 Oct 2026 21:06:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:1.6-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:0e53ad4942b684cd129c738bd6db4937c7a302c954460d0073496dec34f49df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.1 KB (553098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25717a6b587bd967cf5a447bf1be5990047f9c138a83b24517fb54d453f40c01`

```dockerfile
```

-	Layers:
	-	`sha256:a2e597c83f4d3346665a77bb5d880f9b67c43b84980db789a8026d2ce3a53b7e`  
		Last Modified: Thu, 22 Oct 2026 21:06:10 GMT  
		Size: 535.6 KB (535576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df25749ec2948a1b61a66e3ac83619a75e3883a2caca95b4ec480bad1614e22b`  
		Last Modified: Thu, 22 Oct 2026 21:06:10 GMT  
		Size: 17.5 KB (17522 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:1.6-openssl` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:e25098c6a432fdf3b807b1a648d163fd1486df652b3948f69106c51ce74647d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7201133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535655dfeccff142a781838636007eb90bc7b950e33d7696ecfb483afa01bf05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:19:58 GMT
ENV VERSION=1.6.15 DOWNLOAD_SHA256=5ff2271512f745bf1a451072cd3768a5daed71e90c5179fae12b049d6c02aa0f GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:19:58 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=1.6.15
# Fri, 23 Oct 2026 09:19:58 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/src/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v10 /usr/share/licenses/mosquitto/epl-v10 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:19:58 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:19:58 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:19:58 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:19:58 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2eabce6116c4251a0304357bb5533566a37857b7f71e3341562a6538e654a40`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 3.5 MB (3483775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905520119088654ee8c4b3ae74a23aadb283de99e98fbc0ebaa9f4c83eb4b69e`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:1.6-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:84a05ea4d519f53dac8fdb6ec4d9f3cd05e3f7b587050b6c607f3fd45039f4d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.0 KB (553044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37d60eb953972d4a4994b786d77ce31b1d861c7908844eb5fa6b28ffac118499`

```dockerfile
```

-	Layers:
	-	`sha256:209c33e95c7269f07b090976ef728ebc0241676c3ccd33caf6f419f42c3a4f20`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 535.6 KB (535554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d7162e575cc4f5abd68d130ab9805372cf7187f99e1911ed185e3e55361a51f`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 17.5 KB (17490 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:1.6.15-openssl`

```console
$ docker pull eclipse-mosquitto@sha256:2a715a179777501daf0c339c118b5eb9608488f0e22e57072de4c51b7d3c6781
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:1.6.15-openssl` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:d83a6c964bd949abfc1adc9ad7cd0c3ce981faeda2c6c3511f0526ac4bd1aa2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7605997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c13372bfc8a51276fb7e83b4d3395acf14cbb890c3c58dea7cb03765f2a3ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:47:12 GMT
ENV VERSION=1.6.15 DOWNLOAD_SHA256=5ff2271512f745bf1a451072cd3768a5daed71e90c5179fae12b049d6c02aa0f GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:47:12 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=1.6.15
# Fri, 23 Oct 2026 06:47:12 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/src/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v10 /usr/share/licenses/mosquitto/epl-v10 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:47:12 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:47:12 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:47:12 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:47:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:47:12 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d756119ef6b60dd6c436cfc5ceb532327bd4ce842924bfa2498ff5c96e20df0f`  
		Last Modified: Fri, 23 Oct 2026 06:47:17 GMT  
		Size: 3.8 MB (3753529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2823d84cabc87c944993fc658ef9336394a5a23c311f38ef59d3d32ba1f3bc`  
		Last Modified: Fri, 23 Oct 2026 06:47:16 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:1.6.15-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:40f3601c9dea371e89b5c476a146ec69930681a24010c29545ae931b75babc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.7 KB (553695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6629f1f9c17d6cef362136696561a14d9e3d73e57885e2f60abd6b10d565f28`

```dockerfile
```

-	Layers:
	-	`sha256:274b0d526e16cb2cdac0df26faa3424bc56b8c58bf6599147ffc8f84dfce6374`  
		Last Modified: Fri, 23 Oct 2026 06:47:16 GMT  
		Size: 536.2 KB (536205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5171ac65ca8199efbd6b66ba4ba5eddb9861a7aa8044bda857b5f2a86095a7a6`  
		Last Modified: Fri, 23 Oct 2026 06:47:16 GMT  
		Size: 17.5 KB (17490 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:1.6.15-openssl` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:224fe3bb79e1c0bfeafb041b113fddc8a8faff9984039f8a0ac59bf69fc0a5a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6888328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145128ca1be2339c8569a6e353e181f5e90a085989f31d1dd0e6c1772bea41fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:06:11 GMT
ENV VERSION=1.6.15 DOWNLOAD_SHA256=5ff2271512f745bf1a451072cd3768a5daed71e90c5179fae12b049d6c02aa0f GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:06:11 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=1.6.15
# Fri, 23 Oct 2026 09:06:11 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/src/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v10 /usr/share/licenses/mosquitto/epl-v10 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:06:11 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:06:11 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:06:11 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:06:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:06:11 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e836292f44d9f87427309b9806dd8f16e75a817856c29bf3f57ba1629921762`  
		Last Modified: Fri, 23 Oct 2026 09:06:15 GMT  
		Size: 3.3 MB (3329902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173d3b7e38082ecf69932e4551623dc10ea0732ad4e8ec73ef9d8f0894b15e34`  
		Last Modified: Fri, 23 Oct 2026 09:06:14 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:1.6.15-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:ab7a67b9d2db08340990b9202cdd04f83bdffabd2200d5bde49e08d6e67bb892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 KB (17339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9556b2a2cc904da6b7afab14b63e59776967db20a8c5a2d12c71c6df11aadb61`

```dockerfile
```

-	Layers:
	-	`sha256:f900f869a82544f6ff0e3d981372a0c755db6c02bf445bd8146495782cf87f15`  
		Last Modified: Fri, 23 Oct 2026 09:06:14 GMT  
		Size: 17.3 KB (17339 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:1.6.15-openssl` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:c9bb08389bf970e44943a808804b15020e75b99f3f8cafa61173c48581507205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7922670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d1c5febd56cd5ceb41905693444cf9c0808cb6bd7896ff6a3a34138309c50d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:52:25 GMT
ENV VERSION=1.6.15 DOWNLOAD_SHA256=5ff2271512f745bf1a451072cd3768a5daed71e90c5179fae12b049d6c02aa0f GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:52:25 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=1.6.15
# Fri, 23 Oct 2026 08:52:25 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/src/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v10 /usr/share/licenses/mosquitto/epl-v10 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:52:25 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:52:25 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 08:52:25 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:52:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:52:25 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ab9788ddceaca3d0974251f1ca7675ca676d807043d542152321321d6456c7`  
		Last Modified: Fri, 23 Oct 2026 08:52:30 GMT  
		Size: 3.7 MB (3732937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55bf11fcd96f8c504be8e9edda469e36a67593e5dd3c0f48edf7d79443b4a703`  
		Last Modified: Fri, 23 Oct 2026 08:52:30 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:1.6.15-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:b52e78e089c093bfa1653727e5188eced959bd40ccf3ec9c7a8ce91b566a2e97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.2 KB (553156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc4da63f0bbd5b7da0e267d6963f1fc07cbb1a4001c1c311dcbbc417607c098e`

```dockerfile
```

-	Layers:
	-	`sha256:cf7953e1e2bfb4378b99d3f5dd2301d54ad4381bcf89694591ca1eb7af9f2e0d`  
		Last Modified: Fri, 23 Oct 2026 08:52:30 GMT  
		Size: 535.6 KB (535587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d820950cad3a6d8c747e3b48d5170eb8a40bc6cca9a1c33f4108e70abe2e023`  
		Last Modified: Fri, 23 Oct 2026 08:52:30 GMT  
		Size: 17.6 KB (17569 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:1.6.15-openssl` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:aea966f627f5ec8a79598fe4c181f9fea823d30cf9095b9f2811596692fe03dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7264133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8378b0a775d502af0590510887f74971523793c0ed54644b46920608fe41111a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:27 GMT
ENV VERSION=1.6.15 DOWNLOAD_SHA256=5ff2271512f745bf1a451072cd3768a5daed71e90c5179fae12b049d6c02aa0f GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:27 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=1.6.15
# Fri, 23 Oct 2026 06:26:27 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/src/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v10 /usr/share/licenses/mosquitto/epl-v10 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:27 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:27 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:26:27 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:27 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33d559299bef4642b929aeff0db7412ebe495680014632ae6e668f464d52d5f`  
		Last Modified: Fri, 23 Oct 2026 06:26:32 GMT  
		Size: 3.6 MB (3586587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b99d22ede08e1d26dcb1146b63d390ac231232be4fd2e649e3df036584a23d`  
		Last Modified: Fri, 23 Oct 2026 06:26:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:1.6.15-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:18723892a6899bc7d1f30263e8231c396b6d66fceb79c710155381de5d986212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.7 KB (553657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3135e8483b117108c0daf59ed053ea786446f331cd885e8c32f7e67ea7971ee5`

```dockerfile
```

-	Layers:
	-	`sha256:d9d96fba2ba28593885c726ec7fd2fcfb76e94327068439ba31ac9652541b207`  
		Last Modified: Fri, 23 Oct 2026 06:26:31 GMT  
		Size: 536.2 KB (536190 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f1f7f515f49717ebe2b4e0104dec0e51eee88c240baaf6d878b4998d1443925`  
		Last Modified: Fri, 23 Oct 2026 06:26:31 GMT  
		Size: 17.5 KB (17467 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:1.6.15-openssl` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:27e92fbc28d1aa478682fc873640a20e1957426062cc1be3efbe7edbf29f1af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7463694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5074b10eeb4d1d63eeb9c5b68aa8e18091a4b68d58a311fcf93b92d1fcd691a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:05:52 GMT
ENV VERSION=1.6.15 DOWNLOAD_SHA256=5ff2271512f745bf1a451072cd3768a5daed71e90c5179fae12b049d6c02aa0f GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:05:52 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=1.6.15
# Thu, 22 Oct 2026 21:05:52 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/src/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v10 /usr/share/licenses/mosquitto/epl-v10 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:05:52 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:05:53 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 22 Oct 2026 21:05:53 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:05:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:05:53 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0263503e7da59278dab1749a3d162efca7dcaa4c2894754bf3c4b9e755f2c60a`  
		Last Modified: Thu, 22 Oct 2026 21:06:10 GMT  
		Size: 3.6 MB (3645077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a13b19db8dc834c1febdec2952655c7c7f08044bea1fbef318a4f804ecebbb6`  
		Last Modified: Thu, 22 Oct 2026 21:06:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:1.6.15-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:0e53ad4942b684cd129c738bd6db4937c7a302c954460d0073496dec34f49df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.1 KB (553098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25717a6b587bd967cf5a447bf1be5990047f9c138a83b24517fb54d453f40c01`

```dockerfile
```

-	Layers:
	-	`sha256:a2e597c83f4d3346665a77bb5d880f9b67c43b84980db789a8026d2ce3a53b7e`  
		Last Modified: Thu, 22 Oct 2026 21:06:10 GMT  
		Size: 535.6 KB (535576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df25749ec2948a1b61a66e3ac83619a75e3883a2caca95b4ec480bad1614e22b`  
		Last Modified: Thu, 22 Oct 2026 21:06:10 GMT  
		Size: 17.5 KB (17522 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:1.6.15-openssl` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:e25098c6a432fdf3b807b1a648d163fd1486df652b3948f69106c51ce74647d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7201133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535655dfeccff142a781838636007eb90bc7b950e33d7696ecfb483afa01bf05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:19:58 GMT
ENV VERSION=1.6.15 DOWNLOAD_SHA256=5ff2271512f745bf1a451072cd3768a5daed71e90c5179fae12b049d6c02aa0f GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:19:58 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=1.6.15
# Fri, 23 Oct 2026 09:19:58 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/src/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v10 /usr/share/licenses/mosquitto/epl-v10 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:19:58 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:19:58 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:19:58 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:19:58 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2eabce6116c4251a0304357bb5533566a37857b7f71e3341562a6538e654a40`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 3.5 MB (3483775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905520119088654ee8c4b3ae74a23aadb283de99e98fbc0ebaa9f4c83eb4b69e`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:1.6.15-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:84a05ea4d519f53dac8fdb6ec4d9f3cd05e3f7b587050b6c607f3fd45039f4d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.0 KB (553044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37d60eb953972d4a4994b786d77ce31b1d861c7908844eb5fa6b28ffac118499`

```dockerfile
```

-	Layers:
	-	`sha256:209c33e95c7269f07b090976ef728ebc0241676c3ccd33caf6f419f42c3a4f20`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 535.6 KB (535554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d7162e575cc4f5abd68d130ab9805372cf7187f99e1911ed185e3e55361a51f`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 17.5 KB (17490 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2`

```console
$ docker pull eclipse-mosquitto@sha256:860aeb5d63ce509508f6dcfb2bc8a1c1dd2bc60555b562b45ce90e52d8dabb0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:2` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:888af343ab81912c1f4a88cda46c687a2ce607ed3732754c36d8b8879d17a8b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12968070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46a9080d48c49e81eb31e6d2abed5d2cdb1a6188ed2380c92edde48f2689c78`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:46:50 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:46:50 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 06:46:50 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:46:50 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:46:50 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:46:50 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:46:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:46:50 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3a670d8ca07db21eeb69550d648145b7d8d1b3bf4f2957aa4d60afae3d2fee`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 9.1 MB (9115565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb433ea0830ebd321ff32d1850cd1f578364140bc1d8fdea589f1e1e9670ace`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:67a6366c31fd995f301df6088d27f5de43f22d75f9d7d74044a6f97de5a3a4b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.6 KB (626596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0b7d17145fa974caa6c62301b2539033dbb5ef255330f79916f9ed40d83983`

```dockerfile
```

-	Layers:
	-	`sha256:182e60262c7c4beeede87da4e4f63901a9da41976fb25916ef41c65ad0265cc5`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 604.4 KB (604378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8af74ee8c076ca2809ccc4ea52762ef5c14a28a436a51c4eb1b5b88a8c0eb6b7`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:4a27c9c03e04a94642a2ab8419bb40cc212e3d396441ca8383f442a75c857058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.2 MB (12218868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad10d57d358e4b3560af50a8f583ae606582cc08fcfd2ac788fac2f076e116c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:05:45 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:05:45 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 09:05:45 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:05:45 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:05:45 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:05:45 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:05:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:05:45 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060e74f589c5f29594869254fd960f31666cf450604dfada6551776d535aab98`  
		Last Modified: Fri, 23 Oct 2026 09:05:50 GMT  
		Size: 8.7 MB (8660405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd97f6cdd29b394c53f169116c6da7d836ff2693e78c3b37c518105e0f9c375`  
		Last Modified: Fri, 23 Oct 2026 09:05:49 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:e6881a02c41961603d69ad462fb0a2978eed23489c86e8d275728d9888046816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 KB (22091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a68e779baeb778d2c46adafa7ad45b717682e0b6f2e60c1acce389e672b79cd2`

```dockerfile
```

-	Layers:
	-	`sha256:9d2dd7566618c15b46bff7d044b65564f8553654a5b4636e656e2a42e7029904`  
		Last Modified: Fri, 23 Oct 2026 09:05:49 GMT  
		Size: 22.1 KB (22091 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:fd55f410557f2d2f6f0a543b8d4a8df097e04d717b279fb8c10ed81bb23c2cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13186357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee2ff5a675f6206f2fb41d0403649d142cb26937eb5730d8d8d05d0499b3399`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:51:40 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:51:40 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 08:51:40 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:51:40 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:51:40 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 08:51:40 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:51:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:51:40 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612794b43919944812c006d7e952e486f2da45a7c499d9f277dfd0c3d0485504`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 9.0 MB (8996587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7cc0b66b613aaabd2076f3cf7dff055d5a3259d5569ffbcf82ceccda9df3bf`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:5f3af85525a086d60c922472ef9602cc0edbac2794c077204e68ebea54717d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 KB (627332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80587483e761d8a9a4c6196bf932b16170daff74315548f1fe91fc6eca469f17`

```dockerfile
```

-	Layers:
	-	`sha256:41c5f75a8caa813bbee233cf8e605285f269b49ab98b4099134595ed3b358c10`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 605.0 KB (604998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:393e70fe9afd1f8dc72d4bc09b10e112e82a7f986d974f0f14190f76e2c5c4dd`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 22.3 KB (22334 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:adb57345c51a86722a1d20b5bbe6777c27db3709852eb828cf312fdbd7b2147a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12615205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa7fc60ead13f1bb70e1c404521d6992a1ad7e55d44828d94ebeee284f3958b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:01 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:01 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 06:26:01 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:01 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:26:02 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:02 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e82191b3b464f9b18b496c365555b37fbfdfbb09b4e00c21a68c92fa9eadee6`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 8.9 MB (8937621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32003323ba34bf9d52240091751b639989c561a3d0206d9915a5156ea2d465b`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:ee4641797d4c8a101447f9aaa06bc258c28baca066474098a7a327cd9d5b3fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.5 KB (626529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5fa1d7f6eab840fa13593fc094d93ecfbddc3ba2e0b33454223ff6e0c4e81fc`

```dockerfile
```

-	Layers:
	-	`sha256:95ddae249038a8d8a14c9cfd8720995085e3817fac11cb4865767791dfd97b44`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 604.3 KB (604348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37c0943bb5daf27407963dcc918f1decab52a68c2c80b0596c1209cb528f85fe`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:8a2c00110b98160bdb6b574e268d6adbebb377fcdebd95d5fd05452865b9c7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13072715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8442f665243affaa87b0c6a29c3beb13bf965c5d60d504b70679aa99b2cb5ae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:04:44 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:04:44 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 22 Oct 2026 21:04:44 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:04:44 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:04:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 22 Oct 2026 21:04:44 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:04:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:04:44 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72498660c29fb386d4738b43c42f7c2635ce38f171fcc41b9d4adcb5daf11f62`  
		Last Modified: Thu, 22 Oct 2026 21:05:01 GMT  
		Size: 9.3 MB (9254061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659ac389bfa379cfcba8e93b66b612927472fd545599dbfa4f60c9323facaf84`  
		Last Modified: Thu, 22 Oct 2026 21:05:00 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:aaca468bc679dac40234fc772c9428a2fe765527d37525a8dddc17f0115c0e1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b93f858733001122ac7300043f3ccdf7f3ea1186fb16e7bb992ac936bebb5bd`

```dockerfile
```

-	Layers:
	-	`sha256:08d40c78e3cf2635cb9e42bea05d3ead1e59cba5b7f4728416563b7563432043`  
		Last Modified: Thu, 22 Oct 2026 21:05:01 GMT  
		Size: 605.0 KB (604969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e962486a0471bb90bd34c9c2b0aafe42e7d27e065b643e0e489ccdb175145a57`  
		Last Modified: Thu, 22 Oct 2026 21:05:00 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:0ffd6ca051cb59f9eb5154e5e803e3fc4a524453f4666cf0f26b34c9a55a2bfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12878157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e242eacfb6fb2252f9e292fc8548f241973dd383ca77061be2c61842074c890`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:19:55 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:19:55 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 09:19:55 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:19:55 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:19:55 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:19:55 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:19:55 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9045db6964df5e56c63f6d3305859fe71ba48c26130739cf3beb8f34aa9945`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 9.2 MB (9160760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39002451bc06ea2d0cd680ab10b4a9e9f0f30440c973a1edf72e2b6635387f1a`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:4acbb3b02195c63387720caa7700cb3df6a03c23390dccb51cc62cc47f9993be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.1 KB (627146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477d956887ebafa62183d75cb47fbda83f43124ffb096cafabeea5f5b4613322`

```dockerfile
```

-	Layers:
	-	`sha256:a9f50e12f182c8fe358a678f53e4562b19d3bb507785fd527e97f96ddac7fc80`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 604.9 KB (604929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01bfaed1d2d743336d3488619858475776cc8934202be6cbc1d844798ad32939`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 22.2 KB (22217 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2-openssl`

```console
$ docker pull eclipse-mosquitto@sha256:09b62ff32c2e7b64d4b431b9a89236073289b68db273de2b089edeb9b0d92b5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:2-openssl` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:8bf6e60e2531db0808e5ce471fc238a53050ec0054576b98f595841a0a491601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7717986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9604149dcfb230c9ac92d09c9508cb4900de2aa8569a2f8c2421011be8580d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:47:42 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:47:42 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 06:47:42 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:47:42 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:47:42 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 06:47:42 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:47:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:47:42 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2d242208ef16787f23b7306733aa20f90353970bc19af5d3531d0b4214b963`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 3.9 MB (3865391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632e4073c96d0148c2ed4e86f1d4cc49444ec74242fcb91749fe12239ad14765`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:9c84ecc355825f63ea77707990d28d2c24a4cb823f4e647ae0b6af9359bdd66f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.0 KB (558978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c280c5a2ba46065ba04cbdfe1c579a8a196094ef9fb69037e46fed80c1e749`

```dockerfile
```

-	Layers:
	-	`sha256:319b516c708dcfee165bfcca7b2f5f8690754969c0c8a04f044da5dce81fe7c7`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 539.1 KB (539078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d226e60ffbf855691ddfcb51b24337f8eea9eb9c90ffcf18494a58551a170757`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2-openssl` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:131e8032faa3ab93bd038c4b9c002ace9735e3b7e08f0fbe38e73d1651139206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6997602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e291dcdb6c5d5bdfa830801db4e771a367ef2d28d34664453bef2f4fff20f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:06:34 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:06:34 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 09:06:34 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:06:34 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:06:34 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 09:06:34 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:06:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:06:34 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2935ac951a448c88df9efc0a9b468cd78b04c120a188290dfd81042e479ffb31`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 3.4 MB (3439047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cc4aec7724c03604be7887309c53349deade33b61d0d98dd89b50b40f57346`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:2df6b1d9df6f3db9180c1f5353767d5287428c91145ab4773a546bd56210c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 KB (19781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:866b4db9fb24a4ef4de477a8461249bd3745c033ce7912e87a91cc5e91c8d611`

```dockerfile
```

-	Layers:
	-	`sha256:cd02f439a50e07743aecfb8e342c40627f72472309d90a5f15c73cad07bee1fc`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 19.8 KB (19781 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2-openssl` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:cc0d09fe917228a8ade6f88964bf09602485baa485cbc1fa4e1f752f9ae8698f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8035865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2cf757f19a94f094ef2a2e56471a819551d4755e63d0b3ade470d697c072595`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:52:08 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:52:08 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 08:52:08 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:52:08 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:52:08 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 08:52:08 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:52:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:52:08 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dba6cc3dbda71744b64e628c0cdebff24764fad0e55a1340eb2e180ea0a2af9`  
		Last Modified: Fri, 23 Oct 2026 08:52:14 GMT  
		Size: 3.8 MB (3846002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6ff6a6f7d44e60980ce6068f66d280b3bfaf3cf5903f0714db1577df5fcb99`  
		Last Modified: Fri, 23 Oct 2026 08:52:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:52b2e511aa70e98a45e265cb9461717f5afda63443da9dd217a3d8719f5e9657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.5 KB (558536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94cb233633de772bab09fa772b12a672067657e09b90f2fcbe710e74eda29b2d`

```dockerfile
```

-	Layers:
	-	`sha256:001a15ed906c19436abfffda283be8a1442d501d883a852240b332e08fe8d850`  
		Last Modified: Fri, 23 Oct 2026 08:52:14 GMT  
		Size: 538.5 KB (538508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcd2590ee50b6efba9401cad119d8adf5c3a7888b3afedac12590cae87ec39c0`  
		Last Modified: Fri, 23 Oct 2026 08:52:13 GMT  
		Size: 20.0 KB (20028 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2-openssl` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:69a5f98b859d81170f02d597b32ce49ae9d344326eafdc44803d1b44ee9b977a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb82b10ff0f6236bc48062a762054c1b085ae5f249c2b3ca3a480c91a942b9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:56 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:56 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 06:26:56 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:56 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:57 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 06:26:57 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:57 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1186c08ea0de57ac64c7088fdeefaeb76ce528328a463439fd8f314a95e5476`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 3.7 MB (3712695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eae1d5bc15fd29f979e3ba60c4ac6e98c7141dd4e73dd21f5a2f758918bf33c`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:1940d78a95fbdb1d66fd48df8f53cfd102dfc9d706452adf6853c50253581fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.9 KB (558901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6012dee6d3ced843369b1f765104dd63f84e22b25746ec0910d3ddeb2b883c`

```dockerfile
```

-	Layers:
	-	`sha256:b54a9400939084606a0342dc24fcdaec7aca4d878bdc5ecd3593fe9c03a2bcef`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 539.0 KB (539043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3490fa0b8b71d0988b7856e44fb2ff9b25381d887d0471d5fdae44e62b81730`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 19.9 KB (19858 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2-openssl` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:de7a3b493660b7846ef47127cca3a874e519fd3d5b868eb085be6fcc0f4f4fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7602054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96e4984a43fccf5081511db29e407c30106c0d5ec60ac52b7a7829bfa827d96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:04:38 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:04:38 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 22 Oct 2026 21:04:38 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:04:38 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:04:38 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 22 Oct 2026 21:04:38 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:04:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:04:38 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7344b3b3f6026b241f93a0e9d8608640384d3e4f8c96d7a58f96b439f3579d6`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 3.8 MB (3783308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca92b4cecdc47353a6314bdeccbaec37b2866038d067bd57d8fe1ad3de35d2b`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:290c2dddf33d4b688e8a54ecf2b21c0cc065a4b6bcddd80ebc09c9799e5f5be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.4 KB (558429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93c8799269c617d500da00150fc3e445099c2db8eb80daf86f0ed4ffca148aa`

```dockerfile
```

-	Layers:
	-	`sha256:f40bab0781280e762b78e9330316e5e6f5f6f169030d983be84b2870cd928b11`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 538.5 KB (538473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7947e13dcb20fb53d3a5e7f8e289fe5271652c298aee326fe26d696dc5924b`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 20.0 KB (19956 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2-openssl` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:3006bcdad6b6fce74932a09e434ab9a32d5ec91198e647215d82e29757bcf257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7323771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f6760f7325118e16d42fec5fdd462af72a29cfc64d44c589c3a9a1ba26c9365`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:20:00 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:20:00 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 09:20:00 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:20:00 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:20:00 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 09:20:00 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:20:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:20:00 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cef18ff773cd0b1080ea9c5c1490653faa03bcbb803bc4bd159583355c240cc`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 3.6 MB (3606283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02dbcb80360952082bcf19af62fdea938561ae932e1faa9f6c313ad4e1ae68`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:8aab25cf7dac7a47441268432caac00e7c968593fcd719941adf51012587c63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.3 KB (558327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5e0ad36c01d75817985a5a3f6b5d6008cb904731404ec015a49500d89f21c0`

```dockerfile
```

-	Layers:
	-	`sha256:75ac7b022f274dcc16c56637b2d7b6d5932aba2772632ce06c67c0a4bf492d1c`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 538.4 KB (538427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5862eee4b3f6791a95cecb3831e7dba03dbcb777aa92c32446fa0a0359cf53f4`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2.0`

```console
$ docker pull eclipse-mosquitto@sha256:09b62ff32c2e7b64d4b431b9a89236073289b68db273de2b089edeb9b0d92b5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:2.0` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:8bf6e60e2531db0808e5ce471fc238a53050ec0054576b98f595841a0a491601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7717986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9604149dcfb230c9ac92d09c9508cb4900de2aa8569a2f8c2421011be8580d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:47:42 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:47:42 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 06:47:42 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:47:42 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:47:42 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 06:47:42 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:47:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:47:42 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2d242208ef16787f23b7306733aa20f90353970bc19af5d3531d0b4214b963`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 3.9 MB (3865391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632e4073c96d0148c2ed4e86f1d4cc49444ec74242fcb91749fe12239ad14765`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:9c84ecc355825f63ea77707990d28d2c24a4cb823f4e647ae0b6af9359bdd66f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.0 KB (558978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c280c5a2ba46065ba04cbdfe1c579a8a196094ef9fb69037e46fed80c1e749`

```dockerfile
```

-	Layers:
	-	`sha256:319b516c708dcfee165bfcca7b2f5f8690754969c0c8a04f044da5dce81fe7c7`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 539.1 KB (539078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d226e60ffbf855691ddfcb51b24337f8eea9eb9c90ffcf18494a58551a170757`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:131e8032faa3ab93bd038c4b9c002ace9735e3b7e08f0fbe38e73d1651139206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6997602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e291dcdb6c5d5bdfa830801db4e771a367ef2d28d34664453bef2f4fff20f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:06:34 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:06:34 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 09:06:34 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:06:34 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:06:34 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 09:06:34 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:06:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:06:34 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2935ac951a448c88df9efc0a9b468cd78b04c120a188290dfd81042e479ffb31`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 3.4 MB (3439047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cc4aec7724c03604be7887309c53349deade33b61d0d98dd89b50b40f57346`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:2df6b1d9df6f3db9180c1f5353767d5287428c91145ab4773a546bd56210c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 KB (19781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:866b4db9fb24a4ef4de477a8461249bd3745c033ce7912e87a91cc5e91c8d611`

```dockerfile
```

-	Layers:
	-	`sha256:cd02f439a50e07743aecfb8e342c40627f72472309d90a5f15c73cad07bee1fc`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 19.8 KB (19781 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:cc0d09fe917228a8ade6f88964bf09602485baa485cbc1fa4e1f752f9ae8698f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8035865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2cf757f19a94f094ef2a2e56471a819551d4755e63d0b3ade470d697c072595`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:52:08 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:52:08 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 08:52:08 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:52:08 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:52:08 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 08:52:08 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:52:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:52:08 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dba6cc3dbda71744b64e628c0cdebff24764fad0e55a1340eb2e180ea0a2af9`  
		Last Modified: Fri, 23 Oct 2026 08:52:14 GMT  
		Size: 3.8 MB (3846002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6ff6a6f7d44e60980ce6068f66d280b3bfaf3cf5903f0714db1577df5fcb99`  
		Last Modified: Fri, 23 Oct 2026 08:52:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:52b2e511aa70e98a45e265cb9461717f5afda63443da9dd217a3d8719f5e9657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.5 KB (558536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94cb233633de772bab09fa772b12a672067657e09b90f2fcbe710e74eda29b2d`

```dockerfile
```

-	Layers:
	-	`sha256:001a15ed906c19436abfffda283be8a1442d501d883a852240b332e08fe8d850`  
		Last Modified: Fri, 23 Oct 2026 08:52:14 GMT  
		Size: 538.5 KB (538508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcd2590ee50b6efba9401cad119d8adf5c3a7888b3afedac12590cae87ec39c0`  
		Last Modified: Fri, 23 Oct 2026 08:52:13 GMT  
		Size: 20.0 KB (20028 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:69a5f98b859d81170f02d597b32ce49ae9d344326eafdc44803d1b44ee9b977a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb82b10ff0f6236bc48062a762054c1b085ae5f249c2b3ca3a480c91a942b9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:56 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:56 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 06:26:56 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:56 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:57 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 06:26:57 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:57 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1186c08ea0de57ac64c7088fdeefaeb76ce528328a463439fd8f314a95e5476`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 3.7 MB (3712695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eae1d5bc15fd29f979e3ba60c4ac6e98c7141dd4e73dd21f5a2f758918bf33c`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:1940d78a95fbdb1d66fd48df8f53cfd102dfc9d706452adf6853c50253581fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.9 KB (558901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6012dee6d3ced843369b1f765104dd63f84e22b25746ec0910d3ddeb2b883c`

```dockerfile
```

-	Layers:
	-	`sha256:b54a9400939084606a0342dc24fcdaec7aca4d878bdc5ecd3593fe9c03a2bcef`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 539.0 KB (539043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3490fa0b8b71d0988b7856e44fb2ff9b25381d887d0471d5fdae44e62b81730`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 19.9 KB (19858 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:de7a3b493660b7846ef47127cca3a874e519fd3d5b868eb085be6fcc0f4f4fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7602054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96e4984a43fccf5081511db29e407c30106c0d5ec60ac52b7a7829bfa827d96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:04:38 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:04:38 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 22 Oct 2026 21:04:38 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:04:38 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:04:38 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 22 Oct 2026 21:04:38 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:04:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:04:38 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7344b3b3f6026b241f93a0e9d8608640384d3e4f8c96d7a58f96b439f3579d6`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 3.8 MB (3783308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca92b4cecdc47353a6314bdeccbaec37b2866038d067bd57d8fe1ad3de35d2b`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:290c2dddf33d4b688e8a54ecf2b21c0cc065a4b6bcddd80ebc09c9799e5f5be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.4 KB (558429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93c8799269c617d500da00150fc3e445099c2db8eb80daf86f0ed4ffca148aa`

```dockerfile
```

-	Layers:
	-	`sha256:f40bab0781280e762b78e9330316e5e6f5f6f169030d983be84b2870cd928b11`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 538.5 KB (538473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7947e13dcb20fb53d3a5e7f8e289fe5271652c298aee326fe26d696dc5924b`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 20.0 KB (19956 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:3006bcdad6b6fce74932a09e434ab9a32d5ec91198e647215d82e29757bcf257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7323771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f6760f7325118e16d42fec5fdd462af72a29cfc64d44c589c3a9a1ba26c9365`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:20:00 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:20:00 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 09:20:00 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:20:00 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:20:00 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 09:20:00 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:20:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:20:00 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cef18ff773cd0b1080ea9c5c1490653faa03bcbb803bc4bd159583355c240cc`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 3.6 MB (3606283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02dbcb80360952082bcf19af62fdea938561ae932e1faa9f6c313ad4e1ae68`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:8aab25cf7dac7a47441268432caac00e7c968593fcd719941adf51012587c63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.3 KB (558327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5e0ad36c01d75817985a5a3f6b5d6008cb904731404ec015a49500d89f21c0`

```dockerfile
```

-	Layers:
	-	`sha256:75ac7b022f274dcc16c56637b2d7b6d5932aba2772632ce06c67c0a4bf492d1c`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 538.4 KB (538427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5862eee4b3f6791a95cecb3831e7dba03dbcb777aa92c32446fa0a0359cf53f4`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2.0-openssl`

```console
$ docker pull eclipse-mosquitto@sha256:09b62ff32c2e7b64d4b431b9a89236073289b68db273de2b089edeb9b0d92b5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:2.0-openssl` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:8bf6e60e2531db0808e5ce471fc238a53050ec0054576b98f595841a0a491601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7717986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9604149dcfb230c9ac92d09c9508cb4900de2aa8569a2f8c2421011be8580d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:47:42 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:47:42 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 06:47:42 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:47:42 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:47:42 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 06:47:42 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:47:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:47:42 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2d242208ef16787f23b7306733aa20f90353970bc19af5d3531d0b4214b963`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 3.9 MB (3865391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632e4073c96d0148c2ed4e86f1d4cc49444ec74242fcb91749fe12239ad14765`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:9c84ecc355825f63ea77707990d28d2c24a4cb823f4e647ae0b6af9359bdd66f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.0 KB (558978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c280c5a2ba46065ba04cbdfe1c579a8a196094ef9fb69037e46fed80c1e749`

```dockerfile
```

-	Layers:
	-	`sha256:319b516c708dcfee165bfcca7b2f5f8690754969c0c8a04f044da5dce81fe7c7`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 539.1 KB (539078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d226e60ffbf855691ddfcb51b24337f8eea9eb9c90ffcf18494a58551a170757`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0-openssl` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:131e8032faa3ab93bd038c4b9c002ace9735e3b7e08f0fbe38e73d1651139206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6997602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e291dcdb6c5d5bdfa830801db4e771a367ef2d28d34664453bef2f4fff20f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:06:34 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:06:34 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 09:06:34 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:06:34 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:06:34 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 09:06:34 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:06:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:06:34 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2935ac951a448c88df9efc0a9b468cd78b04c120a188290dfd81042e479ffb31`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 3.4 MB (3439047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cc4aec7724c03604be7887309c53349deade33b61d0d98dd89b50b40f57346`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:2df6b1d9df6f3db9180c1f5353767d5287428c91145ab4773a546bd56210c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 KB (19781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:866b4db9fb24a4ef4de477a8461249bd3745c033ce7912e87a91cc5e91c8d611`

```dockerfile
```

-	Layers:
	-	`sha256:cd02f439a50e07743aecfb8e342c40627f72472309d90a5f15c73cad07bee1fc`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 19.8 KB (19781 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0-openssl` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:cc0d09fe917228a8ade6f88964bf09602485baa485cbc1fa4e1f752f9ae8698f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8035865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2cf757f19a94f094ef2a2e56471a819551d4755e63d0b3ade470d697c072595`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:52:08 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:52:08 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 08:52:08 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:52:08 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:52:08 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 08:52:08 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:52:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:52:08 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dba6cc3dbda71744b64e628c0cdebff24764fad0e55a1340eb2e180ea0a2af9`  
		Last Modified: Fri, 23 Oct 2026 08:52:14 GMT  
		Size: 3.8 MB (3846002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6ff6a6f7d44e60980ce6068f66d280b3bfaf3cf5903f0714db1577df5fcb99`  
		Last Modified: Fri, 23 Oct 2026 08:52:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:52b2e511aa70e98a45e265cb9461717f5afda63443da9dd217a3d8719f5e9657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.5 KB (558536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94cb233633de772bab09fa772b12a672067657e09b90f2fcbe710e74eda29b2d`

```dockerfile
```

-	Layers:
	-	`sha256:001a15ed906c19436abfffda283be8a1442d501d883a852240b332e08fe8d850`  
		Last Modified: Fri, 23 Oct 2026 08:52:14 GMT  
		Size: 538.5 KB (538508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcd2590ee50b6efba9401cad119d8adf5c3a7888b3afedac12590cae87ec39c0`  
		Last Modified: Fri, 23 Oct 2026 08:52:13 GMT  
		Size: 20.0 KB (20028 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0-openssl` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:69a5f98b859d81170f02d597b32ce49ae9d344326eafdc44803d1b44ee9b977a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb82b10ff0f6236bc48062a762054c1b085ae5f249c2b3ca3a480c91a942b9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:56 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:56 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 06:26:56 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:56 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:57 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 06:26:57 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:57 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1186c08ea0de57ac64c7088fdeefaeb76ce528328a463439fd8f314a95e5476`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 3.7 MB (3712695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eae1d5bc15fd29f979e3ba60c4ac6e98c7141dd4e73dd21f5a2f758918bf33c`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:1940d78a95fbdb1d66fd48df8f53cfd102dfc9d706452adf6853c50253581fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.9 KB (558901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6012dee6d3ced843369b1f765104dd63f84e22b25746ec0910d3ddeb2b883c`

```dockerfile
```

-	Layers:
	-	`sha256:b54a9400939084606a0342dc24fcdaec7aca4d878bdc5ecd3593fe9c03a2bcef`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 539.0 KB (539043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3490fa0b8b71d0988b7856e44fb2ff9b25381d887d0471d5fdae44e62b81730`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 19.9 KB (19858 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0-openssl` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:de7a3b493660b7846ef47127cca3a874e519fd3d5b868eb085be6fcc0f4f4fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7602054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96e4984a43fccf5081511db29e407c30106c0d5ec60ac52b7a7829bfa827d96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:04:38 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:04:38 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 22 Oct 2026 21:04:38 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:04:38 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:04:38 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 22 Oct 2026 21:04:38 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:04:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:04:38 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7344b3b3f6026b241f93a0e9d8608640384d3e4f8c96d7a58f96b439f3579d6`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 3.8 MB (3783308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca92b4cecdc47353a6314bdeccbaec37b2866038d067bd57d8fe1ad3de35d2b`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:290c2dddf33d4b688e8a54ecf2b21c0cc065a4b6bcddd80ebc09c9799e5f5be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.4 KB (558429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93c8799269c617d500da00150fc3e445099c2db8eb80daf86f0ed4ffca148aa`

```dockerfile
```

-	Layers:
	-	`sha256:f40bab0781280e762b78e9330316e5e6f5f6f169030d983be84b2870cd928b11`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 538.5 KB (538473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7947e13dcb20fb53d3a5e7f8e289fe5271652c298aee326fe26d696dc5924b`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 20.0 KB (19956 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0-openssl` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:3006bcdad6b6fce74932a09e434ab9a32d5ec91198e647215d82e29757bcf257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7323771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f6760f7325118e16d42fec5fdd462af72a29cfc64d44c589c3a9a1ba26c9365`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:20:00 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:20:00 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 09:20:00 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:20:00 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:20:00 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 09:20:00 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:20:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:20:00 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cef18ff773cd0b1080ea9c5c1490653faa03bcbb803bc4bd159583355c240cc`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 3.6 MB (3606283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02dbcb80360952082bcf19af62fdea938561ae932e1faa9f6c313ad4e1ae68`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:8aab25cf7dac7a47441268432caac00e7c968593fcd719941adf51012587c63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.3 KB (558327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5e0ad36c01d75817985a5a3f6b5d6008cb904731404ec015a49500d89f21c0`

```dockerfile
```

-	Layers:
	-	`sha256:75ac7b022f274dcc16c56637b2d7b6d5932aba2772632ce06c67c0a4bf492d1c`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 538.4 KB (538427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5862eee4b3f6791a95cecb3831e7dba03dbcb777aa92c32446fa0a0359cf53f4`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2.0.22`

```console
$ docker pull eclipse-mosquitto@sha256:09b62ff32c2e7b64d4b431b9a89236073289b68db273de2b089edeb9b0d92b5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:2.0.22` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:8bf6e60e2531db0808e5ce471fc238a53050ec0054576b98f595841a0a491601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7717986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9604149dcfb230c9ac92d09c9508cb4900de2aa8569a2f8c2421011be8580d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:47:42 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:47:42 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 06:47:42 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:47:42 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:47:42 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 06:47:42 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:47:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:47:42 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2d242208ef16787f23b7306733aa20f90353970bc19af5d3531d0b4214b963`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 3.9 MB (3865391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632e4073c96d0148c2ed4e86f1d4cc49444ec74242fcb91749fe12239ad14765`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0.22` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:9c84ecc355825f63ea77707990d28d2c24a4cb823f4e647ae0b6af9359bdd66f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.0 KB (558978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c280c5a2ba46065ba04cbdfe1c579a8a196094ef9fb69037e46fed80c1e749`

```dockerfile
```

-	Layers:
	-	`sha256:319b516c708dcfee165bfcca7b2f5f8690754969c0c8a04f044da5dce81fe7c7`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 539.1 KB (539078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d226e60ffbf855691ddfcb51b24337f8eea9eb9c90ffcf18494a58551a170757`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0.22` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:131e8032faa3ab93bd038c4b9c002ace9735e3b7e08f0fbe38e73d1651139206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6997602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e291dcdb6c5d5bdfa830801db4e771a367ef2d28d34664453bef2f4fff20f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:06:34 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:06:34 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 09:06:34 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:06:34 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:06:34 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 09:06:34 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:06:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:06:34 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2935ac951a448c88df9efc0a9b468cd78b04c120a188290dfd81042e479ffb31`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 3.4 MB (3439047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cc4aec7724c03604be7887309c53349deade33b61d0d98dd89b50b40f57346`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0.22` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:2df6b1d9df6f3db9180c1f5353767d5287428c91145ab4773a546bd56210c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 KB (19781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:866b4db9fb24a4ef4de477a8461249bd3745c033ce7912e87a91cc5e91c8d611`

```dockerfile
```

-	Layers:
	-	`sha256:cd02f439a50e07743aecfb8e342c40627f72472309d90a5f15c73cad07bee1fc`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 19.8 KB (19781 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:cc0d09fe917228a8ade6f88964bf09602485baa485cbc1fa4e1f752f9ae8698f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8035865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2cf757f19a94f094ef2a2e56471a819551d4755e63d0b3ade470d697c072595`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:52:08 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:52:08 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 08:52:08 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:52:08 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:52:08 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 08:52:08 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:52:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:52:08 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dba6cc3dbda71744b64e628c0cdebff24764fad0e55a1340eb2e180ea0a2af9`  
		Last Modified: Fri, 23 Oct 2026 08:52:14 GMT  
		Size: 3.8 MB (3846002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6ff6a6f7d44e60980ce6068f66d280b3bfaf3cf5903f0714db1577df5fcb99`  
		Last Modified: Fri, 23 Oct 2026 08:52:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0.22` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:52b2e511aa70e98a45e265cb9461717f5afda63443da9dd217a3d8719f5e9657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.5 KB (558536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94cb233633de772bab09fa772b12a672067657e09b90f2fcbe710e74eda29b2d`

```dockerfile
```

-	Layers:
	-	`sha256:001a15ed906c19436abfffda283be8a1442d501d883a852240b332e08fe8d850`  
		Last Modified: Fri, 23 Oct 2026 08:52:14 GMT  
		Size: 538.5 KB (538508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcd2590ee50b6efba9401cad119d8adf5c3a7888b3afedac12590cae87ec39c0`  
		Last Modified: Fri, 23 Oct 2026 08:52:13 GMT  
		Size: 20.0 KB (20028 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0.22` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:69a5f98b859d81170f02d597b32ce49ae9d344326eafdc44803d1b44ee9b977a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb82b10ff0f6236bc48062a762054c1b085ae5f249c2b3ca3a480c91a942b9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:56 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:56 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 06:26:56 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:56 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:57 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 06:26:57 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:57 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1186c08ea0de57ac64c7088fdeefaeb76ce528328a463439fd8f314a95e5476`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 3.7 MB (3712695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eae1d5bc15fd29f979e3ba60c4ac6e98c7141dd4e73dd21f5a2f758918bf33c`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0.22` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:1940d78a95fbdb1d66fd48df8f53cfd102dfc9d706452adf6853c50253581fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.9 KB (558901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6012dee6d3ced843369b1f765104dd63f84e22b25746ec0910d3ddeb2b883c`

```dockerfile
```

-	Layers:
	-	`sha256:b54a9400939084606a0342dc24fcdaec7aca4d878bdc5ecd3593fe9c03a2bcef`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 539.0 KB (539043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3490fa0b8b71d0988b7856e44fb2ff9b25381d887d0471d5fdae44e62b81730`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 19.9 KB (19858 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0.22` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:de7a3b493660b7846ef47127cca3a874e519fd3d5b868eb085be6fcc0f4f4fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7602054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96e4984a43fccf5081511db29e407c30106c0d5ec60ac52b7a7829bfa827d96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:04:38 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:04:38 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 22 Oct 2026 21:04:38 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:04:38 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:04:38 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 22 Oct 2026 21:04:38 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:04:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:04:38 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7344b3b3f6026b241f93a0e9d8608640384d3e4f8c96d7a58f96b439f3579d6`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 3.8 MB (3783308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca92b4cecdc47353a6314bdeccbaec37b2866038d067bd57d8fe1ad3de35d2b`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0.22` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:290c2dddf33d4b688e8a54ecf2b21c0cc065a4b6bcddd80ebc09c9799e5f5be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.4 KB (558429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93c8799269c617d500da00150fc3e445099c2db8eb80daf86f0ed4ffca148aa`

```dockerfile
```

-	Layers:
	-	`sha256:f40bab0781280e762b78e9330316e5e6f5f6f169030d983be84b2870cd928b11`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 538.5 KB (538473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7947e13dcb20fb53d3a5e7f8e289fe5271652c298aee326fe26d696dc5924b`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 20.0 KB (19956 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0.22` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:3006bcdad6b6fce74932a09e434ab9a32d5ec91198e647215d82e29757bcf257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7323771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f6760f7325118e16d42fec5fdd462af72a29cfc64d44c589c3a9a1ba26c9365`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:20:00 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:20:00 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 09:20:00 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:20:00 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:20:00 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 09:20:00 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:20:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:20:00 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cef18ff773cd0b1080ea9c5c1490653faa03bcbb803bc4bd159583355c240cc`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 3.6 MB (3606283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02dbcb80360952082bcf19af62fdea938561ae932e1faa9f6c313ad4e1ae68`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0.22` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:8aab25cf7dac7a47441268432caac00e7c968593fcd719941adf51012587c63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.3 KB (558327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5e0ad36c01d75817985a5a3f6b5d6008cb904731404ec015a49500d89f21c0`

```dockerfile
```

-	Layers:
	-	`sha256:75ac7b022f274dcc16c56637b2d7b6d5932aba2772632ce06c67c0a4bf492d1c`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 538.4 KB (538427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5862eee4b3f6791a95cecb3831e7dba03dbcb777aa92c32446fa0a0359cf53f4`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2.0.22-openssl`

```console
$ docker pull eclipse-mosquitto@sha256:09b62ff32c2e7b64d4b431b9a89236073289b68db273de2b089edeb9b0d92b5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:2.0.22-openssl` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:8bf6e60e2531db0808e5ce471fc238a53050ec0054576b98f595841a0a491601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7717986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9604149dcfb230c9ac92d09c9508cb4900de2aa8569a2f8c2421011be8580d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:47:42 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:47:42 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 06:47:42 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:47:42 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:47:42 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 06:47:42 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:47:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:47:42 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2d242208ef16787f23b7306733aa20f90353970bc19af5d3531d0b4214b963`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 3.9 MB (3865391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632e4073c96d0148c2ed4e86f1d4cc49444ec74242fcb91749fe12239ad14765`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0.22-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:9c84ecc355825f63ea77707990d28d2c24a4cb823f4e647ae0b6af9359bdd66f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.0 KB (558978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c280c5a2ba46065ba04cbdfe1c579a8a196094ef9fb69037e46fed80c1e749`

```dockerfile
```

-	Layers:
	-	`sha256:319b516c708dcfee165bfcca7b2f5f8690754969c0c8a04f044da5dce81fe7c7`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 539.1 KB (539078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d226e60ffbf855691ddfcb51b24337f8eea9eb9c90ffcf18494a58551a170757`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0.22-openssl` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:131e8032faa3ab93bd038c4b9c002ace9735e3b7e08f0fbe38e73d1651139206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6997602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e291dcdb6c5d5bdfa830801db4e771a367ef2d28d34664453bef2f4fff20f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:06:34 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:06:34 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 09:06:34 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:06:34 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:06:34 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 09:06:34 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:06:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:06:34 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2935ac951a448c88df9efc0a9b468cd78b04c120a188290dfd81042e479ffb31`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 3.4 MB (3439047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cc4aec7724c03604be7887309c53349deade33b61d0d98dd89b50b40f57346`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0.22-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:2df6b1d9df6f3db9180c1f5353767d5287428c91145ab4773a546bd56210c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 KB (19781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:866b4db9fb24a4ef4de477a8461249bd3745c033ce7912e87a91cc5e91c8d611`

```dockerfile
```

-	Layers:
	-	`sha256:cd02f439a50e07743aecfb8e342c40627f72472309d90a5f15c73cad07bee1fc`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 19.8 KB (19781 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0.22-openssl` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:cc0d09fe917228a8ade6f88964bf09602485baa485cbc1fa4e1f752f9ae8698f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8035865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2cf757f19a94f094ef2a2e56471a819551d4755e63d0b3ade470d697c072595`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:52:08 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:52:08 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 08:52:08 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:52:08 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:52:08 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 08:52:08 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:52:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:52:08 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dba6cc3dbda71744b64e628c0cdebff24764fad0e55a1340eb2e180ea0a2af9`  
		Last Modified: Fri, 23 Oct 2026 08:52:14 GMT  
		Size: 3.8 MB (3846002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6ff6a6f7d44e60980ce6068f66d280b3bfaf3cf5903f0714db1577df5fcb99`  
		Last Modified: Fri, 23 Oct 2026 08:52:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0.22-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:52b2e511aa70e98a45e265cb9461717f5afda63443da9dd217a3d8719f5e9657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.5 KB (558536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94cb233633de772bab09fa772b12a672067657e09b90f2fcbe710e74eda29b2d`

```dockerfile
```

-	Layers:
	-	`sha256:001a15ed906c19436abfffda283be8a1442d501d883a852240b332e08fe8d850`  
		Last Modified: Fri, 23 Oct 2026 08:52:14 GMT  
		Size: 538.5 KB (538508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcd2590ee50b6efba9401cad119d8adf5c3a7888b3afedac12590cae87ec39c0`  
		Last Modified: Fri, 23 Oct 2026 08:52:13 GMT  
		Size: 20.0 KB (20028 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0.22-openssl` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:69a5f98b859d81170f02d597b32ce49ae9d344326eafdc44803d1b44ee9b977a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb82b10ff0f6236bc48062a762054c1b085ae5f249c2b3ca3a480c91a942b9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:56 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:56 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 06:26:56 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:56 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:57 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 06:26:57 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:57 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1186c08ea0de57ac64c7088fdeefaeb76ce528328a463439fd8f314a95e5476`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 3.7 MB (3712695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eae1d5bc15fd29f979e3ba60c4ac6e98c7141dd4e73dd21f5a2f758918bf33c`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0.22-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:1940d78a95fbdb1d66fd48df8f53cfd102dfc9d706452adf6853c50253581fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.9 KB (558901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6012dee6d3ced843369b1f765104dd63f84e22b25746ec0910d3ddeb2b883c`

```dockerfile
```

-	Layers:
	-	`sha256:b54a9400939084606a0342dc24fcdaec7aca4d878bdc5ecd3593fe9c03a2bcef`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 539.0 KB (539043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3490fa0b8b71d0988b7856e44fb2ff9b25381d887d0471d5fdae44e62b81730`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 19.9 KB (19858 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0.22-openssl` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:de7a3b493660b7846ef47127cca3a874e519fd3d5b868eb085be6fcc0f4f4fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7602054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96e4984a43fccf5081511db29e407c30106c0d5ec60ac52b7a7829bfa827d96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:04:38 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:04:38 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 22 Oct 2026 21:04:38 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:04:38 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:04:38 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 22 Oct 2026 21:04:38 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:04:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:04:38 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7344b3b3f6026b241f93a0e9d8608640384d3e4f8c96d7a58f96b439f3579d6`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 3.8 MB (3783308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca92b4cecdc47353a6314bdeccbaec37b2866038d067bd57d8fe1ad3de35d2b`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0.22-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:290c2dddf33d4b688e8a54ecf2b21c0cc065a4b6bcddd80ebc09c9799e5f5be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.4 KB (558429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93c8799269c617d500da00150fc3e445099c2db8eb80daf86f0ed4ffca148aa`

```dockerfile
```

-	Layers:
	-	`sha256:f40bab0781280e762b78e9330316e5e6f5f6f169030d983be84b2870cd928b11`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 538.5 KB (538473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7947e13dcb20fb53d3a5e7f8e289fe5271652c298aee326fe26d696dc5924b`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 20.0 KB (19956 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0.22-openssl` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:3006bcdad6b6fce74932a09e434ab9a32d5ec91198e647215d82e29757bcf257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7323771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f6760f7325118e16d42fec5fdd462af72a29cfc64d44c589c3a9a1ba26c9365`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:20:00 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:20:00 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 09:20:00 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:20:00 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:20:00 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 09:20:00 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:20:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:20:00 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cef18ff773cd0b1080ea9c5c1490653faa03bcbb803bc4bd159583355c240cc`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 3.6 MB (3606283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02dbcb80360952082bcf19af62fdea938561ae932e1faa9f6c313ad4e1ae68`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0.22-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:8aab25cf7dac7a47441268432caac00e7c968593fcd719941adf51012587c63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.3 KB (558327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5e0ad36c01d75817985a5a3f6b5d6008cb904731404ec015a49500d89f21c0`

```dockerfile
```

-	Layers:
	-	`sha256:75ac7b022f274dcc16c56637b2d7b6d5932aba2772632ce06c67c0a4bf492d1c`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 538.4 KB (538427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5862eee4b3f6791a95cecb3831e7dba03dbcb777aa92c32446fa0a0359cf53f4`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2.1-alpine`

```console
$ docker pull eclipse-mosquitto@sha256:860aeb5d63ce509508f6dcfb2bc8a1c1dd2bc60555b562b45ce90e52d8dabb0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:2.1-alpine` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:888af343ab81912c1f4a88cda46c687a2ce607ed3732754c36d8b8879d17a8b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12968070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46a9080d48c49e81eb31e6d2abed5d2cdb1a6188ed2380c92edde48f2689c78`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:46:50 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:46:50 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 06:46:50 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:46:50 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:46:50 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:46:50 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:46:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:46:50 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3a670d8ca07db21eeb69550d648145b7d8d1b3bf4f2957aa4d60afae3d2fee`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 9.1 MB (9115565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb433ea0830ebd321ff32d1850cd1f578364140bc1d8fdea589f1e1e9670ace`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:67a6366c31fd995f301df6088d27f5de43f22d75f9d7d74044a6f97de5a3a4b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.6 KB (626596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0b7d17145fa974caa6c62301b2539033dbb5ef255330f79916f9ed40d83983`

```dockerfile
```

-	Layers:
	-	`sha256:182e60262c7c4beeede87da4e4f63901a9da41976fb25916ef41c65ad0265cc5`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 604.4 KB (604378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8af74ee8c076ca2809ccc4ea52762ef5c14a28a436a51c4eb1b5b88a8c0eb6b7`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1-alpine` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:4a27c9c03e04a94642a2ab8419bb40cc212e3d396441ca8383f442a75c857058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.2 MB (12218868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad10d57d358e4b3560af50a8f583ae606582cc08fcfd2ac788fac2f076e116c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:05:45 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:05:45 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 09:05:45 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:05:45 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:05:45 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:05:45 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:05:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:05:45 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060e74f589c5f29594869254fd960f31666cf450604dfada6551776d535aab98`  
		Last Modified: Fri, 23 Oct 2026 09:05:50 GMT  
		Size: 8.7 MB (8660405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd97f6cdd29b394c53f169116c6da7d836ff2693e78c3b37c518105e0f9c375`  
		Last Modified: Fri, 23 Oct 2026 09:05:49 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:e6881a02c41961603d69ad462fb0a2978eed23489c86e8d275728d9888046816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 KB (22091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a68e779baeb778d2c46adafa7ad45b717682e0b6f2e60c1acce389e672b79cd2`

```dockerfile
```

-	Layers:
	-	`sha256:9d2dd7566618c15b46bff7d044b65564f8553654a5b4636e656e2a42e7029904`  
		Last Modified: Fri, 23 Oct 2026 09:05:49 GMT  
		Size: 22.1 KB (22091 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:fd55f410557f2d2f6f0a543b8d4a8df097e04d717b279fb8c10ed81bb23c2cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13186357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee2ff5a675f6206f2fb41d0403649d142cb26937eb5730d8d8d05d0499b3399`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:51:40 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:51:40 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 08:51:40 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:51:40 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:51:40 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 08:51:40 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:51:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:51:40 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612794b43919944812c006d7e952e486f2da45a7c499d9f277dfd0c3d0485504`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 9.0 MB (8996587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7cc0b66b613aaabd2076f3cf7dff055d5a3259d5569ffbcf82ceccda9df3bf`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:5f3af85525a086d60c922472ef9602cc0edbac2794c077204e68ebea54717d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 KB (627332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80587483e761d8a9a4c6196bf932b16170daff74315548f1fe91fc6eca469f17`

```dockerfile
```

-	Layers:
	-	`sha256:41c5f75a8caa813bbee233cf8e605285f269b49ab98b4099134595ed3b358c10`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 605.0 KB (604998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:393e70fe9afd1f8dc72d4bc09b10e112e82a7f986d974f0f14190f76e2c5c4dd`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 22.3 KB (22334 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1-alpine` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:adb57345c51a86722a1d20b5bbe6777c27db3709852eb828cf312fdbd7b2147a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12615205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa7fc60ead13f1bb70e1c404521d6992a1ad7e55d44828d94ebeee284f3958b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:01 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:01 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 06:26:01 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:01 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:26:02 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:02 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e82191b3b464f9b18b496c365555b37fbfdfbb09b4e00c21a68c92fa9eadee6`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 8.9 MB (8937621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32003323ba34bf9d52240091751b639989c561a3d0206d9915a5156ea2d465b`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:ee4641797d4c8a101447f9aaa06bc258c28baca066474098a7a327cd9d5b3fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.5 KB (626529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5fa1d7f6eab840fa13593fc094d93ecfbddc3ba2e0b33454223ff6e0c4e81fc`

```dockerfile
```

-	Layers:
	-	`sha256:95ddae249038a8d8a14c9cfd8720995085e3817fac11cb4865767791dfd97b44`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 604.3 KB (604348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37c0943bb5daf27407963dcc918f1decab52a68c2c80b0596c1209cb528f85fe`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1-alpine` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:8a2c00110b98160bdb6b574e268d6adbebb377fcdebd95d5fd05452865b9c7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13072715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8442f665243affaa87b0c6a29c3beb13bf965c5d60d504b70679aa99b2cb5ae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:04:44 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:04:44 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 22 Oct 2026 21:04:44 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:04:44 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:04:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 22 Oct 2026 21:04:44 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:04:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:04:44 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72498660c29fb386d4738b43c42f7c2635ce38f171fcc41b9d4adcb5daf11f62`  
		Last Modified: Thu, 22 Oct 2026 21:05:01 GMT  
		Size: 9.3 MB (9254061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659ac389bfa379cfcba8e93b66b612927472fd545599dbfa4f60c9323facaf84`  
		Last Modified: Thu, 22 Oct 2026 21:05:00 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:aaca468bc679dac40234fc772c9428a2fe765527d37525a8dddc17f0115c0e1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b93f858733001122ac7300043f3ccdf7f3ea1186fb16e7bb992ac936bebb5bd`

```dockerfile
```

-	Layers:
	-	`sha256:08d40c78e3cf2635cb9e42bea05d3ead1e59cba5b7f4728416563b7563432043`  
		Last Modified: Thu, 22 Oct 2026 21:05:01 GMT  
		Size: 605.0 KB (604969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e962486a0471bb90bd34c9c2b0aafe42e7d27e065b643e0e489ccdb175145a57`  
		Last Modified: Thu, 22 Oct 2026 21:05:00 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1-alpine` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:0ffd6ca051cb59f9eb5154e5e803e3fc4a524453f4666cf0f26b34c9a55a2bfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12878157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e242eacfb6fb2252f9e292fc8548f241973dd383ca77061be2c61842074c890`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:19:55 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:19:55 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 09:19:55 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:19:55 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:19:55 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:19:55 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:19:55 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9045db6964df5e56c63f6d3305859fe71ba48c26130739cf3beb8f34aa9945`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 9.2 MB (9160760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39002451bc06ea2d0cd680ab10b4a9e9f0f30440c973a1edf72e2b6635387f1a`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:4acbb3b02195c63387720caa7700cb3df6a03c23390dccb51cc62cc47f9993be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.1 KB (627146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477d956887ebafa62183d75cb47fbda83f43124ffb096cafabeea5f5b4613322`

```dockerfile
```

-	Layers:
	-	`sha256:a9f50e12f182c8fe358a678f53e4562b19d3bb507785fd527e97f96ddac7fc80`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 604.9 KB (604929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01bfaed1d2d743336d3488619858475776cc8934202be6cbc1d844798ad32939`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 22.2 KB (22217 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2.1.2-alpine`

```console
$ docker pull eclipse-mosquitto@sha256:860aeb5d63ce509508f6dcfb2bc8a1c1dd2bc60555b562b45ce90e52d8dabb0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:2.1.2-alpine` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:888af343ab81912c1f4a88cda46c687a2ce607ed3732754c36d8b8879d17a8b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12968070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46a9080d48c49e81eb31e6d2abed5d2cdb1a6188ed2380c92edde48f2689c78`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:46:50 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:46:50 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 06:46:50 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:46:50 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:46:50 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:46:50 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:46:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:46:50 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3a670d8ca07db21eeb69550d648145b7d8d1b3bf4f2957aa4d60afae3d2fee`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 9.1 MB (9115565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb433ea0830ebd321ff32d1850cd1f578364140bc1d8fdea589f1e1e9670ace`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1.2-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:67a6366c31fd995f301df6088d27f5de43f22d75f9d7d74044a6f97de5a3a4b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.6 KB (626596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0b7d17145fa974caa6c62301b2539033dbb5ef255330f79916f9ed40d83983`

```dockerfile
```

-	Layers:
	-	`sha256:182e60262c7c4beeede87da4e4f63901a9da41976fb25916ef41c65ad0265cc5`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 604.4 KB (604378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8af74ee8c076ca2809ccc4ea52762ef5c14a28a436a51c4eb1b5b88a8c0eb6b7`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1.2-alpine` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:4a27c9c03e04a94642a2ab8419bb40cc212e3d396441ca8383f442a75c857058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.2 MB (12218868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad10d57d358e4b3560af50a8f583ae606582cc08fcfd2ac788fac2f076e116c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:05:45 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:05:45 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 09:05:45 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:05:45 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:05:45 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:05:45 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:05:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:05:45 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060e74f589c5f29594869254fd960f31666cf450604dfada6551776d535aab98`  
		Last Modified: Fri, 23 Oct 2026 09:05:50 GMT  
		Size: 8.7 MB (8660405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd97f6cdd29b394c53f169116c6da7d836ff2693e78c3b37c518105e0f9c375`  
		Last Modified: Fri, 23 Oct 2026 09:05:49 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1.2-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:e6881a02c41961603d69ad462fb0a2978eed23489c86e8d275728d9888046816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 KB (22091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a68e779baeb778d2c46adafa7ad45b717682e0b6f2e60c1acce389e672b79cd2`

```dockerfile
```

-	Layers:
	-	`sha256:9d2dd7566618c15b46bff7d044b65564f8553654a5b4636e656e2a42e7029904`  
		Last Modified: Fri, 23 Oct 2026 09:05:49 GMT  
		Size: 22.1 KB (22091 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1.2-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:fd55f410557f2d2f6f0a543b8d4a8df097e04d717b279fb8c10ed81bb23c2cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13186357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee2ff5a675f6206f2fb41d0403649d142cb26937eb5730d8d8d05d0499b3399`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:51:40 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:51:40 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 08:51:40 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:51:40 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:51:40 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 08:51:40 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:51:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:51:40 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612794b43919944812c006d7e952e486f2da45a7c499d9f277dfd0c3d0485504`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 9.0 MB (8996587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7cc0b66b613aaabd2076f3cf7dff055d5a3259d5569ffbcf82ceccda9df3bf`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1.2-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:5f3af85525a086d60c922472ef9602cc0edbac2794c077204e68ebea54717d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 KB (627332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80587483e761d8a9a4c6196bf932b16170daff74315548f1fe91fc6eca469f17`

```dockerfile
```

-	Layers:
	-	`sha256:41c5f75a8caa813bbee233cf8e605285f269b49ab98b4099134595ed3b358c10`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 605.0 KB (604998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:393e70fe9afd1f8dc72d4bc09b10e112e82a7f986d974f0f14190f76e2c5c4dd`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 22.3 KB (22334 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1.2-alpine` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:adb57345c51a86722a1d20b5bbe6777c27db3709852eb828cf312fdbd7b2147a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12615205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa7fc60ead13f1bb70e1c404521d6992a1ad7e55d44828d94ebeee284f3958b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:01 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:01 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 06:26:01 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:01 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:26:02 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:02 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e82191b3b464f9b18b496c365555b37fbfdfbb09b4e00c21a68c92fa9eadee6`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 8.9 MB (8937621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32003323ba34bf9d52240091751b639989c561a3d0206d9915a5156ea2d465b`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1.2-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:ee4641797d4c8a101447f9aaa06bc258c28baca066474098a7a327cd9d5b3fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.5 KB (626529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5fa1d7f6eab840fa13593fc094d93ecfbddc3ba2e0b33454223ff6e0c4e81fc`

```dockerfile
```

-	Layers:
	-	`sha256:95ddae249038a8d8a14c9cfd8720995085e3817fac11cb4865767791dfd97b44`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 604.3 KB (604348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37c0943bb5daf27407963dcc918f1decab52a68c2c80b0596c1209cb528f85fe`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1.2-alpine` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:8a2c00110b98160bdb6b574e268d6adbebb377fcdebd95d5fd05452865b9c7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13072715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8442f665243affaa87b0c6a29c3beb13bf965c5d60d504b70679aa99b2cb5ae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:04:44 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:04:44 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 22 Oct 2026 21:04:44 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:04:44 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:04:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 22 Oct 2026 21:04:44 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:04:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:04:44 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72498660c29fb386d4738b43c42f7c2635ce38f171fcc41b9d4adcb5daf11f62`  
		Last Modified: Thu, 22 Oct 2026 21:05:01 GMT  
		Size: 9.3 MB (9254061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659ac389bfa379cfcba8e93b66b612927472fd545599dbfa4f60c9323facaf84`  
		Last Modified: Thu, 22 Oct 2026 21:05:00 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1.2-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:aaca468bc679dac40234fc772c9428a2fe765527d37525a8dddc17f0115c0e1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b93f858733001122ac7300043f3ccdf7f3ea1186fb16e7bb992ac936bebb5bd`

```dockerfile
```

-	Layers:
	-	`sha256:08d40c78e3cf2635cb9e42bea05d3ead1e59cba5b7f4728416563b7563432043`  
		Last Modified: Thu, 22 Oct 2026 21:05:01 GMT  
		Size: 605.0 KB (604969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e962486a0471bb90bd34c9c2b0aafe42e7d27e065b643e0e489ccdb175145a57`  
		Last Modified: Thu, 22 Oct 2026 21:05:00 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1.2-alpine` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:0ffd6ca051cb59f9eb5154e5e803e3fc4a524453f4666cf0f26b34c9a55a2bfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12878157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e242eacfb6fb2252f9e292fc8548f241973dd383ca77061be2c61842074c890`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:19:55 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:19:55 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 09:19:55 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:19:55 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:19:55 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:19:55 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:19:55 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9045db6964df5e56c63f6d3305859fe71ba48c26130739cf3beb8f34aa9945`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 9.2 MB (9160760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39002451bc06ea2d0cd680ab10b4a9e9f0f30440c973a1edf72e2b6635387f1a`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1.2-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:4acbb3b02195c63387720caa7700cb3df6a03c23390dccb51cc62cc47f9993be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.1 KB (627146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477d956887ebafa62183d75cb47fbda83f43124ffb096cafabeea5f5b4613322`

```dockerfile
```

-	Layers:
	-	`sha256:a9f50e12f182c8fe358a678f53e4562b19d3bb507785fd527e97f96ddac7fc80`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 604.9 KB (604929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01bfaed1d2d743336d3488619858475776cc8934202be6cbc1d844798ad32939`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 22.2 KB (22217 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:alpine`

```console
$ docker pull eclipse-mosquitto@sha256:860aeb5d63ce509508f6dcfb2bc8a1c1dd2bc60555b562b45ce90e52d8dabb0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:alpine` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:888af343ab81912c1f4a88cda46c687a2ce607ed3732754c36d8b8879d17a8b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12968070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46a9080d48c49e81eb31e6d2abed5d2cdb1a6188ed2380c92edde48f2689c78`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:46:50 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:46:50 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 06:46:50 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:46:50 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:46:50 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:46:50 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:46:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:46:50 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3a670d8ca07db21eeb69550d648145b7d8d1b3bf4f2957aa4d60afae3d2fee`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 9.1 MB (9115565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb433ea0830ebd321ff32d1850cd1f578364140bc1d8fdea589f1e1e9670ace`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:67a6366c31fd995f301df6088d27f5de43f22d75f9d7d74044a6f97de5a3a4b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.6 KB (626596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0b7d17145fa974caa6c62301b2539033dbb5ef255330f79916f9ed40d83983`

```dockerfile
```

-	Layers:
	-	`sha256:182e60262c7c4beeede87da4e4f63901a9da41976fb25916ef41c65ad0265cc5`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 604.4 KB (604378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8af74ee8c076ca2809ccc4ea52762ef5c14a28a436a51c4eb1b5b88a8c0eb6b7`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:alpine` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:4a27c9c03e04a94642a2ab8419bb40cc212e3d396441ca8383f442a75c857058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.2 MB (12218868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad10d57d358e4b3560af50a8f583ae606582cc08fcfd2ac788fac2f076e116c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:05:45 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:05:45 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 09:05:45 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:05:45 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:05:45 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:05:45 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:05:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:05:45 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060e74f589c5f29594869254fd960f31666cf450604dfada6551776d535aab98`  
		Last Modified: Fri, 23 Oct 2026 09:05:50 GMT  
		Size: 8.7 MB (8660405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd97f6cdd29b394c53f169116c6da7d836ff2693e78c3b37c518105e0f9c375`  
		Last Modified: Fri, 23 Oct 2026 09:05:49 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:e6881a02c41961603d69ad462fb0a2978eed23489c86e8d275728d9888046816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 KB (22091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a68e779baeb778d2c46adafa7ad45b717682e0b6f2e60c1acce389e672b79cd2`

```dockerfile
```

-	Layers:
	-	`sha256:9d2dd7566618c15b46bff7d044b65564f8553654a5b4636e656e2a42e7029904`  
		Last Modified: Fri, 23 Oct 2026 09:05:49 GMT  
		Size: 22.1 KB (22091 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:fd55f410557f2d2f6f0a543b8d4a8df097e04d717b279fb8c10ed81bb23c2cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13186357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee2ff5a675f6206f2fb41d0403649d142cb26937eb5730d8d8d05d0499b3399`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:51:40 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:51:40 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 08:51:40 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:51:40 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:51:40 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 08:51:40 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:51:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:51:40 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612794b43919944812c006d7e952e486f2da45a7c499d9f277dfd0c3d0485504`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 9.0 MB (8996587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7cc0b66b613aaabd2076f3cf7dff055d5a3259d5569ffbcf82ceccda9df3bf`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:5f3af85525a086d60c922472ef9602cc0edbac2794c077204e68ebea54717d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 KB (627332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80587483e761d8a9a4c6196bf932b16170daff74315548f1fe91fc6eca469f17`

```dockerfile
```

-	Layers:
	-	`sha256:41c5f75a8caa813bbee233cf8e605285f269b49ab98b4099134595ed3b358c10`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 605.0 KB (604998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:393e70fe9afd1f8dc72d4bc09b10e112e82a7f986d974f0f14190f76e2c5c4dd`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 22.3 KB (22334 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:alpine` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:adb57345c51a86722a1d20b5bbe6777c27db3709852eb828cf312fdbd7b2147a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12615205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa7fc60ead13f1bb70e1c404521d6992a1ad7e55d44828d94ebeee284f3958b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:01 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:01 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 06:26:01 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:01 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:26:02 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:02 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e82191b3b464f9b18b496c365555b37fbfdfbb09b4e00c21a68c92fa9eadee6`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 8.9 MB (8937621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32003323ba34bf9d52240091751b639989c561a3d0206d9915a5156ea2d465b`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:ee4641797d4c8a101447f9aaa06bc258c28baca066474098a7a327cd9d5b3fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.5 KB (626529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5fa1d7f6eab840fa13593fc094d93ecfbddc3ba2e0b33454223ff6e0c4e81fc`

```dockerfile
```

-	Layers:
	-	`sha256:95ddae249038a8d8a14c9cfd8720995085e3817fac11cb4865767791dfd97b44`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 604.3 KB (604348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37c0943bb5daf27407963dcc918f1decab52a68c2c80b0596c1209cb528f85fe`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:alpine` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:8a2c00110b98160bdb6b574e268d6adbebb377fcdebd95d5fd05452865b9c7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13072715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8442f665243affaa87b0c6a29c3beb13bf965c5d60d504b70679aa99b2cb5ae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:04:44 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:04:44 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 22 Oct 2026 21:04:44 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:04:44 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:04:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 22 Oct 2026 21:04:44 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:04:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:04:44 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72498660c29fb386d4738b43c42f7c2635ce38f171fcc41b9d4adcb5daf11f62`  
		Last Modified: Thu, 22 Oct 2026 21:05:01 GMT  
		Size: 9.3 MB (9254061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659ac389bfa379cfcba8e93b66b612927472fd545599dbfa4f60c9323facaf84`  
		Last Modified: Thu, 22 Oct 2026 21:05:00 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:aaca468bc679dac40234fc772c9428a2fe765527d37525a8dddc17f0115c0e1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b93f858733001122ac7300043f3ccdf7f3ea1186fb16e7bb992ac936bebb5bd`

```dockerfile
```

-	Layers:
	-	`sha256:08d40c78e3cf2635cb9e42bea05d3ead1e59cba5b7f4728416563b7563432043`  
		Last Modified: Thu, 22 Oct 2026 21:05:01 GMT  
		Size: 605.0 KB (604969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e962486a0471bb90bd34c9c2b0aafe42e7d27e065b643e0e489ccdb175145a57`  
		Last Modified: Thu, 22 Oct 2026 21:05:00 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:alpine` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:0ffd6ca051cb59f9eb5154e5e803e3fc4a524453f4666cf0f26b34c9a55a2bfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12878157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e242eacfb6fb2252f9e292fc8548f241973dd383ca77061be2c61842074c890`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:19:55 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:19:55 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 09:19:55 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:19:55 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:19:55 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:19:55 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:19:55 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9045db6964df5e56c63f6d3305859fe71ba48c26130739cf3beb8f34aa9945`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 9.2 MB (9160760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39002451bc06ea2d0cd680ab10b4a9e9f0f30440c973a1edf72e2b6635387f1a`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:4acbb3b02195c63387720caa7700cb3df6a03c23390dccb51cc62cc47f9993be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.1 KB (627146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477d956887ebafa62183d75cb47fbda83f43124ffb096cafabeea5f5b4613322`

```dockerfile
```

-	Layers:
	-	`sha256:a9f50e12f182c8fe358a678f53e4562b19d3bb507785fd527e97f96ddac7fc80`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 604.9 KB (604929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01bfaed1d2d743336d3488619858475776cc8934202be6cbc1d844798ad32939`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 22.2 KB (22217 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:860aeb5d63ce509508f6dcfb2bc8a1c1dd2bc60555b562b45ce90e52d8dabb0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:latest` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:888af343ab81912c1f4a88cda46c687a2ce607ed3732754c36d8b8879d17a8b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12968070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46a9080d48c49e81eb31e6d2abed5d2cdb1a6188ed2380c92edde48f2689c78`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:46:50 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:46:50 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 06:46:50 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:46:50 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:46:50 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:46:50 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:46:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:46:50 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3a670d8ca07db21eeb69550d648145b7d8d1b3bf4f2957aa4d60afae3d2fee`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 9.1 MB (9115565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb433ea0830ebd321ff32d1850cd1f578364140bc1d8fdea589f1e1e9670ace`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:latest` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:67a6366c31fd995f301df6088d27f5de43f22d75f9d7d74044a6f97de5a3a4b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.6 KB (626596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0b7d17145fa974caa6c62301b2539033dbb5ef255330f79916f9ed40d83983`

```dockerfile
```

-	Layers:
	-	`sha256:182e60262c7c4beeede87da4e4f63901a9da41976fb25916ef41c65ad0265cc5`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 604.4 KB (604378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8af74ee8c076ca2809ccc4ea52762ef5c14a28a436a51c4eb1b5b88a8c0eb6b7`  
		Last Modified: Fri, 23 Oct 2026 06:46:55 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:latest` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:4a27c9c03e04a94642a2ab8419bb40cc212e3d396441ca8383f442a75c857058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.2 MB (12218868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad10d57d358e4b3560af50a8f583ae606582cc08fcfd2ac788fac2f076e116c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:05:45 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:05:45 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 09:05:45 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:05:45 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:05:45 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:05:45 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:05:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:05:45 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060e74f589c5f29594869254fd960f31666cf450604dfada6551776d535aab98`  
		Last Modified: Fri, 23 Oct 2026 09:05:50 GMT  
		Size: 8.7 MB (8660405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd97f6cdd29b394c53f169116c6da7d836ff2693e78c3b37c518105e0f9c375`  
		Last Modified: Fri, 23 Oct 2026 09:05:49 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:latest` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:e6881a02c41961603d69ad462fb0a2978eed23489c86e8d275728d9888046816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 KB (22091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a68e779baeb778d2c46adafa7ad45b717682e0b6f2e60c1acce389e672b79cd2`

```dockerfile
```

-	Layers:
	-	`sha256:9d2dd7566618c15b46bff7d044b65564f8553654a5b4636e656e2a42e7029904`  
		Last Modified: Fri, 23 Oct 2026 09:05:49 GMT  
		Size: 22.1 KB (22091 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:latest` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:fd55f410557f2d2f6f0a543b8d4a8df097e04d717b279fb8c10ed81bb23c2cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13186357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee2ff5a675f6206f2fb41d0403649d142cb26937eb5730d8d8d05d0499b3399`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:51:40 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:51:40 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 08:51:40 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:51:40 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:51:40 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 08:51:40 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:51:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:51:40 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612794b43919944812c006d7e952e486f2da45a7c499d9f277dfd0c3d0485504`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 9.0 MB (8996587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7cc0b66b613aaabd2076f3cf7dff055d5a3259d5569ffbcf82ceccda9df3bf`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:latest` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:5f3af85525a086d60c922472ef9602cc0edbac2794c077204e68ebea54717d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 KB (627332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80587483e761d8a9a4c6196bf932b16170daff74315548f1fe91fc6eca469f17`

```dockerfile
```

-	Layers:
	-	`sha256:41c5f75a8caa813bbee233cf8e605285f269b49ab98b4099134595ed3b358c10`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 605.0 KB (604998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:393e70fe9afd1f8dc72d4bc09b10e112e82a7f986d974f0f14190f76e2c5c4dd`  
		Last Modified: Fri, 23 Oct 2026 08:51:45 GMT  
		Size: 22.3 KB (22334 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:latest` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:adb57345c51a86722a1d20b5bbe6777c27db3709852eb828cf312fdbd7b2147a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12615205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa7fc60ead13f1bb70e1c404521d6992a1ad7e55d44828d94ebeee284f3958b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:01 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:01 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 06:26:01 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:01 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 06:26:02 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:02 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e82191b3b464f9b18b496c365555b37fbfdfbb09b4e00c21a68c92fa9eadee6`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 8.9 MB (8937621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32003323ba34bf9d52240091751b639989c561a3d0206d9915a5156ea2d465b`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:latest` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:ee4641797d4c8a101447f9aaa06bc258c28baca066474098a7a327cd9d5b3fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.5 KB (626529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5fa1d7f6eab840fa13593fc094d93ecfbddc3ba2e0b33454223ff6e0c4e81fc`

```dockerfile
```

-	Layers:
	-	`sha256:95ddae249038a8d8a14c9cfd8720995085e3817fac11cb4865767791dfd97b44`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 604.3 KB (604348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37c0943bb5daf27407963dcc918f1decab52a68c2c80b0596c1209cb528f85fe`  
		Last Modified: Fri, 23 Oct 2026 06:26:07 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:latest` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:8a2c00110b98160bdb6b574e268d6adbebb377fcdebd95d5fd05452865b9c7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13072715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8442f665243affaa87b0c6a29c3beb13bf965c5d60d504b70679aa99b2cb5ae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:04:44 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:04:44 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 22 Oct 2026 21:04:44 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:04:44 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:04:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 22 Oct 2026 21:04:44 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:04:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:04:44 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72498660c29fb386d4738b43c42f7c2635ce38f171fcc41b9d4adcb5daf11f62`  
		Last Modified: Thu, 22 Oct 2026 21:05:01 GMT  
		Size: 9.3 MB (9254061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659ac389bfa379cfcba8e93b66b612927472fd545599dbfa4f60c9323facaf84`  
		Last Modified: Thu, 22 Oct 2026 21:05:00 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:latest` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:aaca468bc679dac40234fc772c9428a2fe765527d37525a8dddc17f0115c0e1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b93f858733001122ac7300043f3ccdf7f3ea1186fb16e7bb992ac936bebb5bd`

```dockerfile
```

-	Layers:
	-	`sha256:08d40c78e3cf2635cb9e42bea05d3ead1e59cba5b7f4728416563b7563432043`  
		Last Modified: Thu, 22 Oct 2026 21:05:01 GMT  
		Size: 605.0 KB (604969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e962486a0471bb90bd34c9c2b0aafe42e7d27e065b643e0e489ccdb175145a57`  
		Last Modified: Thu, 22 Oct 2026 21:05:00 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:latest` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:0ffd6ca051cb59f9eb5154e5e803e3fc4a524453f4666cf0f26b34c9a55a2bfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12878157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e242eacfb6fb2252f9e292fc8548f241973dd383ca77061be2c61842074c890`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:19:55 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:19:55 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 23 Oct 2026 09:19:55 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:19:55 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:19:55 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 09:19:55 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:19:55 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9045db6964df5e56c63f6d3305859fe71ba48c26130739cf3beb8f34aa9945`  
		Last Modified: Fri, 23 Oct 2026 09:20:06 GMT  
		Size: 9.2 MB (9160760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39002451bc06ea2d0cd680ab10b4a9e9f0f30440c973a1edf72e2b6635387f1a`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:latest` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:4acbb3b02195c63387720caa7700cb3df6a03c23390dccb51cc62cc47f9993be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.1 KB (627146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477d956887ebafa62183d75cb47fbda83f43124ffb096cafabeea5f5b4613322`

```dockerfile
```

-	Layers:
	-	`sha256:a9f50e12f182c8fe358a678f53e4562b19d3bb507785fd527e97f96ddac7fc80`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 604.9 KB (604929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01bfaed1d2d743336d3488619858475776cc8934202be6cbc1d844798ad32939`  
		Last Modified: Fri, 23 Oct 2026 09:20:05 GMT  
		Size: 22.2 KB (22217 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:openssl`

```console
$ docker pull eclipse-mosquitto@sha256:09b62ff32c2e7b64d4b431b9a89236073289b68db273de2b089edeb9b0d92b5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-mosquitto:openssl` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:8bf6e60e2531db0808e5ce471fc238a53050ec0054576b98f595841a0a491601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7717986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9604149dcfb230c9ac92d09c9508cb4900de2aa8569a2f8c2421011be8580d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:47:42 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:47:42 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 06:47:42 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:47:42 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:47:42 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 06:47:42 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:47:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:47:42 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2d242208ef16787f23b7306733aa20f90353970bc19af5d3531d0b4214b963`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 3.9 MB (3865391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632e4073c96d0148c2ed4e86f1d4cc49444ec74242fcb91749fe12239ad14765`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:9c84ecc355825f63ea77707990d28d2c24a4cb823f4e647ae0b6af9359bdd66f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.0 KB (558978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c280c5a2ba46065ba04cbdfe1c579a8a196094ef9fb69037e46fed80c1e749`

```dockerfile
```

-	Layers:
	-	`sha256:319b516c708dcfee165bfcca7b2f5f8690754969c0c8a04f044da5dce81fe7c7`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 539.1 KB (539078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d226e60ffbf855691ddfcb51b24337f8eea9eb9c90ffcf18494a58551a170757`  
		Last Modified: Fri, 23 Oct 2026 06:47:47 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:openssl` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:131e8032faa3ab93bd038c4b9c002ace9735e3b7e08f0fbe38e73d1651139206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6997602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e291dcdb6c5d5bdfa830801db4e771a367ef2d28d34664453bef2f4fff20f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:06:34 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:06:34 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 09:06:34 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:06:34 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:06:34 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 09:06:34 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:06:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:06:34 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2935ac951a448c88df9efc0a9b468cd78b04c120a188290dfd81042e479ffb31`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 3.4 MB (3439047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cc4aec7724c03604be7887309c53349deade33b61d0d98dd89b50b40f57346`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:2df6b1d9df6f3db9180c1f5353767d5287428c91145ab4773a546bd56210c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 KB (19781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:866b4db9fb24a4ef4de477a8461249bd3745c033ce7912e87a91cc5e91c8d611`

```dockerfile
```

-	Layers:
	-	`sha256:cd02f439a50e07743aecfb8e342c40627f72472309d90a5f15c73cad07bee1fc`  
		Last Modified: Fri, 23 Oct 2026 09:06:38 GMT  
		Size: 19.8 KB (19781 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:openssl` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:cc0d09fe917228a8ade6f88964bf09602485baa485cbc1fa4e1f752f9ae8698f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8035865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2cf757f19a94f094ef2a2e56471a819551d4755e63d0b3ade470d697c072595`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 08:52:08 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 08:52:08 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 08:52:08 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 08:52:08 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 08:52:08 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 08:52:08 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 08:52:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 08:52:08 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dba6cc3dbda71744b64e628c0cdebff24764fad0e55a1340eb2e180ea0a2af9`  
		Last Modified: Fri, 23 Oct 2026 08:52:14 GMT  
		Size: 3.8 MB (3846002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6ff6a6f7d44e60980ce6068f66d280b3bfaf3cf5903f0714db1577df5fcb99`  
		Last Modified: Fri, 23 Oct 2026 08:52:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:52b2e511aa70e98a45e265cb9461717f5afda63443da9dd217a3d8719f5e9657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.5 KB (558536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94cb233633de772bab09fa772b12a672067657e09b90f2fcbe710e74eda29b2d`

```dockerfile
```

-	Layers:
	-	`sha256:001a15ed906c19436abfffda283be8a1442d501d883a852240b332e08fe8d850`  
		Last Modified: Fri, 23 Oct 2026 08:52:14 GMT  
		Size: 538.5 KB (538508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcd2590ee50b6efba9401cad119d8adf5c3a7888b3afedac12590cae87ec39c0`  
		Last Modified: Fri, 23 Oct 2026 08:52:13 GMT  
		Size: 20.0 KB (20028 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:openssl` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:69a5f98b859d81170f02d597b32ce49ae9d344326eafdc44803d1b44ee9b977a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb82b10ff0f6236bc48062a762054c1b085ae5f249c2b3ca3a480c91a942b9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 06:26:56 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 06:26:56 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 06:26:56 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 06:26:56 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 06:26:57 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 06:26:57 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 06:26:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 06:26:57 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1186c08ea0de57ac64c7088fdeefaeb76ce528328a463439fd8f314a95e5476`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 3.7 MB (3712695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eae1d5bc15fd29f979e3ba60c4ac6e98c7141dd4e73dd21f5a2f758918bf33c`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:1940d78a95fbdb1d66fd48df8f53cfd102dfc9d706452adf6853c50253581fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.9 KB (558901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6012dee6d3ced843369b1f765104dd63f84e22b25746ec0910d3ddeb2b883c`

```dockerfile
```

-	Layers:
	-	`sha256:b54a9400939084606a0342dc24fcdaec7aca4d878bdc5ecd3593fe9c03a2bcef`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 539.0 KB (539043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3490fa0b8b71d0988b7856e44fb2ff9b25381d887d0471d5fdae44e62b81730`  
		Last Modified: Fri, 23 Oct 2026 06:27:01 GMT  
		Size: 19.9 KB (19858 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:openssl` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:de7a3b493660b7846ef47127cca3a874e519fd3d5b868eb085be6fcc0f4f4fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7602054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96e4984a43fccf5081511db29e407c30106c0d5ec60ac52b7a7829bfa827d96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 21:04:38 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 22 Oct 2026 21:04:38 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 22 Oct 2026 21:04:38 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 22 Oct 2026 21:04:38 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 22 Oct 2026 21:04:38 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 22 Oct 2026 21:04:38 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 22 Oct 2026 21:04:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 21:04:38 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7344b3b3f6026b241f93a0e9d8608640384d3e4f8c96d7a58f96b439f3579d6`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 3.8 MB (3783308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca92b4cecdc47353a6314bdeccbaec37b2866038d067bd57d8fe1ad3de35d2b`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:290c2dddf33d4b688e8a54ecf2b21c0cc065a4b6bcddd80ebc09c9799e5f5be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.4 KB (558429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93c8799269c617d500da00150fc3e445099c2db8eb80daf86f0ed4ffca148aa`

```dockerfile
```

-	Layers:
	-	`sha256:f40bab0781280e762b78e9330316e5e6f5f6f169030d983be84b2870cd928b11`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 538.5 KB (538473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7947e13dcb20fb53d3a5e7f8e289fe5271652c298aee326fe26d696dc5924b`  
		Last Modified: Thu, 22 Oct 2026 21:04:49 GMT  
		Size: 20.0 KB (19956 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:openssl` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:3006bcdad6b6fce74932a09e434ab9a32d5ec91198e647215d82e29757bcf257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7323771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f6760f7325118e16d42fec5fdd462af72a29cfc64d44c589c3a9a1ba26c9365`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 09:20:00 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 23 Oct 2026 09:20:00 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Fri, 23 Oct 2026 09:20:00 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 23 Oct 2026 09:20:00 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 23 Oct 2026 09:20:00 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Fri, 23 Oct 2026 09:20:00 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 23 Oct 2026 09:20:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 09:20:00 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cef18ff773cd0b1080ea9c5c1490653faa03bcbb803bc4bd159583355c240cc`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 3.6 MB (3606283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02dbcb80360952082bcf19af62fdea938561ae932e1faa9f6c313ad4e1ae68`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:8aab25cf7dac7a47441268432caac00e7c968593fcd719941adf51012587c63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.3 KB (558327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5e0ad36c01d75817985a5a3f6b5d6008cb904731404ec015a49500d89f21c0`

```dockerfile
```

-	Layers:
	-	`sha256:75ac7b022f274dcc16c56637b2d7b6d5932aba2772632ce06c67c0a4bf492d1c`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 538.4 KB (538427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5862eee4b3f6791a95cecb3831e7dba03dbcb777aa92c32446fa0a0359cf53f4`  
		Last Modified: Fri, 23 Oct 2026 09:20:08 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json
