## `clojure:temurin-25-tools-deps-alpine`

```console
$ docker pull clojure@sha256:7560f67997b1ae51a86346b8fd2d45d2357a909c1c0d651bce8a4c0e8f27ff6d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:90330007ab7ed64256f191403130ea4244a9a586d901915cc09df564314d1cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132998599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c4f279a2b97a5424c81b8b20d710fe9631e90cce71d75046b767099aee9be4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:57:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 22 Jun 2026 19:57:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:57:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 22 Jun 2026 19:57:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 22 Jun 2026 19:57:28 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Mon, 22 Jun 2026 19:57:35 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='6ed368e93049d3b188c045fce0b20953bbea92fe0614dbbf4d3fd8daad7be3b2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='51c2415b370aac7c3796b0c4663c8fcf91bc22d76f03df95b25fa5667cb5fdd8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 22 Jun 2026 19:57:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 22 Jun 2026 19:57:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:57:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 22 Jun 2026 19:57:36 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 17:57:11 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:57:11 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:57:13 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Wed, 29 Jul 2026 17:57:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:57:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:57:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:57:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95dd7d1a57040850aa18d8f120a347787a853ddadfc0e04c01ba359687f83037`  
		Last Modified: Mon, 22 Jun 2026 19:57:55 GMT  
		Size: 14.3 MB (14259376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586ae85e2c68546c53c9b39b13ad3a217cff435d3f4ed14c0808da512b593ea2`  
		Last Modified: Mon, 22 Jun 2026 19:58:08 GMT  
		Size: 91.6 MB (91624437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1580feaf93ee040ffb3f5ef134e5cc50ea4a1357ecdd98270885a7563d2b8e21`  
		Last Modified: Mon, 22 Jun 2026 19:57:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84edc40c41dfe07d6b44bf4c0fa58803f7070a8fb7ec3f9603d8cb0e50ac8058`  
		Last Modified: Mon, 22 Jun 2026 19:57:50 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cd4dfa4499bc3a40f0f8a32ed9820b61d60976f7ce686f5fa543ba517696e2`  
		Last Modified: Wed, 29 Jul 2026 17:57:22 GMT  
		Size: 23.3 MB (23266897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b261adb23268c4b6ed4a3216e9ceac77e17f6e9b611cfed915bab0494290dce`  
		Last Modified: Wed, 29 Jul 2026 17:57:21 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a406f11064e8bae98f5441622e13be7fefcd558f2ecedbb9de37d416e96712c`  
		Last Modified: Wed, 29 Jul 2026 17:57:21 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:44d0831a2af85c3803ea445b890f03029f2a085e232716adcc8b603715342c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1202849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1a177e3f557ecfbefabd14a1501d745cce05461b5ae3f8fa6f4569b31a0ef1`

```dockerfile
```

-	Layers:
	-	`sha256:d2888c098cb321c12208b7598932acd6600aa8f3ef8398e236ec6a2abf1d1487`  
		Last Modified: Wed, 29 Jul 2026 17:57:21 GMT  
		Size: 1.2 MB (1187424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5f5b36bfd3e8ebef84e01970988a2828919f2d86124831d5148c38a8221ab9e`  
		Last Modified: Wed, 29 Jul 2026 17:57:21 GMT  
		Size: 15.4 KB (15425 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:282b2a3c8d572b6efc301c676512329ed973acfd6669a59e2fd8824ac3ad8549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e21379ebc6c897f9d281456e667ae7154012f53846ef262cbcaad8e96e9014`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:12:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 22 Jun 2026 20:12:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 20:12:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 22 Jun 2026 20:12:39 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 22 Jun 2026 20:12:39 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Mon, 22 Jun 2026 20:12:45 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='6ed368e93049d3b188c045fce0b20953bbea92fe0614dbbf4d3fd8daad7be3b2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='51c2415b370aac7c3796b0c4663c8fcf91bc22d76f03df95b25fa5667cb5fdd8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 22 Jun 2026 20:12:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 22 Jun 2026 20:12:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:12:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 22 Jun 2026 20:12:46 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:05:43 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:05:43 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:05:47 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Wed, 29 Jul 2026 18:05:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:05:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:05:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:05:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff532a92b2635da709828a163e9a5ed2f5149ecbe38b06fce240f8fb7104afca`  
		Last Modified: Mon, 22 Jun 2026 20:13:02 GMT  
		Size: 14.3 MB (14320296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de05b5f3adafc3ef06ed696a78315ea4e1caf24c78e679cc659d636c92fbdd77`  
		Last Modified: Mon, 22 Jun 2026 20:13:06 GMT  
		Size: 90.6 MB (90571688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a582b2da42ce858dfb28843505bc7c46dab8db82854a593f73fe11f4abc3d085`  
		Last Modified: Mon, 22 Jun 2026 20:13:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2881aa8c3290ef38ec53319eae6c5498e1f555bf0142e50a1dd91eb8728d60dd`  
		Last Modified: Mon, 22 Jun 2026 20:13:01 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cb840b63ea60a45849d1f8945fcb581e2c4038b5cfed7526ef14e56a5a0993`  
		Last Modified: Wed, 29 Jul 2026 18:05:56 GMT  
		Size: 23.4 MB (23424140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16362bcd105ce8ee6cd278f7f05bdf5071c38a0f8b1f90fc2e83100bc59fa38`  
		Last Modified: Wed, 29 Jul 2026 18:05:55 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79103bf4f63d8966b82b31710aa27cb673949ef5f2bf5f186560a1aa91dcd11`  
		Last Modified: Wed, 29 Jul 2026 18:05:56 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:13d1ef79075adea306e02a4f32757222c1f96e49fb37246caa51cbdfb3520933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1352289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c402989065acfa269de18fdca79d565f98172563c11a16121311d4b701e7f36`

```dockerfile
```

-	Layers:
	-	`sha256:9bf04b44f47c7ab5732f4f913e624a6d5ee51c49f4b77794f7f29fd8957c6f21`  
		Last Modified: Wed, 29 Jul 2026 18:05:55 GMT  
		Size: 1.3 MB (1336773 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30930450e84d30ff67f34829663168bd53e0a68a5b57b5490dc1e105eb40a815`  
		Last Modified: Wed, 29 Jul 2026 18:05:55 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json
