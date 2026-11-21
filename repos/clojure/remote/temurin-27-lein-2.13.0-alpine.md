## `clojure:temurin-27-lein-2.13.0-alpine`

```console
$ docker pull clojure@sha256:fb51da2c6158585eb381165b82a70a9078c29b83063838817fe81fd6a8a0645e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:a8b88c41591910a1ad837fe2433100bc8cac8c1c88bbb13776327b3e168e6aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.7 MB (136668452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:264b8f856aef843bee6846b5283954abd08381a77434272e1592575eb6149d60`
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
# Fri, 20 Nov 2026 18:11:18 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:11:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:11:18 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:11:57 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:11:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:11:57 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:11:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:11:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:11:59 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:11:59 GMT
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
	-	`sha256:e75e901bcc351712c80bbde66df79afbe049fd4c7613e36018fac00c3445b634`  
		Last Modified: Fri, 20 Nov 2026 18:12:09 GMT  
		Size: 18.5 MB (18506637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f322e89acbcbb6d6351198c0188c4db19c4ef362901a3e4ef0e898a7aaf9e060`  
		Last Modified: Fri, 20 Nov 2026 18:12:08 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f441d6e1d0f22e267617505d4e9cc253708b669956a7d668c76e3829e0bd90`  
		Last Modified: Fri, 20 Nov 2026 18:12:08 GMT  
		Size: 905.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:a9231d3ea593a4402bc448ec4244a67e10bb97e5b7c6c102c5d308f9594c06ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1045593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec013fbb27db10b7406fc97f259881065dd9783c4981716038c8f9b7d1fbf0c1`

```dockerfile
```

-	Layers:
	-	`sha256:c7d4a75ed87365b37c93e75f1470646a0133211e9419257c96756b9736cd20ec`  
		Last Modified: Fri, 20 Nov 2026 18:12:08 GMT  
		Size: 1.0 MB (1028199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:788bd86e3477c742c9a8a8563c7b87531e3606580fe697a21b4d0befe46bcf9e`  
		Last Modified: Fri, 20 Nov 2026 18:12:08 GMT  
		Size: 17.4 KB (17394 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:38de7822bdef068f6838c19963cac3b6ce1b17aee10860d7c63efcaf389cc310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136321061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f639626dd65116c87f768f48ec2b69bc4cc570668432557af6d1db430e3970`
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
# Fri, 20 Nov 2026 17:57:55 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:57:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:57:55 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:58:36 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:58:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:58:36 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:58:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:58:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:58:38 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:58:38 GMT
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
	-	`sha256:c973f73d2ef67b57606e6937580ad7e014201a5d1fb19ae1863b358197daa468`  
		Last Modified: Fri, 20 Nov 2026 17:58:45 GMT  
		Size: 18.6 MB (18579634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c6e277fd9c034b872c6408782f641cd6bb90f253131b61941d9222e0f56eb3`  
		Last Modified: Fri, 20 Nov 2026 17:58:45 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613e395c128e8498b8943d254ee70be4aadf128ad38fad63a622fe568e7a7774`  
		Last Modified: Fri, 20 Nov 2026 17:58:45 GMT  
		Size: 907.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:e071e1ce76449588a04c613e7604040f2991e31d10138225c519f8563883a917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1195025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cfaa1c62c002569018e8cff319c28098868a79ff17881bb31f9f63bff13d23b`

```dockerfile
```

-	Layers:
	-	`sha256:8ab40592ad6c3e0fcc4034774ed4d29a20b25ec87437faff74593b5ac0e4679c`  
		Last Modified: Fri, 20 Nov 2026 17:58:45 GMT  
		Size: 1.2 MB (1177536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43be6dc236cccf659be1d2d1e076ca67f3b586bd15ea855f6a36a7df4869af7d`  
		Last Modified: Fri, 20 Nov 2026 17:58:45 GMT  
		Size: 17.5 KB (17489 bytes)  
		MIME: application/vnd.in-toto+json
