## `clojure:temurin-25-lein-2.13.0-alpine`

```console
$ docker pull clojure@sha256:0385feca89cd9e3f17b33e4b9878f7167ebe6fa01c945c61e61a546480c8d12a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:95e27fc3b006e81a6311d9c8732d5c61918ae16099430193573338f75f213a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129821372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e802ec12befb64d97d17e30b5ce7abb5690195d10fece2d8609480938c179cad`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:25:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:32 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:25:32 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:25:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='3d1c5c7877e320c2cff8154cfca9af948089912b6efc6123bb21726b7055bc62';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='c6f3e9f975c130169283363bf0ef2fc55f45c36eacc909141ffa7189cd7bdcb7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:25:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:25:39 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:19:02 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:19:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:19:02 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:19:36 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:19:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:19:36 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:19:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:19:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:19:38 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:19:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1251f1bd7c631dcd1cac4674e1243c6ee4aa4877bbceda421b57f9faefe7726a`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 14.4 MB (14369221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44efe0f4bb6a9c5ce85a9d054859cec3ce43403d41be5bd20f97950676342a62`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 91.6 MB (91630852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e589d5d72b2cdb8887f929d0376d06dd40ec00db4dd528d920a1f15b8845591`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6119cd7bdb3eeee4c0c0323d0c25e2e67983dbe3091ce1af089ee91beb4ce0`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340ed11b10eff6795b575b7be7a0299cb5cbce8bc1b016bea9db9a8381f80c10`  
		Last Modified: Fri, 21 Aug 2026 19:19:47 GMT  
		Size: 15.5 MB (15456697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dff5cf6fa428b72a3af5f2eea8070e94d9148221625a151b14113b0130ffd7b`  
		Last Modified: Fri, 21 Aug 2026 19:19:47 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2fbf9639bd24c6bf2f38653228e380cff927f7322a03b3922ebeb6f74e2394`  
		Last Modified: Fri, 21 Aug 2026 19:19:47 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:c030d334c8313ccdfcc1e8877b79d299e8d99a6d7459501fa5d72155a9da35d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1049940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ba824cf0a8f91f29429ed499e7aa039dae70f7961175c9d17351d0d30f6415`

```dockerfile
```

-	Layers:
	-	`sha256:e9f70ba8b0f2301b289ee8af69d07c19bdc4cdc25e52cc3bc62b1ea53867ea6c`  
		Last Modified: Fri, 21 Aug 2026 19:19:47 GMT  
		Size: 1.0 MB (1032550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56d4be7f2a9fa2da13bee154d8568160405662fdf8fac0bc83312042a3deeeaf`  
		Last Modified: Fri, 21 Aug 2026 19:19:46 GMT  
		Size: 17.4 KB (17390 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ae2b66ab2466cb8fc836c702651ccf87b5c3ea09621d9a8b86b1b94a53797a33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129211904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20f7559d1a8742cfabccc1a6004238f6e11946fd323423a14e6494b889adfca`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:28:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:28:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:28:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:28:34 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:28:34 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:28:42 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='3d1c5c7877e320c2cff8154cfca9af948089912b6efc6123bb21726b7055bc62';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='c6f3e9f975c130169283363bf0ef2fc55f45c36eacc909141ffa7189cd7bdcb7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:28:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:28:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:28:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:28:43 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:07:33 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:07:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:07:33 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:08:08 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:08:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:08:08 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:08:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:08:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:08:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:08:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d02b60b3b80fde9d47090317e49ed4b0fbcd020d21a71470dd2ef27e06fce7`  
		Last Modified: Fri, 21 Aug 2026 18:28:59 GMT  
		Size: 14.4 MB (14421003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025612b9033db06c25d215988e53dd4704aaecad607f6477cb18ef06e8ab54d3`  
		Last Modified: Fri, 21 Aug 2026 18:29:00 GMT  
		Size: 90.6 MB (90558574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b96f24253906f95e7f87efcad1b52d0e9010c75dda7aae03f7c9fbedc9041df`  
		Last Modified: Fri, 21 Aug 2026 18:28:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b380773893b60f69b5af551ebdb0a24357a63a3d2e1d81370c0f5414540c7e7c`  
		Last Modified: Fri, 21 Aug 2026 18:28:58 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5b752ce52abdd54469ecaa6636fe417cc2737676e8839706f0da144d2258f7`  
		Last Modified: Fri, 21 Aug 2026 19:08:19 GMT  
		Size: 15.5 MB (15531080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b3010ef07c0b7349364386f3a4607ce68a61880adcabdfd796bfa7a5df74087`  
		Last Modified: Fri, 21 Aug 2026 19:08:19 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62ec7db9cb38a24ab9ea5fcc34488f55dbf96957422b16e040e9cb6ef11fab6`  
		Last Modified: Fri, 21 Aug 2026 19:08:18 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:9a658aaf194dfb6d46fd3f099d118aae387ae072875d3c759611aee202c9ab8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1199372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8875a9c7e236e54d573cc23d812813a13d1ce02d1217a764671400dd8be035c`

```dockerfile
```

-	Layers:
	-	`sha256:df0305cb3db8e7d70dc99e9b6b802e7bdb48f7b4162ee68628edd75d2917e29e`  
		Last Modified: Fri, 21 Aug 2026 19:08:18 GMT  
		Size: 1.2 MB (1181887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a631fcf4d41ed99dcb42832f2556b802034e4cd08b46b029af7792f96fc0aa8e`  
		Last Modified: Fri, 21 Aug 2026 19:08:18 GMT  
		Size: 17.5 KB (17485 bytes)  
		MIME: application/vnd.in-toto+json
