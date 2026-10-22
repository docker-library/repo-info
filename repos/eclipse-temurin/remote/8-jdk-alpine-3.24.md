## `eclipse-temurin:8-jdk-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:fe2bfeefcab0099e64feb45045ba75c4b703f3433a7e996bb2d9f973cde587e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jdk-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:84dfd2a5ebb33864239f16e7fa99ee3bbd67060f9ec5d3d1d190a3c025019cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73875485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9499792895270e29d6062e78f7d1d48f5991dd63c6917d0f6fc9775bf1c9e93`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:02 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:02 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 21 Oct 2026 22:57:08 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 21 Oct 2026 22:57:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6428282c06b6d9506c497fc6d7ce971d649f8795db7ee656374344be3e3172c0`  
		Last Modified: Wed, 21 Oct 2026 22:57:19 GMT  
		Size: 17.0 MB (16967498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4ca0ee144900fd81d2282db2a9fe9ce0913a02040b26f89ddd714766bcf281`  
		Last Modified: Wed, 21 Oct 2026 22:57:20 GMT  
		Size: 53.1 MB (53052266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4f1c23d24f111f5a0c7cee04fef8932e08b40fa05672c35558cde6f13faccb`  
		Last Modified: Wed, 21 Oct 2026 22:57:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c29415c2cf9f9b9cdc5a47913b600c59ae6989046ceca296f956a41ff1729df`  
		Last Modified: Wed, 21 Oct 2026 22:57:18 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0e0abe20d9694cc732ddccac489ba2e4cfc9795f2721a676f6be02f130fd0f44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1110515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b53ced994448f876ce9c5b95daa964e8db4a6e18d53c85f36fc49f2317fbf4`

```dockerfile
```

-	Layers:
	-	`sha256:bb94c1bcf7b6e67ea50a71b6772645cd4d633d79f8c93188ede9947cbcbc919f`  
		Last Modified: Wed, 21 Oct 2026 22:57:18 GMT  
		Size: 1.1 MB (1090077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7b8fd0df16c7c30654bd082d96b7690c06a6793def4dae1dcc7cbae1a421591`  
		Last Modified: Wed, 21 Oct 2026 22:57:18 GMT  
		Size: 20.4 KB (20438 bytes)  
		MIME: application/vnd.in-toto+json
