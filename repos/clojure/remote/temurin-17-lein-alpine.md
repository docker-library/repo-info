## `clojure:temurin-17-lein-alpine`

```console
$ docker pull clojure@sha256:9789fbc199fe434f7f73a9bc6a06fcf75f117d1de9a54ff5ec86b2c4a55d8996
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-17-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:1e0774bf8fc80ed24d1b53de446a23eb867281023cc9cc500bc879c14fc7649f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190042332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb42d6f57645201ca41a46c60f8ec0e3afb8a420e372dd191bfff2c0ce58bd7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:23:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:23:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:23:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:23:35 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:23:35 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:23:43 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='c8bb5bc6984762dbce2ab7403d90832b6897c07f36f8706e4a315aa7a566d04d';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:23:44 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:13:02 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:13:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:13:02 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:30 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:13:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:13:30 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:13:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:13:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:13:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:13:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26cd5aab71d3939c7e16e44f694b8c0cf73ffdb9eaf0ebc914e57d6b54aa607`  
		Last Modified: Fri, 21 Aug 2026 18:23:59 GMT  
		Size: 21.4 MB (21434109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb3df7902765cf89902403cbc4eabf8772ce27e2ecefeb9278dc107ff548e1d`  
		Last Modified: Fri, 21 Aug 2026 18:24:02 GMT  
		Size: 145.0 MB (144970186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05721dd3d30aba44494d76ca3141ab6b746eeeb269290250164d22286ccc33d5`  
		Last Modified: Fri, 21 Aug 2026 18:23:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768e6e1dbe85c2d1c5df73eb36a85054662deff12e37d784e455d8dc9c304739`  
		Last Modified: Fri, 21 Aug 2026 18:23:58 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b07e48d987fefb77751d818a372b04d8dfd99fd17f8d97a1696a65011b45ae`  
		Last Modified: Fri, 21 Aug 2026 19:13:42 GMT  
		Size: 15.3 MB (15273395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e41779bc564ba90c991996b3e7f441fcfa53d46d5a439864b627576b276fe6c`  
		Last Modified: Fri, 21 Aug 2026 19:13:41 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3116917a8ebf555680959b96d365b0c648865e87053cded813e481bc33519f3`  
		Last Modified: Fri, 21 Aug 2026 19:13:41 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:be64e02490534ce48ab799fef70d017887a304489b10464aa015c264101f95e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1082551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3c6cf29935124f0c191bfe3b2c8644839b2ba68510d7df3c03f92478fdc8c0`

```dockerfile
```

-	Layers:
	-	`sha256:c8ead28368e7453e5a9cde4173f365d1184b92b6285bb6cdca1fe37367204ed1`  
		Last Modified: Fri, 21 Aug 2026 19:13:41 GMT  
		Size: 1.1 MB (1065154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dd3cac1dfd6c978f1c6db8dd8f9215d68be1e043f4661556dda2d8553ba1f5c`  
		Last Modified: Fri, 21 Aug 2026 19:13:41 GMT  
		Size: 17.4 KB (17397 bytes)  
		MIME: application/vnd.in-toto+json
