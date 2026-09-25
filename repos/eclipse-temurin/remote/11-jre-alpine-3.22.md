## `eclipse-temurin:11-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:c6bee01bda728cf429853ebc5e2ebb9091538fd1c83c55637693facd6f977426
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:e0bd86b7c1bb5e601a7da960b1acb19626c349dde17dca9b9bbf24c7620111d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63831722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa499c141f88012d7feb3348157b6380e86a34717e7f29f7e03d7e2da0c1d70`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:02 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:02 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:36:04 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='bb9951aab1dcd0f6c2b22d76a46773100a6639ad199f339ff288d360b3217ae2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73589f6ed5763907ab01d950bed9af6b0c65121f2af408400f3f6250e441fd00`  
		Last Modified: Fri, 25 Sep 2026 22:36:14 GMT  
		Size: 16.4 MB (16357519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da05fc1736ecf9cc12726d11ac1304a9d253f6facd685cb273a15ba3410b41c9`  
		Last Modified: Fri, 25 Sep 2026 22:36:15 GMT  
		Size: 43.7 MB (43679540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd962455fe0f97d284605d3cfb7d5f94089c242ba95b5c124ba566b704a62c6b`  
		Last Modified: Fri, 25 Sep 2026 22:36:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e8f1b49cfca162940d5a0a98e12dc6726126bcc317163b49a602ba2b6958d6`  
		Last Modified: Fri, 25 Sep 2026 22:36:13 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9046ca7e776afe00af85ab14a2c08a516590222f3f2c37e664effd1a8deafca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **912.8 KB (912757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37e9b56f45091ed5510c2d1d53f4008a765e79eb317cbde4baefd6d23cb9f03a`

```dockerfile
```

-	Layers:
	-	`sha256:cf49d5a6045277c6e4d7d40d45b254b2d2d640b48241258c59a08252c861d3c1`  
		Last Modified: Fri, 25 Sep 2026 22:36:13 GMT  
		Size: 894.5 KB (894523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c525b068f69a0b850cdb3c3f284bbded37b85065e68a3e3b38a69510be60fd89`  
		Last Modified: Fri, 25 Sep 2026 22:36:13 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.in-toto+json
