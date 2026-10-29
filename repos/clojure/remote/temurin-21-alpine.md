## `clojure:temurin-21-alpine`

```console
$ docker pull clojure@sha256:0beb30c100340fad3a25f130b375ad3cb31f03cbf4d821b7941d6ca9249577fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:0b7bc58038d602f354200c1e64be694b5f46b72852562931e9d4d6b3f1ce2554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.3 MB (209341009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d924b1b2563e30344f66074b94011bfdc439c008626bed4837a12555ccd556`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Thu, 29 Oct 2026 20:03:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:03:47 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:03:51 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Thu, 29 Oct 2026 20:03:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:03:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:03:51 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:03:51 GMT
CMD ["-M" "--repl"]
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
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a61309793604fc3e501beeacac9fc2caf8ff37acea82d1260851e49da8254fdb`  
		Last Modified: Thu, 29 Oct 2026 20:04:02 GMT  
		Size: 25.4 MB (25422080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db169c179c41467b4b3f71cbeb52e42b1a0621e712c386c094eaa4e2191bc544`  
		Last Modified: Thu, 29 Oct 2026 20:04:01 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2642ea239bb16343c6e127870e7727a74de694c96c321d74ec3b48b1ca62cdd`  
		Last Modified: Thu, 29 Oct 2026 20:04:01 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:b87d30e246f93d5e3e363f490753bdf8b755326828d34978aed4789ab005d51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1303966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eef50c968e240559c54032a639c533133503dbde6bf509084b34e4e180130f1`

```dockerfile
```

-	Layers:
	-	`sha256:3057987f0d39e65059b8863aa2f0f9d55fa962996cc0acb6ab3af7935f76d69b`  
		Last Modified: Thu, 29 Oct 2026 20:04:01 GMT  
		Size: 1.3 MB (1288538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e0a4d5b73767f44a0f835340adf33c8812954952a8f86fa4868772954e04e0e`  
		Last Modified: Thu, 29 Oct 2026 20:04:01 GMT  
		Size: 15.4 KB (15428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:337a8725ebf6a35d464854eed4e7432ba03af557ee7a33f00b0f40962ee5ab0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207819244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ff8bfc0ffe84674165bfdd045bfd62417c49c553ef5b173f433b19a290a73d2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Thu, 29 Oct 2026 20:04:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:04:29 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:04:33 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Thu, 29 Oct 2026 20:04:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:04:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:04:33 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:04:33 GMT
CMD ["-M" "--repl"]
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
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ef1cabe5ad24ad2e075b77f24e4c2f1da8e1ea71885a60c6efa8db891d3a81`  
		Last Modified: Thu, 29 Oct 2026 20:04:41 GMT  
		Size: 25.6 MB (25564945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe21c9f8eaf6fbb85ebe156fc540030248d32850d120d264cb667018b6a403e`  
		Last Modified: Thu, 29 Oct 2026 20:04:41 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6bc7dde92cec664222e5362453ff1bb113c03b49b11cc6d64e4e5bf3c2f229`  
		Last Modified: Thu, 29 Oct 2026 20:04:41 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:bf3c7b2c47bf873149eb679f63aeb2f6eebd326983ecee398ded54a4ab7c8ed5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 MB (1453413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078db5340292bdc8c0bc1f738ef16d3f1e4e5aab9779ad1f74eb4af1cf9d213c`

```dockerfile
```

-	Layers:
	-	`sha256:76e14a45585f49298c38cb2da4fd8ff9acec062622b7c2e3abf0b7bbf8983493`  
		Last Modified: Thu, 29 Oct 2026 20:04:41 GMT  
		Size: 1.4 MB (1437890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2867ef20afec7680f626de409c39135b5f69aa3a375c1737a77d2605ef83a4b`  
		Last Modified: Thu, 29 Oct 2026 20:04:41 GMT  
		Size: 15.5 KB (15523 bytes)  
		MIME: application/vnd.in-toto+json
