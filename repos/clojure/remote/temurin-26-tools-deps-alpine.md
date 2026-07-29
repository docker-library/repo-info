## `clojure:temurin-26-tools-deps-alpine`

```console
$ docker pull clojure@sha256:7309e3605230deb7c80ab8411c02bb721acda7189a440ec127f47de3d43034f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:95529ef8d68e2ff6585016269fc1dc68040a680884ec11a8b6f75fe3f2ee904b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135101207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551ab8108cbf5ca6834367c3e368b9fa1b14fe7af3711e1b8fb7d311aa4b457d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:57:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 22 Jun 2026 19:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:57:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 22 Jun 2026 19:57:49 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 22 Jun 2026 19:57:49 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Mon, 22 Jun 2026 19:57:58 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='7e32b89349385f10d7805197c7696b46556717d041e681017b12590bae6692ca';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='0c97fe7e503fb6daf36a5e86e8d083b97cc2354cda4d11288e6c3b8ec0818afc';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 22 Jun 2026 19:58:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 22 Jun 2026 19:58:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:58:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 22 Jun 2026 19:58:00 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 17:57:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:57:38 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:57:41 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Wed, 29 Jul 2026 17:57:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:57:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:57:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:57:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f2fd18a0a9bc0fb03fb517a12431b1bf11c2dd8a300797a70c469eb0573499`  
		Last Modified: Mon, 22 Jun 2026 19:58:15 GMT  
		Size: 14.3 MB (14259370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b896cecc272ef7121da940e2be26998d8de663b31adc1e3e4bb1cbb887ae6c`  
		Last Modified: Mon, 22 Jun 2026 19:58:17 GMT  
		Size: 93.7 MB (93726872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46ef27f6a9817fdee68c106972c44385780e41f17b2e0f931781e6e066d03423`  
		Last Modified: Mon, 22 Jun 2026 19:58:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f794e94355907e9d4c3b9ac7bf794fdcc22add314a4fcd8d3c9ee0e9afed5a2`  
		Last Modified: Mon, 22 Jun 2026 19:58:06 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20867fd29a7c2ed9a368657262d8d2719d92c8c54bbb0e917eef45caec5113ea`  
		Last Modified: Wed, 29 Jul 2026 17:57:50 GMT  
		Size: 23.3 MB (23266899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d7120aaeb2c137f94dceb9b9c7a58bd5bb5819b30c98d0cab9d9235116d235`  
		Last Modified: Wed, 29 Jul 2026 17:57:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293cf992689e76088ac0b50ad244f06776eafde791d5e9801784294483e7d29e`  
		Last Modified: Wed, 29 Jul 2026 17:57:50 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:9f6a7f6afeb00090ce32d2132c8df31a414c9c6b9f7c35058d64dd449de83663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1200346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79676741ae20270820cb1f6dd35dcdfb2de896c3c3fd6ae257f3f48f60766613`

```dockerfile
```

-	Layers:
	-	`sha256:dd42735b382f1fd91537341ce4df8cee1990d332c44f554f25e1e37fa93bdf1b`  
		Last Modified: Wed, 29 Jul 2026 17:57:50 GMT  
		Size: 1.2 MB (1184921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4afd8fb986b34e87341f0ecf635175d768993b6417eefc352b3fdbf09a6cd1f`  
		Last Modified: Wed, 29 Jul 2026 17:57:49 GMT  
		Size: 15.4 KB (15425 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bc62b7f2960bb78b8b376b41b19ce6a10dc1c3298853d182520432a1a75fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.5 MB (134547651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e4f77db2c4eddb157c38561cd1ef8c50c6fde760deb87b7e2db3c58d70c26e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:58:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 22 Jun 2026 19:58:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:58:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 22 Jun 2026 19:58:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 22 Jun 2026 19:58:28 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Mon, 22 Jun 2026 19:58:37 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='7e32b89349385f10d7805197c7696b46556717d041e681017b12590bae6692ca';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='0c97fe7e503fb6daf36a5e86e8d083b97cc2354cda4d11288e6c3b8ec0818afc';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 22 Jun 2026 19:58:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 22 Jun 2026 19:58:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:58:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 22 Jun 2026 19:58:39 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:06:17 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:17 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:20 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Wed, 29 Jul 2026 18:06:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259201305cf66a45c6f9b11bf24d453317731d6a78705f78a399137c52f9e461`  
		Last Modified: Mon, 22 Jun 2026 19:58:54 GMT  
		Size: 14.3 MB (14320313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd1e1a965bbb185d2269d31ef27dc5dbe89fa439f174a8b7bf40b3fc7a4190d`  
		Last Modified: Mon, 22 Jun 2026 19:58:56 GMT  
		Size: 92.6 MB (92617795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ebddc94b4afa6b0f737e5864afd8689f7952438e252acbcc0805bd077e8b6a`  
		Last Modified: Mon, 22 Jun 2026 19:58:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938f966bc6eeccc12781f72ab7be7722b25b9dd4da6076c94fd98a7d26e96618`  
		Last Modified: Mon, 22 Jun 2026 19:58:54 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5020096493003e865e1fa013866d42fb7d20b037382df5009cd877e943df37b`  
		Last Modified: Wed, 29 Jul 2026 18:06:29 GMT  
		Size: 23.4 MB (23424042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4529b29eb957758bd17f5b5f6a1330f00f126964d55443b754720ce77319262d`  
		Last Modified: Wed, 29 Jul 2026 18:06:28 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a1653c472416a2f73688d0152ee31bdc05b063a55763e5695eae8111a00fb23`  
		Last Modified: Wed, 29 Jul 2026 18:06:28 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:19874f838f5230999b09592b478faffb644d4bf454d61b6000225c5824113c90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1349787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b53f8d30525f43df329b979c65286b1f1d9833d075169b264dca36c368b5351`

```dockerfile
```

-	Layers:
	-	`sha256:baf87cff85b48a5ef48e58c98c05fe851a2cf12a007659f1e6483f1db845ccc7`  
		Last Modified: Wed, 29 Jul 2026 18:06:28 GMT  
		Size: 1.3 MB (1334270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39345ab7144a79454bc7469c485ddcd0b298aac0c3463d86309af5cad1673fa9`  
		Last Modified: Wed, 29 Jul 2026 18:06:28 GMT  
		Size: 15.5 KB (15517 bytes)  
		MIME: application/vnd.in-toto+json
