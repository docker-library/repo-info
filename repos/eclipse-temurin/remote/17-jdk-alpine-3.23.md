## `eclipse-temurin:17-jdk-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:53ecf9cd6d4877c864e1e26bb71582615b156eaf8dcf5a540261d1bbf2788dae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:17-jdk-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d1748ccd35b03be034a35dc132783c946a8a3de5e8dc633c4790523ee805f583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170466652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5bd5a92604d86eb63856af6ad2b294d457b68c64e4062d6e050b2c8488098e6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:18:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:18:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:18:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:18:18 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Thu, 05 Nov 2026 19:18:25 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='db018054d52c1c109ad128c1412ead2d84ae91052ce60ca370df17b6a89831f5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:18:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c543b37111db0dd13527a6f745ff3a14d43070fec16e19ef7bd2b2bc60a8d84`  
		Last Modified: Thu, 05 Nov 2026 19:18:42 GMT  
		Size: 21.4 MB (21373370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd811de4b8908b15ec243fbf51a289fc14a6513d95bfd0d63260a4ffb1fa674`  
		Last Modified: Thu, 05 Nov 2026 19:18:44 GMT  
		Size: 145.2 MB (145238104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d18cfafc36733f9b32b3ea48ac7af4eb165a9f5e195bf6df843b63195de0977`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a786148850879b79ca7334562bda3e953c5b8f9b774595a1261cdb9080f0f19f`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:00a76bff16bad87e506c36711c9782916d52938281518bc73a12adbe86d1bd8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1107342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12d94ccbd0e8cc5f3fb6732424b07c555d5a08ae0bb0fd201e9c2bdaf527c75e`

```dockerfile
```

-	Layers:
	-	`sha256:487d414a9688532ae571ced890005890d9669ad94379434a3315cd532cbc3355`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 1.1 MB (1087731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c2dd36158caedf7d4096b0895117a6af5d962b5eccd2c7daa6002f2a41c5f41`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 19.6 KB (19611 bytes)  
		MIME: application/vnd.in-toto+json
