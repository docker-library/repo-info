## `eclipse-temurin:21-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:e4fc591be0478866dd325d05dd920618c57d891d3e8ccc6925393fb0ec0942a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:74f044fca8c647afba5d44f37cd5a4e0c4bfbef8e98fa97658159d0431fe5503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74124590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a57ba10961478614da153606117fe9fc39309af34a65a385a3529ed21485ff`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:17 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:18:47 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='382633eb2ba28cc5b97be1446eb1dd8d2a60a3795be0166a030e4cda338c490e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='9138eab0f7d230e17163953f015ec9ae2431dbc49069c658b7f991e45b54fb9b';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:18:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c079d530f8f8ae37b178bdffe19a1a20f968c244f46f02f12dd393b38c9270a`  
		Last Modified: Thu, 05 Nov 2026 19:17:33 GMT  
		Size: 16.9 MB (16891093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac8bacad3044dd68d9bbbc26ed22c6674c4149fc01ef8d074f009f484341d4f`  
		Last Modified: Thu, 05 Nov 2026 19:18:58 GMT  
		Size: 53.4 MB (53378320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a6771097082b2df91a6477c3314ec25a91b894210dd741baae08d3e41b4b3`  
		Last Modified: Thu, 05 Nov 2026 19:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84ee4d88719efe0c0f5723556c11c87be2c0094c89dce0bb75f768f6dd74605`  
		Last Modified: Thu, 05 Nov 2026 19:18:57 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:be456ba1c85b2833ed422fd17c10508e2596ab1ea258915f6c1eceda7b03024e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **905.3 KB (905325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f5b944497abc2c40f99666debb68c272ac4648d64b9d2d3d1ac8ede04dd4af9`

```dockerfile
```

-	Layers:
	-	`sha256:0f956a0414feee792725b04de475156cb3be0261306048e793e06bd1bd645c2a`  
		Last Modified: Thu, 05 Nov 2026 19:18:58 GMT  
		Size: 886.3 KB (886300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d639724048fef39f8670fb1ab13ffb61ab65b2bc8105794bcca9fa0f1dd813d`  
		Last Modified: Thu, 05 Nov 2026 19:18:58 GMT  
		Size: 19.0 KB (19025 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-alpine-3.23` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:725ca72bddd21e767a5c4c08642b6d857aa8b1ffb49995faf1900be9e9bd5c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73480321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:030fb6f93ce60f91b1e0816ae80e5d7bc749e4a770ce19e8e72e8e0cee641e86`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:13:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:13:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:13:17 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:13:20 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='382633eb2ba28cc5b97be1446eb1dd8d2a60a3795be0166a030e4cda338c490e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='9138eab0f7d230e17163953f015ec9ae2431dbc49069c658b7f991e45b54fb9b';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:13:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:13:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:13:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f8f836e13b880fefa1559eec7fbd38e0b613220433e9db327a6caa9872d8d6`  
		Last Modified: Thu, 05 Nov 2026 19:13:32 GMT  
		Size: 16.8 MB (16843133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024c5f368ccb0d193bb8ddbdc598d331b0283c99e29ee8c3a69aa32c5bf20c7c`  
		Last Modified: Thu, 05 Nov 2026 19:13:33 GMT  
		Size: 52.4 MB (52444377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db80d10c64c4fa4eda6221813cff4ac361cf554174757e1ddd02e25989d16139`  
		Last Modified: Thu, 05 Nov 2026 19:13:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbc28436e4ea72679f2477a19bac94c2af51a12967f2dac747667dd29fde137`  
		Last Modified: Thu, 05 Nov 2026 19:13:32 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c36d67590d30ee0982028660bcf8f5efa291fdd0a81bdf56f7fd6cfeebb6e280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **904.2 KB (904199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27164a33e1fa21eff2f901c3571222bbc1666ab12e408d236f2144dbcccd0642`

```dockerfile
```

-	Layers:
	-	`sha256:90bdaaf43b9e340038679bcc9537a17c330cc8ad8c987f7ff8598986000c33d7`  
		Last Modified: Thu, 05 Nov 2026 19:13:31 GMT  
		Size: 885.1 KB (885064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:838282e32677fb6fc3e1c2ee99a75eb50f04c5f458a0538c3db167bf21ad5d36`  
		Last Modified: Thu, 05 Nov 2026 19:13:31 GMT  
		Size: 19.1 KB (19135 bytes)  
		MIME: application/vnd.in-toto+json
