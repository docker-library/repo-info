## `clojure:temurin-26-lein-alpine`

```console
$ docker pull clojure@sha256:45ab541d163b301ea184fc614e4d6c6e301dc7fb23b39198a06d2a47663f6932
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:8898fec989dcc3633e97309266d2d281abfe3401dbd348b9a93b9ef78e43c349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131991218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e170b01a85919d2b0096301116a2b4d7b2bb4f70b8e2ac17ac913afd395f41e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
# Fri, 21 Aug 2026 19:21:47 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:21:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:21:47 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:22:20 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:22:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:22:20 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:22:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:22:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:22:21 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:22:21 GMT
CMD ["repl"]
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
	-	`sha256:a29a8652d966636af15591d8a16ea70f0f072c5c82b37d80166e743363f8866b`  
		Last Modified: Fri, 21 Aug 2026 19:22:31 GMT  
		Size: 15.5 MB (15456661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cee1e84a633c4055dd15c1f4a6f2bc03f7b3f121efd88e6e712fee53192c31`  
		Last Modified: Fri, 21 Aug 2026 19:22:31 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d4edb23a542b64b5039dd112360865ae922cc49ef50105638669907c5745fc0`  
		Last Modified: Fri, 21 Aug 2026 19:22:31 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:b58d118e8c80b58afca67c5d30f25bc331fe4ef431ab836afe3c58ac10d1da6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1047441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a145eeae53b3334c54ee3e2e8786b5f3ca5f22ca2a87da36f7d2c82f3863140e`

```dockerfile
```

-	Layers:
	-	`sha256:c66e51bbe7781b3afbd4b742c2954e096733a9b05832aed3d5d54461815a9622`  
		Last Modified: Fri, 21 Aug 2026 19:22:31 GMT  
		Size: 1.0 MB (1030049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cd7298c31df57068c1028309161cd1a36680458aba070f251893074da00520b`  
		Last Modified: Fri, 21 Aug 2026 19:22:31 GMT  
		Size: 17.4 KB (17392 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9e6094b1856b29ce7b67eccda19b7383ed71a2a0f499f5c98f0ec06205e3ba70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131335972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8496435451488e254bf0022c76daeac776b9fd04cf55f4a844c2848e8b11fe8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
# Fri, 21 Aug 2026 19:09:23 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:09:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:09:23 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:10:00 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:10:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:10:00 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:10:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:10:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:10:02 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:10:02 GMT
CMD ["repl"]
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
	-	`sha256:05580e9aedbdfd6743697f4f88df7ee47a73bc9f3e903f575478611b0abea593`  
		Last Modified: Fri, 21 Aug 2026 19:10:11 GMT  
		Size: 15.5 MB (15531150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ee2c968442c3d0c1f771dccaf8cff0cf11d2db52a923f51bf02abd76fcb949`  
		Last Modified: Fri, 21 Aug 2026 19:10:11 GMT  
		Size: 4.5 MB (4515164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe03be593fc47350bbf74bc1b3f97b90351824af48b5310019e9cee934b7eda`  
		Last Modified: Fri, 21 Aug 2026 19:10:11 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:c35345b681bb2a25fd3e003fe455f0bc7e7f9439261c71f6f18a3b3a4c71602e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1196873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c78f4422f72876cabce6a8e56708553e6ea354c5f258ceb29da65ccd636f16`

```dockerfile
```

-	Layers:
	-	`sha256:7874550707e4d4db13d734d376e7cc93a4962647f772851cea8eada952d335fa`  
		Last Modified: Fri, 21 Aug 2026 19:10:11 GMT  
		Size: 1.2 MB (1179386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40ee8ce1d8ec38b67094be3ca72361111ff6f9c16f3a743278757d2422f8663b`  
		Last Modified: Fri, 21 Aug 2026 19:10:10 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
