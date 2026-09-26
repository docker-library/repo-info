## `clojure:temurin-17-lein-2.13.0-alpine`

```console
$ docker pull clojure@sha256:531a6c17116be0a823cd3adc4deaf669aca9f918777d9411882d0ae6e4dfcb3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:81309070716d1d202d4b35f2ea9b8e278a9acdaec7b380e6fa2c2191c584045a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193117841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd982aa4dcd7124d1ff133a9a30a367d64bfba8acbcd7bcc0868765b222c3b9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:22 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:22 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:29 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:30 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:20:37 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:20:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:20:37 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:21:07 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:21:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:21:07 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:21:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:21:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:21:09 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:21:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03e63f99bb217b1f7ee413f177f42ba8fe72c8aff59fe998b0112c9e23649a2`  
		Last Modified: Fri, 25 Sep 2026 22:36:44 GMT  
		Size: 21.4 MB (21442498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271b0c979ba5426534d499a4752db1936fee768304d2ed1a152b5e9b1da7d607`  
		Last Modified: Fri, 25 Sep 2026 22:36:47 GMT  
		Size: 145.0 MB (144973019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aaaca2d8bd94e9347308b5e6a8928f795d6a3c376d73e73210662d948346504`  
		Last Modified: Fri, 25 Sep 2026 22:36:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb0ff8d01777a4fc494bddb9df1f3d50d8ea89fbdd2f4d95b7c4e25672e9617`  
		Last Modified: Fri, 25 Sep 2026 22:36:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3acd902efa5088e964a89f7a6c8b6b224186f6f6865da451b5057e1fea2a94b2`  
		Last Modified: Fri, 25 Sep 2026 23:21:19 GMT  
		Size: 18.3 MB (18334325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af44363c6030ebe5fd574938984fa4a905ba45f4d2a1cdeba0173851b2b40dc4`  
		Last Modified: Fri, 25 Sep 2026 23:21:18 GMT  
		Size: 4.5 MB (4515234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287741875cf28cfcf1f7d19404fca67472367fc0eb52eb606f0938ca409c72d8`  
		Last Modified: Fri, 25 Sep 2026 23:21:18 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:f509ce89ee6adc2e9bb828ec2470dfe97b24a15010509df5033b4f9313a6866e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1082563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4f2c84da02d7d47e713cd374871b74aee175fb79657d2c76a7abcd6a72ffe4`

```dockerfile
```

-	Layers:
	-	`sha256:d8a734d2af819e8829bc4a7c6b07c990ea9255551a720c0b02122892e9b50d69`  
		Last Modified: Fri, 25 Sep 2026 23:21:18 GMT  
		Size: 1.1 MB (1065162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1542026b2b4a8598ed6580bf71fbd93867f9ed62b84e0d8e1cac258cfcea1c9`  
		Last Modified: Fri, 25 Sep 2026 23:21:18 GMT  
		Size: 17.4 KB (17401 bytes)  
		MIME: application/vnd.in-toto+json
