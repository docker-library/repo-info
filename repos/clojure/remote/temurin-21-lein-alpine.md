## `clojure:temurin-21-lein-alpine`

```console
$ docker pull clojure@sha256:e4e2c1dc0b14a7ffbacf94f6a6c4a46512591d4986168a1a9a78de64a0ea2c0e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:272f5ea12ee0566addd8d921bb26aa7352fa0f821582d3aa9a0766ff35f00d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.8 MB (206756389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13145b2a809076030851301552c1249c394d79d368ab2e0fd3b58dc6b84b32d5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:09:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:09:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:09:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:09:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:09:17 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:09:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a41f2d7b886ed318db51543cd045d94dd35179f66df302e6c3fd48a41a6dd9f5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='dc453842ee3f24710258f42a95bdfe5c2bfc0ca9d70c12f950ead82aee0c8361';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 29 Oct 2026 19:09:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:09:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:09:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:09:25 GMT
CMD ["jshell"]
# Thu, 29 Oct 2026 20:03:20 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:03:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:03:20 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:03:51 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:03:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:03:51 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:03:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:03:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:03:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:03:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec276e181c3d9a70c7065087ae0315383bdd5cc3ea89aa30356b51a54bce8eb0`  
		Last Modified: Thu, 29 Oct 2026 19:09:42 GMT  
		Size: 21.4 MB (21438596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3748549469e0a352bb957751903c30ccb57651a0ebfde48b707321c3ecd8d3f9`  
		Last Modified: Thu, 29 Oct 2026 19:09:45 GMT  
		Size: 158.6 MB (158623582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e84b59c2bfc6ecbf9fdb397926e6825bdb96312dc056132134ec6573b7743a`  
		Last Modified: Thu, 29 Oct 2026 19:09:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c02d4e330ef003c5e6b5886f4ca2f030b5749e7c6a1b4e75778d55975fd7e2`  
		Last Modified: Thu, 29 Oct 2026 19:09:41 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e45aa708fd799a17305a971c43d73a933876673c28f75689dd6e9f461aa2b0c8`  
		Last Modified: Thu, 29 Oct 2026 20:04:01 GMT  
		Size: 18.3 MB (18322884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1752a25117ceeaf3b0a28ffa7bda577179372cf5168494839e51a095112b74`  
		Last Modified: Thu, 29 Oct 2026 20:04:01 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8011edf53c675f1e19eca7f0925bb35ff8729c95a39fb0f12d1cdabea4743b37`  
		Last Modified: Thu, 29 Oct 2026 20:04:00 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:7e4475d641633b18d161589314d5968fb4930423a9f065764ef787cad0629eea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1084403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29da88adf0f909b3574c9a3b9917f277839312778dfd321fa72ac82f1d8d95dc`

```dockerfile
```

-	Layers:
	-	`sha256:fc3a050f677d3eb7e2645e4f2de5fa98c9d4978b84cf6ba34853ba98b669e467`  
		Last Modified: Thu, 29 Oct 2026 20:04:00 GMT  
		Size: 1.1 MB (1067006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc553b1e0e1236b1f450ee3d18ddf944a44cfb2781a41644ffb5ea54801b5abb`  
		Last Modified: Thu, 29 Oct 2026 20:04:00 GMT  
		Size: 17.4 KB (17397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:39e7fbf7640da57435a49073d5c7d8145349f3d9a26f182ef784b4223d673e91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205162190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cfde60db18312a4e6b99dd273178fc4a12d4439d170d6af749f9e8c6dc7fa09`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 19:06:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:06:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:06:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:06:16 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 29 Oct 2026 19:06:16 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:06:23 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a41f2d7b886ed318db51543cd045d94dd35179f66df302e6c3fd48a41a6dd9f5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='dc453842ee3f24710258f42a95bdfe5c2bfc0ca9d70c12f950ead82aee0c8361';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 29 Oct 2026 19:06:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:06:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:06:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:06:25 GMT
CMD ["jshell"]
# Thu, 29 Oct 2026 20:04:04 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:04:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:04:04 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:04:42 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:04:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:04:42 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:04:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:04:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:04:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:04:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de47a2cd4a8018be84704a68e30fbafbd99703bd7a598f587c25a9157388244`  
		Last Modified: Thu, 29 Oct 2026 19:06:42 GMT  
		Size: 21.4 MB (21418323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e523f21b9d5ff785f8b2c16621121ce81b41549cbebefa598980bf116da605`  
		Last Modified: Thu, 29 Oct 2026 19:06:45 GMT  
		Size: 156.6 MB (156641843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925d3ed2b19ca436b871e0b22756eb7668b34940d6f936f39e88fc7d1f5ef226`  
		Last Modified: Thu, 29 Oct 2026 19:06:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1f714a9faad6eb987b22ad61dd14a7d958d204208a851b7f1beb9699e77388`  
		Last Modified: Thu, 29 Oct 2026 19:06:41 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:035e33be6efc4c50ed71d2801c03248af5f19bbf32ea3062b763cccacbe5eda0`  
		Last Modified: Thu, 29 Oct 2026 20:04:52 GMT  
		Size: 18.4 MB (18393320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018ba4e4c76af8f3e89170c4fc637087e694cd1c1851fa4757ced0d75963da36`  
		Last Modified: Thu, 29 Oct 2026 20:04:52 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29832cec335177bacaceb20884a2acfa5ad2a32a85564955f53ef9ba7115bc4`  
		Last Modified: Thu, 29 Oct 2026 20:04:52 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:f3e1ff965201bb56fa7afc1d017b3af265034a455a771e87ce2abdcdff965147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1233838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af08628f92333471210a5e5050f0604e8fd17e727e6b8e85aa121b367effe01`

```dockerfile
```

-	Layers:
	-	`sha256:8b12dcccda6a3d3e6945dd596cd6a577769ea6693e92aea789bce32027c8704a`  
		Last Modified: Thu, 29 Oct 2026 20:04:52 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4b47055434230707e308ba618eda27c0f0eb6e9671a3b564ef4ce9678f37b4e`  
		Last Modified: Thu, 29 Oct 2026 20:04:52 GMT  
		Size: 17.5 KB (17492 bytes)  
		MIME: application/vnd.in-toto+json
