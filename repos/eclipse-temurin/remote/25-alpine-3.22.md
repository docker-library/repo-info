## `eclipse-temurin:25-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:33d8ce5832665d518e4544ca6725a8ceb86e73ed81d696876c803030e4c5383e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6cb50651c8a40b03cc60ca4951d25b3eb4be110d24f3d8b6ecbbae17e37a65c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109697849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d99dff2ccc334480f143c0fe7e09e089825bc3985aa7d63526f5c630ba4efe75`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:27 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:27 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:38:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:38:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:38:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590aa389295660bf895cb9d67109d9aaae93c02d5b00a8e0247a37d70ece3075`  
		Last Modified: Fri, 25 Sep 2026 22:38:49 GMT  
		Size: 14.3 MB (14272187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f96baf56b6c5a4da3fa9dcae6258cfdecd399db17dda444f90da2181224f77`  
		Last Modified: Fri, 25 Sep 2026 22:38:51 GMT  
		Size: 91.6 MB (91630996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:341b35e65e00462b515a29ba77d7e56243d45bbc6e83f9891f5a25a55d96fd56`  
		Last Modified: Fri, 25 Sep 2026 22:38:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f196d6349bcd2663ad7af422efad7f792872559d2a0c404db087a937db5cc0c`  
		Last Modified: Fri, 25 Sep 2026 22:38:49 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:dddadd81fa1eea6fd37b92f355f53daccd08ec5b7929d4f5098630102b7a75ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.3 KB (970261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94422c6a420d4b6ad72f0604a0828458ea7660ea4d683300da4262e88388117a`

```dockerfile
```

-	Layers:
	-	`sha256:7fa75b3b9437c6b3be1f67714f4a0dbc56aba7fba79991ab5a6950b31e9c274f`  
		Last Modified: Fri, 25 Sep 2026 22:38:49 GMT  
		Size: 949.7 KB (949714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c507133ee87d3179690de3480db1c1649861c2470c97d6614df030c516d08a19`  
		Last Modified: Fri, 25 Sep 2026 22:38:49 GMT  
		Size: 20.5 KB (20547 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-alpine-3.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:1de90773aadcf6cbee1429f5343415b6a36f7f1f40a241c902def85d5002925a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109051543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edbdf3dc0ca09a8b4ac1fb2614a201102de647185968cfb231fef5159fd8256f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:32 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:32 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:37:39 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:37:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc147e2937da8f40512c8394741910f8de3b4b72a4022c327613e28ba3657ce`  
		Last Modified: Fri, 25 Sep 2026 22:37:55 GMT  
		Size: 14.4 MB (14367645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4742547c3b3fe62be5167b749a56494203388298ee92d08a35553291d1435307`  
		Last Modified: Fri, 25 Sep 2026 22:37:57 GMT  
		Size: 90.6 MB (90558222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95ca4bd141302771522d7dbc9f21bc8139a14207a0d874a78e6a4c9ea31a242`  
		Last Modified: Fri, 25 Sep 2026 22:37:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14fa3d95ba1de11d4d46a7bafbeb78feb68ef182774dbe27070f18bd424671f9`  
		Last Modified: Fri, 25 Sep 2026 22:37:55 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:96e97cee556388e2d28d1f5da99c7f963089a4e3f57b00cfe0a5cfd05d2ee513
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1120381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4938762148aa756c934c1a2965efb6efda168b4f4df2b90f455b367db9a12229`

```dockerfile
```

-	Layers:
	-	`sha256:0a3b355cffae73e8a7231d0d3c28542feeb2379a8b24fa3d0dede928cdfdeb3e`  
		Last Modified: Fri, 25 Sep 2026 22:37:55 GMT  
		Size: 1.1 MB (1099713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d9a31dfe74bbcee125effd155fa8b1b5b23b8f7d623aedd351b3906aa7b17d3`  
		Last Modified: Fri, 25 Sep 2026 22:37:55 GMT  
		Size: 20.7 KB (20668 bytes)  
		MIME: application/vnd.in-toto+json
