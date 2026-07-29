## `clojure:temurin-21-tools-deps-1.12.5.1664-alpine`

```console
$ docker pull clojure@sha256:fb0a04b86c99b44e41ca08791f7fefbcb85e7bb1a823b980e11add6a0abea712
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.5.1664-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:6ee4a10bb33d14fbb0260d9149ea6771993602db66c420b031e29aefbca6452d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.8 MB (205760853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa45de78d3b393ce128fd56c0a4e8ea45e969ffc019879177a33089c4a2dac83`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:57:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 22 Jun 2026 19:57:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:57:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 22 Jun 2026 19:57:09 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 22 Jun 2026 19:57:09 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 22 Jun 2026 19:57:17 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='c8d63598d1dc0a656033515ed258bd6db37506a05407d9f65cd23b95c21027b5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='38bfdcef1e4b45de2ec222047ac79c76bea75d4d7406a310e26cfa236763f05f';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 22 Jun 2026 19:57:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 22 Jun 2026 19:57:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:57:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 22 Jun 2026 19:57:18 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 17:56:22 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:56:22 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:56:25 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Wed, 29 Jul 2026 17:56:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:56:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:56:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:56:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42b27ff362c29d4c86173d5eb45dc9fc28c27d52c5791cb63a9113e6f0e3646`  
		Last Modified: Mon, 22 Jun 2026 19:57:35 GMT  
		Size: 21.3 MB (21290130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c90809b4c96d37014d44d53b2f534fcdc3a9b2baa628af103045b46795a7189`  
		Last Modified: Mon, 22 Jun 2026 19:57:38 GMT  
		Size: 158.4 MB (158396795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7ee5d98789e02e3500e8e207c5963d76ea5e48dbe5f519229aeb3847e2bc62`  
		Last Modified: Mon, 22 Jun 2026 19:57:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68dfaba6ad42ab866380109a6c2636053416cb8f6e06672fa092a97451fd747`  
		Last Modified: Mon, 22 Jun 2026 19:57:34 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9715cdf2cbcc0c463ad1b32367f562a4858ee873b0653ade486631c1156e1fac`  
		Last Modified: Wed, 29 Jul 2026 17:56:35 GMT  
		Size: 22.2 MB (22226043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a5c972ff1687b7f2a59889cf7afab9340ad2037cb965fa2e3d219035ac6de1`  
		Last Modified: Wed, 29 Jul 2026 17:56:35 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e560c372a887a92e6f73f1580e75f2cf02dc47497270d5f2aa729731a3e19e`  
		Last Modified: Wed, 29 Jul 2026 17:56:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:e5fa975806eedad704c1c6e94d690c6c542bbc75cb101aeb16ef04b22abff757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1304688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc93cddc27b0462bb4df02ac5a321674b94953ee73443105b29c92dd23a7f0e`

```dockerfile
```

-	Layers:
	-	`sha256:ff82aa193a41c476d1a079a906fbae07f55388c3e6e108183d63e3de5662bfbf`  
		Last Modified: Wed, 29 Jul 2026 17:56:35 GMT  
		Size: 1.3 MB (1289256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eb8d32ddb8f313184aafdef9d5aee1f7e4450b21ff48a0c09dc636a3d14bd83`  
		Last Modified: Wed, 29 Jul 2026 17:56:35 GMT  
		Size: 15.4 KB (15432 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4026efc688e1f994418fed4f661e4f216acbadf2396e9c37fa1780817cc06573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 MB (204243403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5239b16e605b17a06b5442dab0af793f4afa87b7f930a05d89012305ee4b7ac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:57:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 22 Jun 2026 19:57:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:57:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 22 Jun 2026 19:57:56 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 22 Jun 2026 19:57:56 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 22 Jun 2026 19:58:06 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='c8d63598d1dc0a656033515ed258bd6db37506a05407d9f65cd23b95c21027b5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='38bfdcef1e4b45de2ec222047ac79c76bea75d4d7406a310e26cfa236763f05f';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 22 Jun 2026 19:58:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 22 Jun 2026 19:58:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:58:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 22 Jun 2026 19:58:07 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:04:52 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:52 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:04:56 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Wed, 29 Jul 2026 18:04:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:04:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:04:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:04:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4528e8515ecbe5a4cead182002e4915088694f327a2a6d59eb4d8879cc01934`  
		Last Modified: Mon, 22 Jun 2026 19:58:24 GMT  
		Size: 21.3 MB (21281739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d9ad1632bf4f15fb4547045f89810b89d4e2c12f4cc1e1cb1b38c68666c29d7`  
		Last Modified: Mon, 22 Jun 2026 19:58:27 GMT  
		Size: 156.4 MB (156402333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9d07f7518fbbb05f6c65a2c0b79b89a2e5fde15459a3d4e2f4f4ceaf1a7f70`  
		Last Modified: Mon, 22 Jun 2026 19:58:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab2a9682f8c999c8b4b42cc35b437b44dfbdf44d7726ea13daab581dd97384b`  
		Last Modified: Mon, 22 Jun 2026 19:58:23 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85e1bd9674716fd5fe09caaf82ab4de91ba28a27de08d8bbc42e4deb89e63eb`  
		Last Modified: Wed, 29 Jul 2026 18:05:05 GMT  
		Size: 22.4 MB (22374008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8ec04b94a2ce2c23610a70c053749141561939dcbd781e8686a766e70c4ceb`  
		Last Modified: Wed, 29 Jul 2026 18:05:04 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b501d4459f05efd6fbc9cca33806b6bfb772ab11ccce476983b5ccf9d246d2d4`  
		Last Modified: Wed, 29 Jul 2026 18:05:05 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:70fa474250c93bcd1e9e376419b7cdce9bd40fe634b16ead8f658a6a7f6a44d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 MB (1454131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e58216ba42d4758a5b559d9642aee18b5cd2daa186c3aba8b9bce434dace3bee`

```dockerfile
```

-	Layers:
	-	`sha256:4c344427336f29cb203b014317f4be3a170aa0cee94abd6f83e9f1d380344355`  
		Last Modified: Wed, 29 Jul 2026 18:05:05 GMT  
		Size: 1.4 MB (1438608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:243a3de6317f3996d0693cacd4e0a382ef9ac15712073fbe1c1be2239385604b`  
		Last Modified: Wed, 29 Jul 2026 18:05:04 GMT  
		Size: 15.5 KB (15523 bytes)  
		MIME: application/vnd.in-toto+json
