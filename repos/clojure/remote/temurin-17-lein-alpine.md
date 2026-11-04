## `clojure:temurin-17-lein-alpine`

```console
$ docker pull clojure@sha256:860d137fd936396019b6b381a4f3c0cceaf758f4e2a08ea3fdf3220610a5fa08
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-17-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:8ad4833c0a2f1e4adc6eb017631a3cbfc9dafd8af690cb84ad1edb523851ad8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193372097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c1612c76484ee99687b033357f6808e7231e1acdb563fcda7f12be8b588f63`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 21:56:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:56:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:56:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:56:26 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Tue, 03 Nov 2026 21:56:26 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:56:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='db018054d52c1c109ad128c1412ead2d84ae91052ce60ca370df17b6a89831f5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 21:56:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:56:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:56:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 21:56:34 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:17:35 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:17:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:17:35 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:18:11 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:18:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:18:11 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:18:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:18:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:18:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:18:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0624e917b83aaf03e242bc462d24bd95decd45759241d246c0a98bdf2fc8a`  
		Last Modified: Tue, 03 Nov 2026 21:56:49 GMT  
		Size: 21.4 MB (21439965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd2f40a15e5828cbeb475e4de2a3925b6193e5d6a0177250833253f68d0d60f`  
		Last Modified: Tue, 03 Nov 2026 21:56:52 GMT  
		Size: 145.2 MB (145238108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d796ce7c94d07e26701b1bc6376d5e21299c235fc5d095c13b3c1d5caeb32d7d`  
		Last Modified: Tue, 03 Nov 2026 21:56:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7d45ac6b96edcf369cda70c4c45f070b21667db0b623f0ea06449134aa54f1`  
		Last Modified: Tue, 03 Nov 2026 21:56:48 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86215ff456088a1b5cd739aa815e71616c314a5a6a73db685ee38156a057859`  
		Last Modified: Tue, 03 Nov 2026 22:18:20 GMT  
		Size: 18.3 MB (18322696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2052c6532174d49f9a7c802ef649f84d47609dc05c71c08675a17b2018481f5`  
		Last Modified: Tue, 03 Nov 2026 22:18:20 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4728359f54db17897bec881fe13f1595b7565dd96db66d652932c3e1f8cbec`  
		Last Modified: Tue, 03 Nov 2026 22:18:19 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:c633a92ac45d9abb8a6cfe39aea5e9a744db480baea9d9eed1a765f57db789f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1082555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f0660729c97861883f081f9489003ff5570f51b996badf50177c5fd0d68ab8`

```dockerfile
```

-	Layers:
	-	`sha256:53fe4b436c15b96240dc718c25bdbe6f870ce280b5967da3cb8caad111b6c61d`  
		Last Modified: Tue, 03 Nov 2026 22:18:19 GMT  
		Size: 1.1 MB (1065158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c16aaf0423f0fcf5da4a7a8d5ad014fe316c4f1f261e149f1b78faa0fef8e38e`  
		Last Modified: Tue, 03 Nov 2026 22:18:19 GMT  
		Size: 17.4 KB (17397 bytes)  
		MIME: application/vnd.in-toto+json
