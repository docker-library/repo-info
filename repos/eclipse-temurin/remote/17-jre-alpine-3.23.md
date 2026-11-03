## `eclipse-temurin:17-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:0d4dae6e3614471eaa39e9a601cbe2e426600ed0f5f5964d2a69f0b888ba04cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:2fd886fb50f909619bbdfffdd19dad22606585dc3446aef4dac72d089953eebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (68023889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34b094010f41800b4e5411900dfff1a9d4edb5631e23a6633d807d6a0d85cc31`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 21:57:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:57:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:57:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:57:04 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Tue, 03 Nov 2026 21:57:04 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:57:07 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='e42129db57e3965d9d8befdb097531d7887916690338ff0be7d1b0113287c872';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 03 Nov 2026 21:57:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:57:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:57:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c9d03568db97bef850fbaf9121926573234304105b9b3bf291f884bc3b5ed6`  
		Last Modified: Tue, 03 Nov 2026 21:57:18 GMT  
		Size: 16.9 MB (16891244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4858125a95e56418c846c019efc08786f75ae700961ebf2672b3405d96726cac`  
		Last Modified: Tue, 03 Nov 2026 21:57:19 GMT  
		Size: 47.3 MB (47277828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01221d2a218c7bed2086cd16615cd7a2f87d0803936f8125fc31435d06bc2da`  
		Last Modified: Tue, 03 Nov 2026 21:57:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:748cf39cbf8a66866d37ead67cdff8be5e51661d2c0fadb0a2826a31763da079`  
		Last Modified: Tue, 03 Nov 2026 21:57:17 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7700b3159c0d8052956072b67d0034f6a15d2ff6f594e77c46c739380cd36a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **903.3 KB (903266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e742f43df468fd086bd9fabe4b957b6ea5277262cbd7f639f1dd2a25cbf1804d`

```dockerfile
```

-	Layers:
	-	`sha256:7cead54f7ccf939613ec718f6eb74d2832b68be517126c1168e612caaf92775e`  
		Last Modified: Tue, 03 Nov 2026 21:57:17 GMT  
		Size: 885.1 KB (885052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94578dc4673c36a8cb9b2243bd77198d66feaa4d8dbe06d95f9406e2d568f327`  
		Last Modified: Tue, 03 Nov 2026 21:57:17 GMT  
		Size: 18.2 KB (18214 bytes)  
		MIME: application/vnd.in-toto+json
