## `eclipse-temurin:17-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:d73cf612f4af48877f79ebe5da2932a6853c4da4f17bf4207884510fdfc630dc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:344b781e99f873b3e3d1c6e1577f5c7f27ffa5a0416dad758ec5af53c4723bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.3 MB (67338590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2e49e01808982696c14889f5863f2b1749526496043959a01a24417ab85aa9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:54 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:54 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:58 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='72423b1464907857f4e7ca854a2b8fd9f7cf6b9dd15bd3ea31ef6cf33b097aea';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:36:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a303824a36349f4717050aec590d0c385b39f2a898e539c04d8f45fa1484a92`  
		Last Modified: Fri, 25 Sep 2026 22:37:08 GMT  
		Size: 16.4 MB (16357576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84006ed5651fdd0a7aa63a627d61754f5ec1347ca877288051599571231527c8`  
		Last Modified: Fri, 25 Sep 2026 22:37:09 GMT  
		Size: 47.2 MB (47186348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2bab662af78efe12c21e6ccb83d3cd7167d124944b06e01b80795c66e7b2dab`  
		Last Modified: Fri, 25 Sep 2026 22:37:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbeed237d27d62e37b021e15fa771cb4c7db8f6faa43512676938ee9964d9f08`  
		Last Modified: Fri, 25 Sep 2026 22:37:07 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:59e6d4d9bdd41b377ce5b9463ba1bebbd0e5b31014e858758d05c561b927af6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **900.9 KB (900893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:876b3347f85a8770c4cdb0925ecfd9b64987b8d9cb725b332ce9910c57c4a322`

```dockerfile
```

-	Layers:
	-	`sha256:dfdf0586c146dde2cccdb52b77d5a061ce0b505930b7483f39441753d19239c6`  
		Last Modified: Fri, 25 Sep 2026 22:37:08 GMT  
		Size: 882.7 KB (882659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19c4f39ee60aaef886158d1c2b827677e71e0776f1c884bc93d574bb231232cc`  
		Last Modified: Fri, 25 Sep 2026 22:37:08 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.in-toto+json
