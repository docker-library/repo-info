## `clojure:temurin-27-lein-alpine`

```console
$ docker pull clojure@sha256:bdbd30aa46e0c4a283855fb9d2aee09f6d42b1602d947d9a4bc404b9b2a1a3c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-27-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:9372198aeeb9bcf299bd69fa61a949484ccb70e669a92bfdd0d2f3ab4b6792b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.7 MB (136668134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2e0557b90fd9fd5c18021e7916768947e8f90e18a414aa2540edb3c1fc51b74`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:44:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:44:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:44:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:44:08 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:44:08 GMT
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Fri, 20 Nov 2026 17:44:16 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='59acad2d59372019deed763257b4f0b3413399f964462bd64bbf4cf9af6e8367';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='5ac34cbeed56fba0456cf94d1d8df3568ab852e196f54abf5172257f3d167dda';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:44:17 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:44:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:44:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:44:18 GMT
CMD ["jshell"]
# Tue, 24 Nov 2026 00:02:42 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 00:02:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 00:02:42 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:03:13 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:03:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:03:13 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:03:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:03:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:03:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:03:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aeee3b8ca067410568810e0efbd16d57741a1f17966264e9adc3e79c65aa2ae`  
		Last Modified: Fri, 20 Nov 2026 17:44:32 GMT  
		Size: 16.8 MB (16849475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ec896341e6ca00079991cb3c425ac6747adf09907d6189f7d425b3625f4cba`  
		Last Modified: Fri, 20 Nov 2026 17:44:34 GMT  
		Size: 92.9 MB (92939945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958614ee38b02262baac252c06d075d9f638dfbc1ebe9535309dd9103094146e`  
		Last Modified: Fri, 20 Nov 2026 17:44:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b74833d7c5946623d50d72f9876bd97364829ba185c414134114ce0089bf007`  
		Last Modified: Fri, 20 Nov 2026 17:44:31 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0df82a1e9e7388aa80b56e3bbbee094e9c23bdb8c087902efe66f249faff7d3`  
		Last Modified: Tue, 24 Nov 2026 00:03:23 GMT  
		Size: 18.5 MB (18506333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53973c4ab22b4692a07c79694477a1feb8fbfcd975447d7b55f7052f076a6203`  
		Last Modified: Tue, 24 Nov 2026 00:03:22 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88cf70cb90ad0e82ce2eadb006bb6180129a1619b4acf7adc4b68c51bf45c0c2`  
		Last Modified: Tue, 24 Nov 2026 00:03:22 GMT  
		Size: 906.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:d91b331120178dbb9a3424bcd0d142ad17548ed08526cb7286c759a30a4d33f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1046188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7b84746ea84f403abfd97678749c15196bf8ab3b7d97c4e0cb438b63371710`

```dockerfile
```

-	Layers:
	-	`sha256:d1541bc68a55d2e2189ba42199d047baed67f880b7c5fd605531fcf2a0966e01`  
		Last Modified: Tue, 24 Nov 2026 00:03:22 GMT  
		Size: 1.0 MB (1028199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e6ee4f25d172ba9e3d301c3bf55498674b0208a07e129f449aee0d6b05c65e`  
		Last Modified: Tue, 24 Nov 2026 00:03:22 GMT  
		Size: 18.0 KB (17989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c9ff60c6f5f4e24a3f792d6801c929cbc9b201ff748a1904bea653e82d06f1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136320553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb68523c1d772adf3913f5bd0adc7226fbdf5b5bc128bcb72d3b24d458f210eb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:38 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:38 GMT
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Fri, 20 Nov 2026 17:43:49 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='59acad2d59372019deed763257b4f0b3413399f964462bd64bbf4cf9af6e8367';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jdk_aarch64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='5ac34cbeed56fba0456cf94d1d8df3568ab852e196f54abf5172257f3d167dda';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jdk_x64_alpine-linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:43:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:51 GMT
CMD ["jshell"]
# Tue, 24 Nov 2026 00:01:37 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 00:01:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 00:01:37 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:02:12 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:02:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:02:12 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:02:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:02:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:02:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:02:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2661c2cca2f3c5f8dee8d0a449607ae963a34a07b733cafc77d1f24028c99a7`  
		Last Modified: Fri, 20 Nov 2026 17:44:07 GMT  
		Size: 17.2 MB (17204320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091dbb946d3e6219876ab33c96d1de075e89c07107729acc0988974d07d97857`  
		Last Modified: Fri, 20 Nov 2026 17:44:08 GMT  
		Size: 91.8 MB (91827775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e8ab866c79b790d60c4e8ed14fa9e848a6d68032bf9332e1d71c0fdbac0062`  
		Last Modified: Fri, 20 Nov 2026 17:44:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db787ed6893691295d0621cc1eef284322e32579d35485522037222b0656ad6`  
		Last Modified: Fri, 20 Nov 2026 17:43:53 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf838748f5f543cd9670a516e4505459dab11b2e5e928ce7510cac747ed0862`  
		Last Modified: Tue, 24 Nov 2026 00:02:22 GMT  
		Size: 18.6 MB (18579127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f53d531bf610706fd44add6f8d6c23552e6c07a2a32f16d6e722896dc6d746`  
		Last Modified: Tue, 24 Nov 2026 00:02:22 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8375086c7adc908c4c9645a59f6f95885bd1302e71b4968cf352efd5b51e6384`  
		Last Modified: Tue, 24 Nov 2026 00:02:22 GMT  
		Size: 909.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:fde916eded1e28ff3eac2347e78c6e62b2f3b17efe32116e06eb233998085250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1195621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e04f80222e38c8f3001e40bfaa60fbdac0f6410ca36090c149c81276d6484c6`

```dockerfile
```

-	Layers:
	-	`sha256:0f9d9bdade48dfd69152643e6b454641a5e50039c6cf7f84198808f1e72ffaa0`  
		Last Modified: Tue, 24 Nov 2026 00:02:22 GMT  
		Size: 1.2 MB (1177536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00a736c8f11c4846c43c93bdd3c6abed2fad39cae319b7741bd96c1ef966ed86`  
		Last Modified: Tue, 24 Nov 2026 00:02:22 GMT  
		Size: 18.1 KB (18085 bytes)  
		MIME: application/vnd.in-toto+json
