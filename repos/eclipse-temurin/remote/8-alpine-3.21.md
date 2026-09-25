## `eclipse-temurin:8-alpine-3.21`

```console
$ docker pull eclipse-temurin@sha256:bf2cc29758e2f6d8018b38573c0d4275bf8bdfe6e01e8d9fbda31f747442f859
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-alpine-3.21` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:393303cf73aea1fbdf706bd0cc7f7b51e35f37771cd97acd964385bfee365bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72921496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba697b39abd6e31c2d55269d36e69e6e0fad65c08d9382f4fa7ce96aa240e1f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:34:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:15 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 25 Sep 2026 22:34:19 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895cbe40aeb9312392dcc98bc20cb2f4306a4eadd6d2f0028949cade4fb52186`  
		Last Modified: Fri, 25 Sep 2026 22:34:30 GMT  
		Size: 16.2 MB (16240608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e892f33f0067286d08bb75e1036f98648f0936b2ef54cc7cd8d53f07b56c32`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 53.1 MB (53052258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631d2437937c2c4a716428f59232984c88aab0fea54419f9c98aaf095bca93c2`  
		Last Modified: Fri, 25 Sep 2026 22:34:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebbcbc75a3672e4aa0b34af892728385949fba8df346c236b92bd078f412e95f`  
		Last Modified: Fri, 25 Sep 2026 22:34:29 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-alpine-3.21` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0e0240e6b3b4b3fd467b01e505065f736c0fd8d1a7fb50ffdd6b43b28618234a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1103873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e7a85f522ad53f7edf48a85c9250e297d68a214d7ee8bdb473c70317f9e080`

```dockerfile
```

-	Layers:
	-	`sha256:c5b6177248504aabd7fac0a6633d9805b2dcc795a5ceacf5e71325a7de24fb46`  
		Last Modified: Fri, 25 Sep 2026 22:34:30 GMT  
		Size: 1.1 MB (1085162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a5eb11d47e5db5a6c82b64ad3b46a86087e905c49b5c0a12116a02feaae9eb6`  
		Last Modified: Fri, 25 Sep 2026 22:34:30 GMT  
		Size: 18.7 KB (18711 bytes)  
		MIME: application/vnd.in-toto+json
