## `eclipse-temurin:8-jdk-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:971ad985d2d22d4e10ca4e691b030a7041d7d84ff7954b20921e42667112c02f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jdk-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:c522f383d1b030fb61094a4a6d9af834742e44edc3d2adc502378f48ec93c723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73869653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:576822f2633c56fa5fd2f601724816beb1a4c0af927e40919f8a05ff9f9954ab`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:21:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:23 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:21:23 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:21:26 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='746bc5577ca2067bf2a96a0ae0f6cf50422f9cb7b5aa58a52e9fceabff5d0619';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 21 Aug 2026 18:21:26 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:21:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0b7957f24f9ca22ec38345830c3233f7ff39ab25bef45b74672fade12f223b`  
		Last Modified: Fri, 21 Aug 2026 18:21:38 GMT  
		Size: 17.0 MB (16963232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec8ece14b41557b2c6c17006d27095c04da0ebac00290f7646c3fe9260673af`  
		Last Modified: Fri, 21 Aug 2026 18:21:39 GMT  
		Size: 53.1 MB (53057418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf002940dc10309b7a989d2221d60dc99b238486b49925005259d3d86a6091c`  
		Last Modified: Fri, 21 Aug 2026 18:21:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e26866ea6fd5aeb56b784b30c6e410ae7d4c28e7b467201a639339e4b3df978`  
		Last Modified: Fri, 21 Aug 2026 18:21:37 GMT  
		Size: 2.5 KB (2483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:10821fb6afb39b3b980369502c41041baf1fa0d48224b2bdc9d2723bc1da738f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1110424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3eebef0bd6fb5fa353a544f6dd35e73207d7fa77f5cd6cb93cba4253c6a638a`

```dockerfile
```

-	Layers:
	-	`sha256:52305932ed8f5069c8559693d04e2e113aeee653b20c3c02f1c1e881b84ad1f0`  
		Last Modified: Fri, 21 Aug 2026 18:21:38 GMT  
		Size: 1.1 MB (1090721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6dc856db606366ecce23ccaf5242bc209fdece86a45a67a5e4571d465e4580f2`  
		Last Modified: Fri, 21 Aug 2026 18:21:37 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.in-toto+json
