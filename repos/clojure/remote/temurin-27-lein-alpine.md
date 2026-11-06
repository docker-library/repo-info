## `clojure:temurin-27-lein-alpine`

```console
$ docker pull clojure@sha256:6865680084bd96d96e6d39de1a701f454125b0519816a105c732083149b1cd74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-27-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:eec7032832236680afc38a531a2df7cf7a142d73844fe93923dda5effb6748f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134158523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd3a2973f1c45b4264d88a3c2998fac6d107eaa24c77fd041e88eb2d8b6a92c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:19:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:19:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:19:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:19:12 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:19:12 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 05 Nov 2026 19:19:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:19:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:19:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:19:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:19:23 GMT
CMD ["jshell"]
# Thu, 05 Nov 2026 20:28:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 20:28:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 20:28:32 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 20:29:05 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 05 Nov 2026 20:29:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 20:29:05 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 20:29:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 20:29:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 20:29:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 20:29:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3082458f008ca28bd68707854b95556dbed015e482a78fa8ac778eebc06f341e`  
		Last Modified: Thu, 05 Nov 2026 19:19:38 GMT  
		Size: 14.4 MB (14374227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8943366f03fcc5d06d787e5f8aaa6a676c381bb5ca2732bc4ff1bffa5669cd0`  
		Last Modified: Thu, 05 Nov 2026 19:19:39 GMT  
		Size: 92.9 MB (92906066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcefcdbcd2edef56703e2b712bef5d25cb42f9d4dc1fe60e17c1eb00501785b`  
		Last Modified: Thu, 05 Nov 2026 19:19:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7263295670e0bec5ec834b545dfe10a1bb361bcbdbd5325f4a2bb356f475c640`  
		Last Modified: Thu, 05 Nov 2026 19:19:29 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f8b5fe731c488bcb253d511b425f6d681db1325050eea8bd2d31a7ee06d741`  
		Last Modified: Thu, 05 Nov 2026 20:29:17 GMT  
		Size: 18.5 MB (18506319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331c3847a956f0e2bfdc74ec1cf0c12fe183e7c11571e9d60f31c941470bf657`  
		Last Modified: Thu, 05 Nov 2026 20:29:17 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a42e96fbd23bc2edf8761d30b15df17e2a48dc3fa979c7f261379071a215c3`  
		Last Modified: Thu, 05 Nov 2026 20:29:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:d838bdd7b71cf7362ab3c5c70a4bf4f637453f3e5875b69c7e8eb285e6039e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1046174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e458fda4a458c9746c86a00718af9b7f7ac81882a66b41ba0b6a443fef388a`

```dockerfile
```

-	Layers:
	-	`sha256:7e7f0025d7dd6fd37476fa1c8743dbee465a47244f5413cd0ca4b6b316d01696`  
		Last Modified: Thu, 05 Nov 2026 20:29:16 GMT  
		Size: 1.0 MB (1028790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51cbec743b4ae70a18cb4f409ae3661d1e16e9d22c79ae7adba16d4892b22255`  
		Last Modified: Thu, 05 Nov 2026 20:29:17 GMT  
		Size: 17.4 KB (17384 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3a1170e887ede91c127ed0967878ba46648c56c0ae01933da6a9446056e6160b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133495191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d6b2b173ec4c318762dd16a0f3aa3a918fcc0acba9d2cec7e65ce906a8b3bf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:14:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:14:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:14:10 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:14:10 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 05 Nov 2026 19:14:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='440353d641e7726396dff5d9a9d0d17c05a070dc25664c20f9d7efafc2f16cf7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='45aef7cd5ae667c6f5dd100c96a99e5a00e61c512664bb13326cf149b7d37e0f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:14:21 GMT
CMD ["jshell"]
# Thu, 05 Nov 2026 21:35:03 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 21:35:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 21:35:03 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 21:35:41 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Thu, 05 Nov 2026 21:35:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 21:35:41 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 21:35:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 21:35:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 21:35:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 21:35:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2236bf9be55a388dff4aedff14163d594d765ba5b8caabfe85701c55ea5afccd`  
		Last Modified: Thu, 05 Nov 2026 19:14:36 GMT  
		Size: 14.4 MB (14426912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153b5e43a6d1967ccc3b86df66761fd02b61bbbc6e3e6cdbbff1f06554cb2a24`  
		Last Modified: Thu, 05 Nov 2026 19:14:37 GMT  
		Size: 91.8 MB (91790900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0320b64047158996296aaf5e8a422b50feef43ebc4a5d13acd93adf613c32d85`  
		Last Modified: Thu, 05 Nov 2026 19:14:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0d5d3524956ba0f974e8dce4e8a7344dc822d1d66acb7449cff123ca8dbcb1`  
		Last Modified: Thu, 05 Nov 2026 19:14:35 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8557e452d51f1b8ace05e7c322c5b86fe0e8d0b2e101e8d49788ec0d609ef4`  
		Last Modified: Thu, 05 Nov 2026 21:35:52 GMT  
		Size: 18.6 MB (18568543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16cd23ad1b1886ce4e93de5f154858a5c581d5b47c0bd2cc5f1f369fbbad642`  
		Last Modified: Thu, 05 Nov 2026 21:35:52 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ac5bc56f1a65a3e00123d92ef30315fcecec0367e1b2c6ce82ac36fabdd5f5`  
		Last Modified: Thu, 05 Nov 2026 21:35:51 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:1e84545438f2ecab2fe49d753b0ddb8c017b82bd5441527ae861d0197d871c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1195605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c64c90f8e5e771832f6d26fdda4f4df4417c645b20af4720901be4a67c994ff`

```dockerfile
```

-	Layers:
	-	`sha256:bc5d6537653d8e71e36aa909301bd953538ce526bf2bd86f18d06139579509cf`  
		Last Modified: Thu, 05 Nov 2026 21:35:51 GMT  
		Size: 1.2 MB (1178127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:340bc45e3043826335dc1a1b04ac5e3d82141e62fe692a6621d052ef1f0b93dc`  
		Last Modified: Thu, 05 Nov 2026 21:35:51 GMT  
		Size: 17.5 KB (17478 bytes)  
		MIME: application/vnd.in-toto+json
