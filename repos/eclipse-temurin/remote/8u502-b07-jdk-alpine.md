## `eclipse-temurin:8u502-b07-jdk-alpine`

```console
$ docker pull eclipse-temurin@sha256:4a9ac2b8d383735f902512d00ced7fee6fdb8b4334fd15b9c5ee27250ff83f01
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u502-b07-jdk-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:1e3bc0a7f3dae446e52aa7ea93326cf9181355b8ad8f11988cb51b4988fcffc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73881828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeefbb248685e0db1e64db83db5dd08eb22d8f4c108e95bb83ac094b815bf21b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:39:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:39:51 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:39:51 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Thu, 17 Sep 2026 21:39:57 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='746bc5577ca2067bf2a96a0ae0f6cf50422f9cb7b5aa58a52e9fceabff5d0619';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 17 Sep 2026 21:39:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:39:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:39:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e1a630e306a1f648f1f85b1cb393030fa1d37ae76b69e42092c5149aa26b96`  
		Last Modified: Thu, 17 Sep 2026 21:40:09 GMT  
		Size: 17.0 MB (16972079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f29d77aeace71b20d01fa2b76cf6ca5f367df3056ede62d678f73cf073849e1`  
		Last Modified: Thu, 17 Sep 2026 21:40:09 GMT  
		Size: 53.1 MB (53057401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2267308f1cdadaaa8fdf07702ecb678107164eb3a50e04eb851c8dd7811557a3`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9094cbbf67bb90d154da852c8728fd1307f2ec280d623d7f4d32c172c7236dd7`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jdk-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:72cdec170849a68b467d6af67ad8e5fcfc2e225a7dc9b39cfd4dc87019c7a2e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1111717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bdaff9dd458f834755213e233ade50735c5dcfef9f3f998b089c422b5b4c76c`

```dockerfile
```

-	Layers:
	-	`sha256:02d0c8993fdfcf07dbe2bf82a94842b2ddcb93bdd7e6f609a9a1fbac0be1695c`  
		Last Modified: Thu, 17 Sep 2026 21:40:09 GMT  
		Size: 1.1 MB (1092014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88bc2e1a2e268d7bba2c4c7aa6d70619c8d7c292871e1a6618f0172a288efcf4`  
		Last Modified: Thu, 17 Sep 2026 21:40:08 GMT  
		Size: 19.7 KB (19703 bytes)  
		MIME: application/vnd.in-toto+json
