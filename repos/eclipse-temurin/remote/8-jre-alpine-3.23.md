## `eclipse-temurin:8-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:c4ac28d281c41291a74ff62254f41539618a8c799d1f6330d5df5ae4368f630d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:a7b0a82696fef6785dc6a9df12aa856e657fad363edab634f24a808173d329a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62987344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:438b81dfb1f3f1654939bd5d26208e777d5b57506d1510c1bfa4acde2c02cfc8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:41 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:41 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 05 Nov 2026 19:17:44 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0b8a29d654d4ea5cd2ee7bbcf3e89fe0f66596eb17870255e683a526757d2b8c';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:17:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:17:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22917ee88e0adf634fa4048dc5c21e67fbdba595884e338b901e2e2e34b6f948`  
		Last Modified: Thu, 05 Nov 2026 19:17:54 GMT  
		Size: 16.9 MB (16891126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc3656b5628b5d5880b66fd910ed234087520469d8604587fd58bf108ef67e5`  
		Last Modified: Thu, 05 Nov 2026 19:17:55 GMT  
		Size: 42.2 MB (42241040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc96b17bd7f1f0b62413b182828daf006cda589c477319c68e7545a45214dc4e`  
		Last Modified: Thu, 05 Nov 2026 19:17:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f624937ce9f2c0172aea9008b82329220d146ff92eddba177c313dbd0a03bf`  
		Last Modified: Thu, 05 Nov 2026 19:17:54 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b41437cbbbfcb57765a6dc04d7a9f1b095b63a4dc375c0893ccb89661a0e57a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **934.1 KB (934079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73be4a101c6423e20a7afba6212ea951813c11db86579e1f33cab2688b053456`

```dockerfile
```

-	Layers:
	-	`sha256:ee1062a978fe2c7a28264556bb5fc68d6edacac5c2b28612691e1f2f5b67b2c0`  
		Last Modified: Thu, 05 Nov 2026 19:17:54 GMT  
		Size: 915.2 KB (915157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4672159161ba61096279db446987f85678f3436de6f4f39483c399a918e2dc61`  
		Last Modified: Thu, 05 Nov 2026 19:17:53 GMT  
		Size: 18.9 KB (18922 bytes)  
		MIME: application/vnd.in-toto+json
