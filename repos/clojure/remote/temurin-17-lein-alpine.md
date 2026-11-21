## `clojure:temurin-17-lein-alpine`

```console
$ docker pull clojure@sha256:ae759089d2db552855b531f160881c54d8401070178b46fc873de7a125af6990
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-17-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:848d6c67851e4b9dc39c163a00995ef04d39fdc6c7b122135254af9ff757497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195880310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaeee1f1a64cf5eabdcbf77f706358772858d33041101e42653f3c1259c0b0a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:42:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:42:18 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='4ac50955ad93051e45280c4edabae97c7c9ca4e1d2842c4e430e5b7d9960a570';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:42:26 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 18:07:55 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:07:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:07:55 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:08:27 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:08:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:08:27 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:08:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:08:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:08:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:08:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553e9dc39faa28c406ca51894ba199ff6bb3b22473cd414e47916c577731a6c`  
		Last Modified: Fri, 20 Nov 2026 17:42:41 GMT  
		Size: 23.9 MB (23926088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a64586faf2f7b02e98311fa9ad99626b476fe2512f9e4cd3b5cf27af7c8e32`  
		Last Modified: Fri, 20 Nov 2026 17:42:44 GMT  
		Size: 145.3 MB (145258407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce1022f67cd011c4cbb3061bd8266d48f370237a9de02c250e3830d2eec16c5`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1590f96c37e5f6a13b4a8b5f7b3eb26825426c15f95077c29a0f2958c940e8e3`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42211a1a255badcd2c3ea0c3e5515e1b17f50c4cf8176854c85419309f2d2704`  
		Last Modified: Fri, 20 Nov 2026 18:08:36 GMT  
		Size: 18.3 MB (18323430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c1902684fe823c29d8c95ff39ec1305ef71632677df5f5eff8e4a04162dc728`  
		Last Modified: Fri, 20 Nov 2026 18:08:36 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d24f68dd9c46bf145505d8c3c3a01cac551d50e71b8d61bd30ad08df85446c`  
		Last Modified: Fri, 20 Nov 2026 18:08:36 GMT  
		Size: 907.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:00ea4809e4ac894569619cbf7c121612a5f8367abb8768bf0c16cfc0880b59a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1082569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21f62d60c9c031aa29cd771747ded6a293e55c4a594b35ae101e47366f46045`

```dockerfile
```

-	Layers:
	-	`sha256:1bd1fccb485a60816223b542c0300c7214f05b971824d886732a64d49bf53e4a`  
		Last Modified: Fri, 20 Nov 2026 18:08:36 GMT  
		Size: 1.1 MB (1065168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:001e6ba04bc6ef86087e996a52d087f456c54dc6a2495b5712e9055e7c54c2de`  
		Last Modified: Fri, 20 Nov 2026 18:08:36 GMT  
		Size: 17.4 KB (17401 bytes)  
		MIME: application/vnd.in-toto+json
