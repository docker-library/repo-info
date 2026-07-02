## `clojure:temurin-26-lein-noble`

```console
$ docker pull clojure@sha256:e36cc27baef44d9d6acdc66060ffb1f994c2f00b01cbf5c177fc7ffd19dfa3ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-26-lein-noble` - linux; amd64

```console
$ docker pull clojure@sha256:c7c75156682f11477151fc5378db5cbe82d8735a68a5b8769a6e3ac5850e4887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 MB (163492354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71346da6bc0b9bb35d474ddc74894c5483c12f38af747a8c4de4031a466e6424`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:22:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:22:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:22:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:22:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:22:10 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 02 Jul 2026 02:22:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:22:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:22:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:22:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:22:26 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:56:07 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:07 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:13 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:15 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f6b764a2940c6203cd2f89999e99d216263603467d8a29e6a531c42520a4ec`  
		Last Modified: Thu, 02 Jul 2026 02:22:42 GMT  
		Size: 17.4 MB (17422728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef663fc4a7aa2a881624f12297b8c71e3acdde6e882de512e5802d5a5089060`  
		Last Modified: Thu, 02 Jul 2026 02:22:43 GMT  
		Size: 94.7 MB (94653600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86040719da9961268acd66b245ee81c4cd9492c93b761db405500120822b653`  
		Last Modified: Thu, 02 Jul 2026 02:22:41 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b58a3249b02fbdd4500088db1575ddc6a56e53d2958b7b89c5cc3ab2cc5983ce`  
		Last Modified: Thu, 02 Jul 2026 05:57:26 GMT  
		Size: 17.2 MB (17162283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8e4743d6b34d14e3fb53b4401fa172bb76589697d941c1146747321819b46c`  
		Last Modified: Thu, 02 Jul 2026 05:57:25 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61f8a3e0cb906f4b9565c9db09a852d3442a55a7b311b1611d155cb38944b30`  
		Last Modified: Thu, 02 Jul 2026 05:57:25 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:5eaff71614e224000bf5e6ac2c92f96c6e600fda89fa77d4c45fff6209f8afd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3370009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d72cd8d2f4b1083cdebee930e9b61aac83b9c6ea3f5ef2f93f55e72f3ee501`

```dockerfile
```

-	Layers:
	-	`sha256:9a4e12f2fc36d3174b656af33fc5af7b4779bbb8fb07dc14d675547b158b28fa`  
		Last Modified: Thu, 02 Jul 2026 05:57:25 GMT  
		Size: 3.4 MB (3352431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f05a863f06e3ad6bdb4c7d90f6037050572b3bad021c0e497463de407de9649d`  
		Last Modified: Thu, 02 Jul 2026 05:57:25 GMT  
		Size: 17.6 KB (17578 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6e12f23c3ff392ac8981a4bbd36b2bc9f82e4ac8cf8beb9b93d6e6fea022abd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.8 MB (162758287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10631d67b1401cbe55fb199e9def1ce89ce3c6af08f90b88f61d5e214d77068`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:21:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:19 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 02 Jul 2026 02:21:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:21:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:21:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:21:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:21:39 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:56:45 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:45 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:51 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b0eb9cda250b008ed6816b417bfb5c1a76c89272e6546e389dc92401422ab8`  
		Last Modified: Thu, 02 Jul 2026 02:21:57 GMT  
		Size: 18.6 MB (18610163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81620df864e1702bfc8947f525f2cc80327bec9127580ce33a39237229e6dc51`  
		Last Modified: Thu, 02 Jul 2026 02:21:59 GMT  
		Size: 93.6 MB (93630109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158216cfda66f945d11001d0b78d4cf57b1c85c73ecf117bbc7d3dee7fb1c20b`  
		Last Modified: Thu, 02 Jul 2026 02:21:56 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4981ec32ac0aefcf52ed78a4510c345b2687bb77edd77e2ceb3a584d7affd69`  
		Last Modified: Thu, 02 Jul 2026 05:58:04 GMT  
		Size: 17.1 MB (17115700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a995b878ec8de136c26b20c2eecbb7b09044d0143e625733b933fffb1cd71e2`  
		Last Modified: Thu, 02 Jul 2026 05:58:04 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eeddbb335f36a9d25dfdb2542e35ae674c2e3277dd47856ec24163b50e53c2b`  
		Last Modified: Thu, 02 Jul 2026 05:58:03 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:79536b2d6b8f530fc7b3c550a2263b9de9eb0995c9c8080aec9bc423f9f75777
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3501579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e6e527945a6dc2d7fbfa8793d7252587cc6328d27b1001c45697f9e8f7bb50`

```dockerfile
```

-	Layers:
	-	`sha256:cf4e5508485809745cf42bc9fb8fb8030d4d9ef4a2ba1d63b975136e8d07f444`  
		Last Modified: Thu, 02 Jul 2026 05:58:04 GMT  
		Size: 3.5 MB (3483906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee462ca69155d38edb1fa10129f0995afc823fc7af633f72374b2524a7dff203`  
		Last Modified: Thu, 02 Jul 2026 05:58:03 GMT  
		Size: 17.7 KB (17673 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:44cf58cd4aa7c966ceaa1753be2206bc721294c1ff65d77e73509a18284469cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167495512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f646d88d220e845b8e86c94d5889a791062282a5e072d7281f65a4f6679eddc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:24:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:24:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:24:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:24:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:24:45 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 02 Jul 2026 02:30:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:30:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:30:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:04 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 07:48:41 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:48:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:48:41 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:51:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:51:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:51:40 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:51:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:51:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:51:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:51:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c755dc0adea6ed7f07fb8e151a3b22daae0226d216e2d3acafd7e62d65fb5cb`  
		Last Modified: Thu, 02 Jul 2026 02:26:02 GMT  
		Size: 17.3 MB (17287960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7264479afe7111d5c77236e51599f4ce6b66a3dc2bc9c019d61cd86509ee3e99`  
		Last Modified: Thu, 02 Jul 2026 02:30:43 GMT  
		Size: 94.0 MB (94029198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01183894db66da5528cd0de818b61cb7e2d1ec2e474b3c6e9736bd72699b29be`  
		Last Modified: Thu, 02 Jul 2026 02:30:40 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abacb092e34c1adb5fb1d48effc445440e83c053599ec7a00781060218e4f6e`  
		Last Modified: Thu, 02 Jul 2026 07:52:04 GMT  
		Size: 17.3 MB (17346727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfac460127a21f7c408be39491294bcb64a7d32e213d88e9795bd9754429289`  
		Last Modified: Thu, 02 Jul 2026 07:52:04 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb0675cb8556d45db057d509f651945875ca91859a1a1ef95779829a492d7d9`  
		Last Modified: Thu, 02 Jul 2026 07:52:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:7be1a80882fc6d86931e3a2f0c4353b5db115d87a44b758e8858cae7057bf38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3401580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ca6928a79bad475077ee9d7eb7676b840f0793f96d501af45a4181c41e0611`

```dockerfile
```

-	Layers:
	-	`sha256:ba06067ced785964bda2f55db296dc4f797f2422e49f8a2a1e75f7c378fc052c`  
		Last Modified: Thu, 02 Jul 2026 07:52:04 GMT  
		Size: 3.4 MB (3383968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10230b1b6148d1463d69192dbb23ba77d1b607a25b0b338c9db91cd034ceb39f`  
		Last Modified: Thu, 02 Jul 2026 07:52:03 GMT  
		Size: 17.6 KB (17612 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-noble` - linux; s390x

```console
$ docker pull clojure@sha256:58b9fcd2ddff6714b585a40ad6c2b2bfb2b80d103420c845dff865c303cfe485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.8 MB (158771611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bcdfa448dc623b1bf52d87bddba35d8cc19f3863c460070d505a0fd85a0b85`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:04 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:04 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:05 GMT
ADD file:2e6c463b4adb9218af4efdc52eb0c653c0b81b2e15486825eeeee9fbbf21b4c7 in / 
# Mon, 22 Jun 2026 21:24:05 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:16:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:16:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:16:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:16:05 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:16:05 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 02 Jul 2026 02:16:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:16:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:16:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:16:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:16:18 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:59:45 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:59:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:59:45 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:00:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:00:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:00:46 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:00:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 06:00:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 06:00:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 06:00:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:017bf1549f7106f258688738600d68c2eebf2c29476ebfe929e2762f93f82609`  
		Last Modified: Tue, 23 Jun 2026 01:35:07 GMT  
		Size: 29.9 MB (29941314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6aaf44617d03263fdc67a2152b9499b8b6b374a8d48fc823a09ac2249004cf`  
		Last Modified: Thu, 02 Jul 2026 02:16:40 GMT  
		Size: 16.3 MB (16265685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68bb7de606a57148b54bd4ad79e558e01fdc97f01d022051e5568173c6ebd87`  
		Last Modified: Thu, 02 Jul 2026 02:16:41 GMT  
		Size: 90.7 MB (90665342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731b0a046e279b82c62e0c0fc5bff8bf6d2ae39b15fbb6b0a7f8d5bf713df056`  
		Last Modified: Thu, 02 Jul 2026 02:16:40 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afa34b8e24d3cb54207bd6eb25c3f43f4530e1f903ca41ed55254ca85b56f03`  
		Last Modified: Thu, 02 Jul 2026 06:01:02 GMT  
		Size: 17.4 MB (17381158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1a10e841bfb9c0badb3e89d38a006fa7468a24db0fd27cd75ec6b9d0da9cdd`  
		Last Modified: Thu, 02 Jul 2026 06:01:03 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f3137da0813531a1981457827ad620f566b44c7ac467850bc6164224da10dae`  
		Last Modified: Thu, 02 Jul 2026 06:01:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:eaa132f49c1826a63b239c167c55f09ca43f0c936b2fc56cea7ad8e7b7be81d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3301025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b651bba58aaa6a73684482279ad858f1c42f2c0e7e5dc3d8b45863cbf8fc0a`

```dockerfile
```

-	Layers:
	-	`sha256:17b57fba1a23e884e8171099518c211279f7b7db0919fb49d7e574626629c2b4`  
		Last Modified: Thu, 02 Jul 2026 06:01:02 GMT  
		Size: 3.3 MB (3283447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a765914f8a2ca660e64405efa9f755517e149fbacde43289e69f445926f6adf7`  
		Last Modified: Thu, 02 Jul 2026 06:01:02 GMT  
		Size: 17.6 KB (17578 bytes)  
		MIME: application/vnd.in-toto+json
