## `spark:r-java25`

```console
$ docker pull spark@sha256:75d7eaba97ebc1b3d66cee117e15fb299a977b7514b02b5deb6c2afd3565771b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `spark:r-java25` - linux; amd64

```console
$ docker pull spark@sha256:2a4695ea3c8e55916f17ad2e5e391e34fcd0344a3eb9ebac62e42ffd15eed6a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **950.0 MB (949981189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1a60bb207c05823d62a8a7d8ad02e03ebad3c00daf04608847ff6ea53ab22b`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:22:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:22:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:22:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:22:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:22:18 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Wed, 09 Sep 2026 02:22:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:22:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:22:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:22:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:22:38 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 21:49:57 GMT
ARG spark_uid=185
# Wed, 09 Sep 2026 21:49:57 GMT
# ARGS: spark_uid=185
RUN groupadd --system --gid=${spark_uid} spark &&     useradd --system --uid=${spark_uid} --gid=spark -d /nonexistent spark # buildkit
# Wed, 09 Sep 2026 21:50:13 GMT
# ARGS: spark_uid=185
RUN set -ex;     apt-get update;     apt-get install -y gnupg2 wget bash tini libc6 libpam-modules krb5-user libnss3 procps net-tools gosu libnss-wrapper libjemalloc2;     mkdir -p /opt/spark;     mkdir /opt/spark/python;     mkdir -p /opt/spark/examples;     mkdir -p /opt/spark/work-dir;     chmod g+w /opt/spark/work-dir;     touch /opt/spark/RELEASE;     chown -R spark:spark /opt/spark;     echo "auth required pam_wheel.so use_uid" >> /etc/pam.d/su;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 21:50:13 GMT
ENV SPARK_TGZ_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.2.0/spark-4.2.0-bin-hadoop3.tgz?action=download SPARK_TGZ_ASC_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.2.0/spark-4.2.0-bin-hadoop3.tgz.asc?action=download GPG_KEY=709226B910E0F10917123B6259B586ADA5A538D1
# Wed, 09 Sep 2026 21:50:25 GMT
# ARGS: spark_uid=185
RUN set -ex;     export SPARK_TMP="$(mktemp -d)";     cd $SPARK_TMP;     wget -nv -O spark.tgz "$SPARK_TGZ_URL";     wget -nv -O spark.tgz.asc "$SPARK_TGZ_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-key "$GPG_KEY" ||     gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY";     gpg --batch --verify spark.tgz.asc spark.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" spark.tgz.asc;         tar -xf spark.tgz --strip-components=1;     chown -R spark:spark .;     mv jars /opt/spark/;     mv RELEASE /opt/spark/;     mv bin /opt/spark/;     mv sbin /opt/spark/;     mv kubernetes/dockerfiles/spark/decom.sh /opt/;     mv examples /opt/spark/;     ln -s "$(basename /opt/spark/examples/jars/spark-examples_*.jar)" /opt/spark/examples/jars/spark-examples.jar;     mv kubernetes/tests /opt/spark/;     mv data /opt/spark/;     mv python/pyspark /opt/spark/python/pyspark/;     mv python/lib /opt/spark/python/lib/;     mv R /opt/spark/;     chmod a+x /opt/decom.sh;     cd ..;     rm -rf "$SPARK_TMP"; # buildkit
# Wed, 09 Sep 2026 21:50:25 GMT
COPY entrypoint.sh /opt/ # buildkit
# Wed, 09 Sep 2026 21:50:25 GMT
ENV SPARK_HOME=/opt/spark
# Wed, 09 Sep 2026 21:50:25 GMT
WORKDIR /opt/spark/work-dir
# Wed, 09 Sep 2026 21:50:25 GMT
USER spark
# Wed, 09 Sep 2026 21:50:25 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
# Wed, 09 Sep 2026 22:14:11 GMT
USER root
# Wed, 09 Sep 2026 22:14:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y r-base r-base-dev;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 22:14:11 GMT
ENV R_HOME=/usr/lib/R
# Wed, 09 Sep 2026 22:14:11 GMT
USER spark
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f20de41d4675dc1f1cefd8fca1d0a94718c6096b3754dada8b47f5e229f79c`  
		Last Modified: Wed, 09 Sep 2026 02:22:54 GMT  
		Size: 15.9 MB (15909415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93fc62905c9a675b9860d4c2ef7c19804e96e371c85ef325eb277eee71b8fdd3`  
		Last Modified: Wed, 09 Sep 2026 02:22:55 GMT  
		Size: 92.7 MB (92718586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88edb5bc966493ee8a2a46e335860721ea1855d9b4d8cc4cf2a24d8c186174d`  
		Last Modified: Wed, 09 Sep 2026 02:22:53 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f239ee51e213427e5fff207b47db590bec38aaa2bfeb16ca1429342af36b8c`  
		Last Modified: Wed, 09 Sep 2026 21:50:50 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd012d7e242694e6b9548a3bb887644c2435eaa09ed84273954864f0a5a5f682`  
		Last Modified: Wed, 09 Sep 2026 21:50:51 GMT  
		Size: 31.5 MB (31508739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295f48fd213b8d1b07ceb7425e9ce77b54ebc5e3803da50a31e9ed7c970dfd90`  
		Last Modified: Wed, 09 Sep 2026 21:50:58 GMT  
		Size: 457.8 MB (457773839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af66f62274a5f3ba1941f64711060629938eaf6546289a278c24ad808582a683`  
		Last Modified: Wed, 09 Sep 2026 21:50:50 GMT  
		Size: 2.1 KB (2137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c3e988f9cf19f2b8fa7f2dd6cb39b0d510465dfcf0f8f208736e39d15040347`  
		Last Modified: Wed, 09 Sep 2026 22:15:10 GMT  
		Size: 322.3 MB (322314273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spark:r-java25` - unknown; unknown

```console
$ docker pull spark@sha256:5a013e89eeeaf10218f7ca71b7118a45e444b7fcd5697e5ba6ad1146fd72e8cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18609186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a17b7547f75336a56f466a1a5c73e7bf3c03ae63380266079b4917adfa5231be`

```dockerfile
```

-	Layers:
	-	`sha256:0dfa4fcff18f9c5abde55809ae449cdecf979430c4f9d31000ea23336ab36581`  
		Last Modified: Wed, 09 Sep 2026 22:15:03 GMT  
		Size: 18.6 MB (18598508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd68b60858e0025bc79aec1035ad0edb170cf2ccc73c4ce515f40187e5dbb9c9`  
		Last Modified: Wed, 09 Sep 2026 22:15:02 GMT  
		Size: 10.7 KB (10678 bytes)  
		MIME: application/vnd.in-toto+json

### `spark:r-java25` - linux; arm64 variant v8

```console
$ docker pull spark@sha256:853261c0378295e8e82840ec20f508311f35d51bd1bca53806f50287ac76747b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **930.0 MB (930029122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087af1d1e4bd4511be4721371f25e011621e689b83ea9675d83b48ebcee620ce`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:26:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:26:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:26:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:26:26 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:26:26 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Wed, 09 Sep 2026 01:26:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 01:26:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 01:26:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:26:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 01:26:53 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 21:48:43 GMT
ARG spark_uid=185
# Wed, 09 Sep 2026 21:48:43 GMT
# ARGS: spark_uid=185
RUN groupadd --system --gid=${spark_uid} spark &&     useradd --system --uid=${spark_uid} --gid=spark -d /nonexistent spark # buildkit
# Wed, 09 Sep 2026 21:48:57 GMT
# ARGS: spark_uid=185
RUN set -ex;     apt-get update;     apt-get install -y gnupg2 wget bash tini libc6 libpam-modules krb5-user libnss3 procps net-tools gosu libnss-wrapper libjemalloc2;     mkdir -p /opt/spark;     mkdir /opt/spark/python;     mkdir -p /opt/spark/examples;     mkdir -p /opt/spark/work-dir;     chmod g+w /opt/spark/work-dir;     touch /opt/spark/RELEASE;     chown -R spark:spark /opt/spark;     echo "auth required pam_wheel.so use_uid" >> /etc/pam.d/su;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 21:48:57 GMT
ENV SPARK_TGZ_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.2.0/spark-4.2.0-bin-hadoop3.tgz?action=download SPARK_TGZ_ASC_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.2.0/spark-4.2.0-bin-hadoop3.tgz.asc?action=download GPG_KEY=709226B910E0F10917123B6259B586ADA5A538D1
# Wed, 09 Sep 2026 21:49:10 GMT
# ARGS: spark_uid=185
RUN set -ex;     export SPARK_TMP="$(mktemp -d)";     cd $SPARK_TMP;     wget -nv -O spark.tgz "$SPARK_TGZ_URL";     wget -nv -O spark.tgz.asc "$SPARK_TGZ_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-key "$GPG_KEY" ||     gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY";     gpg --batch --verify spark.tgz.asc spark.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" spark.tgz.asc;         tar -xf spark.tgz --strip-components=1;     chown -R spark:spark .;     mv jars /opt/spark/;     mv RELEASE /opt/spark/;     mv bin /opt/spark/;     mv sbin /opt/spark/;     mv kubernetes/dockerfiles/spark/decom.sh /opt/;     mv examples /opt/spark/;     ln -s "$(basename /opt/spark/examples/jars/spark-examples_*.jar)" /opt/spark/examples/jars/spark-examples.jar;     mv kubernetes/tests /opt/spark/;     mv data /opt/spark/;     mv python/pyspark /opt/spark/python/pyspark/;     mv python/lib /opt/spark/python/lib/;     mv R /opt/spark/;     chmod a+x /opt/decom.sh;     cd ..;     rm -rf "$SPARK_TMP"; # buildkit
# Wed, 09 Sep 2026 21:49:10 GMT
COPY entrypoint.sh /opt/ # buildkit
# Wed, 09 Sep 2026 21:49:10 GMT
ENV SPARK_HOME=/opt/spark
# Wed, 09 Sep 2026 21:49:10 GMT
WORKDIR /opt/spark/work-dir
# Wed, 09 Sep 2026 21:49:10 GMT
USER spark
# Wed, 09 Sep 2026 21:49:10 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
# Wed, 09 Sep 2026 22:13:09 GMT
USER root
# Wed, 09 Sep 2026 22:13:09 GMT
RUN set -ex;     apt-get update;     apt-get install -y r-base r-base-dev;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 22:13:09 GMT
ENV R_HOME=/usr/lib/R
# Wed, 09 Sep 2026 22:13:09 GMT
USER spark
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38a5c249b8fe5837163b89c1aaa73e7c6210e6162878ce460bd0690e45519a7`  
		Last Modified: Wed, 09 Sep 2026 01:27:38 GMT  
		Size: 17.3 MB (17347560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296173fed7abe7faf81917d6d6480d9a7eef7d55606d352be8adc0647c68fd91`  
		Last Modified: Wed, 09 Sep 2026 01:27:40 GMT  
		Size: 91.6 MB (91624026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aac57373dc2bf1b847e5a2190253bebdc5f397b9cc9779c3b59beda62ee1f97`  
		Last Modified: Wed, 09 Sep 2026 01:27:37 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47ac5c9f6115fcb07b5c44a555d3c12678f87f148f0244fdecc524c1cc70f46`  
		Last Modified: Wed, 09 Sep 2026 21:49:39 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2997998d2a9b9e203bb2fa54528ffe9108e17714489a020b4dfbee44ac51d86`  
		Last Modified: Wed, 09 Sep 2026 21:49:41 GMT  
		Size: 30.0 MB (30039948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec42eadb5f2bcc6fff04e173cbe645f1f4eb8cf8606bf3d3bc79aea522fec5d`  
		Last Modified: Wed, 09 Sep 2026 21:49:49 GMT  
		Size: 457.8 MB (457773845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59e3643b3cb301c9430d3a23c25861957332e58cd854fc8ebff55d022ad1802`  
		Last Modified: Wed, 09 Sep 2026 21:49:39 GMT  
		Size: 2.1 KB (2136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45b4764298bc6989c0361d56d2e93419e779f17013ac2a11e5970627c871a6c`  
		Last Modified: Wed, 09 Sep 2026 22:14:11 GMT  
		Size: 305.6 MB (305554908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spark:r-java25` - unknown; unknown

```console
$ docker pull spark@sha256:ba0c0168aa19f7584a895d85160499684178be04dc05fea0b2b7d1ae7a456f21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18573824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1f7bd48f9f47aa98f795bafb9e472c79997bc38808fd2271e79f529a9868b3`

```dockerfile
```

-	Layers:
	-	`sha256:19b27fc51a84f908f0edaaf198f5f9da30abca0cdecaa26b5d77acc21a5f9d11`  
		Last Modified: Wed, 09 Sep 2026 22:14:04 GMT  
		Size: 18.6 MB (18563066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43691092c611033ba9454e2fcd9e7f5d17d999df9615f2d5abd7948f69b072fd`  
		Last Modified: Wed, 09 Sep 2026 22:14:04 GMT  
		Size: 10.8 KB (10758 bytes)  
		MIME: application/vnd.in-toto+json
