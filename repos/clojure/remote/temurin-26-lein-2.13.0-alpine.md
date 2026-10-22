## `clojure:temurin-26-lein-2.13.0-alpine`

```console
$ docker pull clojure@sha256:fccf900488800c2876280c7e9ee0526ff2a16f7733b9425afc7f827ec7711669
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:75cef6b30372e5d8a7b73a4cf9fbe0771451e9650603ceb01f6d51a9d996a995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135052704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20fa3258b7ebaf38a2115c9c4efa9e811b8a825448a45035952a223bb5535592`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:38 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:38 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 21 Oct 2026 22:57:46 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='60186535f49539d060d6e523a714f04e32dcc72643d9eba24738e41323fca79d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='7f0ebccd9a8b4a554f5caac8768f28ff9d1b1b74367db7d14639b11c9b3d9e41';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 22:57:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:47 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:39:40 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 23:39:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 23:39:40 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 23:40:22 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Wed, 21 Oct 2026 23:40:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 23:40:22 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 23:40:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 23:40:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 23:40:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 23:40:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37af5f6c1cc3d61c1d39db80aacfd42b2bd9497b52cdf4e5bb29da204a4adf68`  
		Last Modified: Wed, 21 Oct 2026 22:58:01 GMT  
		Size: 14.4 MB (14372149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c6700b0d64680905fad799a91440c82f048df1de0e08890aa3264a8d070c08`  
		Last Modified: Wed, 21 Oct 2026 22:58:03 GMT  
		Size: 93.8 MB (93802421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8fe43bb290379cc167cd206ff515dd6f8ebcfec430d5d9e71c1d152846f873`  
		Last Modified: Wed, 21 Oct 2026 22:58:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd2eb0933d3ce6bbeb303ca2abb6c53d9967eb89997e78eaacf88199ed1aaf3`  
		Last Modified: Wed, 21 Oct 2026 22:58:00 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940a545d972659423af268a5fdaee21c1cef38c68a131d250247178ae662044e`  
		Last Modified: Wed, 21 Oct 2026 23:40:33 GMT  
		Size: 18.5 MB (18506814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b79e0b4e3a0bb107644368473afd26e2a341361d30897407eea5b78ec3d4431`  
		Last Modified: Wed, 21 Oct 2026 23:40:33 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1bdcd78608a58e7b3b871e5ac3c431d09bc647547150165b2f1e753028c789e`  
		Last Modified: Wed, 21 Oct 2026 23:40:33 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:47c4062bddafd4c92160943986e0e90c43bf44a23351364dc556487d69ad1a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1047448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5903fc36484de3a20f254bdd0fa878567bf6c2a782cbdeed8acb9a4a2ad6b08d`

```dockerfile
```

-	Layers:
	-	`sha256:874b940b7d0cf8cec1022f63d267bdcdd32f7bf8aa7c18b8fea2d54829c8a877`  
		Last Modified: Wed, 21 Oct 2026 23:40:32 GMT  
		Size: 1.0 MB (1030055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5170908e3deab985c5e44c8e32c84d9523ed774bed778b929f190f299fda9509`  
		Last Modified: Wed, 21 Oct 2026 23:40:32 GMT  
		Size: 17.4 KB (17393 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5beeed140adeab244836fa8e2650004316ac1efc3eb4e2fc68178a47b4775846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134398971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb118484386d20f364973b6762cb5b179087817954db2476d8d2f1a3cc9a2d2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:17 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 21 Oct 2026 23:20:25 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='60186535f49539d060d6e523a714f04e32dcc72643d9eba24738e41323fca79d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='7f0ebccd9a8b4a554f5caac8768f28ff9d1b1b74367db7d14639b11c9b3d9e41';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 23:20:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:26 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 00:29:48 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 22 Oct 2026 00:29:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 22 Oct 2026 00:29:48 GMT
WORKDIR /tmp
# Thu, 22 Oct 2026 00:30:24 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 22 Oct 2026 00:30:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 22 Oct 2026 00:30:24 GMT
ENV LEIN_ROOT=1
# Thu, 22 Oct 2026 00:30:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 22 Oct 2026 00:30:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 22 Oct 2026 00:30:26 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 22 Oct 2026 00:30:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2c00dcd3dc5c7fdca61759583c1dd32754233131d14824c91b35649edd73cb`  
		Last Modified: Wed, 21 Oct 2026 23:20:42 GMT  
		Size: 14.4 MB (14426612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636d40ad34c6922b8085fe90a3dcbb8870b81d6a28bbb2b6a828fcbaa4c0d728`  
		Last Modified: Wed, 21 Oct 2026 23:20:44 GMT  
		Size: 92.7 MB (92685458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ed5ebae0a6a3a09770a513e11755f546c650ca36cd273164fabcb810db2f59`  
		Last Modified: Wed, 21 Oct 2026 23:20:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb6ac887d7f7ecd1cc280b4d8bef317f30f0e2b0f015be458e74102bc6021ea`  
		Last Modified: Wed, 21 Oct 2026 23:20:41 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ebc0d6ca8c4bbfbdca193d3d4f06d43703daf8e067f59a37d534eb251080c0`  
		Last Modified: Thu, 22 Oct 2026 00:30:35 GMT  
		Size: 18.6 MB (18578170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888420bcb600f59b020bf3f33105f93f9786151c8423e495598ce5c57ccf5d8c`  
		Last Modified: Thu, 22 Oct 2026 00:30:34 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363addfceee430b8544d5d03f0c66143bce8774ee8c77b2c4a7e56dae5e3772f`  
		Last Modified: Thu, 22 Oct 2026 00:30:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:031c8c4fa0c09719ef67d3a25cbac8a6d457b62a49203eecc3a9e9afaf3369fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1196880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123a7733544f427c8ba720a92a4659fff0e4b92b9e4669b7bc4855fa8063db19`

```dockerfile
```

-	Layers:
	-	`sha256:183ebac1f6f6de90e49415cb3809d93417d26776c4fefc7e625952fb8ec827a0`  
		Last Modified: Thu, 22 Oct 2026 00:30:34 GMT  
		Size: 1.2 MB (1179392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df09a091219fa625b8b76f688463ed6c472502c14c0039c381e9f1c38d5c11ce`  
		Last Modified: Thu, 22 Oct 2026 00:30:34 GMT  
		Size: 17.5 KB (17488 bytes)  
		MIME: application/vnd.in-toto+json
