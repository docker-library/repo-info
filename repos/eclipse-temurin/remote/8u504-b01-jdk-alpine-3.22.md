## `eclipse-temurin:8u504-b01-jdk-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:07cf42fc211856c2ed8f7c5d2279860556d9c6ac5116388acde5ac698c4fda54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d15a3a964c5b62d6ed0ff10f735ebede8f9cc3a5a45d1cc0dec1cfda406aa5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73205360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330a8a9e136a9b9577817f717bd2d005db1de37e1aa3ba885b717492af90ee3e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:21 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:21 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 05 Nov 2026 19:17:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='f76b7c98a593f15bbfc9042866141185d63aa87e0afde3b7e48d2c4789a2def5';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 05 Nov 2026 19:17:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:17:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3face810326c164c92ffcd13d05110a48ed69cfc972e77d465c15b6b5c2c6b2b`  
		Last Modified: Thu, 05 Nov 2026 19:17:36 GMT  
		Size: 16.4 MB (16356103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e54f13e26b78116718d021474100468561e72ba7618a046c0be0ca7e672ad7`  
		Last Modified: Thu, 05 Nov 2026 19:17:37 GMT  
		Size: 53.1 MB (53052274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb230f88ffe78e7a32795eecc8b6fb9b22c1340e21c61cb9268dd2346015302f`  
		Last Modified: Thu, 05 Nov 2026 19:17:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c716aeb4c03edf7cd799f87ace4a98f7d1bce1469a635c29e8d3d4e299f7709`  
		Last Modified: Thu, 05 Nov 2026 19:17:35 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:76d5b1de227c64e2a717728a6491f19c2a5e71b1576e0ef03e4969599257e6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1104226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ae72553942d6545f9411344335031f602e623b05b9f5c1f790de3bc0c57a81`

```dockerfile
```

-	Layers:
	-	`sha256:a6f8ab1eb16a116cde4bc3c264be078657128c49ff58f73a4ff3ba52c23f5ebf`  
		Last Modified: Thu, 05 Nov 2026 19:17:36 GMT  
		Size: 1.1 MB (1084781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63e177a686799df617e041e1fcd69d2937b25311034d1e730ad0cc73028936ef`  
		Last Modified: Thu, 05 Nov 2026 19:17:35 GMT  
		Size: 19.4 KB (19445 bytes)  
		MIME: application/vnd.in-toto+json
