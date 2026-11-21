## `eclipse-temurin:17-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:1444f8163596a3261398214c3ccc5dd6a9eec53c5cedb36cbfca2c8fbb915e79
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:b2273f0f87b4ead9055cf75904b8b8db0f038b8b0ec0cc2fe475d3194601e5a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.4 MB (67447162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b60dbc7b1c60fcd213d6c736d2549cd1818b17b17574e6b71b43633b860737`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:42:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:52 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:42:52 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:55 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='99fabb8e2517861fbbf1fc26103ee62240ec693340c4c7a812f7043e82acb203';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:42:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfed95536cc59ae7161d8b6d66ccfb28a66d0ea50b6fa70e5d47077609b3ce48`  
		Last Modified: Fri, 20 Nov 2026 17:43:06 GMT  
		Size: 16.4 MB (16363564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c20caeb3d4157e49eb8e237f7eff95968b34b36f496c5343d2c43e5b2be448a`  
		Last Modified: Fri, 20 Nov 2026 17:43:07 GMT  
		Size: 47.3 MB (47286635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f21a7b85b477f9bbf88db4796e71bf79ee43fbd33220a7e5eeabed68c9da3d`  
		Last Modified: Fri, 20 Nov 2026 17:43:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ebc2567490ccbbde57c0ddf857b012be9b9cc6ad07a87556772eabca0ed0803`  
		Last Modified: Fri, 20 Nov 2026 17:43:06 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9e3a2fc70ef5904b27cecbbabb32f092b3761bf345999ff6cadba9e83e7aafc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **899.0 KB (898960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:401c616ffea3b0be68d9f36b1557d8d4981f02b419ef71cbf7591a00a4b70804`

```dockerfile
```

-	Layers:
	-	`sha256:47714a72f75b48dc6a38d0023e04a9ca73fa57e942d06aa9d2fcf25fdf899707`  
		Last Modified: Fri, 20 Nov 2026 17:43:06 GMT  
		Size: 880.7 KB (880726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de2f7c8aa299cbcd30d71d6bf42a0e2e74f5019e63e5a747a422bade7ca81fe6`  
		Last Modified: Fri, 20 Nov 2026 17:43:06 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.in-toto+json
