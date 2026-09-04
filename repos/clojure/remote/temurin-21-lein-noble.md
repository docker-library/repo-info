## `clojure:temurin-21-lein-noble`

```console
$ docker pull clojure@sha256:2efd5c77efe24dcc24625faab2ccdf36ddb89a7ec4da60abff45ef2ff82557de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-noble` - linux; amd64

```console
$ docker pull clojure@sha256:f4d8ba653d3aa5cedfcb090137858fa680fb38d1dfbdf7b1cddee20dd90211da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.1 MB (230073357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f29f5b05fa5e72e503124effc58415c7a9b3319f438725f9779af86c40e7a5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:25:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:25:07 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:25:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='86f836b5a94b3354f236b72339d04418fea178c41624637dd94e510f6597c372';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:25:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:25:15 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:16:50 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:16:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:16:50 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:17:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:17:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:17:53 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:17:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:17:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:17:54 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:17:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b31ee5335cc859ac582c9a4043918fba00087e7d800909381874b459878f52c`  
		Last Modified: Fri, 21 Aug 2026 18:25:32 GMT  
		Size: 22.9 MB (22928456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887642163ab8a5862b92cfba1d05411fc8810a79d6de0edfdbada79d635e2b8f`  
		Last Modified: Fri, 21 Aug 2026 18:25:35 GMT  
		Size: 158.1 MB (158123337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b7756512f94eac42020a2d9ae9b3479831acd498e854b5d78a439f5408bb3a`  
		Last Modified: Fri, 21 Aug 2026 18:25:31 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6611c962e4e868c8389afb820aefdb6b9762a3732109b8c7bb8f08b38e3689c2`  
		Last Modified: Fri, 21 Aug 2026 18:25:29 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed82eecb41f3db97d5067bb8a34ef5a71341586e7f6c72983c89e6b9b6ee7b8d`  
		Last Modified: Fri, 21 Aug 2026 19:18:07 GMT  
		Size: 14.8 MB (14750526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7353463cc7c5d0b6efa968cf48ffc41a84985d3ec71a8738cb9cb82b968e777`  
		Last Modified: Fri, 21 Aug 2026 19:18:06 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b86a3d3d6c13f431b51b37ea28ffbc21ffdbf78e72da2ad52a7449e6488e5676`  
		Last Modified: Fri, 21 Aug 2026 19:18:06 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:3a684ae653900b0e3bbaadac1f610cbf32b74f4b8f359240c9402cd73c18b90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3508581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9c3c10068dde0441451dac0f55fafaf7551d58456963cfbd0ee18725f70fde`

```dockerfile
```

-	Layers:
	-	`sha256:12528b5c01c1a611e6e12039cde15dae5759735898a0698d0ffd84061f5191e3`  
		Last Modified: Fri, 21 Aug 2026 19:18:06 GMT  
		Size: 3.5 MB (3490991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20e43d64981b3560cb80ab2b275ba52767890c5060bdd5ad64f18171343da450`  
		Last Modified: Fri, 21 Aug 2026 19:18:06 GMT  
		Size: 17.6 KB (17590 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9a293c20177d1ace3548534c4a0ccc5659f68ade1af0c0a4ae7ff5f92eb780d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228690882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4367f25606243e1238d6b3ed3823bf947f3ea4cfc8eed14fbe00bd5e111bfba7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:28:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:28:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:28:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:28:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:28:01 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:28:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='86f836b5a94b3354f236b72339d04418fea178c41624637dd94e510f6597c372';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:28:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:28:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:28:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:28:09 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:05:47 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:05:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:05:47 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:06:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:06:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:06:51 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:06:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:06:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:06:53 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:06:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de6538333c2917d70d4ec085a3ae25b26b2a473d13be57c8d3cc871182a9806`  
		Last Modified: Fri, 21 Aug 2026 18:28:27 GMT  
		Size: 24.1 MB (24126629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366b33a38175f328e181fb5fe5dae3a8757635da96078e0cb6ff1beea31a44f4`  
		Last Modified: Fri, 21 Aug 2026 18:28:30 GMT  
		Size: 156.4 MB (156406092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d91ab1342beb25c739ef077515486750e3ae53a3997d34fd57ab743f342a0f`  
		Last Modified: Fri, 21 Aug 2026 18:28:26 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b4bf93739159a3ffca13e0302c260b63a881af0977e60cc37a7b402ff19dad`  
		Last Modified: Fri, 21 Aug 2026 18:28:22 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e131d2d0e1e88ce7546cdb38cc894fb7d286a7e0cb9cff4197e098a42dd3afe9`  
		Last Modified: Fri, 21 Aug 2026 19:07:05 GMT  
		Size: 14.8 MB (14752676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956721c8c32c1dfb26bd7edfee77c64911f9678d31c4eccc7d8fd950f3145f64`  
		Last Modified: Fri, 21 Aug 2026 19:07:05 GMT  
		Size: 4.5 MB (4515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c399ca042068303944d88ee494e4b3c8927b77a35735938170e9b1651914e539`  
		Last Modified: Fri, 21 Aug 2026 19:07:05 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:3f9b9e6cafa2531cd1f15c2dd0a4afe602a1a78ba4ed9126d09ec49fc15a340a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0406c65a0d7800c84b531082cdf5a035be9f5e0a130b2bc82817c8bece4fefe7`

```dockerfile
```

-	Layers:
	-	`sha256:d73e6ab3b8c05221699aa704ac0fa3c82645b2e36db91ffa492e18d6e8d9a6a2`  
		Last Modified: Fri, 21 Aug 2026 19:07:05 GMT  
		Size: 3.6 MB (3622484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:450cdbdac834d2e5a9b27212425cb48271c45e94ad7889621d91f165332c7ad2`  
		Last Modified: Fri, 21 Aug 2026 19:07:05 GMT  
		Size: 17.7 KB (17685 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:c8cd43724be6165292e9e071af137408f230c6d479ec32370e799bbd8955fe8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.0 MB (235963759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a22eb0d8ad03457f5efcd9d53eebc7f673227505cc592aa11503f86dfa3e21b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 21:12:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 21:12:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:12:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 21:12:30 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:12:30 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 20:39:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='86f836b5a94b3354f236b72339d04418fea178c41624637dd94e510f6597c372';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:39:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:39:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:39:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:39:03 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 22:48:31 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 22:48:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 22:48:31 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 22:50:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 22:50:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 22:50:41 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 22:50:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 22:50:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 22:50:52 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 22:50:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d041d9a94fe02e49038880c229adf9a014464e2a8195cc8fb9e356ab07059a63`  
		Last Modified: Wed, 19 Aug 2026 21:13:15 GMT  
		Size: 24.1 MB (24051334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ce91fab476c94c980b81fd7844a809b4deee068316fc0015e170c4a3dd01ef`  
		Last Modified: Fri, 21 Aug 2026 20:39:40 GMT  
		Size: 158.3 MB (158287653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d74395c0ebb824e207abf77eab3ee2b7c1e725aa69ccd01fcf7aca0603e6189`  
		Last Modified: Fri, 21 Aug 2026 20:39:36 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c67dfceb560b4c929101b2522d8df413d77592079f4f51a93b5b53735549aa`  
		Last Modified: Fri, 21 Aug 2026 20:39:36 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2170813940be335b4c0836286c2af1e1a2b59bb189d6377b2ff3636be6c2fd2`  
		Last Modified: Fri, 21 Aug 2026 22:51:13 GMT  
		Size: 14.8 MB (14795326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e89ba352541af6abf53fc557aab93378697bbbaeb91a0d65710baf5b02b5d00b`  
		Last Modified: Fri, 21 Aug 2026 22:51:13 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b68d0732fb6c75a5b41497c20dd5cb6ce8f003604bc07c25d1cfef40afba5fd`  
		Last Modified: Fri, 21 Aug 2026 22:51:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:f9f6afd184ab2f431cb003396c24dba25ba4ee61b551b43b2b4b3511b808bfed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3556342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12d0185b61f35e98461134f259f4e8fd9a17c6b5248f50fc533f3404d28f0b75`

```dockerfile
```

-	Layers:
	-	`sha256:cfcc5f7a9c04ae2beff55314121b98dd9caeafdb9246d08f2bf9a9b675abac44`  
		Last Modified: Fri, 21 Aug 2026 22:51:13 GMT  
		Size: 3.5 MB (3538719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b5dcfeaae45a0475fe8bf53bb8407ad308c7ac9d6caffac0840b61495adb504`  
		Last Modified: Fri, 21 Aug 2026 22:51:12 GMT  
		Size: 17.6 KB (17623 bytes)  
		MIME: application/vnd.in-toto+json
