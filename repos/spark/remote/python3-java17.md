## `spark:python3-java17`

```console
$ docker pull spark@sha256:528543ad12783cb28fbde1b4030703df47646f8f9f0c09eade5e7792a863c3a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `spark:python3-java17` - linux; amd64

```console
$ docker pull spark@sha256:64aab4885bbee99b82f485a8108fc7bc6528b36208c9c239b9d7532ad7a4789c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **790.1 MB (790111964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8841b108f367650378ba761872134143a8c4ca6b4a400044767d9bb8c67053`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:12:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:12:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:12:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:12:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:12:29 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Mon, 26 Oct 2026 23:12:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:12:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:12:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:12:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:12:36 GMT
CMD ["jshell"]
# Mon, 02 Nov 2026 23:52:56 GMT
ARG spark_uid=185
# Mon, 02 Nov 2026 23:52:56 GMT
# ARGS: spark_uid=185
RUN groupadd --system --gid=${spark_uid} spark &&     useradd --system --uid=${spark_uid} --gid=spark -d /nonexistent spark # buildkit
# Mon, 02 Nov 2026 23:53:05 GMT
# ARGS: spark_uid=185
RUN set -ex;     apt-get update;     apt-get install -y gnupg2 wget bash tini libc6 libpam-modules krb5-user libnss3 procps net-tools gosu libnss-wrapper libjemalloc2;     mkdir -p /opt/spark;     mkdir /opt/spark/python;     mkdir -p /opt/spark/examples;     mkdir -p /opt/spark/work-dir;     chmod g+w /opt/spark/work-dir;     touch /opt/spark/RELEASE;     chown -R spark:spark /opt/spark;     echo "auth required pam_wheel.so use_uid" >> /etc/pam.d/su;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 23:53:05 GMT
ENV SPARK_TGZ_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.2.1/spark-4.2.1-bin-hadoop3.tgz?action=download SPARK_TGZ_ASC_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.2.1/spark-4.2.1-bin-hadoop3.tgz.asc?action=download GPG_KEY=9442A2610B63B3F61860285F43F1222E5362CCF5
# Mon, 02 Nov 2026 23:53:16 GMT
# ARGS: spark_uid=185
RUN set -ex;     export SPARK_TMP="$(mktemp -d)";     cd $SPARK_TMP;     wget -nv -O spark.tgz "$SPARK_TGZ_URL";     wget -nv -O spark.tgz.asc "$SPARK_TGZ_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-key "$GPG_KEY" ||     gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY";     gpg --batch --verify spark.tgz.asc spark.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" spark.tgz.asc;         tar -xf spark.tgz --strip-components=1;     chown -R spark:spark .;     mv jars /opt/spark/;     mv RELEASE /opt/spark/;     mv bin /opt/spark/;     mv sbin /opt/spark/;     mv kubernetes/dockerfiles/spark/decom.sh /opt/;     mv examples /opt/spark/;     ln -s "$(basename /opt/spark/examples/jars/spark-examples_*.jar)" /opt/spark/examples/jars/spark-examples.jar;     mv kubernetes/tests /opt/spark/;     mv data /opt/spark/;     mv python/pyspark /opt/spark/python/pyspark/;     mv python/lib /opt/spark/python/lib/;     mv R /opt/spark/;     chmod a+x /opt/decom.sh;     cd ..;     rm -rf "$SPARK_TMP"; # buildkit
# Mon, 02 Nov 2026 23:53:16 GMT
COPY entrypoint.sh /opt/ # buildkit
# Mon, 02 Nov 2026 23:53:16 GMT
ENV SPARK_HOME=/opt/spark
# Mon, 02 Nov 2026 23:53:16 GMT
WORKDIR /opt/spark/work-dir
# Mon, 02 Nov 2026 23:53:16 GMT
USER spark
# Mon, 02 Nov 2026 23:53:16 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
# Tue, 03 Nov 2026 00:12:00 GMT
USER root
# Tue, 03 Nov 2026 00:12:00 GMT
RUN set -ex;     apt-get update;     apt-get install -y python3 python3-pip;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:12:00 GMT
USER spark
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083dbf3b854f192e3e0701d8ab46b598030bf6ea5f9df4a5e49beeda9ef274f8`  
		Last Modified: Mon, 26 Oct 2026 23:12:53 GMT  
		Size: 20.7 MB (20664281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f76974bc5a22426f85385960e1fd96e67737856d0d5ce90f30a8dc7cb7ed368`  
		Last Modified: Mon, 26 Oct 2026 23:12:55 GMT  
		Size: 145.8 MB (145833270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb85d4fba9212fca53d02dc21bf84d37675bc5e1d6559ebf85ab37020734d6fb`  
		Last Modified: Mon, 26 Oct 2026 23:12:52 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57102d5a437e4037edc12c4208e7d79724e965544c098e8c1c715f12205d9dbe`  
		Last Modified: Mon, 26 Oct 2026 23:12:52 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aaebe4dd9c03bafad810cbac02b724745567a9df3bd6df8634b57a8bfff0107`  
		Last Modified: Mon, 02 Nov 2026 23:53:44 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32fd2b52e86ba85a23fd271cc4bb3297254775e73d9a428687e386c67aa70ae0`  
		Last Modified: Mon, 02 Nov 2026 23:53:46 GMT  
		Size: 22.1 MB (22146632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9117217d52bafa7bee6ca7b1cddd8bae99a1f499702c1f1460bbf89db2ece1e`  
		Last Modified: Mon, 02 Nov 2026 23:53:53 GMT  
		Size: 457.7 MB (457679307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f81cda0b7e9a38596b0f7a6a8df6a70ca00c25e03e7f53326207513194125c`  
		Last Modified: Mon, 02 Nov 2026 23:53:45 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e8aae4ede8bd54e9e49596c762edd6c340debf7994aac33d3cc2ddac64ae04f`  
		Last Modified: Tue, 03 Nov 2026 00:12:34 GMT  
		Size: 114.0 MB (114029706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spark:python3-java17` - unknown; unknown

```console
$ docker pull spark@sha256:8bcde5ed5df25143b501d75d5323388a247268907b5ae6da1717f55b8b51daea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10429195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd6a973a82a601a3183064704edff0a1877def4a2286b2317325bb884a2b2c33`

```dockerfile
```

-	Layers:
	-	`sha256:196d941c6f8a6af1fc68ccdbc146916ed184b2876d1f7227a2f2f6ce5adb6dd7`  
		Last Modified: Tue, 03 Nov 2026 00:12:31 GMT  
		Size: 10.4 MB (10418204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:596f22daba211e34c9bed88c982b4e84c3fbd51df1dc45d82f1970d1cc7693ad`  
		Last Modified: Tue, 03 Nov 2026 00:12:31 GMT  
		Size: 11.0 KB (10991 bytes)  
		MIME: application/vnd.in-toto+json

### `spark:python3-java17` - linux; arm64 variant v8

```console
$ docker pull spark@sha256:4654c58144b66465b19eb709a7920aaee381ef9def74ba85e86725aae67f078d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **782.5 MB (782488680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a32af26540f89183a98a9fd9482c5676134daeecaf435bb8295e476ceee95e4`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:17:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:17:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:17:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:17:05 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:17:05 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Mon, 26 Oct 2026 23:17:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:17:14 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:17:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:17:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:17:14 GMT
CMD ["jshell"]
# Mon, 02 Nov 2026 23:52:27 GMT
ARG spark_uid=185
# Mon, 02 Nov 2026 23:52:27 GMT
# ARGS: spark_uid=185
RUN groupadd --system --gid=${spark_uid} spark &&     useradd --system --uid=${spark_uid} --gid=spark -d /nonexistent spark # buildkit
# Mon, 02 Nov 2026 23:52:37 GMT
# ARGS: spark_uid=185
RUN set -ex;     apt-get update;     apt-get install -y gnupg2 wget bash tini libc6 libpam-modules krb5-user libnss3 procps net-tools gosu libnss-wrapper libjemalloc2;     mkdir -p /opt/spark;     mkdir /opt/spark/python;     mkdir -p /opt/spark/examples;     mkdir -p /opt/spark/work-dir;     chmod g+w /opt/spark/work-dir;     touch /opt/spark/RELEASE;     chown -R spark:spark /opt/spark;     echo "auth required pam_wheel.so use_uid" >> /etc/pam.d/su;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 23:52:37 GMT
ENV SPARK_TGZ_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.2.1/spark-4.2.1-bin-hadoop3.tgz?action=download SPARK_TGZ_ASC_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.2.1/spark-4.2.1-bin-hadoop3.tgz.asc?action=download GPG_KEY=9442A2610B63B3F61860285F43F1222E5362CCF5
# Mon, 02 Nov 2026 23:52:49 GMT
# ARGS: spark_uid=185
RUN set -ex;     export SPARK_TMP="$(mktemp -d)";     cd $SPARK_TMP;     wget -nv -O spark.tgz "$SPARK_TGZ_URL";     wget -nv -O spark.tgz.asc "$SPARK_TGZ_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-key "$GPG_KEY" ||     gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY";     gpg --batch --verify spark.tgz.asc spark.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" spark.tgz.asc;         tar -xf spark.tgz --strip-components=1;     chown -R spark:spark .;     mv jars /opt/spark/;     mv RELEASE /opt/spark/;     mv bin /opt/spark/;     mv sbin /opt/spark/;     mv kubernetes/dockerfiles/spark/decom.sh /opt/;     mv examples /opt/spark/;     ln -s "$(basename /opt/spark/examples/jars/spark-examples_*.jar)" /opt/spark/examples/jars/spark-examples.jar;     mv kubernetes/tests /opt/spark/;     mv data /opt/spark/;     mv python/pyspark /opt/spark/python/pyspark/;     mv python/lib /opt/spark/python/lib/;     mv R /opt/spark/;     chmod a+x /opt/decom.sh;     cd ..;     rm -rf "$SPARK_TMP"; # buildkit
# Mon, 02 Nov 2026 23:52:49 GMT
COPY entrypoint.sh /opt/ # buildkit
# Mon, 02 Nov 2026 23:52:49 GMT
ENV SPARK_HOME=/opt/spark
# Mon, 02 Nov 2026 23:52:49 GMT
WORKDIR /opt/spark/work-dir
# Mon, 02 Nov 2026 23:52:49 GMT
USER spark
# Mon, 02 Nov 2026 23:52:49 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
# Tue, 03 Nov 2026 00:12:29 GMT
USER root
# Tue, 03 Nov 2026 00:12:29 GMT
RUN set -ex;     apt-get update;     apt-get install -y python3 python3-pip;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:12:29 GMT
USER spark
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0237bf66e43634ab7f2292a893b95dbe2926c6f561de46bea12574c7bb1162c1`  
		Last Modified: Mon, 26 Oct 2026 23:17:33 GMT  
		Size: 22.1 MB (22080456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:debb15cfa1b3ae5062aa5895a64a4f265b53e85976a85328311c8ebb06ab8f4a`  
		Last Modified: Mon, 26 Oct 2026 23:17:35 GMT  
		Size: 144.7 MB (144656708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84d3639d38d3c8cc744a1b9453d94f60d82faa3c507b3b9949671fd49e8c91c`  
		Last Modified: Mon, 26 Oct 2026 23:17:31 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed4039f6a81f0c43ef51e6eb6e7ce46134ebf672714968c493ad0d547ae68e1`  
		Last Modified: Mon, 26 Oct 2026 23:17:32 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a1f020203a8d20aea323e8c857320945054f0eabed1690ed5640fbd13dd72d`  
		Last Modified: Mon, 02 Nov 2026 23:53:18 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86f1e3dde70348b44de1c2dc4af1e8d08c2fe143d373461f879d8617b53520b`  
		Last Modified: Mon, 02 Nov 2026 23:53:19 GMT  
		Size: 21.8 MB (21758530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb335afdd6351d8744463c7b6cfd3a04119ab16d5eccce3d51aa842448ee3b9f`  
		Last Modified: Mon, 02 Nov 2026 23:53:26 GMT  
		Size: 457.7 MB (457679184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda3dadec3f794e755aa42af6dd3432373cd10ee111a7ffd1027e49d0ba2d11a`  
		Last Modified: Mon, 02 Nov 2026 23:53:18 GMT  
		Size: 2.2 KB (2208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbae68bcc79e01803ea57c491d6c0e1092f6002a767e6c78344916ad3f4e909a`  
		Last Modified: Tue, 03 Nov 2026 00:13:00 GMT  
		Size: 108.6 MB (108622913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spark:python3-java17` - unknown; unknown

```console
$ docker pull spark@sha256:8fc829f8b835fece40e19588867be66f887ae2db62d6d0d1dc570c3360fccbad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10423736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a5891950e9453174922b094c247966f5e0e4cd990be0e0f43ff404040d0970`

```dockerfile
```

-	Layers:
	-	`sha256:fe800b8cc2f454596fcd9f3ee9ca2824d14ec98f7fcf9015803cac392076f08b`  
		Last Modified: Tue, 03 Nov 2026 00:12:58 GMT  
		Size: 10.4 MB (10412653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00f43f49109fd676aa9e4cc6452df58f9a7afafdf9a409fc95c818b729ba1254`  
		Last Modified: Tue, 03 Nov 2026 00:12:58 GMT  
		Size: 11.1 KB (11083 bytes)  
		MIME: application/vnd.in-toto+json
