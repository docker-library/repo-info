## `spark:latest`

```console
$ docker pull spark@sha256:942ce940b99ebbd0456b1646c7747d53c5f13e6f276469b886063eebb3569b92
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `spark:latest` - linux; amd64

```console
$ docker pull spark@sha256:bd651c6251d800fbd208d54e1a3fabe2cef1e25dfaf9c3aab897b27a50c33fc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.7 MB (802698066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b30daf778a7d266b342d42edf4d288e8ee298b83abfe4e83ccd1273f19ed7d4`
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
# Thu, 29 Oct 2026 19:11:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:11:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:11:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:11:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:11:43 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:11:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:11:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:11:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:11:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:11:51 GMT
CMD ["jshell"]
# Mon, 02 Nov 2026 23:52:33 GMT
ARG spark_uid=185
# Mon, 02 Nov 2026 23:52:33 GMT
# ARGS: spark_uid=185
RUN groupadd --system --gid=${spark_uid} spark &&     useradd --system --uid=${spark_uid} --gid=spark -d /nonexistent spark # buildkit
# Mon, 02 Nov 2026 23:52:45 GMT
# ARGS: spark_uid=185
RUN set -ex;     apt-get update;     apt-get install -y gnupg2 wget bash tini libc6 libpam-modules krb5-user libnss3 procps net-tools gosu libnss-wrapper libjemalloc2;     mkdir -p /opt/spark;     mkdir /opt/spark/python;     mkdir -p /opt/spark/examples;     mkdir -p /opt/spark/work-dir;     chmod g+w /opt/spark/work-dir;     touch /opt/spark/RELEASE;     chown -R spark:spark /opt/spark;     echo "auth required pam_wheel.so use_uid" >> /etc/pam.d/su;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 23:52:45 GMT
ENV SPARK_TGZ_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.2.1/spark-4.2.1-bin-hadoop3.tgz?action=download SPARK_TGZ_ASC_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.2.1/spark-4.2.1-bin-hadoop3.tgz.asc?action=download GPG_KEY=9442A2610B63B3F61860285F43F1222E5362CCF5
# Mon, 02 Nov 2026 23:52:56 GMT
# ARGS: spark_uid=185
RUN set -ex;     export SPARK_TMP="$(mktemp -d)";     cd $SPARK_TMP;     wget -nv -O spark.tgz "$SPARK_TGZ_URL";     wget -nv -O spark.tgz.asc "$SPARK_TGZ_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-key "$GPG_KEY" ||     gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY";     gpg --batch --verify spark.tgz.asc spark.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" spark.tgz.asc;         tar -xf spark.tgz --strip-components=1;     chown -R spark:spark .;     mv jars /opt/spark/;     mv RELEASE /opt/spark/;     mv bin /opt/spark/;     mv sbin /opt/spark/;     mv kubernetes/dockerfiles/spark/decom.sh /opt/;     mv examples /opt/spark/;     ln -s "$(basename /opt/spark/examples/jars/spark-examples_*.jar)" /opt/spark/examples/jars/spark-examples.jar;     mv kubernetes/tests /opt/spark/;     mv data /opt/spark/;     mv python/pyspark /opt/spark/python/pyspark/;     mv python/lib /opt/spark/python/lib/;     mv R /opt/spark/;     chmod a+x /opt/decom.sh;     cd ..;     rm -rf "$SPARK_TMP"; # buildkit
# Mon, 02 Nov 2026 23:52:57 GMT
COPY entrypoint.sh /opt/ # buildkit
# Mon, 02 Nov 2026 23:52:57 GMT
ENV SPARK_HOME=/opt/spark
# Mon, 02 Nov 2026 23:52:57 GMT
WORKDIR /opt/spark/work-dir
# Mon, 02 Nov 2026 23:52:57 GMT
USER spark
# Mon, 02 Nov 2026 23:52:57 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
# Tue, 03 Nov 2026 00:11:52 GMT
USER root
# Tue, 03 Nov 2026 00:11:52 GMT
RUN set -ex;     apt-get update;     apt-get install -y python3 python3-pip;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:11:52 GMT
USER spark
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ad2535388350238a86a0ae108226569cbecdc54008d55a5616c1de6c570027`  
		Last Modified: Thu, 29 Oct 2026 19:12:09 GMT  
		Size: 20.7 MB (20664240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bb9ec26ce3371ce339ab373cadc6bbf2fa3e1fab6282b708a01fe04aea6fc5`  
		Last Modified: Thu, 29 Oct 2026 19:12:12 GMT  
		Size: 158.4 MB (158419665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:425161509e30ef8001ab06557126319e5a22d7d4bcf1c35096927df20f2071b3`  
		Last Modified: Thu, 29 Oct 2026 19:12:08 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ae95c32607d76912da2cb2b54c257d3863fd23de8d8afb3af02818f654f444`  
		Last Modified: Thu, 29 Oct 2026 19:12:08 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d3a71693c728fb3031b4425fa7cf82c1c17e03e6cedfa3e356056f31fa44e4f`  
		Last Modified: Mon, 02 Nov 2026 23:53:25 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a83f00cde8a8acc08b1360d9cde8142a597081f97df238a6d899ef5909bd97b`  
		Last Modified: Mon, 02 Nov 2026 23:53:26 GMT  
		Size: 22.1 MB (22146629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4b8fc0e0b7bf4bf9dd99c063c36a72c1479af50d4ad1e3efd8e4bd5787b914`  
		Last Modified: Mon, 02 Nov 2026 23:53:35 GMT  
		Size: 457.7 MB (457679222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddbaa98e9c413a3affde3a90ebfdec5cddc6d23b9499642b18c0d17188df178`  
		Last Modified: Mon, 02 Nov 2026 23:53:25 GMT  
		Size: 2.2 KB (2207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd0070935d20f8d2a69e3d125d698b4d31420db840db1d110054af43e2dd63b`  
		Last Modified: Tue, 03 Nov 2026 00:12:25 GMT  
		Size: 114.0 MB (114029536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spark:latest` - unknown; unknown

```console
$ docker pull spark@sha256:7a972081e1c7ea62d56e29d9202e2e93e4c254d0bebdf17b30144544263d9e4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10432841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e79a750c162e60570d7cd8f7089bcb8ce9f2d71ace712095d27eebee9fde97c`

```dockerfile
```

-	Layers:
	-	`sha256:d05a742e8f0c9dff20f774e938f6ae17a5b30ab1aa026d75f7a8dcb3b1c2c3e5`  
		Last Modified: Tue, 03 Nov 2026 00:12:22 GMT  
		Size: 10.4 MB (10420950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99a4d6c5ae2a368cb43dd79774a890b71b34effc8347b4fbbba9545586656e0d`  
		Last Modified: Tue, 03 Nov 2026 00:12:22 GMT  
		Size: 11.9 KB (11891 bytes)  
		MIME: application/vnd.in-toto+json

### `spark:latest` - linux; arm64 variant v8

```console
$ docker pull spark@sha256:d550eb6d4918eb07805163478043ed342b3c4446b3f33e4aa402b6bfc6a28c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **794.5 MB (794531437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8fcc4f233e834d9e2bec246e71ecb6891f1a5e2ce08ba1b5f25129df956471`
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
# Thu, 29 Oct 2026 19:07:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:07:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:07:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:07:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:07:12 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:07:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:07:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:07:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:07:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:07:21 GMT
CMD ["jshell"]
# Mon, 02 Nov 2026 23:52:18 GMT
ARG spark_uid=185
# Mon, 02 Nov 2026 23:52:18 GMT
# ARGS: spark_uid=185
RUN groupadd --system --gid=${spark_uid} spark &&     useradd --system --uid=${spark_uid} --gid=spark -d /nonexistent spark # buildkit
# Mon, 02 Nov 2026 23:52:29 GMT
# ARGS: spark_uid=185
RUN set -ex;     apt-get update;     apt-get install -y gnupg2 wget bash tini libc6 libpam-modules krb5-user libnss3 procps net-tools gosu libnss-wrapper libjemalloc2;     mkdir -p /opt/spark;     mkdir /opt/spark/python;     mkdir -p /opt/spark/examples;     mkdir -p /opt/spark/work-dir;     chmod g+w /opt/spark/work-dir;     touch /opt/spark/RELEASE;     chown -R spark:spark /opt/spark;     echo "auth required pam_wheel.so use_uid" >> /etc/pam.d/su;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 23:52:29 GMT
ENV SPARK_TGZ_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.2.1/spark-4.2.1-bin-hadoop3.tgz?action=download SPARK_TGZ_ASC_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.2.1/spark-4.2.1-bin-hadoop3.tgz.asc?action=download GPG_KEY=9442A2610B63B3F61860285F43F1222E5362CCF5
# Mon, 02 Nov 2026 23:52:41 GMT
# ARGS: spark_uid=185
RUN set -ex;     export SPARK_TMP="$(mktemp -d)";     cd $SPARK_TMP;     wget -nv -O spark.tgz "$SPARK_TGZ_URL";     wget -nv -O spark.tgz.asc "$SPARK_TGZ_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-key "$GPG_KEY" ||     gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY";     gpg --batch --verify spark.tgz.asc spark.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" spark.tgz.asc;         tar -xf spark.tgz --strip-components=1;     chown -R spark:spark .;     mv jars /opt/spark/;     mv RELEASE /opt/spark/;     mv bin /opt/spark/;     mv sbin /opt/spark/;     mv kubernetes/dockerfiles/spark/decom.sh /opt/;     mv examples /opt/spark/;     ln -s "$(basename /opt/spark/examples/jars/spark-examples_*.jar)" /opt/spark/examples/jars/spark-examples.jar;     mv kubernetes/tests /opt/spark/;     mv data /opt/spark/;     mv python/pyspark /opt/spark/python/pyspark/;     mv python/lib /opt/spark/python/lib/;     mv R /opt/spark/;     chmod a+x /opt/decom.sh;     cd ..;     rm -rf "$SPARK_TMP"; # buildkit
# Mon, 02 Nov 2026 23:52:41 GMT
COPY entrypoint.sh /opt/ # buildkit
# Mon, 02 Nov 2026 23:52:41 GMT
ENV SPARK_HOME=/opt/spark
# Mon, 02 Nov 2026 23:52:41 GMT
WORKDIR /opt/spark/work-dir
# Mon, 02 Nov 2026 23:52:41 GMT
USER spark
# Mon, 02 Nov 2026 23:52:41 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
# Tue, 03 Nov 2026 00:12:18 GMT
USER root
# Tue, 03 Nov 2026 00:12:18 GMT
RUN set -ex;     apt-get update;     apt-get install -y python3 python3-pip;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:12:18 GMT
USER spark
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acc1730fd42c5c2c306e99979ac2fb00a6fbec0df9abbdee960ee5e77d6ca1e`  
		Last Modified: Thu, 29 Oct 2026 19:07:40 GMT  
		Size: 22.1 MB (22080470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a8b2dd19ddaf697196c8d08db8e341e6ca229cd33182860af815c9deb05285b`  
		Last Modified: Thu, 29 Oct 2026 19:07:43 GMT  
		Size: 156.7 MB (156699357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fe71d856932c082462ff14db16c1a50853c1a51236cbbf940360162851eeb1`  
		Last Modified: Thu, 29 Oct 2026 19:07:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e601cccd9b691819d7442f3dcf1704fafb3c3d92b05a540f662b4b4ed5c6fd10`  
		Last Modified: Thu, 29 Oct 2026 19:07:38 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc18eec262062181b9f9908103d5d55ce896735f8040db6c94be85e99369f09`  
		Last Modified: Mon, 02 Nov 2026 23:53:11 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c8d096144ed8cff6945e54f04b905e6fa5074fb6de79aede49744ebb56825d`  
		Last Modified: Mon, 02 Nov 2026 23:53:12 GMT  
		Size: 21.8 MB (21758497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a2046a4f61b800301acf71d6f55e7de5d93b81aef40e65b2e111549d332187d`  
		Last Modified: Mon, 02 Nov 2026 23:53:23 GMT  
		Size: 457.7 MB (457679306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589082c516df2431b5f28b0a12f5e213d589387b8af74726a8722b535ffb79e7`  
		Last Modified: Mon, 02 Nov 2026 23:53:11 GMT  
		Size: 2.2 KB (2208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce1c4fc2cc15803ad1230c4a8195c0acf01410c870e88efd207ab52d0f8f887`  
		Last Modified: Tue, 03 Nov 2026 00:12:50 GMT  
		Size: 108.6 MB (108622914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spark:latest` - unknown; unknown

```console
$ docker pull spark@sha256:85c7b808a81007e63faa55ae99eca7d2f99fbac5b47d50d63bba5f50fd571887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10427454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef19b2430a4d415e83495163a51cd72020b11fbe60fe0e327a8d52c88bd99d1`

```dockerfile
```

-	Layers:
	-	`sha256:1d2ea4775cc35dec928dc48939d8801c10d46f05fd4033ec065d103b4b84f554`  
		Last Modified: Tue, 03 Nov 2026 00:12:48 GMT  
		Size: 10.4 MB (10415435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e67a7b92574f1cdd195fedb313474113dbe1d9a725161b35dfbb980d40df18b7`  
		Last Modified: Tue, 03 Nov 2026 00:12:47 GMT  
		Size: 12.0 KB (12019 bytes)  
		MIME: application/vnd.in-toto+json
