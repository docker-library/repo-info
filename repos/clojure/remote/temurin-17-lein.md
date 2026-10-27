## `clojure:temurin-17-lein`

```console
$ docker pull clojure@sha256:13f025548d191e7716c0096fcde439aeab86cab0e450e460480e9cfad90027cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein` - linux; amd64

```console
$ docker pull clojure@sha256:8ca51bddf090473222370f81a30a4c4d177bc367374a6aed39d5ecf7fdd93a5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217823781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dbbe70f6a151b8f22fe88069d00f0c12c8b367a1ff9fd4b53278106155cf0a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:12:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:12:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:12:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:12:25 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:12:25 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Mon, 26 Oct 2026 23:12:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='7da90f773d5188a8ce6dc99d9ee110fc86a3da3a1a1c9c4cbe8bdf94f1a09e73';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:12:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:12:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:12:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:12:32 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 00:48:15 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:48:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:48:15 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:21 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:49:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:49:21 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:49:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:49:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d3ce6a2feadf33addd023e6c57acb9699538e6d33d2d393fd78ed89c331429`  
		Last Modified: Mon, 26 Oct 2026 23:12:47 GMT  
		Size: 23.0 MB (22952916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c68f4eb25000bf19282797ff22d90e06a051fbae4af433e0c80f306a1976b5`  
		Last Modified: Mon, 26 Oct 2026 23:12:50 GMT  
		Size: 145.8 MB (145833558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1715e5ef0e419fe0814c1e1b70873a9d86f0ec6310d03537d8d86da7697c8a8d`  
		Last Modified: Mon, 26 Oct 2026 23:12:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8671e15ced09a63f2a47f2b370051850e7baa97cc32e1959278cea5a15159d7`  
		Last Modified: Mon, 26 Oct 2026 23:12:46 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4784447aa764cc9c481327ccf89816d49b09a58035333134e1458372e23ba2`  
		Last Modified: Tue, 27 Oct 2026 00:49:34 GMT  
		Size: 14.8 MB (14751442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5c5825bb0f671102154fef4d681f72e21e8f7c899327d72e959a354105ba25`  
		Last Modified: Tue, 27 Oct 2026 00:49:33 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f140fc439aa382c5c031d5fb2131159c548054f5534b878db789f60df0e8f3`  
		Last Modified: Tue, 27 Oct 2026 00:49:33 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:928f384024659ee9d7c885c11cdf94751665cb81073a399a4d4134c03e0e09c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3507439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb9701d4f248cdce8acdba8ab6e13675bf434b1da6c96b7de65e69a432ed138`

```dockerfile
```

-	Layers:
	-	`sha256:e862e445492ddaaf596681a48825e9a752c0d66e1ead458cb7bb4590751b26fc`  
		Last Modified: Tue, 27 Oct 2026 00:49:33 GMT  
		Size: 3.5 MB (3489195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f6fbda8155c9d8f27a8ee5a8a3449434e10a0a61f1aeccfbdc286f83ccbf27d`  
		Last Modified: Tue, 27 Oct 2026 00:49:33 GMT  
		Size: 18.2 KB (18244 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cb64a47bc6ab5ad16d58232639b8b3993cc3f0605375bebfe8619f6a193f75ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.0 MB (217029645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4762c1df37a2784df6bd4c028bfc32c300e9a49cd7b845bd86abcc46a0a9e760`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:16:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:16:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:16:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:16:59 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:16:59 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Mon, 26 Oct 2026 23:17:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='7da90f773d5188a8ce6dc99d9ee110fc86a3da3a1a1c9c4cbe8bdf94f1a09e73';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:17:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:17:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:17:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:17:07 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 00:48:10 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:48:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:48:10 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:49:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:49:18 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:49:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:49:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a93c70e24076a67cf03204b030637edf24fe5caedf144ee0f5129884f24b78`  
		Last Modified: Mon, 26 Oct 2026 23:17:25 GMT  
		Size: 24.2 MB (24152052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc5819d967dd919ea01c5ad263b964b60e499909b1962a88718cd4133c4dd293`  
		Last Modified: Mon, 26 Oct 2026 23:17:27 GMT  
		Size: 144.7 MB (144656917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae75b38c1cf40e5dc06e63455f27d27c8717a28c80e58df3dc904f3d85633a3b`  
		Last Modified: Mon, 26 Oct 2026 23:17:23 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a84deaa487d7643dc3c97d9514cc6abf7bdb65f0dade879f411a8568efa2c36`  
		Last Modified: Mon, 26 Oct 2026 23:17:23 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b458f5dca08e9d860cdda62b730ace2be462f3107eec4ba43f207451a2d67d`  
		Last Modified: Tue, 27 Oct 2026 00:49:30 GMT  
		Size: 14.8 MB (14762283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d241e26275d131e8ea42acd794983e15f3c3ad9500ec016d4858ee4e6aaa87`  
		Last Modified: Tue, 27 Oct 2026 00:49:29 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ebcd0f2ce5327ebbe41719394d236eb204020b5f651ba2b6f9211074283ce39`  
		Last Modified: Tue, 27 Oct 2026 00:49:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:98f3e1a0bc0c6d2730ffa71fc97855f74a05a2dd3be8e165e65ea7ed7db8c26e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba54dc859168ef72b0a05eb63dfb4df105e91e83935a71d86895d8b70b9179cc`

```dockerfile
```

-	Layers:
	-	`sha256:07f03a6545a70dc2856f501aa6021b83d35c2828dca923c1838acc493bc4eb0d`  
		Last Modified: Tue, 27 Oct 2026 00:49:29 GMT  
		Size: 3.6 MB (3620712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe188f1950eff08bf34b8abdea79a42660134c52a3ebff749d404015d98a1589`  
		Last Modified: Tue, 27 Oct 2026 00:49:29 GMT  
		Size: 18.4 KB (18363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:03d10b3eaa73e266ce04dcb9d0bb2a14fd4e6ca300a8ed79ad6f9e7996b29d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223451980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e7db4b0d74fb9848be32816bac0c954ddb1b59dd0e1ac39f0ba517ec7d302d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:26:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:26:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:26:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:26:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:26:52 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:27:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='7da90f773d5188a8ce6dc99d9ee110fc86a3da3a1a1c9c4cbe8bdf94f1a09e73';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:27:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:27:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:27:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 00:27:08 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 05:39:29 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 05:39:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 05:39:29 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:42:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 05:42:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 05:42:12 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 05:42:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 05:42:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 05:42:26 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 05:42:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f1756011acdb06b8d2991eb7c67214cc1050b9ad8a4caad5097db0edbf4e83`  
		Last Modified: Sat, 17 Oct 2026 00:28:06 GMT  
		Size: 24.1 MB (24077051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2efcd93b73e5475eed2983d7f7d98ac036068b05063c1b7b08f49ac95babd761`  
		Last Modified: Sat, 17 Oct 2026 00:28:08 GMT  
		Size: 145.7 MB (145683044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278ba82c9715d39f2435291d76e96a0eeac2e3c1ed25236436d2710be8edc42f`  
		Last Modified: Sat, 17 Oct 2026 00:28:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f704fadbb59f87e458d4f12cb7fc9e25ad099549820679861c45bb87098b4c78`  
		Last Modified: Sat, 17 Oct 2026 00:28:04 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e109caf9eeacf6394d70941cbc4ba16f4c34bf960c7ff5c08fc90998232dd7`  
		Last Modified: Sat, 17 Oct 2026 05:42:46 GMT  
		Size: 14.8 MB (14795620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bec0152d916537509259dd7727e0e63fb8c30bdc659e6613ffaf364f3ebbda`  
		Last Modified: Sat, 17 Oct 2026 05:42:46 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8aea19219b260fa5a39a8ff69f663a5431831a2b3c7df9cea717875693dd481`  
		Last Modified: Sat, 17 Oct 2026 05:42:46 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:a524c346202be1c8fdd6bfe6230c6a79084b3268ecb40cedb797e71f9428f857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3555857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ef85b8e6e92ec945673938161be4f7e92e2f26dab81f2e2e3d68e73b7deaf6`

```dockerfile
```

-	Layers:
	-	`sha256:a0f5211e30743b084d2ca5124a1698a1cca6613febcc6bc851d6c31afe71955c`  
		Last Modified: Sat, 17 Oct 2026 05:42:46 GMT  
		Size: 3.5 MB (3537567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27b45f5efd0788274a4753ec77faebfc1371f0db70b9ec4f90eb5a5d42050469`  
		Last Modified: Sat, 17 Oct 2026 05:42:46 GMT  
		Size: 18.3 KB (18290 bytes)  
		MIME: application/vnd.in-toto+json
