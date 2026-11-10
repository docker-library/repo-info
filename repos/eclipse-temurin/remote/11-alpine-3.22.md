## `eclipse-temurin:11-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:b9fc325ddf790cd86a07c149598d00fa97d0c9383071680a35788d2a42be0b5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6e259d3067f5b75b13097b0ba1ff1452967061707a306b1279e48bcc95cb3e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161265989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00fcc32bfd978c896427203a2a4e5550614a1a1764125521a8e483ee587660e6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:34:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:34:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:34:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:34:55 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:34:55 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 09 Nov 2026 23:35:01 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='d9deaccb8137409f91acdcfaa24e7c4b247163b425b29c33fe536c78f75dc237';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 09 Nov 2026 23:35:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:35:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:35:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:35:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43082c97bdf4175cb7b138b19657c920cf9339f8fbb410a8d716538b806733f5`  
		Last Modified: Mon, 09 Nov 2026 23:35:16 GMT  
		Size: 16.4 MB (16356412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253e35ed38980814825907ada3097d422603dbc626b662389124d8a458086b29`  
		Last Modified: Mon, 09 Nov 2026 23:35:19 GMT  
		Size: 141.1 MB (141112610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15959ed0d1d244714da0c99fd049641501a6a1def3eb409de7f8d0d0199e7558`  
		Last Modified: Mon, 09 Nov 2026 23:35:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fe76111f2224ec49355de113a419e7677122aa9d6ffb5975fc45b87b9bfeba`  
		Last Modified: Mon, 09 Nov 2026 23:35:16 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d37678557a1ff6fea27e335512cd1a4888f2802035f857fe974379aa6b90cee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b285ebb8c7529c4583ef5e2aef4f643896d6256c77af7076a432e04934042d`

```dockerfile
```

-	Layers:
	-	`sha256:c2b65a9fc7af9d639ee8cac82de14bf860a177f34a870479dba5a2105784091d`  
		Last Modified: Mon, 09 Nov 2026 23:35:15 GMT  
		Size: 984.1 KB (984088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d88e04babbaf1c98c87e9506a396139ea7a335fbc8e96bc003e102e0d15370`  
		Last Modified: Mon, 09 Nov 2026 23:35:16 GMT  
		Size: 19.2 KB (19180 bytes)  
		MIME: application/vnd.in-toto+json
