## `clojure:temurin-26-lein-alpine`

```console
$ docker pull clojure@sha256:c9909346bd7cc3a66f5b311802ea58ab9d46af535f5a75fea19026dd8c4c7b8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:ff4a1d832ee734f75c0b4b8d6983f3eebf90c5f42475b6b7f7d41a5e58f85963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135059912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa389c42de76468f664072aa57592698443427de84992cc4764f6ea581510e0a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:36 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:36 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Thu, 17 Sep 2026 21:41:45 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 17 Sep 2026 21:41:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:41:46 GMT
CMD ["jshell"]
# Thu, 17 Sep 2026 22:34:20 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 17 Sep 2026 22:34:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 17 Sep 2026 22:34:20 GMT
WORKDIR /tmp
# Thu, 17 Sep 2026 22:34:50 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 17 Sep 2026 22:34:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 17 Sep 2026 22:34:50 GMT
ENV LEIN_ROOT=1
# Thu, 17 Sep 2026 22:34:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 17 Sep 2026 22:34:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 17 Sep 2026 22:34:52 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 17 Sep 2026 22:34:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66dcb7b01fcdeca7f62c679c464bbe20acbefd50a3331b676e29cd05f386bee`  
		Last Modified: Thu, 17 Sep 2026 21:42:00 GMT  
		Size: 14.4 MB (14374531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d03614ef550b5e943c68431070253a31b23c3065dad8291dcd80709bd17c24`  
		Last Modified: Thu, 17 Sep 2026 21:42:02 GMT  
		Size: 93.8 MB (93801080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9d703f257bbe41ec26485da713acf142f45808b48508a04aa501e8699e79b4`  
		Last Modified: Thu, 17 Sep 2026 21:41:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5530708bfe33252422b2d03a100129c7bacb9843e65eca678957f8ea4e2c083`  
		Last Modified: Thu, 17 Sep 2026 21:41:53 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2af0b487e315357976be6ff0b5a823a7694d5d74cf7cb50d2ff73c59449006`  
		Last Modified: Thu, 17 Sep 2026 22:35:00 GMT  
		Size: 18.5 MB (18516325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379f80f0939f83328db25844311962be5d3273c3702a6b39be1f231079ef9267`  
		Last Modified: Thu, 17 Sep 2026 22:35:00 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:141bb838b3e0b9635e45817e94947f7294a2ece52e4e563eaa513d17c6b43cf4`  
		Last Modified: Thu, 17 Sep 2026 22:35:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:9bce3099c2947c72ca55a92e521e4df9a62b6310341b069d22c0d923fd2519e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1047441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201c7aa6ab96db0d73831b9d1a126854e846a210bd55ea480408bf4b56eb5ef2`

```dockerfile
```

-	Layers:
	-	`sha256:52ef15959c3db05fda30d92f797464bf91c7c9bbba460a6b9cb0fc02e4faa5c0`  
		Last Modified: Thu, 17 Sep 2026 22:35:00 GMT  
		Size: 1.0 MB (1030049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e620abb868b970acbd44b0b6ec0b547a789e651bcae707d7679b677a8a419356`  
		Last Modified: Thu, 17 Sep 2026 22:34:59 GMT  
		Size: 17.4 KB (17392 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f9e7dc1e59037c0620aa06fd619681938b7bc6dfe64ad09d711d2b33fbc4ff93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134380220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af4dd0c18a71c24e6107c0b0c48e99a8e541af96fb8f70a57c14d0eaad9b2c1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:42:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:42:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:42:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:42:07 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:42:07 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Thu, 17 Sep 2026 21:42:17 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 17 Sep 2026 21:42:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:42:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:42:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:42:18 GMT
CMD ["jshell"]
# Thu, 17 Sep 2026 22:57:59 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 17 Sep 2026 22:57:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 17 Sep 2026 22:57:59 GMT
WORKDIR /tmp
# Thu, 17 Sep 2026 22:58:34 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 17 Sep 2026 22:58:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 17 Sep 2026 22:58:34 GMT
ENV LEIN_ROOT=1
# Thu, 17 Sep 2026 22:58:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 17 Sep 2026 22:58:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 17 Sep 2026 22:58:36 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 17 Sep 2026 22:58:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb1c0605fe61bad47cdaaa406a9bd4240f2c48e430411b83b1350714715469f`  
		Last Modified: Thu, 17 Sep 2026 21:42:34 GMT  
		Size: 14.4 MB (14424429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243ee7006a758f0641099f3fb9342fd26699e5be627759545918bee805b23f37`  
		Last Modified: Thu, 17 Sep 2026 21:42:35 GMT  
		Size: 92.7 MB (92682695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d723a4d5484baf0911cfcd4fae1f13a609cb5a446049befb7ab798e2883cb80e`  
		Last Modified: Thu, 17 Sep 2026 21:42:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61163323f058d340a13fd51a507276a2e9cf86ba0dd6dd09bb7d759baa833dbc`  
		Last Modified: Thu, 17 Sep 2026 21:42:33 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af0f5fbbba6dfb27142e98f8b51e0566ffe2c18e37276350279acdd2dff4e29e`  
		Last Modified: Thu, 17 Sep 2026 22:58:44 GMT  
		Size: 18.6 MB (18567197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2364924d73a7fbadaded559148148b27bd722db77133dbc8c3fe459e43d365`  
		Last Modified: Thu, 17 Sep 2026 22:58:44 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3617d60d3e56753dafb8fcd38712f7d0743e5fe1fa853cc661e3349920ddda15`  
		Last Modified: Thu, 17 Sep 2026 22:58:44 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:2a24501d711d79ec072f24f9a28222b79b84483b53b22592f835ad9975479ad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1196873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3162a90b069d590c925eb30f11e086801c34302eafe04d2f3ed54486c66754ea`

```dockerfile
```

-	Layers:
	-	`sha256:1609977da83d1f083028ab18e95cc751b55f602ad5d3a0c916130f66e555de92`  
		Last Modified: Thu, 17 Sep 2026 22:58:44 GMT  
		Size: 1.2 MB (1179386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1034c6c7cc5ead0e3a2c3c4422fa46f407b2a8e73fb374fff54d442885f483f`  
		Last Modified: Thu, 17 Sep 2026 22:58:44 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
