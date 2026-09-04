## `clojure:temurin-17-alpine`

```console
$ docker pull clojure@sha256:9c211c3c7ce07be41450505c14b45c1ff8143c504cff5b5c35bc015915feace3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-17-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:4e6dbbc80bb191ec66538e7781647f3837a1359018b9bbf18608c60597ba91c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192612592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f8d7dee3482d4bbdfc6e1ba7a011739dc53bde3ecffc851c8be3ee57eb27fa5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:23:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:23:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:23:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:23:35 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:23:35 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:23:43 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='c8bb5bc6984762dbce2ab7403d90832b6897c07f36f8706e4a315aa7a566d04d';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:23:44 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:01:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:53 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:56 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 04 Sep 2026 00:01:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:01:56 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:01:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26cd5aab71d3939c7e16e44f694b8c0cf73ffdb9eaf0ebc914e57d6b54aa607`  
		Last Modified: Fri, 21 Aug 2026 18:23:59 GMT  
		Size: 21.4 MB (21434109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb3df7902765cf89902403cbc4eabf8772ce27e2ecefeb9278dc107ff548e1d`  
		Last Modified: Fri, 21 Aug 2026 18:24:02 GMT  
		Size: 145.0 MB (144970186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05721dd3d30aba44494d76ca3141ab6b746eeeb269290250164d22286ccc33d5`  
		Last Modified: Fri, 21 Aug 2026 18:23:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768e6e1dbe85c2d1c5df73eb36a85054662deff12e37d784e455d8dc9c304739`  
		Last Modified: Fri, 21 Aug 2026 18:23:58 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c508159e1dccd887f3b2165240c206a99f592ad0f01118c951e60bcd88d6ebc`  
		Last Modified: Fri, 04 Sep 2026 00:02:06 GMT  
		Size: 22.4 MB (22358264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346aea19c10ac105eb4661bd95b3de346e4b4e14a251cbaa7c9c7c544f877957`  
		Last Modified: Fri, 04 Sep 2026 00:02:05 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9613e1040eacc56db0e5068b4b67504b9cada6a94619795135755147b5f334`  
		Last Modified: Fri, 04 Sep 2026 00:02:05 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:8c04e2769f6702d1f9494746037febeb463fa301de27ff698efd82e70bd0cdb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1302761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4acb98d2b825468096899a820c27c9bea88cc9679dddf4813d7f21af69712f0e`

```dockerfile
```

-	Layers:
	-	`sha256:62f9e211b3f7b9ddb3b9a152a83230ec51f43c13701108f5efde9dab04044bd4`  
		Last Modified: Fri, 04 Sep 2026 00:02:05 GMT  
		Size: 1.3 MB (1287330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8a2bb5e9c90aefd1becbee9bc5f40626cc04da508870e5a6a792ed2c4ee7875`  
		Last Modified: Fri, 04 Sep 2026 00:02:05 GMT  
		Size: 15.4 KB (15431 bytes)  
		MIME: application/vnd.in-toto+json
