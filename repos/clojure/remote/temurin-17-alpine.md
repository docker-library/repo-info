## `clojure:temurin-17-alpine`

```console
$ docker pull clojure@sha256:e8c1a63e29e69c25d95c31f835d7c213e1a84a5b0932c38a4d2065de2ee5ade9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-17-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:d0b72227210b5b8e81e055052cf792c271cd40b3802eb69f76ae3a897ca7ed49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192415716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca80e0583d573a8e0e0c0da0402ad6747136207eeae95761a32537c13ab6d672`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:56:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 22 Jun 2026 19:56:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:56:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 22 Jun 2026 19:56:53 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 22 Jun 2026 19:56:53 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Mon, 22 Jun 2026 19:57:01 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='960b4090b75a887bb21a915a294bee3a97cd11876967c95e5bd29d9ec4812e17';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 22 Jun 2026 19:57:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 22 Jun 2026 19:57:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:57:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 22 Jun 2026 19:57:02 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 17:55:12 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:55:12 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:55:14 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Wed, 29 Jul 2026 17:55:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:55:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:55:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:55:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb24b7abeaf5ce9e23187de02071382730c0873637800e8a9adcb59301992717`  
		Last Modified: Mon, 22 Jun 2026 19:57:16 GMT  
		Size: 21.3 MB (21290166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca9a403ef070b145efc0a24ea5ea18c62cf96257bfefd784d70237ec8671df1f`  
		Last Modified: Mon, 22 Jun 2026 19:57:19 GMT  
		Size: 145.1 MB (145051633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8954f1747c4e5c426ae38631e95b0494950eb78209f25ea413a0d591f5bfd8b0`  
		Last Modified: Mon, 22 Jun 2026 19:57:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f47b51787bf9ee6cbfe3b6ad72acc64ab2cd047c11d06a156720b184193e59`  
		Last Modified: Mon, 22 Jun 2026 19:57:15 GMT  
		Size: 2.3 KB (2280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9e84e97a45043fa8d417a94466b1ba9418822cd6201201fdc4af129b5ae473`  
		Last Modified: Wed, 29 Jul 2026 17:55:24 GMT  
		Size: 22.2 MB (22226035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f657ee01126da30ff01e1cb2a33e5952619fc7622c4786eadf4e1c4b70cbdd34`  
		Last Modified: Wed, 29 Jul 2026 17:55:23 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bccbc15664988f466893fb429359cfa37d6f4ec30879946b3bb062efa3ea1d1`  
		Last Modified: Wed, 29 Jul 2026 17:55:23 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:ebb9cd5f9570486e3292eac4cb2f585e3a2ad877053253207d599fd48428eeb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1302836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46033a9bf10270a56cf212b4ee4a567d3882cca6536645412b993722b0ec2bc`

```dockerfile
```

-	Layers:
	-	`sha256:d61e7c6fa9aaef987898470f6d45af3fd9aaa25ca552ef11f9c1c4c3fc69c96b`  
		Last Modified: Wed, 29 Jul 2026 17:55:23 GMT  
		Size: 1.3 MB (1287404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea795801a125c44c537fbd5b036c38ff33472c2f196a35cfea13b9b469e47fbd`  
		Last Modified: Wed, 29 Jul 2026 17:55:23 GMT  
		Size: 15.4 KB (15432 bytes)  
		MIME: application/vnd.in-toto+json
