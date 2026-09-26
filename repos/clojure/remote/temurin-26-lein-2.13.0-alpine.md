## `clojure:temurin-26-lein-2.13.0-alpine`

```console
$ docker pull clojure@sha256:e54f7daf08b9f294d8876cf25cc57860ef6413b6826df0e170278c3ff0124a43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:192542ce908558c61c6285876d310e8c3447b1e8b157c5ec449df14db4886af8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135062128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db5c8c4b336313ddeb6096d47a53f8a1d10ac2aa5fd7ef5c51a438fe87799023`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:39:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:39:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:39:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:39:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:39:17 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:39:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='60186535f49539d060d6e523a714f04e32dcc72643d9eba24738e41323fca79d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='7f0ebccd9a8b4a554f5caac8768f28ff9d1b1b74367db7d14639b11c9b3d9e41';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:39:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:39:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:39:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:39:25 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:25:18 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:25:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:25:18 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:25:49 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:25:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:25:49 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:25:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:25:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:25:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:25:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7857f324d0219f713cdee798a6a1b5c5517e1774af16e90889409197f82da8da`  
		Last Modified: Fri, 25 Sep 2026 22:39:39 GMT  
		Size: 14.4 MB (14374645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7780a0186010a052851cf102036653bf9c1135cf2a9051fb6185abf30143d5`  
		Last Modified: Fri, 25 Sep 2026 22:39:41 GMT  
		Size: 93.8 MB (93802649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fd786f361eb1702fa43a9fed578735248b522558dfeb97ad46d1da9ec5daf0`  
		Last Modified: Fri, 25 Sep 2026 22:39:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f39ca676d9ec51822af2278793116e14805516fe0cc9c80ebf2a1a3fbd241d`  
		Last Modified: Fri, 25 Sep 2026 22:39:39 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d4a0800ca3e26d7dc452529ebe68a0862541201c115029fb602bf87f1c0e9b1`  
		Last Modified: Fri, 25 Sep 2026 23:26:00 GMT  
		Size: 18.5 MB (18516862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77005645f3e2821c13a64f001065032717438c2598f6aef5ec39f5e91644300e`  
		Last Modified: Fri, 25 Sep 2026 23:26:00 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba561d15d4608c639eb65fd05f3c49fb196f08ad65c2dfa9b15ec306de783a14`  
		Last Modified: Fri, 25 Sep 2026 23:25:59 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:4bc70a26f8496b9734b6f52232ee68474d8bc4810abc07bb9001434ac68f19a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1047449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b644d36b156f5795047777816b6df36bf94307e8ffffb49d377bd3874b36bc7`

```dockerfile
```

-	Layers:
	-	`sha256:eddc9d602e746adeff166aa8dc9883ca21e5bd0585916e5a2c96164a91bf16b6`  
		Last Modified: Fri, 25 Sep 2026 23:25:59 GMT  
		Size: 1.0 MB (1030055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f67ea446797ce1289735236abbe6526ef13d238699a8c606e0d36e48755d7915`  
		Last Modified: Fri, 25 Sep 2026 23:25:59 GMT  
		Size: 17.4 KB (17394 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:afcdd95b7f09adda7b2d84984ef9a55c23c04701c22b1f68c34fcbd97fad92bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134384748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a3d6dc1dade94c2dddfb27e0a4ac0af17cbba5e8473806a913854e8a137146`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
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
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:38:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='60186535f49539d060d6e523a714f04e32dcc72643d9eba24738e41323fca79d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='7f0ebccd9a8b4a554f5caac8768f28ff9d1b1b74367db7d14639b11c9b3d9e41';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 25 Sep 2026 22:38:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:38:34 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:23:27 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:23:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:23:27 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:02 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:24:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:24:02 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:24:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:24:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:04 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40385dd44488aac97962274035e7a6740bbf903709d6e87998af95008c264bcb`  
		Last Modified: Fri, 25 Sep 2026 22:38:49 GMT  
		Size: 14.4 MB (14425150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720569efe44d83d1e5ea42fb00f9b5a9136421eb37f080744467f6ca00ee73e9`  
		Last Modified: Fri, 25 Sep 2026 22:38:51 GMT  
		Size: 92.7 MB (92686134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:341b35e65e00462b515a29ba77d7e56243d45bbc6e83f9891f5a25a55d96fd56`  
		Last Modified: Fri, 25 Sep 2026 22:38:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe96a123e637f54e6d0afc553357b53d54647699c9883f67bac6ef910a99a390`  
		Last Modified: Fri, 25 Sep 2026 22:38:46 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01558f1a47de460fd05a331ea2c9f1059478d2f5930c5d39dac64e46b94c83b8`  
		Last Modified: Fri, 25 Sep 2026 23:24:13 GMT  
		Size: 18.6 MB (18567580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26803b518657b1e70b00f0e73b1d573dd44aba9f63712a78f0715457ec8c44a2`  
		Last Modified: Fri, 25 Sep 2026 23:24:13 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8e0001a6205f972b14bab21a9d5dc183ce4b330e73e63debf87762ab48b85e`  
		Last Modified: Fri, 25 Sep 2026 23:24:13 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:f894ffd8b84d043dc1e5e411002701ef8aab11de6d879a7febe3e60b41a7f0c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1196880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af074f8ed2f3ceac77520be8cf923be670223f5e7d58a9d934398f48d2e891d`

```dockerfile
```

-	Layers:
	-	`sha256:adaf4a14b1e7cfb92913d929be6621a9cce85251825571bd7e46a3cd156190eb`  
		Last Modified: Fri, 25 Sep 2026 23:24:13 GMT  
		Size: 1.2 MB (1179392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36aa66409c4a322a652bde7b483793f8923e9c10452d6a9c0e9fcd3dea7b5b4a`  
		Last Modified: Fri, 25 Sep 2026 23:24:13 GMT  
		Size: 17.5 KB (17488 bytes)  
		MIME: application/vnd.in-toto+json
