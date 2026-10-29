## `eclipse-temurin:21-alpine`

```console
$ docker pull eclipse-temurin@sha256:b78a1d385da875588e21207f07dddf9a1418849971ae857fb24c8f3a7d441a72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:56f10ddc224d7b900698422ffe82432ed0e178f606bd66859ed1d179825dfbe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.9 MB (183917879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f4a3815b9d0340a02ba00d8ec3afab3073297bc380088735a5bf8311f5b33c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:09:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:09:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:09:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:09:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:09:17 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:09:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a41f2d7b886ed318db51543cd045d94dd35179f66df302e6c3fd48a41a6dd9f5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='dc453842ee3f24710258f42a95bdfe5c2bfc0ca9d70c12f950ead82aee0c8361';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 29 Oct 2026 19:09:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:09:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:09:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:09:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec276e181c3d9a70c7065087ae0315383bdd5cc3ea89aa30356b51a54bce8eb0`  
		Last Modified: Thu, 29 Oct 2026 19:09:42 GMT  
		Size: 21.4 MB (21438596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3748549469e0a352bb957751903c30ccb57651a0ebfde48b707321c3ecd8d3f9`  
		Last Modified: Thu, 29 Oct 2026 19:09:45 GMT  
		Size: 158.6 MB (158623582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e84b59c2bfc6ecbf9fdb397926e6825bdb96312dc056132134ec6573b7743a`  
		Last Modified: Thu, 29 Oct 2026 19:09:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c02d4e330ef003c5e6b5886f4ca2f030b5749e7c6a1b4e75778d55975fd7e2`  
		Last Modified: Thu, 29 Oct 2026 19:09:41 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a121b483b3ee6acebebe6bd56c71c45e4658d4861d53b5eff24f925134f64cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1111963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7968acfa70cdfe134c87c937d35777c998e76ad2629e71c23434778793f96f`

```dockerfile
```

-	Layers:
	-	`sha256:22616069bf342a7e3f3082d5924ec165a46e00873c3cdd7eb001c98278f6d9d1`  
		Last Modified: Thu, 29 Oct 2026 19:09:41 GMT  
		Size: 1.1 MB (1090545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac9def02bc23257991b15c2ddf2418d5669b85e5712f05a3f2c96c66da7dcede`  
		Last Modified: Thu, 29 Oct 2026 19:09:41 GMT  
		Size: 21.4 KB (21418 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:ee8d3a3bf30feacaffdbeaae2c39663d9dfb5cdc5eca4739d8926d0ef6f7bc83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182253244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093fd400e55fb4a6d1b0d85071c8afb9800edee48de1bdd487debbb2efe92103`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:06:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:06:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:06:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:06:16 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:06:16 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:06:23 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a41f2d7b886ed318db51543cd045d94dd35179f66df302e6c3fd48a41a6dd9f5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='dc453842ee3f24710258f42a95bdfe5c2bfc0ca9d70c12f950ead82aee0c8361';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 29 Oct 2026 19:06:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:06:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:06:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:06:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de47a2cd4a8018be84704a68e30fbafbd99703bd7a598f587c25a9157388244`  
		Last Modified: Thu, 29 Oct 2026 19:06:42 GMT  
		Size: 21.4 MB (21418323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e523f21b9d5ff785f8b2c16621121ce81b41549cbebefa598980bf116da605`  
		Last Modified: Thu, 29 Oct 2026 19:06:45 GMT  
		Size: 156.6 MB (156641843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925d3ed2b19ca436b871e0b22756eb7668b34940d6f936f39e88fc7d1f5ef226`  
		Last Modified: Thu, 29 Oct 2026 19:06:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1f714a9faad6eb987b22ad61dd14a7d958d204208a851b7f1beb9699e77388`  
		Last Modified: Thu, 29 Oct 2026 19:06:41 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:56baa5fa55b6eb86bbee4d0052a14752587c6006bdc1148f8318a2950495bcfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1261508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2c775fbba257a49ffaef8ee248fda374a97646dcd009e75475ba39ec941b00`

```dockerfile
```

-	Layers:
	-	`sha256:e50f677295a2bc897d97890e6d9d43c69b9626eba3b59f399d65b268f9386b8d`  
		Last Modified: Thu, 29 Oct 2026 19:06:41 GMT  
		Size: 1.2 MB (1239933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec3f13eace39649c679737e6eb7f10e5f98ced4c0648520d343f81249c268ff5`  
		Last Modified: Thu, 29 Oct 2026 19:06:40 GMT  
		Size: 21.6 KB (21575 bytes)  
		MIME: application/vnd.in-toto+json
