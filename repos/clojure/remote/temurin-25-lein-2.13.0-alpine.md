## `clojure:temurin-25-lein-2.13.0-alpine`

```console
$ docker pull clojure@sha256:f126133f0f354fea7969df24acafe6c807e208a3e4089e5e359321f00c07594a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:a59dc3a9259d97540cfe1a2c0803735c4ea271d306498ac3f194b60c7ac26b86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132912188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6276a085816c79944d92b1a63da2668981fc4346c8f8711b1d212068d1b20e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:14:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:14:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:14:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:14:52 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:14:52 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:14:59 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 29 Oct 2026 19:15:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:15:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:15:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:15:00 GMT
CMD ["jshell"]
# Thu, 29 Oct 2026 20:05:11 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:05:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:05:11 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:44 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:05:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:05:44 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:05:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:05:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:46 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb45b395123c6a1ce4ec62b23cf94618e9b325f9c7a58e00b2f2eac960cf183`  
		Last Modified: Thu, 29 Oct 2026 19:15:16 GMT  
		Size: 14.4 MB (14371873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c612d305a2a8de9b17efd435a33be852767e64fba32fe1f539e9ab009537557`  
		Last Modified: Thu, 29 Oct 2026 19:15:17 GMT  
		Size: 91.7 MB (91662929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322dda1a77ef5557bc041cf413b5abe5cc3f500209b477b169d3fc1cf096b2dd`  
		Last Modified: Thu, 29 Oct 2026 19:15:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f13d875536ccd5fdc17c0f274f7aee0d7341763d5715d3839994f8f1094cd40`  
		Last Modified: Thu, 29 Oct 2026 19:15:15 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559753efc3eee57461afcd97f2c137a24af0817972eeee89932c561276768858`  
		Last Modified: Thu, 29 Oct 2026 20:05:54 GMT  
		Size: 18.5 MB (18506042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b25b44eaf7ba17c04f137af725802531fd92f9cdd706206f24a0a8bb812e30d1`  
		Last Modified: Thu, 29 Oct 2026 20:05:54 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1e4b901df587a0091cb6d498876322e3f5dd2541772e846b6e1724f4cbad1`  
		Last Modified: Thu, 29 Oct 2026 20:05:54 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:73d803c68d0351d020a5726f54762546ef87054d8f4fa87de3f8567e407ea14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1049325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5b4d8ad26858f2ff9956f4e5f5364a6159ad36c85b33211b3db2bb4d261d19`

```dockerfile
```

-	Layers:
	-	`sha256:e187b86b845e02c3276bca9e2da780edaafb8eeb98afbba85f350286bcecea68`  
		Last Modified: Thu, 29 Oct 2026 20:05:54 GMT  
		Size: 1.0 MB (1031935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74a1d3885b7fbdde91b0dc982c2ed66150ae24b41ea61684267086d8dcae20fb`  
		Last Modified: Thu, 29 Oct 2026 20:05:54 GMT  
		Size: 17.4 KB (17390 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:58fe22a9770124a23f45c8cce79692f1c62a7451462d1e7fec14076e47dbddca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132272360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0708997a65ef821306dd9cb4c1ade8685247b2a787f21d1968945ddbc6ef9c66`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:13 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 21 Oct 2026 23:20:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:23 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 00:29:43 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 22 Oct 2026 00:29:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 22 Oct 2026 00:29:43 GMT
WORKDIR /tmp
# Thu, 22 Oct 2026 00:30:21 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 22 Oct 2026 00:30:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 22 Oct 2026 00:30:21 GMT
ENV LEIN_ROOT=1
# Thu, 22 Oct 2026 00:30:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 22 Oct 2026 00:30:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 22 Oct 2026 00:30:22 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 22 Oct 2026 00:30:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1925f5d03239a36fc9f03b115d2e5b92dc16f876eeb732ed46b48002dcecb5f7`  
		Last Modified: Wed, 21 Oct 2026 23:20:39 GMT  
		Size: 14.4 MB (14426609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562f033fac9bf045bf190e4b2ddc72cbf318dbdd7b25f3bccd29ce25af7422ee`  
		Last Modified: Wed, 21 Oct 2026 23:20:44 GMT  
		Size: 90.6 MB (90558872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e943606091df57124abb9c8d6433a2ce29045e747b95bb2a68961a93e76bee3d`  
		Last Modified: Wed, 21 Oct 2026 23:20:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddcc2580d02d2fbdc4df3760c57b4f1d100d320ac01f05fe05ac8a33a47e34db`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f3b5a4b2926b0d9786c0f7d0b26d20301a732c450d354ca995d7dd60916a9d1`  
		Last Modified: Thu, 22 Oct 2026 00:30:31 GMT  
		Size: 18.6 MB (18578180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f192ceb2cc3448220f845fd65a94d3f1ae2d0a7027dc84b2b81788e899f857b`  
		Last Modified: Thu, 22 Oct 2026 00:30:31 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b687d453b98cbcbcba11243eb69cfdab4d4cd03146bebb6c1bc45556b94ce097`  
		Last Modified: Thu, 22 Oct 2026 00:30:31 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:bda698a0bf81600d8847f14030c65aaa6f375563f34dd3eda7c5a54db0b5b13c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1199384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f927b9ee3fb844103684d9020cac9a710d349242af7fad6f0d85a08b837f38`

```dockerfile
```

-	Layers:
	-	`sha256:61ca7d9b30e7197aa265d0d2f230de9b608b5b4c37a042aa5783e274000ed0a7`  
		Last Modified: Thu, 22 Oct 2026 00:30:31 GMT  
		Size: 1.2 MB (1181895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26e2ab05c969d143a6a57cc8728b2bbb9f6af13d3c666cfcd4a965d474bf5ab`  
		Last Modified: Thu, 22 Oct 2026 00:30:30 GMT  
		Size: 17.5 KB (17489 bytes)  
		MIME: application/vnd.in-toto+json
