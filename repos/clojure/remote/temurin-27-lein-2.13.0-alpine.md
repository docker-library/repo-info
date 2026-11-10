## `clojure:temurin-27-lein-2.13.0-alpine`

```console
$ docker pull clojure@sha256:5d40f7f9abe3ea4e3377fae0c43e506349264f63b86e3fa6db6ec15ab77a16e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:3ee8bf826f046c4d7b133ea899d9eef551cb6b425932ee92f8213761312bb7b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134187138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b6185bd29a133f5fe7d23c73a546ed46b8baae38dfba9610fee0fddbdcefd32`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:59:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:59:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:59:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:59:27 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:59:27 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:59:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d6e8d5e5c101d9319a995405de1e800b02f718ac226dccd8c3b11dae46479ae0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='576a3b8ba79aa5a8bc7f1cb8b54aeffab8b2d1fb84a8fde4f8f3035ac65dfca1';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:59:37 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 00:43:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:43:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:43:07 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:43:39 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:43:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:43:39 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:43:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:43:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:43:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:43:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ed93a99e5d55f8af8dc3a24c77d471ff9526c1241d219636ecfc2769b6eb20`  
		Last Modified: Mon, 09 Nov 2026 23:59:53 GMT  
		Size: 14.4 MB (14374223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c256599417f464ffb66ee1fb6120d07620abb51e8d2cc4f285b294000ef1bfe`  
		Last Modified: Mon, 09 Nov 2026 23:59:55 GMT  
		Size: 92.9 MB (92933924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd18cfa921ae379a99dec4f661111b42962de5e846feec79ae47be9f0ea2516`  
		Last Modified: Mon, 09 Nov 2026 23:59:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6ffe6cf444c3d3eb425f2be5e9b207f0cd14119135c24bde3273a7b142836f`  
		Last Modified: Mon, 09 Nov 2026 23:59:52 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f30f1ebbcf6e5117f96068e2262f2aad22df18946e3c5ba5077b72cf4d9492`  
		Last Modified: Tue, 10 Nov 2026 00:43:50 GMT  
		Size: 18.5 MB (18506592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6881ed45d3275693b5dfe0bc1673295d2c2d8cb1fe8ad70853fd33b6d0699fc7`  
		Last Modified: Tue, 10 Nov 2026 00:43:49 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fec000f9e787a8e47cf14aee75bf9cbea69a801412f1cbba27b95645e17dc33`  
		Last Modified: Tue, 10 Nov 2026 00:43:49 GMT  
		Size: 906.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:8ef3975b56e886d83e8f44b194c80fd208361061fcc722d58b28b095f3c5c846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1045594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3639c053226673967cad5dd84e88e324bb45dd67454ff167fd9b9bd84d42c63b`

```dockerfile
```

-	Layers:
	-	`sha256:19d6931c2438107491ad4bcff1ca0f1fca7d7a96ae23238771fe88ff6384fdc8`  
		Last Modified: Tue, 10 Nov 2026 00:43:49 GMT  
		Size: 1.0 MB (1028205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ff79fac20f75d9133d22b42b34bc5a9ba11df99808cc30cfe0307e06b2e6fd5`  
		Last Modified: Tue, 10 Nov 2026 00:43:49 GMT  
		Size: 17.4 KB (17389 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7a4e96267f387a86ba2830accc0c0690bc39795e60451772e7917713e8834008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133526051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a42de05f856ccb03513020101af96f4be8ccca8ad3885857b781d9038b4e66`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:58:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:58:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:58:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:58:37 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:58:37 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:58:46 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d6e8d5e5c101d9319a995405de1e800b02f718ac226dccd8c3b11dae46479ae0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='576a3b8ba79aa5a8bc7f1cb8b54aeffab8b2d1fb84a8fde4f8f3035ac65dfca1';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 09 Nov 2026 23:58:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:58:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:58:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:58:48 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 00:42:39 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:42:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:42:39 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:43:17 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:43:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:43:17 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:43:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:43:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:43:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:43:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509db30f8a3b67081ba9649deab24a42f9804d7c2d1589a1d0e930b0a5c683ee`  
		Last Modified: Mon, 09 Nov 2026 23:59:03 GMT  
		Size: 14.4 MB (14426929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1d377e3e0fc1ee3943a785051d5c3e51327bb02e47b4008863a69226e77d76`  
		Last Modified: Mon, 09 Nov 2026 23:59:05 GMT  
		Size: 91.8 MB (91820890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275a03a2423586cc92dcb9089c7d1908a25d8211f50c0872e9d9541d5218860e`  
		Last Modified: Mon, 09 Nov 2026 23:59:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27dad9cbad193e2eae1c53433c54a10ad15b9e08b2006cb2f38f6b20be95014`  
		Last Modified: Mon, 09 Nov 2026 23:59:03 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dae73bd7fa6d75b50449263b97c81f861e996ebe248e6642e4e626cb2f9a2fad`  
		Last Modified: Tue, 10 Nov 2026 00:43:28 GMT  
		Size: 18.6 MB (18568902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f674ab14376f8332707ab91a5adeb05e81b18f6314b54f603e980cc90367f344`  
		Last Modified: Tue, 10 Nov 2026 00:43:27 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60390c4a429e3ae3b41cd2f240be2e26f5dd81b90f851a4c557083cfeedd56c0`  
		Last Modified: Tue, 10 Nov 2026 00:43:27 GMT  
		Size: 903.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:f436fd7fecd633358c22757fc846a1a3eb6ebfab31445506261d300594c114c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1195027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3126109400d6327022a7e06ead07026f2fb75019b9f4e69e459fd11d4e83ab`

```dockerfile
```

-	Layers:
	-	`sha256:74f74a6895c982ed02d7d8a9a77bb8240f98da2351e624ed6da6f5c89300674a`  
		Last Modified: Tue, 10 Nov 2026 00:43:27 GMT  
		Size: 1.2 MB (1177542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da21811823a8eb7ab554e1d7d9602b2016479a2f5f86085a9d30304150d47a9a`  
		Last Modified: Tue, 10 Nov 2026 00:43:27 GMT  
		Size: 17.5 KB (17485 bytes)  
		MIME: application/vnd.in-toto+json
