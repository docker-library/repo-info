## `clojure:temurin-17-lein-alpine`

```console
$ docker pull clojure@sha256:14daeae7667e86ef2d9e5f73102c6987d03bf9cbd0aa2a460729f5adc3f06fea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-17-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:8254e411fa44597783cc44db69490527f95e3f3a7371c3e042f66c005f2b76c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193106433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3803fa57ce711ef7bd694c16644f8aec7dbab6e9225fb6359df064114f121442`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:16 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Wed, 21 Oct 2026 22:57:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 22:57:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:25 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:39:18 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 23:39:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 23:39:18 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 23:40:00 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Wed, 21 Oct 2026 23:40:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 23:40:00 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 23:40:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 23:40:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 23:40:01 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 23:40:01 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc6765343fdcee431b76cb64c471441210a1abba659628a35c76b8d2a7a5ec1`  
		Last Modified: Wed, 21 Oct 2026 22:57:40 GMT  
		Size: 21.4 MB (21438689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fbe728b86101a9c0aab8ec96ffc1991c96e93a4a720f8eaf4e97b4953381fb`  
		Last Modified: Wed, 21 Oct 2026 22:57:43 GMT  
		Size: 145.0 MB (144972891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef741fd2dc923f60a005dfa96317864253907647f0900abdd4d6ccecd2251adb`  
		Last Modified: Wed, 21 Oct 2026 22:57:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deabbe2bf1fcd89f013f5be9c030b95c50f28856c6e217621f6c0d6539e49943`  
		Last Modified: Wed, 21 Oct 2026 22:57:39 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b26ad5936edbaa2d4d871b31c370245369bec5004f335bf274dda1d16e58c57`  
		Last Modified: Wed, 21 Oct 2026 23:40:10 GMT  
		Size: 18.3 MB (18323535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60898cf20059409c68b8fe51e154429f76d6462a9539c6b7b6eaf2a514be051f`  
		Last Modified: Wed, 21 Oct 2026 23:40:10 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2d0afa19815075a7b8efeb1c2fe93eec272b61981fced5efd50d0db1105388`  
		Last Modified: Wed, 21 Oct 2026 23:40:10 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:888664d346b5b5ed654036898847db54350137fb5cea90061d19fa2197b68b6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1082563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea54228e31368b742f02bb1198dbb47acd50aa1eede904be8d9667298eb88184`

```dockerfile
```

-	Layers:
	-	`sha256:54d3ba9559081aa1b39d28d4ca475908b1680ed4673af55c48c97a8bd3676124`  
		Last Modified: Wed, 21 Oct 2026 23:40:09 GMT  
		Size: 1.1 MB (1065162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e76b6dbd6c284e80f9cce0253b61cece91f4ec2e4a6870a955e45fc092c8f40d`  
		Last Modified: Wed, 21 Oct 2026 23:40:09 GMT  
		Size: 17.4 KB (17401 bytes)  
		MIME: application/vnd.in-toto+json
