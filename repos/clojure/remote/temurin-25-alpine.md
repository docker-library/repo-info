## `clojure:temurin-25-alpine`

```console
$ docker pull clojure@sha256:eb2a014bda61219f1145d48fd8d8c156eeed67047e8946c688691e2cf54b45ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:de5ec0c3eab81c2c9c4a552653aebbddff0202deaa932e4fd66123265eacf565
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136318756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1dee194db116b574a42dd2ef573683f1c22d874010903a53412133472d5d35`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:38:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:25 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:38:25 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:38:32 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:38:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:38:33 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:24:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:24:19 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:23 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 25 Sep 2026 23:24:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:24:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:23 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91322bf4f7afbc446726716157780764d83279b1b50db9f85cc58157d412dba`  
		Last Modified: Fri, 25 Sep 2026 22:38:48 GMT  
		Size: 14.4 MB (14374731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d1f71485fa1e29f1906aa84b96c38d32cd49ec6ecd0eb3126a48cc4906d3f3b`  
		Last Modified: Fri, 25 Sep 2026 22:38:49 GMT  
		Size: 91.6 MB (91637594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3244f132ea3cbdc6593691fd2e8799961da02395862c68851ea03111d2b8846d`  
		Last Modified: Fri, 25 Sep 2026 22:38:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4848277582c7b3d33f75d66d0daf214dc6889903cc233eaa3c689df68400546`  
		Last Modified: Fri, 25 Sep 2026 22:38:47 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0eecc60cc6797fcd19e33e7b61147484c1ee8b9ebba905c8cff225e83a7ea3b`  
		Last Modified: Fri, 25 Sep 2026 23:24:32 GMT  
		Size: 26.5 MB (26453055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa9211a13fb548f2a9e757b08dd14c6b8a0e3f146d9a0412b6b4c31b02211a3`  
		Last Modified: Fri, 25 Sep 2026 23:24:32 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22e6367e5ac2971a3e5861e16f0d8f5b0a0312d2ba96d05cc7fdc434cb3d1bc`  
		Last Modified: Fri, 25 Sep 2026 23:24:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:8866f7566e2c1ee483cf69a3b58a0c02f81fafa152d449d74afa6530494599a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1204068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f999695ffa7b41e3e468237bce9203769c832f2d30157f9b854d0c96c5aa2f5`

```dockerfile
```

-	Layers:
	-	`sha256:8fb3dc7495885294139588dd673ce4064ed8095f76c96e3492d1bee110712ef2`  
		Last Modified: Fri, 25 Sep 2026 23:24:32 GMT  
		Size: 1.2 MB (1188641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f32b07f22392430d3bf96b72c8a05138d933168437f727407ffb8ff42c6b63a`  
		Last Modified: Fri, 25 Sep 2026 23:24:32 GMT  
		Size: 15.4 KB (15427 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bad3c9f20643a31909f789c7354ba44568e4b1b4c23550a709cf93f4bffcc652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135778092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f40ee7e6a3a0a8e3c5d8f061f25b039c47afe07a505c0e3752388c3f461d196d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:28 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:37:35 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:37:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:37 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:22:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:22:26 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:22:29 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 25 Sep 2026 23:22:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:22:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:22:29 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:22:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8f12186c0561cc0fe432858f4cf1177ced63a9206036ccbb0f9076c3e5a276`  
		Last Modified: Fri, 25 Sep 2026 22:37:52 GMT  
		Size: 14.4 MB (14425179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911ffa641554782af272d284bcabe813029c157feb18efdf44f1a4c751b31a4d`  
		Last Modified: Fri, 25 Sep 2026 22:37:54 GMT  
		Size: 90.6 MB (90558327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0dc7822bbace837bf3b4d996d884e6014dbf5ae2f78072a1237e693d9d89e9`  
		Last Modified: Fri, 25 Sep 2026 22:37:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7882f383b5c88594305173118c2556f689ee6c4ce05ec6bd7901352766117604`  
		Last Modified: Fri, 25 Sep 2026 22:37:50 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8105045cac5d6e7de54bb24ed2c4fcb12c439a35a61ca9f05a62c6178dad994`  
		Last Modified: Fri, 25 Sep 2026 23:22:39 GMT  
		Size: 26.6 MB (26603286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:229a538d84be637f61a39ae456f5b929b67deb7097810338614ab592950cf179`  
		Last Modified: Fri, 25 Sep 2026 23:22:39 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5878c4a3879566181a45ae903ffe3b8a756a741c193dacb2f626077661f115`  
		Last Modified: Fri, 25 Sep 2026 23:22:39 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:43934a8ea3c66e2b5712012e90b702688f41e9b53e9e6c80d9aa45d986a79fc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1353509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdf349ac9658f7c4dbc8948644056daa5c8f801b31939ec9450bd3595e3703e`

```dockerfile
```

-	Layers:
	-	`sha256:523c7a3741eb8b495dab5218d2b8e9e9da3a87f019e6059d8cfda2beaaa90291`  
		Last Modified: Fri, 25 Sep 2026 23:22:38 GMT  
		Size: 1.3 MB (1337990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a95b929aeba531bba40349312d2cc05fa9a4443afc9d6e75f737dc76f8169812`  
		Last Modified: Fri, 25 Sep 2026 23:22:38 GMT  
		Size: 15.5 KB (15519 bytes)  
		MIME: application/vnd.in-toto+json
