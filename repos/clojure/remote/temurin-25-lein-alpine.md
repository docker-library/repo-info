## `clojure:temurin-25-lein-alpine`

```console
$ docker pull clojure@sha256:004307a81a8041c961034e13aa11c07d3bac2a8373fbf605347fc8839a861e6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:7ad34be927a11514963caadd7b1b075a4524b838b86c2e2b4bf0505a0d1adac9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132897189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59288e76d9aefbca1910893b5cbf5aa9e3c00480495d7f4080d414f16094db21`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
# Fri, 25 Sep 2026 23:24:07 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:24:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:24:07 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:38 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:24:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:24:38 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:24:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:24:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:39 GMT
CMD ["repl"]
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
	-	`sha256:121012ed9385c4398f55d8725e6bd27134fdd1815b7496e85b4dfab98c4b80e4`  
		Last Modified: Fri, 25 Sep 2026 23:24:49 GMT  
		Size: 18.5 MB (18516930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7ff52bf224781fe8db9cb0b38bd93edb57d051cf5daf39d22f06f77eca923b`  
		Last Modified: Fri, 25 Sep 2026 23:24:48 GMT  
		Size: 4.5 MB (4515170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d9c5e76672679ec6cf3003f5782f68a7b61e7b477a3fd81ec05f2f250714a0`  
		Last Modified: Fri, 25 Sep 2026 23:24:48 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:76af30870a4ea961fc6238d8488891657babcf1460f9f386bd3bfe08987e089f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1049952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6617236766032f6f91f8e0f242908c8c04016657be6e03599b35d898c76699ec`

```dockerfile
```

-	Layers:
	-	`sha256:1d37ccca20a2eb37d10c27557465f7d601cd0f2d464fe6abf85b7a19a328bf96`  
		Last Modified: Fri, 25 Sep 2026 23:24:48 GMT  
		Size: 1.0 MB (1032558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b6a54cfbc17ab042e2994740b11b3ad12c08f440c97f349cd1916523d139f25`  
		Last Modified: Fri, 25 Sep 2026 23:24:48 GMT  
		Size: 17.4 KB (17394 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1a0009f018a7f363045fb86142ef899bd282042a2df31260565e9fc941494da2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132257032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a1ce0382a88916625595bb4cc8cfc634fcd4bb53fc5e1d47dda68485b8ca48`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
# Fri, 25 Sep 2026 23:21:48 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:21:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:21:48 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:22:24 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:22:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:22:24 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:22:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:22:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:22:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:22:26 GMT
CMD ["repl"]
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
	-	`sha256:531ba5c88ab32c7539708add18efc62d493ba41bced98693aeba7aa443a891ff`  
		Last Modified: Fri, 25 Sep 2026 23:22:35 GMT  
		Size: 18.6 MB (18567653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098899700206ebd375bc06e20b0e9ecb96b84945e4cf0d7a6773c30c5d9d12e8`  
		Last Modified: Fri, 25 Sep 2026 23:22:35 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eadb39e3efaf94ca32ddde6032b299f9973335cdcf37e07a6bef0b8df15c25d`  
		Last Modified: Fri, 25 Sep 2026 23:22:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:da23ceb7a7192148b69041e5e762582de737eece6560acfc3db3d4b5fc705e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1199384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ecc3681fd99aa6c73f4464d31df478c795412e11bde8e00911bdab70fdc2827`

```dockerfile
```

-	Layers:
	-	`sha256:667c42dc4f173805394325d65b827c1a6ea42a915cfb58975cb38719fd41510d`  
		Last Modified: Fri, 25 Sep 2026 23:22:35 GMT  
		Size: 1.2 MB (1181895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca0e53b29655f0ba5c5db0a8f502b1a9975aa133c34875fdc37e346e89df5cf`  
		Last Modified: Fri, 25 Sep 2026 23:22:34 GMT  
		Size: 17.5 KB (17489 bytes)  
		MIME: application/vnd.in-toto+json
