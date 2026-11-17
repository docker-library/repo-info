<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:2`](#eclipse-mosquitto2)
-	[`eclipse-mosquitto:2-openssl`](#eclipse-mosquitto2-openssl)
-	[`eclipse-mosquitto:2.0`](#eclipse-mosquitto20)
-	[`eclipse-mosquitto:2.0-openssl`](#eclipse-mosquitto20-openssl)
-	[`eclipse-mosquitto:2.0.23`](#eclipse-mosquitto2023)
-	[`eclipse-mosquitto:2.0.23-openssl`](#eclipse-mosquitto2023-openssl)
-	[`eclipse-mosquitto:2.1-alpine`](#eclipse-mosquitto21-alpine)
-	[`eclipse-mosquitto:2.1.4-alpine`](#eclipse-mosquitto214-alpine)
-	[`eclipse-mosquitto:alpine`](#eclipse-mosquittoalpine)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)
-	[`eclipse-mosquitto:openssl`](#eclipse-mosquittoopenssl)

## `eclipse-mosquitto:2`

```console
$ docker pull eclipse-mosquitto@sha256:75d6662dee52c947dc9dd9c29f1d8d7ffef78ddaf38001caa09755681e8bbc98
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
$ docker pull eclipse-mosquitto@sha256:22075095e8790eec5592ff3c213b1974cd51aa458275af2f8b0595af4c385df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12968464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceaa1d541610ed761c1399787c4108d4cfa6eec6a28bdefe4d169c9d675d18ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:12:48 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:12:48 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 21:12:48 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:12:48 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:12:48 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 21:12:48 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:12:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:12:48 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f31af66d5044f842db795ccd1e775d86db5df32dd8b342b88455b95db5d233`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 9.1 MB (9115598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36dcb4467a6b67bf9b3bc8b81139d8be5cc15610c4a66af77e32da925a2b6480`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:acd0da23f87c3350d146b2a7e8481d581877fcf2bf7ea6f211081e9fdcef90ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.6 KB (626596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c299ff7faa5871ad84595833c6f36db84d8d29df2c940cdf44bc3f88d504d89b`

```dockerfile
```

-	Layers:
	-	`sha256:b54efe654f1e46b89c8bdea14e5c84a4ea03be79696c86b931975443e8961a04`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 604.4 KB (604378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66065e9a3dfccdf3b43e35329acda0e5d282e21c0d4503a9a62bc86a1eaf7e4d`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:dfc86791ff1d33cc48050c94cbfb5ffadb4c1bbb07eccc78d185b310465b2bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.2 MB (12218951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de92ed59a04edbaba25c44863f94639226ed213a9c724eeda8f0cd740af556d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:34 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 18:16:34 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 18:16:34 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 18:16:35 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 18:16:35 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 18:16:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:35 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ac925db7cefe5ae8a942c664df42ed27d67120b7a697b9453f84652b5c4acc`  
		Last Modified: Thu, 05 Nov 2026 18:16:39 GMT  
		Size: 8.7 MB (8660423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f32bc5fc35d6b032e49b2e9257b25c8eecadca337236cb52754503e013cb49`  
		Last Modified: Thu, 05 Nov 2026 18:16:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:a9e43f3668f6eb6a460ad11e5d74fd6670fae1b57469d66d25a13a0e100cadd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 KB (22091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c6e5a3c93a71baed3df7aabd465a7f27e4a0a556cfaf2c672d3a25154c8127`

```dockerfile
```

-	Layers:
	-	`sha256:b03fdbc67b4c00b8861b9d1f9c56e2cae10077a7b6bc2b305ca8c456bd338aa3`  
		Last Modified: Thu, 05 Nov 2026 18:16:38 GMT  
		Size: 22.1 KB (22091 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:44ecf60b9f613d1a6c9f92cdb7e897e52d9a1db1eb10b5398704affcc9d79a02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13187032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7247bda8569c953c9f9535eb725594c4fe84fcb8e9ab1b5b753760c4e78c0d52`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:57:41 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:57:41 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 21:57:41 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:57:41 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:57:41 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 21:57:41 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:57:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:57:41 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14cff8347ea24e27144ba968a8a678d667b764add56165a69c54526e3e2f2ff`  
		Last Modified: Thu, 05 Nov 2026 21:57:48 GMT  
		Size: 9.0 MB (8996533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d786c653c048f6cd62013485ff478ab7619d8cc500c02d03ff029621e0bac7ca`  
		Last Modified: Thu, 05 Nov 2026 21:57:47 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:70f3122a9b35b7a5389250cca3c64e7ee4691917ee0785563d530ed6ad5c2456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 KB (627331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727bd4a899e21bae4ecde1b513bc310281782863068a33c0e1970e9b4c4c763a`

```dockerfile
```

-	Layers:
	-	`sha256:cc150f236bd45087e7db1977d1631c2ff6984c57f94877e97095d4128c3deca8`  
		Last Modified: Thu, 05 Nov 2026 21:57:47 GMT  
		Size: 605.0 KB (604998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfe3c1182e5b3a7d0f200a4a9868595e928320ca97c817d831d981ae95e5345b`  
		Last Modified: Thu, 05 Nov 2026 21:57:47 GMT  
		Size: 22.3 KB (22333 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:4b11324ea30946f25cf504b5025dc7c999eaff4171c6dc11e64ce44c987bf807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12616517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9910b4a5ccaa52818816e9bbce90f4a8b635201e7d41e71bc1c4d738dad43c25`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:26:02 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 22:26:02 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 22:26:02 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 22:26:02 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 22:26:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 22:26:02 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 22:26:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:26:02 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c2eff8809c083f7f0da2736f50886e0e5080741c2deb6fa338a198e896bfc9`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 8.9 MB (8937661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4661f8b98312c5bdcecdba4c71a78825b5f2d288ba4afc2ce08855456bdffd`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:1f1db7c483e7156a7c5e540259d2ea4a06ab3a67e5e1a30818b2cfdeeca261bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.5 KB (626529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102eb5c0c7270f148a24f65600f3c102e56d7eb896ec0565d427961422e5e95f`

```dockerfile
```

-	Layers:
	-	`sha256:a78cf1d468149936aed1bee9a1c52a8c843729737a54e9f45541ce1ec6318153`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 604.3 KB (604348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a69816b07fe33374e0082b255b2093eceb387fd8ce92bca9a3c0bff304ccfa`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:5c9bc07fdcc880416c524cf5d9b3411b630d06fe5de29c7ddded9cc80e985a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13073267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161370236c99ce08e23c5db43d924e60a762a72dfb3ea960e7f368fbfa694ac0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 14:48:03 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 06 Nov 2026 14:48:03 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 06 Nov 2026 14:48:03 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 06 Nov 2026 14:48:03 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 06 Nov 2026 14:48:03 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 06 Nov 2026 14:48:03 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 06 Nov 2026 14:48:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Nov 2026 14:48:03 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0768f6fb3338cacd24a481c39065800a47f5e5d5b50d0f59b5d33fb408d10b`  
		Last Modified: Fri, 06 Nov 2026 14:48:25 GMT  
		Size: 9.3 MB (9253983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae591f8a0eeb35896a0ce27cf3cf2ad651921c41eb387f3eabd72b0bb7534ec`  
		Last Modified: Fri, 06 Nov 2026 14:48:24 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:f765e31f0b814add11e494a0f3ac0656955ba3dddd166d37eb3c8e9f2e4933ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f579290b6e3a1cfc012f69fa58c6198d5bc7df119ba992567eb4a373714d7f09`

```dockerfile
```

-	Layers:
	-	`sha256:d3309238ad6116101f830786e900a6982b7568f13ff13974085a019ff5b9249f`  
		Last Modified: Fri, 06 Nov 2026 14:48:24 GMT  
		Size: 605.0 KB (604969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f9280563656b6432f7b1d122639209abc8107babf85d3e0d6580a0a8aeead5a`  
		Last Modified: Fri, 06 Nov 2026 14:48:25 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:a0d7c95b2b1c23d66d002fd2db8c39621288a40ebf451aa819749bb2f62f8e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12879455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd94f35b4f7339239d126bfd45a5b4e148fa360bcef46e2ac50fc730904a0ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:13:44 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 18:13:44 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 18:13:44 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 18:13:44 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 18:13:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 18:13:44 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 18:13:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:13:44 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dd4c6d2e67275eac468b4912f16d2d0fa81403e9761e43c7eafa1daccc0c47`  
		Last Modified: Thu, 05 Nov 2026 18:13:54 GMT  
		Size: 9.2 MB (9160831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:769de086986ef495ef212bca22bd4b73ffffd9b3dcee3330cbd76a56d9bf2c35`  
		Last Modified: Thu, 05 Nov 2026 18:13:53 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:f040994558055e3b3d20f6e9d6d9f478c1e3cc9092bf876759f2d79f75c2531b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.1 KB (627147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92132a54a57fa3eef0f388215b77ce3a85f0d44c174e196d45eb9a72baaa6598`

```dockerfile
```

-	Layers:
	-	`sha256:188bc19b2b33f602ca158fdf918b287336ea3701117dca4343d2914c2a5acc8d`  
		Last Modified: Thu, 05 Nov 2026 18:13:54 GMT  
		Size: 604.9 KB (604929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29ab8065b083e1127a777f9dda3cc81e6eda7b8f246c4fcfbfd2bd3cb856eb22`  
		Last Modified: Thu, 05 Nov 2026 18:13:54 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2-openssl`

```console
$ docker pull eclipse-mosquitto@sha256:81a6193ae693942a3231cd3ac52875b02b7e3a19da671b2fb4b55cc874c5b279
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
$ docker pull eclipse-mosquitto@sha256:8c7d1b58606baca19f7e5ccbaececac9a92f34ae6c56e7ce3b8f78a05cf98210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7718371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fe9ea977b7abafc6b66d2c0c76f1a60c168aa0be5a874baa90d2844d432bc20`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:13:15 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:13:15 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 21:13:15 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:13:15 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:13:15 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 21:13:15 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:13:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:13:15 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d093df972510e5db2c471bbf9e9fbb24b913a7ba24d5e8c2f35063ffb634c55c`  
		Last Modified: Thu, 05 Nov 2026 21:13:19 GMT  
		Size: 3.9 MB (3865413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbccc42d671a93bb49b609bc5cccd423e8d33e20fa31f721a7c5720a9d2180c1`  
		Last Modified: Thu, 05 Nov 2026 21:13:19 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:cb6e0f57044640320d29d92c155388816b114401d9bdba8ab42a41b9e4f01faf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.0 KB (558977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ecbeb2060c165f42d54ffbc2bf81cbaa65a2564d4a4c7385fdeae7efef46b45`

```dockerfile
```

-	Layers:
	-	`sha256:5160d33a88379481bc8461d7cc7bd1094494aad26ce49a141e4bcad2893150e5`  
		Last Modified: Thu, 05 Nov 2026 21:13:20 GMT  
		Size: 539.1 KB (539078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c680c7d334964cf9e5bb25d73f95d6591ba8bdb741856c290d92317469760842`  
		Last Modified: Thu, 05 Nov 2026 21:13:19 GMT  
		Size: 19.9 KB (19899 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2-openssl` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:07850a815cdc656a514eb4a4e5c548a01374086f5e221750ac3a125dc1583bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6997668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d48297e4a042aaf57d62756a136084b5219b7eef597645ddf99947e29c3df63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:45:38 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 19:45:38 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 19:45:38 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 19:45:38 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 19:45:38 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 19:45:38 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 19:45:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:45:38 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03859f884b109050ddc1df6773ccb99e9577816138caa73ef9f6c61cf25b141d`  
		Last Modified: Thu, 05 Nov 2026 19:45:42 GMT  
		Size: 3.4 MB (3439048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd0d366474b50018c7df3ccc29e5d29abdc333f1380c3c33f7d2d96f076de85`  
		Last Modified: Thu, 05 Nov 2026 19:45:42 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:4c634a1336e9f5660743a1f9599987c04aa5c111979cd4e36baf484acb6dead2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 KB (19781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7149d8b396ab1dbbd36549f7cae22aaa6774f58d1844e80166af234ec54c42`

```dockerfile
```

-	Layers:
	-	`sha256:9e902d5a8648ccbe418a11c4009aec1671cbd1c5fcbad664961f5fada0d7f522`  
		Last Modified: Thu, 05 Nov 2026 19:45:41 GMT  
		Size: 19.8 KB (19781 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2-openssl` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:49175e3b4f7609389193c86525f3f235b236b0843cae27960a62fad6649eeebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8036579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2866c701ffc079083f135fee3a68dd6e2712be1a14f02277b09cc842303fe43c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 20:28:46 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 20:28:46 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 20:28:46 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 20:28:46 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 20:28:46 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 20:28:46 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 20:28:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:28:46 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3253d74c32321cb5c004ec1df923d3f268325f5378d82f83d302b523a0e49232`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 3.8 MB (3845990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a43ad5d829049590cd0552b45096e45a3d8bd863cc6a4dc7c31a959960227b`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:d6eeb89b573ef7abf2ac28fb0f6c0f4e70077c231652240504704ab9a16d3e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.5 KB (558535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f487d385b8a4f1e854f740111856861ee80839284b9024a091d43807bbb724`

```dockerfile
```

-	Layers:
	-	`sha256:f97137a7557ca1b1446a7372606653843a5a5074145ff12ddda6a959731b226f`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 538.5 KB (538508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d9a72f3c2392f3bff733daf6c0201c76cf626f555c0f75b56b84dbd44a3424c`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 20.0 KB (20027 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2-openssl` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:e25088fa755bdc91e8faa520deef0f6eba012892110cf0d217a691418923652c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd435186fa17b6c8e6ce68168c8ab334c805c624a1091b95f7db56c39bdd081`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:26:31 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 22:26:31 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 22:26:31 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 22:26:31 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 22:26:32 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 22:26:32 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 22:26:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:26:32 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e062d23a67ad1d64038a6e9d1c69cfbe70aecc9aa1b92a83e80c6a48eb886f43`  
		Last Modified: Thu, 05 Nov 2026 22:26:37 GMT  
		Size: 3.7 MB (3712704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9295d37583547cc918b4149b2b48fb92320734c88a683689374ff271a11cee`  
		Last Modified: Thu, 05 Nov 2026 22:26:36 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:3e60ba55db03527ba7a6daa327c2feda2ad584fec6263922f4372b1fdfb3cfe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.9 KB (558901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cbf5c4d503136ed42825f36b59552ff48f77d8393df89573b1de9dca501eb8b`

```dockerfile
```

-	Layers:
	-	`sha256:fa25946b642d1f1d65f5875c5430a71e5ae39f52c9de0f11ee10904a9f4c32e9`  
		Last Modified: Thu, 05 Nov 2026 22:26:37 GMT  
		Size: 539.0 KB (539043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb862a67376916144e13dae33f0d542979fa481731a68575436484e3278ac1b`  
		Last Modified: Thu, 05 Nov 2026 22:26:36 GMT  
		Size: 19.9 KB (19858 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2-openssl` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:f107295fec0c81d37ffb8cdd7a013c6c1f1ca21883328a16448598afc404cd8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7602656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674dd7ae665d41f68446406e6fdc83b4f0f88c19d3655f2a041e654c11c23dda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:25:30 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:25:30 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 21:25:30 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:25:30 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:25:33 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 21:25:33 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:25:33 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f4786107aa80e3c048a7c06ddd6afaa557b01a5b46ca89377d15e61bdd3f4c`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 3.8 MB (3783281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d504880247217ffcff25d916323309f2819541f12f41b81a6b0cd657dfdd207c`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:91dd8dec850d374f60cf0d0357c5b52e42487a94d9b456249b0241e54408165b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.4 KB (558429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4a41a73fd7e961d28b37b2b1e0a796c70cc43f5685a5199a757ff229c32522`

```dockerfile
```

-	Layers:
	-	`sha256:b82425c30ff8c084cef22581cc1d462b111747ca2290f995d35d2ecdd9eb0d43`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 538.5 KB (538473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c486fc320db25c076ce0e8c958894a4b38a022cc8dfd254fdc89e763e282f1fb`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 20.0 KB (19956 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2-openssl` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:59f41a2cdbb9ca6f8fc0e3ddb46932ef4def1006baec0086528e2969afd92f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7324996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120783d7fc98d7fbe74cdc736296f1fed330d7db10359aa6bd9206d1b0a06f00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:08:52 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 22:08:52 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 22:08:52 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 22:08:52 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 22:08:52 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 22:08:52 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 22:08:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:08:52 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc1c8437fcf217ae52c4f434cfd297039332f085e80fd2b63c153abea4ce9f2`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 3.6 MB (3606280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b5e855515b7b5c813a21dea4419962141d7a38a812e50c4ddf4759c7eb1c50`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:6229ce80cc0d4af6404162b376fe88750911bacfc68c978c904d9db11f9eda41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.3 KB (558327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233aea4ed31787d51ceb45558e0376dae53deb497d437be0837b5af931895c3b`

```dockerfile
```

-	Layers:
	-	`sha256:5f377168637f46e1233cd2b8f6d54f41730d9ecf7ab38492becbb067b0fbb3eb`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 538.4 KB (538427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b573ecc63a31f696a9c1853cd02c1395594a348922e77b0e687a1ffdcb13789`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2.0`

```console
$ docker pull eclipse-mosquitto@sha256:81a6193ae693942a3231cd3ac52875b02b7e3a19da671b2fb4b55cc874c5b279
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
$ docker pull eclipse-mosquitto@sha256:8c7d1b58606baca19f7e5ccbaececac9a92f34ae6c56e7ce3b8f78a05cf98210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7718371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fe9ea977b7abafc6b66d2c0c76f1a60c168aa0be5a874baa90d2844d432bc20`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:13:15 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:13:15 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 21:13:15 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:13:15 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:13:15 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 21:13:15 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:13:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:13:15 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d093df972510e5db2c471bbf9e9fbb24b913a7ba24d5e8c2f35063ffb634c55c`  
		Last Modified: Thu, 05 Nov 2026 21:13:19 GMT  
		Size: 3.9 MB (3865413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbccc42d671a93bb49b609bc5cccd423e8d33e20fa31f721a7c5720a9d2180c1`  
		Last Modified: Thu, 05 Nov 2026 21:13:19 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:cb6e0f57044640320d29d92c155388816b114401d9bdba8ab42a41b9e4f01faf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.0 KB (558977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ecbeb2060c165f42d54ffbc2bf81cbaa65a2564d4a4c7385fdeae7efef46b45`

```dockerfile
```

-	Layers:
	-	`sha256:5160d33a88379481bc8461d7cc7bd1094494aad26ce49a141e4bcad2893150e5`  
		Last Modified: Thu, 05 Nov 2026 21:13:20 GMT  
		Size: 539.1 KB (539078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c680c7d334964cf9e5bb25d73f95d6591ba8bdb741856c290d92317469760842`  
		Last Modified: Thu, 05 Nov 2026 21:13:19 GMT  
		Size: 19.9 KB (19899 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:07850a815cdc656a514eb4a4e5c548a01374086f5e221750ac3a125dc1583bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6997668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d48297e4a042aaf57d62756a136084b5219b7eef597645ddf99947e29c3df63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:45:38 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 19:45:38 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 19:45:38 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 19:45:38 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 19:45:38 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 19:45:38 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 19:45:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:45:38 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03859f884b109050ddc1df6773ccb99e9577816138caa73ef9f6c61cf25b141d`  
		Last Modified: Thu, 05 Nov 2026 19:45:42 GMT  
		Size: 3.4 MB (3439048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd0d366474b50018c7df3ccc29e5d29abdc333f1380c3c33f7d2d96f076de85`  
		Last Modified: Thu, 05 Nov 2026 19:45:42 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:4c634a1336e9f5660743a1f9599987c04aa5c111979cd4e36baf484acb6dead2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 KB (19781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7149d8b396ab1dbbd36549f7cae22aaa6774f58d1844e80166af234ec54c42`

```dockerfile
```

-	Layers:
	-	`sha256:9e902d5a8648ccbe418a11c4009aec1671cbd1c5fcbad664961f5fada0d7f522`  
		Last Modified: Thu, 05 Nov 2026 19:45:41 GMT  
		Size: 19.8 KB (19781 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:49175e3b4f7609389193c86525f3f235b236b0843cae27960a62fad6649eeebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8036579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2866c701ffc079083f135fee3a68dd6e2712be1a14f02277b09cc842303fe43c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 20:28:46 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 20:28:46 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 20:28:46 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 20:28:46 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 20:28:46 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 20:28:46 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 20:28:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:28:46 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3253d74c32321cb5c004ec1df923d3f268325f5378d82f83d302b523a0e49232`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 3.8 MB (3845990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a43ad5d829049590cd0552b45096e45a3d8bd863cc6a4dc7c31a959960227b`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:d6eeb89b573ef7abf2ac28fb0f6c0f4e70077c231652240504704ab9a16d3e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.5 KB (558535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f487d385b8a4f1e854f740111856861ee80839284b9024a091d43807bbb724`

```dockerfile
```

-	Layers:
	-	`sha256:f97137a7557ca1b1446a7372606653843a5a5074145ff12ddda6a959731b226f`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 538.5 KB (538508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d9a72f3c2392f3bff733daf6c0201c76cf626f555c0f75b56b84dbd44a3424c`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 20.0 KB (20027 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:e25088fa755bdc91e8faa520deef0f6eba012892110cf0d217a691418923652c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd435186fa17b6c8e6ce68168c8ab334c805c624a1091b95f7db56c39bdd081`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:26:31 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 22:26:31 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 22:26:31 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 22:26:31 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 22:26:32 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 22:26:32 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 22:26:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:26:32 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e062d23a67ad1d64038a6e9d1c69cfbe70aecc9aa1b92a83e80c6a48eb886f43`  
		Last Modified: Thu, 05 Nov 2026 22:26:37 GMT  
		Size: 3.7 MB (3712704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9295d37583547cc918b4149b2b48fb92320734c88a683689374ff271a11cee`  
		Last Modified: Thu, 05 Nov 2026 22:26:36 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:3e60ba55db03527ba7a6daa327c2feda2ad584fec6263922f4372b1fdfb3cfe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.9 KB (558901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cbf5c4d503136ed42825f36b59552ff48f77d8393df89573b1de9dca501eb8b`

```dockerfile
```

-	Layers:
	-	`sha256:fa25946b642d1f1d65f5875c5430a71e5ae39f52c9de0f11ee10904a9f4c32e9`  
		Last Modified: Thu, 05 Nov 2026 22:26:37 GMT  
		Size: 539.0 KB (539043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb862a67376916144e13dae33f0d542979fa481731a68575436484e3278ac1b`  
		Last Modified: Thu, 05 Nov 2026 22:26:36 GMT  
		Size: 19.9 KB (19858 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:f107295fec0c81d37ffb8cdd7a013c6c1f1ca21883328a16448598afc404cd8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7602656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674dd7ae665d41f68446406e6fdc83b4f0f88c19d3655f2a041e654c11c23dda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:25:30 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:25:30 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 21:25:30 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:25:30 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:25:33 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 21:25:33 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:25:33 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f4786107aa80e3c048a7c06ddd6afaa557b01a5b46ca89377d15e61bdd3f4c`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 3.8 MB (3783281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d504880247217ffcff25d916323309f2819541f12f41b81a6b0cd657dfdd207c`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:91dd8dec850d374f60cf0d0357c5b52e42487a94d9b456249b0241e54408165b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.4 KB (558429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4a41a73fd7e961d28b37b2b1e0a796c70cc43f5685a5199a757ff229c32522`

```dockerfile
```

-	Layers:
	-	`sha256:b82425c30ff8c084cef22581cc1d462b111747ca2290f995d35d2ecdd9eb0d43`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 538.5 KB (538473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c486fc320db25c076ce0e8c958894a4b38a022cc8dfd254fdc89e763e282f1fb`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 20.0 KB (19956 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:59f41a2cdbb9ca6f8fc0e3ddb46932ef4def1006baec0086528e2969afd92f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7324996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120783d7fc98d7fbe74cdc736296f1fed330d7db10359aa6bd9206d1b0a06f00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:08:52 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 22:08:52 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 22:08:52 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 22:08:52 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 22:08:52 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 22:08:52 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 22:08:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:08:52 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc1c8437fcf217ae52c4f434cfd297039332f085e80fd2b63c153abea4ce9f2`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 3.6 MB (3606280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b5e855515b7b5c813a21dea4419962141d7a38a812e50c4ddf4759c7eb1c50`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:6229ce80cc0d4af6404162b376fe88750911bacfc68c978c904d9db11f9eda41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.3 KB (558327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233aea4ed31787d51ceb45558e0376dae53deb497d437be0837b5af931895c3b`

```dockerfile
```

-	Layers:
	-	`sha256:5f377168637f46e1233cd2b8f6d54f41730d9ecf7ab38492becbb067b0fbb3eb`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 538.4 KB (538427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b573ecc63a31f696a9c1853cd02c1395594a348922e77b0e687a1ffdcb13789`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2.0-openssl`

```console
$ docker pull eclipse-mosquitto@sha256:81a6193ae693942a3231cd3ac52875b02b7e3a19da671b2fb4b55cc874c5b279
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
$ docker pull eclipse-mosquitto@sha256:8c7d1b58606baca19f7e5ccbaececac9a92f34ae6c56e7ce3b8f78a05cf98210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7718371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fe9ea977b7abafc6b66d2c0c76f1a60c168aa0be5a874baa90d2844d432bc20`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:13:15 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:13:15 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 21:13:15 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:13:15 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:13:15 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 21:13:15 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:13:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:13:15 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d093df972510e5db2c471bbf9e9fbb24b913a7ba24d5e8c2f35063ffb634c55c`  
		Last Modified: Thu, 05 Nov 2026 21:13:19 GMT  
		Size: 3.9 MB (3865413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbccc42d671a93bb49b609bc5cccd423e8d33e20fa31f721a7c5720a9d2180c1`  
		Last Modified: Thu, 05 Nov 2026 21:13:19 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:cb6e0f57044640320d29d92c155388816b114401d9bdba8ab42a41b9e4f01faf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.0 KB (558977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ecbeb2060c165f42d54ffbc2bf81cbaa65a2564d4a4c7385fdeae7efef46b45`

```dockerfile
```

-	Layers:
	-	`sha256:5160d33a88379481bc8461d7cc7bd1094494aad26ce49a141e4bcad2893150e5`  
		Last Modified: Thu, 05 Nov 2026 21:13:20 GMT  
		Size: 539.1 KB (539078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c680c7d334964cf9e5bb25d73f95d6591ba8bdb741856c290d92317469760842`  
		Last Modified: Thu, 05 Nov 2026 21:13:19 GMT  
		Size: 19.9 KB (19899 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0-openssl` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:07850a815cdc656a514eb4a4e5c548a01374086f5e221750ac3a125dc1583bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6997668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d48297e4a042aaf57d62756a136084b5219b7eef597645ddf99947e29c3df63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:45:38 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 19:45:38 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 19:45:38 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 19:45:38 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 19:45:38 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 19:45:38 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 19:45:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:45:38 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03859f884b109050ddc1df6773ccb99e9577816138caa73ef9f6c61cf25b141d`  
		Last Modified: Thu, 05 Nov 2026 19:45:42 GMT  
		Size: 3.4 MB (3439048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd0d366474b50018c7df3ccc29e5d29abdc333f1380c3c33f7d2d96f076de85`  
		Last Modified: Thu, 05 Nov 2026 19:45:42 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:4c634a1336e9f5660743a1f9599987c04aa5c111979cd4e36baf484acb6dead2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 KB (19781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7149d8b396ab1dbbd36549f7cae22aaa6774f58d1844e80166af234ec54c42`

```dockerfile
```

-	Layers:
	-	`sha256:9e902d5a8648ccbe418a11c4009aec1671cbd1c5fcbad664961f5fada0d7f522`  
		Last Modified: Thu, 05 Nov 2026 19:45:41 GMT  
		Size: 19.8 KB (19781 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0-openssl` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:49175e3b4f7609389193c86525f3f235b236b0843cae27960a62fad6649eeebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8036579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2866c701ffc079083f135fee3a68dd6e2712be1a14f02277b09cc842303fe43c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 20:28:46 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 20:28:46 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 20:28:46 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 20:28:46 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 20:28:46 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 20:28:46 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 20:28:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:28:46 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3253d74c32321cb5c004ec1df923d3f268325f5378d82f83d302b523a0e49232`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 3.8 MB (3845990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a43ad5d829049590cd0552b45096e45a3d8bd863cc6a4dc7c31a959960227b`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:d6eeb89b573ef7abf2ac28fb0f6c0f4e70077c231652240504704ab9a16d3e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.5 KB (558535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f487d385b8a4f1e854f740111856861ee80839284b9024a091d43807bbb724`

```dockerfile
```

-	Layers:
	-	`sha256:f97137a7557ca1b1446a7372606653843a5a5074145ff12ddda6a959731b226f`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 538.5 KB (538508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d9a72f3c2392f3bff733daf6c0201c76cf626f555c0f75b56b84dbd44a3424c`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 20.0 KB (20027 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0-openssl` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:e25088fa755bdc91e8faa520deef0f6eba012892110cf0d217a691418923652c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd435186fa17b6c8e6ce68168c8ab334c805c624a1091b95f7db56c39bdd081`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:26:31 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 22:26:31 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 22:26:31 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 22:26:31 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 22:26:32 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 22:26:32 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 22:26:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:26:32 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e062d23a67ad1d64038a6e9d1c69cfbe70aecc9aa1b92a83e80c6a48eb886f43`  
		Last Modified: Thu, 05 Nov 2026 22:26:37 GMT  
		Size: 3.7 MB (3712704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9295d37583547cc918b4149b2b48fb92320734c88a683689374ff271a11cee`  
		Last Modified: Thu, 05 Nov 2026 22:26:36 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:3e60ba55db03527ba7a6daa327c2feda2ad584fec6263922f4372b1fdfb3cfe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.9 KB (558901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cbf5c4d503136ed42825f36b59552ff48f77d8393df89573b1de9dca501eb8b`

```dockerfile
```

-	Layers:
	-	`sha256:fa25946b642d1f1d65f5875c5430a71e5ae39f52c9de0f11ee10904a9f4c32e9`  
		Last Modified: Thu, 05 Nov 2026 22:26:37 GMT  
		Size: 539.0 KB (539043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb862a67376916144e13dae33f0d542979fa481731a68575436484e3278ac1b`  
		Last Modified: Thu, 05 Nov 2026 22:26:36 GMT  
		Size: 19.9 KB (19858 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0-openssl` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:f107295fec0c81d37ffb8cdd7a013c6c1f1ca21883328a16448598afc404cd8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7602656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674dd7ae665d41f68446406e6fdc83b4f0f88c19d3655f2a041e654c11c23dda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:25:30 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:25:30 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 21:25:30 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:25:30 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:25:33 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 21:25:33 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:25:33 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f4786107aa80e3c048a7c06ddd6afaa557b01a5b46ca89377d15e61bdd3f4c`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 3.8 MB (3783281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d504880247217ffcff25d916323309f2819541f12f41b81a6b0cd657dfdd207c`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:91dd8dec850d374f60cf0d0357c5b52e42487a94d9b456249b0241e54408165b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.4 KB (558429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4a41a73fd7e961d28b37b2b1e0a796c70cc43f5685a5199a757ff229c32522`

```dockerfile
```

-	Layers:
	-	`sha256:b82425c30ff8c084cef22581cc1d462b111747ca2290f995d35d2ecdd9eb0d43`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 538.5 KB (538473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c486fc320db25c076ce0e8c958894a4b38a022cc8dfd254fdc89e763e282f1fb`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 20.0 KB (19956 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.0-openssl` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:59f41a2cdbb9ca6f8fc0e3ddb46932ef4def1006baec0086528e2969afd92f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7324996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120783d7fc98d7fbe74cdc736296f1fed330d7db10359aa6bd9206d1b0a06f00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:08:52 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 22:08:52 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 22:08:52 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 22:08:52 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 22:08:52 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 22:08:52 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 22:08:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:08:52 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc1c8437fcf217ae52c4f434cfd297039332f085e80fd2b63c153abea4ce9f2`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 3.6 MB (3606280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b5e855515b7b5c813a21dea4419962141d7a38a812e50c4ddf4759c7eb1c50`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.0-openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:6229ce80cc0d4af6404162b376fe88750911bacfc68c978c904d9db11f9eda41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.3 KB (558327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233aea4ed31787d51ceb45558e0376dae53deb497d437be0837b5af931895c3b`

```dockerfile
```

-	Layers:
	-	`sha256:5f377168637f46e1233cd2b8f6d54f41730d9ecf7ab38492becbb067b0fbb3eb`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 538.4 KB (538427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b573ecc63a31f696a9c1853cd02c1395594a348922e77b0e687a1ffdcb13789`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2.0.23`

**does not exist** (yet?)

## `eclipse-mosquitto:2.0.23-openssl`

**does not exist** (yet?)

## `eclipse-mosquitto:2.1-alpine`

```console
$ docker pull eclipse-mosquitto@sha256:75d6662dee52c947dc9dd9c29f1d8d7ffef78ddaf38001caa09755681e8bbc98
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
$ docker pull eclipse-mosquitto@sha256:22075095e8790eec5592ff3c213b1974cd51aa458275af2f8b0595af4c385df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12968464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceaa1d541610ed761c1399787c4108d4cfa6eec6a28bdefe4d169c9d675d18ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:12:48 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:12:48 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 21:12:48 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:12:48 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:12:48 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 21:12:48 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:12:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:12:48 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f31af66d5044f842db795ccd1e775d86db5df32dd8b342b88455b95db5d233`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 9.1 MB (9115598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36dcb4467a6b67bf9b3bc8b81139d8be5cc15610c4a66af77e32da925a2b6480`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:acd0da23f87c3350d146b2a7e8481d581877fcf2bf7ea6f211081e9fdcef90ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.6 KB (626596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c299ff7faa5871ad84595833c6f36db84d8d29df2c940cdf44bc3f88d504d89b`

```dockerfile
```

-	Layers:
	-	`sha256:b54efe654f1e46b89c8bdea14e5c84a4ea03be79696c86b931975443e8961a04`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 604.4 KB (604378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66065e9a3dfccdf3b43e35329acda0e5d282e21c0d4503a9a62bc86a1eaf7e4d`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1-alpine` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:dfc86791ff1d33cc48050c94cbfb5ffadb4c1bbb07eccc78d185b310465b2bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.2 MB (12218951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de92ed59a04edbaba25c44863f94639226ed213a9c724eeda8f0cd740af556d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:34 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 18:16:34 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 18:16:34 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 18:16:35 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 18:16:35 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 18:16:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:35 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ac925db7cefe5ae8a942c664df42ed27d67120b7a697b9453f84652b5c4acc`  
		Last Modified: Thu, 05 Nov 2026 18:16:39 GMT  
		Size: 8.7 MB (8660423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f32bc5fc35d6b032e49b2e9257b25c8eecadca337236cb52754503e013cb49`  
		Last Modified: Thu, 05 Nov 2026 18:16:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:a9e43f3668f6eb6a460ad11e5d74fd6670fae1b57469d66d25a13a0e100cadd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 KB (22091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c6e5a3c93a71baed3df7aabd465a7f27e4a0a556cfaf2c672d3a25154c8127`

```dockerfile
```

-	Layers:
	-	`sha256:b03fdbc67b4c00b8861b9d1f9c56e2cae10077a7b6bc2b305ca8c456bd338aa3`  
		Last Modified: Thu, 05 Nov 2026 18:16:38 GMT  
		Size: 22.1 KB (22091 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:44ecf60b9f613d1a6c9f92cdb7e897e52d9a1db1eb10b5398704affcc9d79a02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13187032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7247bda8569c953c9f9535eb725594c4fe84fcb8e9ab1b5b753760c4e78c0d52`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:57:41 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:57:41 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 21:57:41 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:57:41 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:57:41 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 21:57:41 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:57:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:57:41 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14cff8347ea24e27144ba968a8a678d667b764add56165a69c54526e3e2f2ff`  
		Last Modified: Thu, 05 Nov 2026 21:57:48 GMT  
		Size: 9.0 MB (8996533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d786c653c048f6cd62013485ff478ab7619d8cc500c02d03ff029621e0bac7ca`  
		Last Modified: Thu, 05 Nov 2026 21:57:47 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:70f3122a9b35b7a5389250cca3c64e7ee4691917ee0785563d530ed6ad5c2456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 KB (627331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727bd4a899e21bae4ecde1b513bc310281782863068a33c0e1970e9b4c4c763a`

```dockerfile
```

-	Layers:
	-	`sha256:cc150f236bd45087e7db1977d1631c2ff6984c57f94877e97095d4128c3deca8`  
		Last Modified: Thu, 05 Nov 2026 21:57:47 GMT  
		Size: 605.0 KB (604998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfe3c1182e5b3a7d0f200a4a9868595e928320ca97c817d831d981ae95e5345b`  
		Last Modified: Thu, 05 Nov 2026 21:57:47 GMT  
		Size: 22.3 KB (22333 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1-alpine` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:4b11324ea30946f25cf504b5025dc7c999eaff4171c6dc11e64ce44c987bf807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12616517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9910b4a5ccaa52818816e9bbce90f4a8b635201e7d41e71bc1c4d738dad43c25`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:26:02 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 22:26:02 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 22:26:02 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 22:26:02 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 22:26:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 22:26:02 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 22:26:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:26:02 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c2eff8809c083f7f0da2736f50886e0e5080741c2deb6fa338a198e896bfc9`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 8.9 MB (8937661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4661f8b98312c5bdcecdba4c71a78825b5f2d288ba4afc2ce08855456bdffd`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:1f1db7c483e7156a7c5e540259d2ea4a06ab3a67e5e1a30818b2cfdeeca261bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.5 KB (626529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102eb5c0c7270f148a24f65600f3c102e56d7eb896ec0565d427961422e5e95f`

```dockerfile
```

-	Layers:
	-	`sha256:a78cf1d468149936aed1bee9a1c52a8c843729737a54e9f45541ce1ec6318153`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 604.3 KB (604348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a69816b07fe33374e0082b255b2093eceb387fd8ce92bca9a3c0bff304ccfa`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1-alpine` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:5c9bc07fdcc880416c524cf5d9b3411b630d06fe5de29c7ddded9cc80e985a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13073267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161370236c99ce08e23c5db43d924e60a762a72dfb3ea960e7f368fbfa694ac0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 14:48:03 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 06 Nov 2026 14:48:03 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 06 Nov 2026 14:48:03 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 06 Nov 2026 14:48:03 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 06 Nov 2026 14:48:03 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 06 Nov 2026 14:48:03 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 06 Nov 2026 14:48:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Nov 2026 14:48:03 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0768f6fb3338cacd24a481c39065800a47f5e5d5b50d0f59b5d33fb408d10b`  
		Last Modified: Fri, 06 Nov 2026 14:48:25 GMT  
		Size: 9.3 MB (9253983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae591f8a0eeb35896a0ce27cf3cf2ad651921c41eb387f3eabd72b0bb7534ec`  
		Last Modified: Fri, 06 Nov 2026 14:48:24 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:f765e31f0b814add11e494a0f3ac0656955ba3dddd166d37eb3c8e9f2e4933ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f579290b6e3a1cfc012f69fa58c6198d5bc7df119ba992567eb4a373714d7f09`

```dockerfile
```

-	Layers:
	-	`sha256:d3309238ad6116101f830786e900a6982b7568f13ff13974085a019ff5b9249f`  
		Last Modified: Fri, 06 Nov 2026 14:48:24 GMT  
		Size: 605.0 KB (604969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f9280563656b6432f7b1d122639209abc8107babf85d3e0d6580a0a8aeead5a`  
		Last Modified: Fri, 06 Nov 2026 14:48:25 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:2.1-alpine` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:a0d7c95b2b1c23d66d002fd2db8c39621288a40ebf451aa819749bb2f62f8e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12879455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd94f35b4f7339239d126bfd45a5b4e148fa360bcef46e2ac50fc730904a0ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:13:44 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 18:13:44 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 18:13:44 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 18:13:44 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 18:13:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 18:13:44 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 18:13:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:13:44 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dd4c6d2e67275eac468b4912f16d2d0fa81403e9761e43c7eafa1daccc0c47`  
		Last Modified: Thu, 05 Nov 2026 18:13:54 GMT  
		Size: 9.2 MB (9160831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:769de086986ef495ef212bca22bd4b73ffffd9b3dcee3330cbd76a56d9bf2c35`  
		Last Modified: Thu, 05 Nov 2026 18:13:53 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:2.1-alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:f040994558055e3b3d20f6e9d6d9f478c1e3cc9092bf876759f2d79f75c2531b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.1 KB (627147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92132a54a57fa3eef0f388215b77ce3a85f0d44c174e196d45eb9a72baaa6598`

```dockerfile
```

-	Layers:
	-	`sha256:188bc19b2b33f602ca158fdf918b287336ea3701117dca4343d2914c2a5acc8d`  
		Last Modified: Thu, 05 Nov 2026 18:13:54 GMT  
		Size: 604.9 KB (604929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29ab8065b083e1127a777f9dda3cc81e6eda7b8f246c4fcfbfd2bd3cb856eb22`  
		Last Modified: Thu, 05 Nov 2026 18:13:54 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:2.1.4-alpine`

**does not exist** (yet?)

## `eclipse-mosquitto:alpine`

```console
$ docker pull eclipse-mosquitto@sha256:75d6662dee52c947dc9dd9c29f1d8d7ffef78ddaf38001caa09755681e8bbc98
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
$ docker pull eclipse-mosquitto@sha256:22075095e8790eec5592ff3c213b1974cd51aa458275af2f8b0595af4c385df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12968464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceaa1d541610ed761c1399787c4108d4cfa6eec6a28bdefe4d169c9d675d18ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:12:48 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:12:48 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 21:12:48 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:12:48 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:12:48 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 21:12:48 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:12:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:12:48 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f31af66d5044f842db795ccd1e775d86db5df32dd8b342b88455b95db5d233`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 9.1 MB (9115598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36dcb4467a6b67bf9b3bc8b81139d8be5cc15610c4a66af77e32da925a2b6480`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:acd0da23f87c3350d146b2a7e8481d581877fcf2bf7ea6f211081e9fdcef90ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.6 KB (626596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c299ff7faa5871ad84595833c6f36db84d8d29df2c940cdf44bc3f88d504d89b`

```dockerfile
```

-	Layers:
	-	`sha256:b54efe654f1e46b89c8bdea14e5c84a4ea03be79696c86b931975443e8961a04`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 604.4 KB (604378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66065e9a3dfccdf3b43e35329acda0e5d282e21c0d4503a9a62bc86a1eaf7e4d`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:alpine` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:dfc86791ff1d33cc48050c94cbfb5ffadb4c1bbb07eccc78d185b310465b2bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.2 MB (12218951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de92ed59a04edbaba25c44863f94639226ed213a9c724eeda8f0cd740af556d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:34 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 18:16:34 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 18:16:34 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 18:16:35 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 18:16:35 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 18:16:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:35 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ac925db7cefe5ae8a942c664df42ed27d67120b7a697b9453f84652b5c4acc`  
		Last Modified: Thu, 05 Nov 2026 18:16:39 GMT  
		Size: 8.7 MB (8660423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f32bc5fc35d6b032e49b2e9257b25c8eecadca337236cb52754503e013cb49`  
		Last Modified: Thu, 05 Nov 2026 18:16:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:a9e43f3668f6eb6a460ad11e5d74fd6670fae1b57469d66d25a13a0e100cadd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 KB (22091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c6e5a3c93a71baed3df7aabd465a7f27e4a0a556cfaf2c672d3a25154c8127`

```dockerfile
```

-	Layers:
	-	`sha256:b03fdbc67b4c00b8861b9d1f9c56e2cae10077a7b6bc2b305ca8c456bd338aa3`  
		Last Modified: Thu, 05 Nov 2026 18:16:38 GMT  
		Size: 22.1 KB (22091 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:44ecf60b9f613d1a6c9f92cdb7e897e52d9a1db1eb10b5398704affcc9d79a02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13187032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7247bda8569c953c9f9535eb725594c4fe84fcb8e9ab1b5b753760c4e78c0d52`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:57:41 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:57:41 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 21:57:41 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:57:41 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:57:41 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 21:57:41 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:57:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:57:41 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14cff8347ea24e27144ba968a8a678d667b764add56165a69c54526e3e2f2ff`  
		Last Modified: Thu, 05 Nov 2026 21:57:48 GMT  
		Size: 9.0 MB (8996533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d786c653c048f6cd62013485ff478ab7619d8cc500c02d03ff029621e0bac7ca`  
		Last Modified: Thu, 05 Nov 2026 21:57:47 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:70f3122a9b35b7a5389250cca3c64e7ee4691917ee0785563d530ed6ad5c2456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 KB (627331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727bd4a899e21bae4ecde1b513bc310281782863068a33c0e1970e9b4c4c763a`

```dockerfile
```

-	Layers:
	-	`sha256:cc150f236bd45087e7db1977d1631c2ff6984c57f94877e97095d4128c3deca8`  
		Last Modified: Thu, 05 Nov 2026 21:57:47 GMT  
		Size: 605.0 KB (604998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfe3c1182e5b3a7d0f200a4a9868595e928320ca97c817d831d981ae95e5345b`  
		Last Modified: Thu, 05 Nov 2026 21:57:47 GMT  
		Size: 22.3 KB (22333 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:alpine` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:4b11324ea30946f25cf504b5025dc7c999eaff4171c6dc11e64ce44c987bf807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12616517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9910b4a5ccaa52818816e9bbce90f4a8b635201e7d41e71bc1c4d738dad43c25`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:26:02 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 22:26:02 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 22:26:02 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 22:26:02 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 22:26:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 22:26:02 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 22:26:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:26:02 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c2eff8809c083f7f0da2736f50886e0e5080741c2deb6fa338a198e896bfc9`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 8.9 MB (8937661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4661f8b98312c5bdcecdba4c71a78825b5f2d288ba4afc2ce08855456bdffd`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:1f1db7c483e7156a7c5e540259d2ea4a06ab3a67e5e1a30818b2cfdeeca261bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.5 KB (626529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102eb5c0c7270f148a24f65600f3c102e56d7eb896ec0565d427961422e5e95f`

```dockerfile
```

-	Layers:
	-	`sha256:a78cf1d468149936aed1bee9a1c52a8c843729737a54e9f45541ce1ec6318153`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 604.3 KB (604348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a69816b07fe33374e0082b255b2093eceb387fd8ce92bca9a3c0bff304ccfa`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:alpine` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:5c9bc07fdcc880416c524cf5d9b3411b630d06fe5de29c7ddded9cc80e985a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13073267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161370236c99ce08e23c5db43d924e60a762a72dfb3ea960e7f368fbfa694ac0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 14:48:03 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 06 Nov 2026 14:48:03 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 06 Nov 2026 14:48:03 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 06 Nov 2026 14:48:03 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 06 Nov 2026 14:48:03 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 06 Nov 2026 14:48:03 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 06 Nov 2026 14:48:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Nov 2026 14:48:03 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0768f6fb3338cacd24a481c39065800a47f5e5d5b50d0f59b5d33fb408d10b`  
		Last Modified: Fri, 06 Nov 2026 14:48:25 GMT  
		Size: 9.3 MB (9253983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae591f8a0eeb35896a0ce27cf3cf2ad651921c41eb387f3eabd72b0bb7534ec`  
		Last Modified: Fri, 06 Nov 2026 14:48:24 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:f765e31f0b814add11e494a0f3ac0656955ba3dddd166d37eb3c8e9f2e4933ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f579290b6e3a1cfc012f69fa58c6198d5bc7df119ba992567eb4a373714d7f09`

```dockerfile
```

-	Layers:
	-	`sha256:d3309238ad6116101f830786e900a6982b7568f13ff13974085a019ff5b9249f`  
		Last Modified: Fri, 06 Nov 2026 14:48:24 GMT  
		Size: 605.0 KB (604969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f9280563656b6432f7b1d122639209abc8107babf85d3e0d6580a0a8aeead5a`  
		Last Modified: Fri, 06 Nov 2026 14:48:25 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:alpine` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:a0d7c95b2b1c23d66d002fd2db8c39621288a40ebf451aa819749bb2f62f8e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12879455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd94f35b4f7339239d126bfd45a5b4e148fa360bcef46e2ac50fc730904a0ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:13:44 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 18:13:44 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 18:13:44 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 18:13:44 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 18:13:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 18:13:44 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 18:13:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:13:44 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dd4c6d2e67275eac468b4912f16d2d0fa81403e9761e43c7eafa1daccc0c47`  
		Last Modified: Thu, 05 Nov 2026 18:13:54 GMT  
		Size: 9.2 MB (9160831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:769de086986ef495ef212bca22bd4b73ffffd9b3dcee3330cbd76a56d9bf2c35`  
		Last Modified: Thu, 05 Nov 2026 18:13:53 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:alpine` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:f040994558055e3b3d20f6e9d6d9f478c1e3cc9092bf876759f2d79f75c2531b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.1 KB (627147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92132a54a57fa3eef0f388215b77ce3a85f0d44c174e196d45eb9a72baaa6598`

```dockerfile
```

-	Layers:
	-	`sha256:188bc19b2b33f602ca158fdf918b287336ea3701117dca4343d2914c2a5acc8d`  
		Last Modified: Thu, 05 Nov 2026 18:13:54 GMT  
		Size: 604.9 KB (604929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29ab8065b083e1127a777f9dda3cc81e6eda7b8f246c4fcfbfd2bd3cb856eb22`  
		Last Modified: Thu, 05 Nov 2026 18:13:54 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:75d6662dee52c947dc9dd9c29f1d8d7ffef78ddaf38001caa09755681e8bbc98
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
$ docker pull eclipse-mosquitto@sha256:22075095e8790eec5592ff3c213b1974cd51aa458275af2f8b0595af4c385df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12968464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceaa1d541610ed761c1399787c4108d4cfa6eec6a28bdefe4d169c9d675d18ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:12:48 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:12:48 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 21:12:48 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:12:48 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:12:48 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 21:12:48 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:12:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:12:48 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f31af66d5044f842db795ccd1e775d86db5df32dd8b342b88455b95db5d233`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 9.1 MB (9115598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36dcb4467a6b67bf9b3bc8b81139d8be5cc15610c4a66af77e32da925a2b6480`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:latest` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:acd0da23f87c3350d146b2a7e8481d581877fcf2bf7ea6f211081e9fdcef90ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.6 KB (626596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c299ff7faa5871ad84595833c6f36db84d8d29df2c940cdf44bc3f88d504d89b`

```dockerfile
```

-	Layers:
	-	`sha256:b54efe654f1e46b89c8bdea14e5c84a4ea03be79696c86b931975443e8961a04`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 604.4 KB (604378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66065e9a3dfccdf3b43e35329acda0e5d282e21c0d4503a9a62bc86a1eaf7e4d`  
		Last Modified: Thu, 05 Nov 2026 21:12:54 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:latest` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:dfc86791ff1d33cc48050c94cbfb5ffadb4c1bbb07eccc78d185b310465b2bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.2 MB (12218951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de92ed59a04edbaba25c44863f94639226ed213a9c724eeda8f0cd740af556d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:34 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 18:16:34 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 18:16:34 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 18:16:35 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 18:16:35 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 18:16:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:35 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ac925db7cefe5ae8a942c664df42ed27d67120b7a697b9453f84652b5c4acc`  
		Last Modified: Thu, 05 Nov 2026 18:16:39 GMT  
		Size: 8.7 MB (8660423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f32bc5fc35d6b032e49b2e9257b25c8eecadca337236cb52754503e013cb49`  
		Last Modified: Thu, 05 Nov 2026 18:16:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:latest` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:a9e43f3668f6eb6a460ad11e5d74fd6670fae1b57469d66d25a13a0e100cadd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 KB (22091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c6e5a3c93a71baed3df7aabd465a7f27e4a0a556cfaf2c672d3a25154c8127`

```dockerfile
```

-	Layers:
	-	`sha256:b03fdbc67b4c00b8861b9d1f9c56e2cae10077a7b6bc2b305ca8c456bd338aa3`  
		Last Modified: Thu, 05 Nov 2026 18:16:38 GMT  
		Size: 22.1 KB (22091 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:latest` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:44ecf60b9f613d1a6c9f92cdb7e897e52d9a1db1eb10b5398704affcc9d79a02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13187032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7247bda8569c953c9f9535eb725594c4fe84fcb8e9ab1b5b753760c4e78c0d52`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:57:41 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:57:41 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 21:57:41 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:57:41 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:57:41 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 21:57:41 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:57:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:57:41 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14cff8347ea24e27144ba968a8a678d667b764add56165a69c54526e3e2f2ff`  
		Last Modified: Thu, 05 Nov 2026 21:57:48 GMT  
		Size: 9.0 MB (8996533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d786c653c048f6cd62013485ff478ab7619d8cc500c02d03ff029621e0bac7ca`  
		Last Modified: Thu, 05 Nov 2026 21:57:47 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:latest` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:70f3122a9b35b7a5389250cca3c64e7ee4691917ee0785563d530ed6ad5c2456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 KB (627331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727bd4a899e21bae4ecde1b513bc310281782863068a33c0e1970e9b4c4c763a`

```dockerfile
```

-	Layers:
	-	`sha256:cc150f236bd45087e7db1977d1631c2ff6984c57f94877e97095d4128c3deca8`  
		Last Modified: Thu, 05 Nov 2026 21:57:47 GMT  
		Size: 605.0 KB (604998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfe3c1182e5b3a7d0f200a4a9868595e928320ca97c817d831d981ae95e5345b`  
		Last Modified: Thu, 05 Nov 2026 21:57:47 GMT  
		Size: 22.3 KB (22333 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:latest` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:4b11324ea30946f25cf504b5025dc7c999eaff4171c6dc11e64ce44c987bf807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12616517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9910b4a5ccaa52818816e9bbce90f4a8b635201e7d41e71bc1c4d738dad43c25`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:26:02 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 22:26:02 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 22:26:02 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 22:26:02 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 22:26:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 22:26:02 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 22:26:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:26:02 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c2eff8809c083f7f0da2736f50886e0e5080741c2deb6fa338a198e896bfc9`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 8.9 MB (8937661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4661f8b98312c5bdcecdba4c71a78825b5f2d288ba4afc2ce08855456bdffd`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:latest` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:1f1db7c483e7156a7c5e540259d2ea4a06ab3a67e5e1a30818b2cfdeeca261bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.5 KB (626529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102eb5c0c7270f148a24f65600f3c102e56d7eb896ec0565d427961422e5e95f`

```dockerfile
```

-	Layers:
	-	`sha256:a78cf1d468149936aed1bee9a1c52a8c843729737a54e9f45541ce1ec6318153`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 604.3 KB (604348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a69816b07fe33374e0082b255b2093eceb387fd8ce92bca9a3c0bff304ccfa`  
		Last Modified: Thu, 05 Nov 2026 22:26:08 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:latest` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:5c9bc07fdcc880416c524cf5d9b3411b630d06fe5de29c7ddded9cc80e985a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13073267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161370236c99ce08e23c5db43d924e60a762a72dfb3ea960e7f368fbfa694ac0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 14:48:03 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Fri, 06 Nov 2026 14:48:03 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Fri, 06 Nov 2026 14:48:03 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Fri, 06 Nov 2026 14:48:03 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Fri, 06 Nov 2026 14:48:03 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 06 Nov 2026 14:48:03 GMT
EXPOSE map[1883/tcp:{}]
# Fri, 06 Nov 2026 14:48:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Nov 2026 14:48:03 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0768f6fb3338cacd24a481c39065800a47f5e5d5b50d0f59b5d33fb408d10b`  
		Last Modified: Fri, 06 Nov 2026 14:48:25 GMT  
		Size: 9.3 MB (9253983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae591f8a0eeb35896a0ce27cf3cf2ad651921c41eb387f3eabd72b0bb7534ec`  
		Last Modified: Fri, 06 Nov 2026 14:48:24 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:latest` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:f765e31f0b814add11e494a0f3ac0656955ba3dddd166d37eb3c8e9f2e4933ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f579290b6e3a1cfc012f69fa58c6198d5bc7df119ba992567eb4a373714d7f09`

```dockerfile
```

-	Layers:
	-	`sha256:d3309238ad6116101f830786e900a6982b7568f13ff13974085a019ff5b9249f`  
		Last Modified: Fri, 06 Nov 2026 14:48:24 GMT  
		Size: 605.0 KB (604969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f9280563656b6432f7b1d122639209abc8107babf85d3e0d6580a0a8aeead5a`  
		Last Modified: Fri, 06 Nov 2026 14:48:25 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:latest` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:a0d7c95b2b1c23d66d002fd2db8c39621288a40ebf451aa819749bb2f62f8e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12879455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd94f35b4f7339239d126bfd45a5b4e148fa360bcef46e2ac50fc730904a0ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:13:44 GMT
ENV VERSION=2.1.2 DOWNLOAD_SHA256=fd905380691ac65ea5a93779e8214941829e3d6e038d5edff9eac5fd74cbed02 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 18:13:44 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.1.2
# Thu, 05 Nov 2026 18:13:44 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         argon2-dev         build-base         cjson-dev         cmake         gnupg         libedit-dev         libmicrohttpd-dev         linux-headers         openssl-dev         sqlite-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build -DHTTP_API_DIR=\\\"/usr/share/mosquitto/dashboard\\\""         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/apps/mosquitto_signal/mosquitto_signal /usr/bin/mosquitto_signal &&     install -s -m755 /build/mosq/plugins/acl-file/mosquitto_acl_file.so /usr/lib/mosquitto_acl_file.so &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -s -m755 /build/mosq/plugins/password-file/mosquitto_password_file.so /usr/lib/mosquitto_password_file.so &&     install -s -m755 /build/mosq/plugins/persist-sqlite/mosquitto_persist_sqlite.so /usr/lib/mosquitto_persist_sqlite.so &&     install -s -m755 /build/mosq/plugins/sparkplug-aware/mosquitto_sparkplug_aware.so /usr/lib/mosquitto_sparkplug_aware.so &&     install -m644 /build/mosq/docker/2.1-alpine/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -m644 /build/mosq/docker/2.1-ubuntu/mosquitto.conf /mosquitto-no-auth.conf &&     install -d /usr/share/mosquitto &&     cp -r /build/mosq/dashboard/src /usr/share/mosquitto/dashboard &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         argon2-libs         ca-certificates         cjson         libedit         libmicrohttpd         sqlite-libs         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 18:13:44 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 18:13:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 18:13:44 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 18:13:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:13:44 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dd4c6d2e67275eac468b4912f16d2d0fa81403e9761e43c7eafa1daccc0c47`  
		Last Modified: Thu, 05 Nov 2026 18:13:54 GMT  
		Size: 9.2 MB (9160831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:769de086986ef495ef212bca22bd4b73ffffd9b3dcee3330cbd76a56d9bf2c35`  
		Last Modified: Thu, 05 Nov 2026 18:13:53 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:latest` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:f040994558055e3b3d20f6e9d6d9f478c1e3cc9092bf876759f2d79f75c2531b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.1 KB (627147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92132a54a57fa3eef0f388215b77ce3a85f0d44c174e196d45eb9a72baaa6598`

```dockerfile
```

-	Layers:
	-	`sha256:188bc19b2b33f602ca158fdf918b287336ea3701117dca4343d2914c2a5acc8d`  
		Last Modified: Thu, 05 Nov 2026 18:13:54 GMT  
		Size: 604.9 KB (604929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29ab8065b083e1127a777f9dda3cc81e6eda7b8f246c4fcfbfd2bd3cb856eb22`  
		Last Modified: Thu, 05 Nov 2026 18:13:54 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.in-toto+json

## `eclipse-mosquitto:openssl`

```console
$ docker pull eclipse-mosquitto@sha256:81a6193ae693942a3231cd3ac52875b02b7e3a19da671b2fb4b55cc874c5b279
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
$ docker pull eclipse-mosquitto@sha256:8c7d1b58606baca19f7e5ccbaececac9a92f34ae6c56e7ce3b8f78a05cf98210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7718371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fe9ea977b7abafc6b66d2c0c76f1a60c168aa0be5a874baa90d2844d432bc20`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:13:15 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:13:15 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 21:13:15 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:13:15 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:13:15 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 21:13:15 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:13:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:13:15 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d093df972510e5db2c471bbf9e9fbb24b913a7ba24d5e8c2f35063ffb634c55c`  
		Last Modified: Thu, 05 Nov 2026 21:13:19 GMT  
		Size: 3.9 MB (3865413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbccc42d671a93bb49b609bc5cccd423e8d33e20fa31f721a7c5720a9d2180c1`  
		Last Modified: Thu, 05 Nov 2026 21:13:19 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:cb6e0f57044640320d29d92c155388816b114401d9bdba8ab42a41b9e4f01faf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.0 KB (558977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ecbeb2060c165f42d54ffbc2bf81cbaa65a2564d4a4c7385fdeae7efef46b45`

```dockerfile
```

-	Layers:
	-	`sha256:5160d33a88379481bc8461d7cc7bd1094494aad26ce49a141e4bcad2893150e5`  
		Last Modified: Thu, 05 Nov 2026 21:13:20 GMT  
		Size: 539.1 KB (539078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c680c7d334964cf9e5bb25d73f95d6591ba8bdb741856c290d92317469760842`  
		Last Modified: Thu, 05 Nov 2026 21:13:19 GMT  
		Size: 19.9 KB (19899 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:openssl` - linux; arm variant v6

```console
$ docker pull eclipse-mosquitto@sha256:07850a815cdc656a514eb4a4e5c548a01374086f5e221750ac3a125dc1583bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6997668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d48297e4a042aaf57d62756a136084b5219b7eef597645ddf99947e29c3df63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:45:38 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 19:45:38 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 19:45:38 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 19:45:38 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 19:45:38 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 19:45:38 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 19:45:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:45:38 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03859f884b109050ddc1df6773ccb99e9577816138caa73ef9f6c61cf25b141d`  
		Last Modified: Thu, 05 Nov 2026 19:45:42 GMT  
		Size: 3.4 MB (3439048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd0d366474b50018c7df3ccc29e5d29abdc333f1380c3c33f7d2d96f076de85`  
		Last Modified: Thu, 05 Nov 2026 19:45:42 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:4c634a1336e9f5660743a1f9599987c04aa5c111979cd4e36baf484acb6dead2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 KB (19781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7149d8b396ab1dbbd36549f7cae22aaa6774f58d1844e80166af234ec54c42`

```dockerfile
```

-	Layers:
	-	`sha256:9e902d5a8648ccbe418a11c4009aec1671cbd1c5fcbad664961f5fada0d7f522`  
		Last Modified: Thu, 05 Nov 2026 19:45:41 GMT  
		Size: 19.8 KB (19781 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:openssl` - linux; arm64 variant v8

```console
$ docker pull eclipse-mosquitto@sha256:49175e3b4f7609389193c86525f3f235b236b0843cae27960a62fad6649eeebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8036579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2866c701ffc079083f135fee3a68dd6e2712be1a14f02277b09cc842303fe43c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 20:28:46 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 20:28:46 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 20:28:46 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 20:28:46 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 20:28:46 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 20:28:46 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 20:28:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:28:46 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3253d74c32321cb5c004ec1df923d3f268325f5378d82f83d302b523a0e49232`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 3.8 MB (3845990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a43ad5d829049590cd0552b45096e45a3d8bd863cc6a4dc7c31a959960227b`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:d6eeb89b573ef7abf2ac28fb0f6c0f4e70077c231652240504704ab9a16d3e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.5 KB (558535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f487d385b8a4f1e854f740111856861ee80839284b9024a091d43807bbb724`

```dockerfile
```

-	Layers:
	-	`sha256:f97137a7557ca1b1446a7372606653843a5a5074145ff12ddda6a959731b226f`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 538.5 KB (538508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d9a72f3c2392f3bff733daf6c0201c76cf626f555c0f75b56b84dbd44a3424c`  
		Last Modified: Thu, 05 Nov 2026 20:28:51 GMT  
		Size: 20.0 KB (20027 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:openssl` - linux; 386

```console
$ docker pull eclipse-mosquitto@sha256:e25088fa755bdc91e8faa520deef0f6eba012892110cf0d217a691418923652c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd435186fa17b6c8e6ce68168c8ab334c805c624a1091b95f7db56c39bdd081`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:26:31 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 22:26:31 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 22:26:31 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 22:26:31 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 22:26:32 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 22:26:32 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 22:26:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:26:32 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e062d23a67ad1d64038a6e9d1c69cfbe70aecc9aa1b92a83e80c6a48eb886f43`  
		Last Modified: Thu, 05 Nov 2026 22:26:37 GMT  
		Size: 3.7 MB (3712704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9295d37583547cc918b4149b2b48fb92320734c88a683689374ff271a11cee`  
		Last Modified: Thu, 05 Nov 2026 22:26:36 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:3e60ba55db03527ba7a6daa327c2feda2ad584fec6263922f4372b1fdfb3cfe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.9 KB (558901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cbf5c4d503136ed42825f36b59552ff48f77d8393df89573b1de9dca501eb8b`

```dockerfile
```

-	Layers:
	-	`sha256:fa25946b642d1f1d65f5875c5430a71e5ae39f52c9de0f11ee10904a9f4c32e9`  
		Last Modified: Thu, 05 Nov 2026 22:26:37 GMT  
		Size: 539.0 KB (539043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb862a67376916144e13dae33f0d542979fa481731a68575436484e3278ac1b`  
		Last Modified: Thu, 05 Nov 2026 22:26:36 GMT  
		Size: 19.9 KB (19858 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:openssl` - linux; ppc64le

```console
$ docker pull eclipse-mosquitto@sha256:f107295fec0c81d37ffb8cdd7a013c6c1f1ca21883328a16448598afc404cd8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7602656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674dd7ae665d41f68446406e6fdc83b4f0f88c19d3655f2a041e654c11c23dda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:25:30 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 21:25:30 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 21:25:30 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 21:25:30 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 21:25:33 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 21:25:33 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 21:25:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:25:33 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f4786107aa80e3c048a7c06ddd6afaa557b01a5b46ca89377d15e61bdd3f4c`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 3.8 MB (3783281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d504880247217ffcff25d916323309f2819541f12f41b81a6b0cd657dfdd207c`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:91dd8dec850d374f60cf0d0357c5b52e42487a94d9b456249b0241e54408165b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.4 KB (558429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4a41a73fd7e961d28b37b2b1e0a796c70cc43f5685a5199a757ff229c32522`

```dockerfile
```

-	Layers:
	-	`sha256:b82425c30ff8c084cef22581cc1d462b111747ca2290f995d35d2ecdd9eb0d43`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 538.5 KB (538473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c486fc320db25c076ce0e8c958894a4b38a022cc8dfd254fdc89e763e282f1fb`  
		Last Modified: Thu, 05 Nov 2026 21:25:47 GMT  
		Size: 20.0 KB (19956 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-mosquitto:openssl` - linux; s390x

```console
$ docker pull eclipse-mosquitto@sha256:59f41a2cdbb9ca6f8fc0e3ddb46932ef4def1006baec0086528e2969afd92f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7324996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120783d7fc98d7fbe74cdc736296f1fed330d7db10359aa6bd9206d1b0a06f00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:08:52 GMT
ENV VERSION=2.0.22 DOWNLOAD_SHA256=2f752589ef7db40260b633fbdb536e9a04b446a315138d64a7ff3c14e2de6b68 GPG_KEYS=A0D6EEA1DCAE49A635A3B2F0779B22DFB3E717B7
# Thu, 05 Nov 2026 22:08:52 GMT
LABEL org.opencontainers.image.authors=Roger Light <roger@atchoo.org> org.opencontainers.image.title=eclipse-mosquitto org.opencontainers.image.description=Eclipse Mosquitto MQTT Broker org.opencontainers.image.url=https://mosquitto.org/ org.opencontainers.image.documentation=https://mosquitto.org/documentation/ org.opencontainers.image.source=https://github.com/eclipse-mosquitto/mosquitto org.opencontainers.image.licenses=EPL-2.0 OR BSD-3-Clause org.opencontainers.image.version=2.0.22
# Thu, 05 Nov 2026 22:08:52 GMT
RUN set -x &&     apk --no-cache add --virtual build-deps         build-base         cmake         cjson-dev         gnupg         libwebsockets-dev         linux-headers         openssl-dev         util-linux-dev &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz -O /tmp/mosq.tar.gz &&     echo "$DOWNLOAD_SHA256  /tmp/mosq.tar.gz" | sha256sum -c - &&     wget https://mosquitto.org/files/source/mosquitto-${VERSION}.tar.gz.asc -O /tmp/mosq.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     found='';     for server in         hkps://keys.openpgp.org         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $GPG_KEYS from $server";         gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1;     gpg --batch --verify /tmp/mosq.tar.gz.asc /tmp/mosq.tar.gz &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /tmp/mosq.tar.gz.asc &&     mkdir -p /build/mosq &&     tar --strip=1 -xf /tmp/mosq.tar.gz -C /build/mosq &&     rm /tmp/mosq.tar.gz &&     make -C /build/mosq -j "$(nproc)"         CFLAGS="-Wall -O2 -I/build"         WITH_ADNS=no         WITH_DOCS=no         WITH_SHARED_LIBRARIES=yes         WITH_SRV=no         WITH_STRIP=yes         WITH_WEBSOCKETS=yes         prefix=/usr         binary &&     addgroup -S -g 1883 mosquitto 2>/dev/null &&     adduser -S -u 1883 -D -H -h /var/empty -s /sbin/nologin -G mosquitto -g mosquitto mosquitto 2>/dev/null &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     install -d /usr/sbin/ &&     install -s -m755 /build/mosq/client/mosquitto_pub /usr/bin/mosquitto_pub &&     install -s -m755 /build/mosq/client/mosquitto_rr /usr/bin/mosquitto_rr &&     install -s -m755 /build/mosq/client/mosquitto_sub /usr/bin/mosquitto_sub &&     install -s -m644 /build/mosq/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&     install -s -m755 /build/mosq/src/mosquitto /usr/sbin/mosquitto &&     install -s -m755 /build/mosq/apps/mosquitto_ctrl/mosquitto_ctrl /usr/bin/mosquitto_ctrl &&     install -s -m755 /build/mosq/apps/mosquitto_passwd/mosquitto_passwd /usr/bin/mosquitto_passwd &&     install -s -m755 /build/mosq/plugins/dynamic-security/mosquitto_dynamic_security.so /usr/lib/mosquitto_dynamic_security.so &&     install -m644 /build/mosq/mosquitto.conf /mosquitto/config/mosquitto.conf &&     install -Dm644 /build/mosq/epl-v20 /usr/share/licenses/mosquitto/epl-v20 &&     install -Dm644 /build/mosq/edl-v10 /usr/share/licenses/mosquitto/edl-v10 &&     chown -R mosquitto:mosquitto /mosquitto &&     apk --no-cache add         ca-certificates         cjson         libwebsockets         tzdata &&     apk del build-deps &&     rm -rf /build # buildkit
# Thu, 05 Nov 2026 22:08:52 GMT
VOLUME [/mosquitto/data /mosquitto/log]
# Thu, 05 Nov 2026 22:08:52 GMT
COPY docker-entrypoint.sh mosquitto-no-auth.conf / # buildkit
# Thu, 05 Nov 2026 22:08:52 GMT
EXPOSE map[1883/tcp:{}]
# Thu, 05 Nov 2026 22:08:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:08:52 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc1c8437fcf217ae52c4f434cfd297039332f085e80fd2b63c153abea4ce9f2`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 3.6 MB (3606280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b5e855515b7b5c813a21dea4419962141d7a38a812e50c4ddf4759c7eb1c50`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-mosquitto:openssl` - unknown; unknown

```console
$ docker pull eclipse-mosquitto@sha256:6229ce80cc0d4af6404162b376fe88750911bacfc68c978c904d9db11f9eda41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **558.3 KB (558327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233aea4ed31787d51ceb45558e0376dae53deb497d437be0837b5af931895c3b`

```dockerfile
```

-	Layers:
	-	`sha256:5f377168637f46e1233cd2b8f6d54f41730d9ecf7ab38492becbb067b0fbb3eb`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 538.4 KB (538427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b573ecc63a31f696a9c1853cd02c1395594a348922e77b0e687a1ffdcb13789`  
		Last Modified: Thu, 05 Nov 2026 22:09:02 GMT  
		Size: 19.9 KB (19900 bytes)  
		MIME: application/vnd.in-toto+json
