## `clojure:temurin-21-lein-2.13.0-alpine`

```console
$ docker pull clojure@sha256:556154304b35fae59597f2c257e556fdafd89273631f3db52462372f6c08c342
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:06a1df77d0cdf5a07200f60130f0166387ce5c6a91b31a545801b854e736da10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.5 MB (206476783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a270e2cb065e546893d33f88d01fc4e69fade97b83956a2fb9f49db9ff38fdd6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:49 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:49 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Thu, 17 Sep 2026 21:40:57 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:40:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:40:59 GMT
CMD ["jshell"]
# Thu, 17 Sep 2026 22:33:54 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 17 Sep 2026 22:33:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 17 Sep 2026 22:33:54 GMT
WORKDIR /tmp
# Thu, 17 Sep 2026 22:34:28 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 17 Sep 2026 22:34:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 17 Sep 2026 22:34:28 GMT
ENV LEIN_ROOT=1
# Thu, 17 Sep 2026 22:34:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 17 Sep 2026 22:34:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 17 Sep 2026 22:34:30 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 17 Sep 2026 22:34:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cfeb5b8514c9dbbd1d00e50bd1cacea20a9b32df93487951602cae61289310f`  
		Last Modified: Thu, 17 Sep 2026 21:41:14 GMT  
		Size: 21.4 MB (21442358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c633b3ab448192e7018639ae3e164c60ef5340505fef64172078c965568f768`  
		Last Modified: Thu, 17 Sep 2026 21:41:18 GMT  
		Size: 158.3 MB (158332695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb159d650e75c7da3af4cd09d95f44bd3e7373ecf0a9f1d47cfd2a7a82b492d`  
		Last Modified: Thu, 17 Sep 2026 21:41:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb434d94307643c6a23bbfd216d2f6f4c64599139fb2e0840d044236a795003`  
		Last Modified: Thu, 17 Sep 2026 21:41:01 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6c17a34806f7268fbe361ebc5c9f41750dd35adcc95dca697dec168ae659a2d`  
		Last Modified: Thu, 17 Sep 2026 22:34:38 GMT  
		Size: 18.3 MB (18333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d40111cfb14d05ba60b38ee80096b304f625bd449e73e48111733e7a9f2125d`  
		Last Modified: Thu, 17 Sep 2026 22:34:38 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b43f882f58c9ae8801a54fad072e9c2cfd2b462a05731b129ceb67d99c003f`  
		Last Modified: Thu, 17 Sep 2026 22:34:38 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:9fcb022d5eaffd521cf39a47193e2e41fd5bf9c293cc218ed9ee26aab8621e8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1084403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d67fa8b99bbcefbe452863bdbde97e9d38a4219657bcee37460ece3c87fda51`

```dockerfile
```

-	Layers:
	-	`sha256:77ba8d75bb8875fd810b6ca3d830a887f7e1ffa9ed9367c305adaf9db7550f55`  
		Last Modified: Thu, 17 Sep 2026 22:34:38 GMT  
		Size: 1.1 MB (1067006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:382f71cf1e44798325e662d011032007d0152008603389956895cac9beb4f614`  
		Last Modified: Thu, 17 Sep 2026 22:34:38 GMT  
		Size: 17.4 KB (17397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9200a9d4c81ea02879bb4ebc410b6db4a0183aed35b8b7ec0badab5432c3fa25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204840569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3cd79a5aedcede1816619ef0d6aa0a067ec7b9415fe73377257b474969e57b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:53 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:53 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Thu, 17 Sep 2026 21:41:04 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:41:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:41:06 GMT
CMD ["jshell"]
# Thu, 17 Sep 2026 22:57:54 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 17 Sep 2026 22:57:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 17 Sep 2026 22:57:54 GMT
WORKDIR /tmp
# Thu, 17 Sep 2026 22:58:29 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 17 Sep 2026 22:58:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 17 Sep 2026 22:58:29 GMT
ENV LEIN_ROOT=1
# Thu, 17 Sep 2026 22:58:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 17 Sep 2026 22:58:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 17 Sep 2026 22:58:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 17 Sep 2026 22:58:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369292db17b35064ec86ed791628e8d5cc9a497a0e76ba9fc8bfc72fb53f146e`  
		Last Modified: Thu, 17 Sep 2026 21:41:22 GMT  
		Size: 21.4 MB (21419726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3db93c5866c4c4aad884a8dec74796b31d9425eb84bf663cd9abe1f8b33937b`  
		Last Modified: Thu, 17 Sep 2026 21:41:25 GMT  
		Size: 156.3 MB (156334526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e381264f84ac324e06f3b595a3fd430fcca9984c882c221c62d5bf165e5e5f`  
		Last Modified: Thu, 17 Sep 2026 21:41:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92fcdb31d981f370187c4f6356738deb07640da76b3fbd24f7becf5bb7a111b`  
		Last Modified: Thu, 17 Sep 2026 21:41:21 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c535afcb3911d8b7eb64fb7da30179e162995201f95c06ded1fed220204661c9`  
		Last Modified: Thu, 17 Sep 2026 22:58:41 GMT  
		Size: 18.4 MB (18380418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911cb8ebbc82b90d905419531872941c3b45dda73c75bf07696577aae1f6ba71`  
		Last Modified: Thu, 17 Sep 2026 22:58:40 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138d196d24b90fd90284e36e436f1d06862376f5ec99f52e9049b002f9371b0a`  
		Last Modified: Thu, 17 Sep 2026 22:58:40 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:513e3fca12e66840ab445771e0f06ddae25863de506d035ef8c3ed3b16f0c2ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1233838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd190d4651de0db46687bea943f1ba5b7e701bc9bb9fe5c7ea94a8b4e867da13`

```dockerfile
```

-	Layers:
	-	`sha256:baf3848afac47ad99e0c726b0dee4dafcba093e4740f3e4a56a32acf5415da84`  
		Last Modified: Thu, 17 Sep 2026 22:58:40 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1931c02b7cb74f02969efb1d4741baed2cd470be05d34567631cac7f93e08c8`  
		Last Modified: Thu, 17 Sep 2026 22:58:40 GMT  
		Size: 17.5 KB (17492 bytes)  
		MIME: application/vnd.in-toto+json
