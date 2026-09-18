## `clojure:temurin-17-lein-alpine`

```console
$ docker pull clojure@sha256:25ee228c6b12d579a6ad662e8c6efcb8d1703d91024b9c7b28e1ee54dda19db8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-17-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:a605948e620876291df2ede8721c08dd8ccb1cc73983020a2c8ac7c3b8524494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193114147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1b7c970914c40701e23c47fbf71740119707722ea8390cc3947b8547afbafa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:27 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:27 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Thu, 17 Sep 2026 21:40:34 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='c8bb5bc6984762dbce2ab7403d90832b6897c07f36f8706e4a315aa7a566d04d';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:40:35 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:40:35 GMT
CMD ["jshell"]
# Thu, 17 Sep 2026 22:33:58 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 17 Sep 2026 22:33:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 17 Sep 2026 22:33:58 GMT
WORKDIR /tmp
# Thu, 17 Sep 2026 22:34:29 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 17 Sep 2026 22:34:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 17 Sep 2026 22:34:29 GMT
ENV LEIN_ROOT=1
# Thu, 17 Sep 2026 22:34:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 17 Sep 2026 22:34:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 17 Sep 2026 22:34:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 17 Sep 2026 22:34:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b221bdff3959550733c09391deba276c1949581457321a0c03abdab1aab44684`  
		Last Modified: Thu, 17 Sep 2026 21:40:49 GMT  
		Size: 21.4 MB (21442254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0fdfe5cdff285dedcb72803643843fd24a0d41bdc8afd11bf068e447ec8a4`  
		Last Modified: Thu, 17 Sep 2026 21:40:51 GMT  
		Size: 145.0 MB (144970258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73114733c073d5727e8d774fa46a7c8fe5ca58c8f23a7db8e37d7eaf3aa662af`  
		Last Modified: Thu, 17 Sep 2026 21:40:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb2cce468c4aa84608cdce6ed855bfc86346e8a08327fa31aae462f22042232`  
		Last Modified: Thu, 17 Sep 2026 21:40:48 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b86ca3476d55f4a8b7176656439c448cd45bca85f4f475663c509087a5834e0`  
		Last Modified: Thu, 17 Sep 2026 22:34:40 GMT  
		Size: 18.3 MB (18333669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01bbd72a6ee93492630e741e1f79334487eacf6cbaff392f0bb6a14207fc1744`  
		Last Modified: Thu, 17 Sep 2026 22:34:40 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6828174cfb981f651050853670be3de02e2cf24278f9f5fbef2d10602f930471`  
		Last Modified: Thu, 17 Sep 2026 22:34:40 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:a8ec01c88da01f6b8114f331ba17c6600d74ee682431109cc87c169b22c5a835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1082550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260bf869557d5f6bd57bbfd02a2afc49c23c2d4a9d1465a50207cab81271c002`

```dockerfile
```

-	Layers:
	-	`sha256:c8a1406314f7552e06344bbef2b8048f317dc637decb2f4d5a140c24dd994cbd`  
		Last Modified: Thu, 17 Sep 2026 22:34:40 GMT  
		Size: 1.1 MB (1065154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2e338e9d71663f8bd3a6878497bcdbcdcb33a357ce004230aca9e7ea99384b6`  
		Last Modified: Thu, 17 Sep 2026 22:34:40 GMT  
		Size: 17.4 KB (17396 bytes)  
		MIME: application/vnd.in-toto+json
