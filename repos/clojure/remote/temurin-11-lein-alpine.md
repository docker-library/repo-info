## `clojure:temurin-11-lein-alpine`

```console
$ docker pull clojure@sha256:e37fe0c099324e1f33ca8d5d2a05a230e0f6bc32581ffb838bd7089de5b30b5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-11-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:109aa6a8c753f302e2cbda21562d51f0a1229098515b7d1ad938c7a6545ab4d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184700072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a41a88db491063899224bd620829c11d4462c817dece504afb608a3504b7ee9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:35:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:35:28 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:35:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:35:40 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:19:05 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:19:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:19:05 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:19:34 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:19:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:19:34 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:19:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:19:35 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306c183d62c2e4a4330bce8e042e6eb89ba9fa5db79b2fd0f813a1333fbb8094`  
		Last Modified: Fri, 25 Sep 2026 22:35:54 GMT  
		Size: 17.0 MB (16972135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a643519b5f6673c07720a5e01b34e3f78c5fc4183d51e4978dc34955cb398f9d`  
		Last Modified: Fri, 25 Sep 2026 22:35:55 GMT  
		Size: 141.0 MB (141032797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc8dee2647a63114e7d1dbe8544499ede6ac03dd790e5732bb19295a9e972b1`  
		Last Modified: Fri, 25 Sep 2026 22:35:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9d8e8fdc43874d56d19ee3518b93e4f1ed48e6bc36ed5dfddf7d719babe1fb`  
		Last Modified: Fri, 25 Sep 2026 22:35:53 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53b463f2345e4c5b0a202a447f71f3cd1e3689d91f9cf8209e4002f5fbe7b24`  
		Last Modified: Fri, 25 Sep 2026 23:19:45 GMT  
		Size: 18.3 MB (18327609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a20ddae404908fbb57644c278ec6931652d0cd788bae2c7ec41925f62a1d54c`  
		Last Modified: Fri, 25 Sep 2026 23:19:44 GMT  
		Size: 4.5 MB (4515171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:d129a3839317d1e85576eebf094f7a16763868a9544ec46d6cb8c3804c565c3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **977.7 KB (977737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:794517d0194b1e34e62d07998238a27daaa1309ee6c92fca701a218ced298f6b`

```dockerfile
```

-	Layers:
	-	`sha256:038873a0aee6b0b4e6755689bc0fdf06f25cf9264d98580c8f7127f1c2d3361b`  
		Last Modified: Fri, 25 Sep 2026 23:19:44 GMT  
		Size: 962.8 KB (962800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:285dc2c84300d23c78ac9fbc6f284f15a56291382626ba1e3b848c0f651c2a6b`  
		Last Modified: Fri, 25 Sep 2026 23:19:44 GMT  
		Size: 14.9 KB (14937 bytes)  
		MIME: application/vnd.in-toto+json
