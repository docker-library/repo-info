## `clojure:temurin-27-tools-deps-alpine`

```console
$ docker pull clojure@sha256:6d84fbc90250ad4a36433b6e9990114866b3c503bbafc952f51ef07e7c53fb79
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:532b863fb6fabda8e8c282e1f0d5bae472e3bb332ca41c0669b82e46b79a2065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.1 MB (140063574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f14d857baafb28c8bc0745adb56f97c1f3f9d870672814244e0b6414b05b203e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:44:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:44:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:44:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:44:31 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:44:31 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 02 Oct 2026 23:44:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 02 Oct 2026 23:44:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:44:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:44:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:44:40 GMT
CMD ["jshell"]
# Mon, 12 Oct 2026 18:25:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:25:10 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:27:57 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Mon, 12 Oct 2026 18:27:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:27:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:27:58 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:27:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0232724deb66678d9961666fbea1f657d7b2e14c3e5c66094015d861c80fd6e4`  
		Last Modified: Fri, 02 Oct 2026 23:44:54 GMT  
		Size: 16.8 MB (16849584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1c9c71bb6c43ec314c86bc43c2351334f17f165bf8b3eb191ff41f1c1b9032b`  
		Last Modified: Fri, 02 Oct 2026 23:44:56 GMT  
		Size: 92.9 MB (92906652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6414e35765e91f097bd9e23545d0eebc5772c7265587869de11c8c6a024d0e06`  
		Last Modified: Fri, 02 Oct 2026 23:44:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d35562e6de8bf39caa6574d7c963ba991822648e7a99789e3eb4602dee62f64`  
		Last Modified: Fri, 02 Oct 2026 23:44:54 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973a37c4558b5978d0296f2abc4f7bdd535991b3e4467a1492b951fb3d4c6ceb`  
		Last Modified: Mon, 12 Oct 2026 18:28:06 GMT  
		Size: 26.5 MB (26453963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448f5b8c4a8f29081179694dc05b9cc585586fbd44d434b3f365b84780dcc362`  
		Last Modified: Mon, 12 Oct 2026 18:28:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8fdd20cbd41ffb055f381aa4abd4db4da5c3b0c33fb3b0d253145d3b52a427`  
		Last Modified: Mon, 12 Oct 2026 18:28:05 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:ede7d886a109b4a69b4709680ad9a8c7d0d7f62999ade42b6fd15af6505c52fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1200291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cde5c474b7555d7638aac81af2537c2516332429b05ab3e09909dea7ecff20`

```dockerfile
```

-	Layers:
	-	`sha256:812bc326a119ad5e03dc20f7fa7bc838aa2c5dfc75e943f3f2659c81e20e012d`  
		Last Modified: Mon, 12 Oct 2026 18:28:05 GMT  
		Size: 1.2 MB (1184869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:961b115ea7a59e054088c7e6f6481f990c2535cc1169ac8afab12357ec046015`  
		Last Modified: Mon, 12 Oct 2026 18:28:05 GMT  
		Size: 15.4 KB (15422 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5c1c413ae4777ab5286380692334db5acc1954fd380e73a3b01fe1eecae117c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.8 MB (139792522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a994fc5ad4074e7c596e17f61e950bf06dfae8068876c253c8c2dc5f0ac8b4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:43:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:43:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:43:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:43:05 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:43:05 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 02 Oct 2026 23:43:13 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 02 Oct 2026 23:43:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:43:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:43:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:43:15 GMT
CMD ["jshell"]
# Mon, 12 Oct 2026 18:27:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:27:06 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:29:54 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Mon, 12 Oct 2026 18:29:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:29:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:29:54 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:29:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248e6c997f4e945325aecb5c03bbe09145daa1ac54d89832c5ac876d2d4c3045`  
		Last Modified: Fri, 02 Oct 2026 23:43:30 GMT  
		Size: 17.2 MB (17207067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5783c836e3862d030b0e824d9244fe4f34eaa16995832b49733f5ad518cc39`  
		Last Modified: Fri, 02 Oct 2026 23:43:31 GMT  
		Size: 91.8 MB (91790582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5f24807ffbf443551f94421e03a0d5fcb930a2f5ab509b7b38aa89b30dabc5`  
		Last Modified: Fri, 02 Oct 2026 23:43:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31bab363d78486654c6650f8549c1cbf82def41b26e00d4ba716041b79cfdbea`  
		Last Modified: Fri, 02 Oct 2026 23:43:29 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fd08cde9b1aa128fa11ce166fd1e22e16ee3428f3cab9473a8858cf4c8ca3a`  
		Last Modified: Mon, 12 Oct 2026 18:30:02 GMT  
		Size: 26.6 MB (26603566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4ccf6d4647ff014ced64e0e094eb6578989de377caeb996f5812a0c8c0255d`  
		Last Modified: Mon, 12 Oct 2026 18:30:01 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8dbfa69893d484cccab259b68e0262ef6d3235fcabecdefd79e3453ed3ca707`  
		Last Modified: Mon, 12 Oct 2026 18:30:01 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:99ba908bf7d56fc62b59bd12866f19969aabb64f6447e9d21018fed4ec7bb9f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1349731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19375ec3d510694ac2691fb2daf99a4a2d8da130c38c3905cd4d966e67d14d42`

```dockerfile
```

-	Layers:
	-	`sha256:5b935d02bcf8dc44913d5684988c4eb04a0878b145d5966ed969079c87157cb2`  
		Last Modified: Mon, 12 Oct 2026 18:30:01 GMT  
		Size: 1.3 MB (1334218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b821fdeaa1a38483fdc8e4cbbc50e9f6c8ceb3f7cea80af9515b20e3de158c7`  
		Last Modified: Mon, 12 Oct 2026 18:30:01 GMT  
		Size: 15.5 KB (15513 bytes)  
		MIME: application/vnd.in-toto+json
