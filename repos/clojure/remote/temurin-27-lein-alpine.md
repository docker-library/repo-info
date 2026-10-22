## `clojure:temurin-27-lein-alpine`

```console
$ docker pull clojure@sha256:e4bcefdd39481ec51152c753941957035d64cd44d6200d23da28f1b3bb291cfd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-27-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:a6f64e1b432dee3b5c9749d700ad45f10ccd74628de7faa7820d6dd91be4a2fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134155977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dafc4e9ee8d52f0a9f174b8988db9de345d54f912ef8421579a9eb959c48c6e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:43 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:43 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 21 Oct 2026 22:57:52 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 22:57:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:54 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:39:41 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 23:39:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 23:39:41 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 23:40:16 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Wed, 21 Oct 2026 23:40:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 23:40:16 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 23:40:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 23:40:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 23:40:18 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 23:40:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954723d5358cb00043454fda5e881ebb40121d4d66847db028e072ce23688a6b`  
		Last Modified: Wed, 21 Oct 2026 22:58:08 GMT  
		Size: 14.4 MB (14372091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01877b8666d4b4fc2bc460bde62c83f0331f3d0167f6b683b0f2adf56784068b`  
		Last Modified: Wed, 21 Oct 2026 22:58:11 GMT  
		Size: 92.9 MB (92906133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ddf1c3cc092cce9253f39465decfc27489a8d26116dcd988d381c90f51ec7`  
		Last Modified: Wed, 21 Oct 2026 22:58:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbbb802aa32709a5ce834fd607cd4389239fa8bc3aebc230a4b3083033a11be`  
		Last Modified: Wed, 21 Oct 2026 22:58:07 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1387421032f29d1b05797a8e49f649aa804fc851db40c03feb064aadc5e9ce`  
		Last Modified: Wed, 21 Oct 2026 23:40:27 GMT  
		Size: 18.5 MB (18506424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8578489029a4d50936ddc496f450463e567c62122f3cf181b1b762c1b1d2f79e`  
		Last Modified: Wed, 21 Oct 2026 23:40:27 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5e54cab5d1e4efad02d7beaffe64cc6e7bc3e3961df12d6e90c002afbdd90f`  
		Last Modified: Wed, 21 Oct 2026 23:40:27 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:39b7f757f702346a40bb0ab5d4849f04f2fdc136de4db51bc7944d8555d907e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1046170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1bd2c27ba0d833b02b67d01d3a9c3fef750f4bf0871c8c934e1cea9a3ba4d9`

```dockerfile
```

-	Layers:
	-	`sha256:9a19bcdfe6c3bd4d368a03b018c2adda6799115311afda99e52a76de2f58c82d`  
		Last Modified: Wed, 21 Oct 2026 23:40:26 GMT  
		Size: 1.0 MB (1028786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:959c6e738076f79c2d8e6b5d69bdf6c6fc715b81c32a107ec2eeeac355314a22`  
		Last Modified: Wed, 21 Oct 2026 23:40:26 GMT  
		Size: 17.4 KB (17384 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:29178646e074289c3e903f963a9bc53b66a08b9fcb09678bf805709f4bb5dbaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133504544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89f7c4aa507e361e42501d260a5ba279ec07d6768f3a143e4eb5b03cd206f1ed`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:24 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 21 Oct 2026 23:20:34 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 23:20:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:36 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 00:30:00 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 22 Oct 2026 00:30:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 22 Oct 2026 00:30:00 GMT
WORKDIR /tmp
# Thu, 22 Oct 2026 00:30:38 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 22 Oct 2026 00:30:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 22 Oct 2026 00:30:38 GMT
ENV LEIN_ROOT=1
# Thu, 22 Oct 2026 00:30:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 22 Oct 2026 00:30:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 22 Oct 2026 00:30:40 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 22 Oct 2026 00:30:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875cf4f2569cd9113cda9691a62238a5e032242f0626f8f2f665d0554e629a4a`  
		Last Modified: Wed, 21 Oct 2026 23:20:51 GMT  
		Size: 14.4 MB (14426583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4084ebb14a32dd6d83e4a097559b82a3bdb8164175e1914986d04f4a965635c`  
		Last Modified: Wed, 21 Oct 2026 23:20:53 GMT  
		Size: 91.8 MB (91790925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4e834e9ec8b7b6546cba25985b5be4dbf99e601322920cda5b1e2fcd9d70dc`  
		Last Modified: Wed, 21 Oct 2026 23:20:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7951dbb32453398c235abe8cb73740408f41c7f98896fc50b7a186a574a7eb9`  
		Last Modified: Wed, 21 Oct 2026 23:20:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c32f7feb4393e039e299a715c5fe17069fdd97a3ea576412b66a49152a4b94e`  
		Last Modified: Thu, 22 Oct 2026 00:30:48 GMT  
		Size: 18.6 MB (18578305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d7a567bcc57b923e46bddf8299d41aec21e60a22875d2f12ed16dba8dfd409`  
		Last Modified: Thu, 22 Oct 2026 00:30:48 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c993cbde73c52152eb5c202c7add3c3115040c5c0fdb109bfe44f259f1bb22`  
		Last Modified: Thu, 22 Oct 2026 00:30:48 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:c4071366637d3e8df132b49523be0bd2f753c09f316290848205f5ee4c9ada0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1195602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b43c7045878ccc69cb714401595b274fa3f9f329339db9f88fcf9c43137f66`

```dockerfile
```

-	Layers:
	-	`sha256:f791a1f9115f0a10bbf333062a3b7affdff542c0b92966fc1323d689931cffad`  
		Last Modified: Thu, 22 Oct 2026 00:30:48 GMT  
		Size: 1.2 MB (1178123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aff371700038af33031a45263be6e8e073cf6872598091f2926f0b38142562c6`  
		Last Modified: Thu, 22 Oct 2026 00:30:47 GMT  
		Size: 17.5 KB (17479 bytes)  
		MIME: application/vnd.in-toto+json
