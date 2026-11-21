## `clojure:temurin-17-lein-2.13.0-noble`

```console
$ docker pull clojure@sha256:e5782a3bdfd664cbb8e5b6adc6899e5d252dfc39ae5f9db0a84a57f395c83a13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-noble` - linux; amd64

```console
$ docker pull clojure@sha256:47c030b3fead5a903eae8a3d0b34d6986933f8d9aded83ad587d312dc629b7e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.2 MB (224238274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c37981662b8113e988ace85bb504fb0a4a34bdf1b68fc62da9544dc8708d94b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:42:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:42:42 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='f953d9c38eea3906c04e44bc434c34a503275b19be2c2b2a61939522828ba64e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:42:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:42:49 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 18:07:59 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:07:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:07:59 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:09:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:09:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:09:09 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:09:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:09:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:09:11 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:09:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd0f3c93e1a6d7d3ffc74e89cc1c6da0056baf3a5c1db7787c10875742ae859a`  
		Last Modified: Fri, 20 Nov 2026 17:43:05 GMT  
		Size: 29.1 MB (29055411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44b9b69ea04efa0e3b419fe7fec3f0d37ce85ef6c30fbf93b226c0df5adf48e`  
		Last Modified: Fri, 20 Nov 2026 17:43:07 GMT  
		Size: 146.1 MB (146120465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85bbab1917ca1d4c7aeecb3b23c3e7b640de9ce15c6467c8662abc39c1f45c0`  
		Last Modified: Fri, 20 Nov 2026 17:43:03 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ad711f0c46217a69713184c869a036e7e77f3bdab040ee041d6df87521c74f`  
		Last Modified: Fri, 20 Nov 2026 17:43:04 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d9e44d1499e36e320d5bcdbb7dd4fc33404930576b544af38168b5ed8d0e81`  
		Last Modified: Fri, 20 Nov 2026 18:09:21 GMT  
		Size: 14.8 MB (14750328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed45e695baa656e906b758617795fd322b128390d4f8ea06fe9ed66edc35ea8`  
		Last Modified: Fri, 20 Nov 2026 18:09:21 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40fe90674ab94b875274ef254ffd765b821df7efcc53a1a12cfea1c9dffd110f`  
		Last Modified: Fri, 20 Nov 2026 18:09:21 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:23e5d333b471b17e618d0e7c97f9cc86fb3fef10dfe532b5e24e0ed150a742ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3508051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f43bbcd59994573b72232f5cee4d1ed7eac81ffc0f573fbabd6f87199e214ea4`

```dockerfile
```

-	Layers:
	-	`sha256:37858d0cb62622c87a53aab8f260d8d01022e13f9e9cf49629ee5438e078d714`  
		Last Modified: Fri, 20 Nov 2026 18:09:21 GMT  
		Size: 3.5 MB (3489807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46e871ce64a063b173dc21f535d89e82679fa54fd1f220f1e3eafd78b0532150`  
		Last Modified: Fri, 20 Nov 2026 18:09:21 GMT  
		Size: 18.2 KB (18244 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bdbbe7903ae884c17387920e5373c93dc5b122f4bc8e427053b66733e6c103ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.2 MB (223238837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaeb03aadb2a39c43b291099c9d57c51e469c79a7081a39fe3a4fc622cc08c8e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:48 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Fri, 20 Nov 2026 03:16:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='7f7aa599ab9d0a594c70e82c7c67fc97b6eb28750d0843a4db8e6fa41252fbe5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='5c74fd8f5440098c8f44e54cad428b3915ffd3f2d1ec7967ac78bc6411c4380b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:16:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:16:58 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:40:30 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 04:40:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 04:40:30 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 04:41:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 04:41:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 04:41:58 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 04:42:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 04:42:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 04:42:00 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 04:42:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9584c16fe03285eccf040c21f71a4afa3802b441fac2f53553fe6a869016978f`  
		Last Modified: Fri, 20 Nov 2026 03:17:15 GMT  
		Size: 30.0 MB (30024294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1f54d04f7814ce8974a6633dde1b7f3e0b43624b9134250452be3afe36c6fc`  
		Last Modified: Fri, 20 Nov 2026 03:17:18 GMT  
		Size: 145.0 MB (144967957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87ffc0f513547523372db658e013f44415273821df2b01737433a247b1e7b5`  
		Last Modified: Fri, 20 Nov 2026 03:17:14 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5292be851f295f5092cbbf59f9b7015137cd8e9f6f7e4a0dd7498c279c002be4`  
		Last Modified: Fri, 20 Nov 2026 03:17:03 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377ce2293fa8751759918ffbc2fc0f2bc948b6b30cdd166b8748f0231a4a7349`  
		Last Modified: Fri, 20 Nov 2026 04:42:11 GMT  
		Size: 14.8 MB (14762500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e942dfd50fe426524ca32570df670506355cf56e837202284ee1e5ebadc5d7d`  
		Last Modified: Fri, 20 Nov 2026 04:42:10 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1590513e4f1bfb32afeb72c4527b930eb2df60b04303009bf4f27f543260d22b`  
		Last Modified: Fri, 20 Nov 2026 04:42:10 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:1637a9d7b0905d2a84a71543bf0b55a17043f79c162c4f02576d0cf61ce9e192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e2d6aa367d93d04cb70c141ec9f6e32d35bd8867a6e49c7f661eda49c1c8df`

```dockerfile
```

-	Layers:
	-	`sha256:55ae3dd7dbba59348d443490af0a2d55131fd3bd5b1b800b062fb3dc281af8b5`  
		Last Modified: Fri, 20 Nov 2026 04:42:10 GMT  
		Size: 3.6 MB (3621316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b44cd5066af0882207287d167f0d43cedfe46bf3965245e8f7e675ab0263981b`  
		Last Modified: Fri, 20 Nov 2026 04:42:10 GMT  
		Size: 18.4 KB (18359 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:e9cc57d7c40c836c6d23cc96a9a266e09f15d080ea4d75f7626fe2426ec4f96e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229565679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8763d72f2e06dfb5e0826ae098426f34e519fd0e6db4272af364e158abbe8618`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:25:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:25:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:25:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:35 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:46:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='f953d9c38eea3906c04e44bc434c34a503275b19be2c2b2a61939522828ba64e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:46:14 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:46:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:46:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:46:15 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 19:18:08 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:18:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:18:08 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:20:50 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:20:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:20:50 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:20:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:20:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:20:55 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:20:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5e05b6669dd60f963df995e3dc76ab61a0333c611daedbab6ff1f1498363ed`  
		Last Modified: Fri, 20 Nov 2026 03:26:39 GMT  
		Size: 30.9 MB (30944154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18366441f91bd13905131c7766a1dc0617d78dcfcd30145c123069675b3b7bbb`  
		Last Modified: Fri, 20 Nov 2026 17:46:59 GMT  
		Size: 144.9 MB (144900776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6219ecafbe76bbcafde20e4c78e676b3d9b0c00384aa90062eeeea68e23719d3`  
		Last Modified: Fri, 20 Nov 2026 17:46:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407e9148bc46c0bf4e3af64eaa37cc4727880e7f5a69c6cdb36358a51b4706f3`  
		Last Modified: Fri, 20 Nov 2026 17:46:55 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:267fdba665219abb6707721f178d6c53afa9d0e8d46b762ef491da9804ebeaad`  
		Last Modified: Fri, 20 Nov 2026 19:21:16 GMT  
		Size: 14.8 MB (14795749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d92ac542530f548e5d2c48adcd3f5382d9c4f6199ae1944d02f9bee414b287`  
		Last Modified: Fri, 20 Nov 2026 19:21:16 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b167825a4dbefaf5c381dae136d071a53a20ebb3f018449180085f337e82ac`  
		Last Modified: Fri, 20 Nov 2026 19:21:15 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:3c32e317949e9b871741266c887ea1abdbc64bfdfe12653fd1d9a6a80e1b371d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3554591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6785ebc0e0f081ce020bd0cf5c81aa342b8cb73ec19633209d89df4fdd05e1df`

```dockerfile
```

-	Layers:
	-	`sha256:203f392b42ecbf2d348fa54eaa05123bece5e523d3cc15d02295d026259bc5e2`  
		Last Modified: Fri, 20 Nov 2026 19:21:15 GMT  
		Size: 3.5 MB (3536301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc40b561c5305e842724433fcd6b5be09374b0f3ca8e2a8ca54a8b8d10ce7def`  
		Last Modified: Fri, 20 Nov 2026 19:21:15 GMT  
		Size: 18.3 KB (18290 bytes)  
		MIME: application/vnd.in-toto+json
