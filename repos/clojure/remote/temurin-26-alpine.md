## `clojure:temurin-26-alpine`

```console
$ docker pull clojure@sha256:79edb42250b86e8d76779761b46f1894c32ca3cc4bd91fa3259c943b02af27db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:485a672d787f27eebd45b4f54c9d3c18ae6a215c728d24c7ac5e24b74b2e87dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135404145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3056595e0b96abb0036248b68ec90942d13758c7ffe8805da7abbefdb38e05ca`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:26:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:26:30 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:26:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:26:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:26:37 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:23:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:23:26 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:23:28 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 21 Aug 2026 19:23:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:23:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:23:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:23:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5452eb2d46e5afd46652ba2459404a0b581faeff2124634dcc9277d891ff518`  
		Last Modified: Fri, 21 Aug 2026 18:26:52 GMT  
		Size: 14.4 MB (14369260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6481711e3f1020188b9e74053a709052b5d3189afb0072eaea1e536eb62205`  
		Last Modified: Fri, 21 Aug 2026 18:26:53 GMT  
		Size: 93.8 MB (93800700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1496ebe6bf2f6123752166aa307e4272ad2cd8f1a6a66ec46d5acc4b09d3db`  
		Last Modified: Fri, 21 Aug 2026 18:26:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59e66bceb7aa1c4028b56c80468d8c3b248bdd69485bfc2fc8fd652c9344832`  
		Last Modified: Fri, 21 Aug 2026 18:26:51 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36bd9c9dd70b13a657f9e49cde6ff787add9ae1874efa5341298b2834bc98322`  
		Last Modified: Fri, 21 Aug 2026 19:23:37 GMT  
		Size: 23.4 MB (23384149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:687606f532b58b2292adde9ddda109d54816f96cdb31e971f9983a39d213938c`  
		Last Modified: Fri, 21 Aug 2026 19:23:36 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22a1d1ab92eb68d93016715edd87daec76bd9e7419983bd8a39f9f4a61f794c`  
		Last Modified: Fri, 21 Aug 2026 19:23:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:f68e96ed325b84a9406f053b2043a75835d3acac63c2b70b559bf62a5c573a63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1200264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3659b96718d996e2f9d1111887a9251d27fcd5e1a29c1652f3d2fc1a8e02538c`

```dockerfile
```

-	Layers:
	-	`sha256:76219f47724a3629aabacb1ae77997b634d6532e96bf599f05e65ececeda8e2d`  
		Last Modified: Fri, 21 Aug 2026 19:23:36 GMT  
		Size: 1.2 MB (1184839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4552af7781528c62ddfcc50e3d79d51cd27b49bdff7c1c524974c34323fd579c`  
		Last Modified: Fri, 21 Aug 2026 19:23:36 GMT  
		Size: 15.4 KB (15425 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c683cf64ee1c5bd9c930eda33342eeec5b12b23628f03f814bcfcf9e9a127ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134847641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b058461e547eac01250f235bedd9fc78b6e5bf9c79a36818897d71560a10bb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:29:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:29:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:29:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:29:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:29:28 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:29:39 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:29:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:29:40 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:09:50 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:09:50 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:54 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 21 Aug 2026 19:09:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:09:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:09:54 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:09:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ae3581375ec3bbee78cbdfd7ff51d76b733da2b3c6f72d51dded14be1f4d18`  
		Last Modified: Fri, 21 Aug 2026 18:29:55 GMT  
		Size: 14.4 MB (14420920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9113044cb0b800a2d8b54a4ca0f8fc4593e865a371c9e9a19b64b86d2ea61e03`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 92.7 MB (92682672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d742c5f9983264714aa06aa4be49cecd5ec5cf0e252fd52eac7491eef6e46e1`  
		Last Modified: Fri, 21 Aug 2026 18:29:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4fdc24383e03f04ab1fb7e787d5afce54213ea352ed9ace0c8c3ac506275d6d`  
		Last Modified: Fri, 21 Aug 2026 18:29:55 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e6e3c3d93536d719a8f648416123a0b8f206d024e9d8b3d2c18e6e4d9351d8`  
		Last Modified: Fri, 21 Aug 2026 19:10:04 GMT  
		Size: 23.6 MB (23557362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825a55c10d8bb439d2ac9f89c7d4392ccf193eb53af68aa7417fa50411d3e174`  
		Last Modified: Fri, 21 Aug 2026 19:10:03 GMT  
		Size: 621.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f06aea78bfb2b2fe23a4d2142d5b1110f1ca43cbce400da1c8b703ce61021b`  
		Last Modified: Fri, 21 Aug 2026 19:10:03 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:bcc1b8c3947ea87c05129c4fbd853eb8f89ed16571affe6603bbe03017417fe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1349706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f74ccf868922e549fe0d834d0e23d7cfee9336fdd220276b146c48870063c69`

```dockerfile
```

-	Layers:
	-	`sha256:d8e0aadf48dbc6022272449c0c89f83598ac585e91621357333a1be1b07b6a50`  
		Last Modified: Fri, 21 Aug 2026 19:10:03 GMT  
		Size: 1.3 MB (1334188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:591328b0c5fd0a67aee1873cc67a3b766240a7cab84ef3c98163725e4bad674b`  
		Last Modified: Fri, 21 Aug 2026 19:10:03 GMT  
		Size: 15.5 KB (15518 bytes)  
		MIME: application/vnd.in-toto+json
