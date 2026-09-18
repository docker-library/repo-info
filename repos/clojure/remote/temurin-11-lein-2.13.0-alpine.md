## `clojure:temurin-11-lein-2.13.0-alpine`

```console
$ docker pull clojure@sha256:e4915c59ffc35ad7b16d76882a7aef6e1964220abbc91a6b55dff8f9585ba7f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:cf9c822c2146c5fdd6c7d3b2a09b36b5d7130e9dc583bd91b4871b4237acbd24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184701092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac0c36ae30b088b7bee197955bad4b7435ae2713e913bae2fb928932aef6b56`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:09 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:09 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Thu, 17 Sep 2026 21:40:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='be9831861b7a4b5fc8ec0d9540d462230f6b9bd6c7ee29585ec1ce52d1435d6c';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:40:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:40:20 GMT
CMD ["jshell"]
# Thu, 17 Sep 2026 22:33:54 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 17 Sep 2026 22:33:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 17 Sep 2026 22:33:54 GMT
WORKDIR /tmp
# Thu, 17 Sep 2026 22:34:28 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 17 Sep 2026 22:34:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 17 Sep 2026 22:34:28 GMT
ENV LEIN_ROOT=1
# Thu, 17 Sep 2026 22:34:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 17 Sep 2026 22:34:29 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f79fa0cffa294f31971572d2080d75052ea5a5d2401177495d9a27b425198d`  
		Last Modified: Thu, 17 Sep 2026 21:40:33 GMT  
		Size: 17.0 MB (16972097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d03598bdba80e6dd008d9c97fbd135bb19831f1e4183272a20a91249a19e142`  
		Last Modified: Thu, 17 Sep 2026 21:40:36 GMT  
		Size: 141.0 MB (141034046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5e04250d4dd6c4300d6374c7d23ee721384ea564723d3cb33391f7d46be97d`  
		Last Modified: Thu, 17 Sep 2026 21:40:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be9d3cb92a2a79e4e19586d762ff97388f418fd4e5a0fd241b6dda0c8c56946`  
		Last Modified: Thu, 17 Sep 2026 21:40:32 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc6b515d5b6d70d4d57db249d48b068fd458bbb9dc7244df4f5c3833e9e6aa1`  
		Last Modified: Thu, 17 Sep 2026 22:34:39 GMT  
		Size: 18.3 MB (18327388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c25800ed9589c560d42b4052239cb2754002dbe09328d544e460090463822b`  
		Last Modified: Thu, 17 Sep 2026 22:34:39 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:4f8e74af031021f41e42e48fa4333930ea67198c204fe4bdb63c30ea4db82c97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **977.7 KB (977725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed2ebc75a70d999726af9f9cb7e2dd4547c63236c7702d6cc3109108b7c4b46`

```dockerfile
```

-	Layers:
	-	`sha256:2b7151bf37233f03dc8fe1c32c0346c63b5837b8bcb5f60124f306036cc0528d`  
		Last Modified: Thu, 17 Sep 2026 22:34:38 GMT  
		Size: 962.8 KB (962792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1967fad381f7aacb2a9c3137b7cd8a600d2ac5e6eb8ce40d69440b61db0d61c`  
		Last Modified: Thu, 17 Sep 2026 22:34:38 GMT  
		Size: 14.9 KB (14933 bytes)  
		MIME: application/vnd.in-toto+json
