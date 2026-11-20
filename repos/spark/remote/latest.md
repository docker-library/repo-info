## `spark:latest`

```console
$ docker pull spark@sha256:183da4adacfc9030012974b5f2ea893dbdfa8618ae076ba2ec3df473042016ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `spark:latest` - linux; amd64

```console
$ docker pull spark@sha256:5ac20ef07bcabfd13c17543fe770c53a137c7a4207a3b204786c4a0dfbbe1867
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **809.1 MB (809053333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6801936525ccf539f726dbd40975778e001ae91d20c5688393cfd1dfaafbdec3`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:47 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:47 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:16:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:16:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:16:57 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:30:30 GMT
ARG spark_uid=185
# Fri, 20 Nov 2026 04:30:30 GMT
# ARGS: spark_uid=185
RUN groupadd --system --gid=${spark_uid} spark &&     useradd --system --uid=${spark_uid} --gid=spark -d /nonexistent spark # buildkit
# Fri, 20 Nov 2026 04:30:36 GMT
# ARGS: spark_uid=185
RUN set -ex;     apt-get update;     apt-get install -y gnupg2 wget bash tini libc6 libpam-modules krb5-user libnss3 procps net-tools gosu libnss-wrapper libjemalloc2;     mkdir -p /opt/spark;     mkdir /opt/spark/python;     mkdir -p /opt/spark/examples;     mkdir -p /opt/spark/work-dir;     chmod g+w /opt/spark/work-dir;     touch /opt/spark/RELEASE;     chown -R spark:spark /opt/spark;     echo "auth required pam_wheel.so use_uid" >> /etc/pam.d/su;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:30:36 GMT
ENV SPARK_TGZ_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.3.0/spark-4.3.0-bin-hadoop3.tgz?action=download SPARK_TGZ_ASC_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.3.0/spark-4.3.0-bin-hadoop3.tgz.asc?action=download GPG_KEY=FD3E84942E5E6106235A1D25BD356A9F8740E4FF
# Fri, 20 Nov 2026 04:31:06 GMT
# ARGS: spark_uid=185
RUN set -ex;     export SPARK_TMP="$(mktemp -d)";     cd $SPARK_TMP;     wget -nv -O spark.tgz "$SPARK_TGZ_URL";     wget -nv -O spark.tgz.asc "$SPARK_TGZ_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-key "$GPG_KEY" ||     gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY";     gpg --batch --verify spark.tgz.asc spark.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" spark.tgz.asc;         tar -xf spark.tgz --strip-components=1;     chown -R spark:spark .;     mv jars /opt/spark/;     mv RELEASE /opt/spark/;     mv bin /opt/spark/;     mv sbin /opt/spark/;     mv kubernetes/dockerfiles/spark/decom.sh /opt/;     mv examples /opt/spark/;     ln -s "$(basename /opt/spark/examples/jars/spark-examples_*.jar)" /opt/spark/examples/jars/spark-examples.jar;     mv kubernetes/tests /opt/spark/;     mv data /opt/spark/;     mv python/pyspark /opt/spark/python/pyspark/;     mv python/lib /opt/spark/python/lib/;     mv R /opt/spark/;     chmod a+x /opt/decom.sh;     cd ..;     rm -rf "$SPARK_TMP"; # buildkit
# Fri, 20 Nov 2026 04:31:06 GMT
COPY entrypoint.sh /opt/ # buildkit
# Fri, 20 Nov 2026 04:31:06 GMT
ENV SPARK_HOME=/opt/spark
# Fri, 20 Nov 2026 04:31:06 GMT
WORKDIR /opt/spark/work-dir
# Fri, 20 Nov 2026 04:31:06 GMT
USER spark
# Fri, 20 Nov 2026 04:31:06 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
# Fri, 20 Nov 2026 05:18:08 GMT
USER root
# Fri, 20 Nov 2026 05:18:08 GMT
RUN set -ex;     apt-get update;     apt-get install -y python3 python3-pip;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:18:08 GMT
USER spark
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591c8f167e0cffab004fc01e7e2374b4ef115b32bff173d84244965639b9b34b`  
		Last Modified: Fri, 20 Nov 2026 03:17:15 GMT  
		Size: 20.7 MB (20664462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055784d6f2d9370bf15dcf9940a63f1a04ddd3fc835524af0584a7b6080f2d06`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 158.4 MB (158419765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f469838c8d13e617a33a8f28d146ec41d91cf91fc5191b365dfc41d30b4887`  
		Last Modified: Fri, 20 Nov 2026 03:17:14 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dccd3043e157627f1826de89b2bd620473f95a1d28cb1ec7ea746bee6c5032bd`  
		Last Modified: Fri, 20 Nov 2026 03:17:14 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0912fcf4f86c49de3cffc47a24f99f16f68e6148f723dd8d4bdaae8e988119`  
		Last Modified: Fri, 20 Nov 2026 04:31:37 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:602d085e09862ac8012a1c08f19eea726c1db3a71d2533e1631e444dc6a97d1b`  
		Last Modified: Fri, 20 Nov 2026 04:31:38 GMT  
		Size: 22.1 MB (22148083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b7980ad8aed81707246c920742e67de146b7e4efa960b9bb78a54b9e008295`  
		Last Modified: Fri, 20 Nov 2026 04:31:45 GMT  
		Size: 463.7 MB (463716225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b27b00df30afc33ddcfb4b14b81ab09d423356d22dcb25c3000df565f68d728`  
		Last Modified: Fri, 20 Nov 2026 04:31:37 GMT  
		Size: 2.2 KB (2208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3145d98245848a8801efd6ad8043e670d2d7158f16e07b8383998d3118832d78`  
		Last Modified: Fri, 20 Nov 2026 05:18:42 GMT  
		Size: 114.0 MB (114028704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spark:latest` - unknown; unknown

```console
$ docker pull spark@sha256:e8b4f14f214f15ee0c246be12fea72378aaadede4cc5662200dd01c2c0b0c212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10438390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28562919e11095ce91905766017040ed8552e7d8083ece359c4ff855d428286d`

```dockerfile
```

-	Layers:
	-	`sha256:db53f1ab4d9ca2e7fad6bd3d9209d57120d83ce9209c62b646259cab50752d74`  
		Last Modified: Fri, 20 Nov 2026 05:18:40 GMT  
		Size: 10.4 MB (10426499 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40a6452ab19ad621665d8fcf989e17729c831b39211c351dcace6e84fb2361f3`  
		Last Modified: Fri, 20 Nov 2026 05:18:39 GMT  
		Size: 11.9 KB (11891 bytes)  
		MIME: application/vnd.in-toto+json

### `spark:latest` - linux; arm64 variant v8

```console
$ docker pull spark@sha256:159a60d3f03bf7e49d4f5a02a6683376144173ddee6f1dbaf610f99332f6bffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.9 MB (800880421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a69cd6904737cca8c903c9bd784a0f66210e77791657ac0fa25cf73f5d1d2360`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:17:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:17:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:17:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:17:24 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:38 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:31:53 GMT
ARG spark_uid=185
# Fri, 20 Nov 2026 04:31:53 GMT
# ARGS: spark_uid=185
RUN groupadd --system --gid=${spark_uid} spark &&     useradd --system --uid=${spark_uid} --gid=spark -d /nonexistent spark # buildkit
# Fri, 20 Nov 2026 04:32:12 GMT
# ARGS: spark_uid=185
RUN set -ex;     apt-get update;     apt-get install -y gnupg2 wget bash tini libc6 libpam-modules krb5-user libnss3 procps net-tools gosu libnss-wrapper libjemalloc2;     mkdir -p /opt/spark;     mkdir /opt/spark/python;     mkdir -p /opt/spark/examples;     mkdir -p /opt/spark/work-dir;     chmod g+w /opt/spark/work-dir;     touch /opt/spark/RELEASE;     chown -R spark:spark /opt/spark;     echo "auth required pam_wheel.so use_uid" >> /etc/pam.d/su;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:32:12 GMT
ENV SPARK_TGZ_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.3.0/spark-4.3.0-bin-hadoop3.tgz?action=download SPARK_TGZ_ASC_URL=https://www.apache.org/dyn/closer.lua/spark/spark-4.3.0/spark-4.3.0-bin-hadoop3.tgz.asc?action=download GPG_KEY=FD3E84942E5E6106235A1D25BD356A9F8740E4FF
# Fri, 20 Nov 2026 04:32:28 GMT
# ARGS: spark_uid=185
RUN set -ex;     export SPARK_TMP="$(mktemp -d)";     cd $SPARK_TMP;     wget -nv -O spark.tgz "$SPARK_TGZ_URL";     wget -nv -O spark.tgz.asc "$SPARK_TGZ_ASC_URL";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-key "$GPG_KEY" ||     gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY";     gpg --batch --verify spark.tgz.asc spark.tgz;     gpgconf --kill all;     rm -rf "$GNUPGHOME" spark.tgz.asc;         tar -xf spark.tgz --strip-components=1;     chown -R spark:spark .;     mv jars /opt/spark/;     mv RELEASE /opt/spark/;     mv bin /opt/spark/;     mv sbin /opt/spark/;     mv kubernetes/dockerfiles/spark/decom.sh /opt/;     mv examples /opt/spark/;     ln -s "$(basename /opt/spark/examples/jars/spark-examples_*.jar)" /opt/spark/examples/jars/spark-examples.jar;     mv kubernetes/tests /opt/spark/;     mv data /opt/spark/;     mv python/pyspark /opt/spark/python/pyspark/;     mv python/lib /opt/spark/python/lib/;     mv R /opt/spark/;     chmod a+x /opt/decom.sh;     cd ..;     rm -rf "$SPARK_TMP"; # buildkit
# Fri, 20 Nov 2026 04:32:28 GMT
COPY entrypoint.sh /opt/ # buildkit
# Fri, 20 Nov 2026 04:32:28 GMT
ENV SPARK_HOME=/opt/spark
# Fri, 20 Nov 2026 04:32:28 GMT
WORKDIR /opt/spark/work-dir
# Fri, 20 Nov 2026 04:32:28 GMT
USER spark
# Fri, 20 Nov 2026 04:32:28 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
# Fri, 20 Nov 2026 05:20:18 GMT
USER root
# Fri, 20 Nov 2026 05:20:18 GMT
RUN set -ex;     apt-get update;     apt-get install -y python3 python3-pip;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:20:18 GMT
USER spark
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d5f41944e7c26ff86012725668b1f33bc6142ca773cc733a66b30ec5bbefa9`  
		Last Modified: Fri, 20 Nov 2026 03:17:57 GMT  
		Size: 22.1 MB (22080656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd48ffa453c5f5a82cdcc188709a96da68fa3cdcefe6a519550da643c91067ac`  
		Last Modified: Fri, 20 Nov 2026 03:17:59 GMT  
		Size: 156.7 MB (156699398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8af90ac559d9065b4f7dfb9fc6940d08c7e8f8b63820f49cf1a27b2dd47f3`  
		Last Modified: Fri, 20 Nov 2026 03:17:56 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff75ba61adaf2a47149bae71a6f622c7f47b647be8843faa1d291bc16736f3d`  
		Last Modified: Fri, 20 Nov 2026 03:17:56 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffcb8c41a7ebbd537bc18914247db2ac5a136f7766a13211eb7e7c066b32c0fe`  
		Last Modified: Fri, 20 Nov 2026 04:32:57 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8cc55992f9bc8a4f98c4feced4b1ebb6b7d8d5ea7394fa8cac3b4e5215d35dc`  
		Last Modified: Fri, 20 Nov 2026 04:32:58 GMT  
		Size: 21.8 MB (21759048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34820056b6fbb55b762f2954a0b8409e58e6ac5bc8175eca2088f847d233a6ee`  
		Last Modified: Fri, 20 Nov 2026 04:33:06 GMT  
		Size: 463.7 MB (463716183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c331f09a0b747f7747523126f1c46764bfd4f15cf8b47351a7ba4fe89569af2`  
		Last Modified: Fri, 20 Nov 2026 04:32:57 GMT  
		Size: 2.2 KB (2208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a39194faedaeab2ff0ee85ebbc7930313174bc742aba3f2ecb78f45835f4858`  
		Last Modified: Fri, 20 Nov 2026 05:20:49 GMT  
		Size: 108.6 MB (108617452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spark:latest` - unknown; unknown

```console
$ docker pull spark@sha256:773311ddef9a40a9ff7011b1990da541f27d73df7c0fc38cf6cf3060204f5353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10433003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9e10447ca582fef228571fab80b1c937a5ca3cf26180d2671973a786007dbf`

```dockerfile
```

-	Layers:
	-	`sha256:c8e1fb3d4afa8c1af930f52a202056ae6158ea1dc3b372e72ad3d5a5e2283346`  
		Last Modified: Fri, 20 Nov 2026 05:20:46 GMT  
		Size: 10.4 MB (10420984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f175f9370bb80e39dc2eba40e82a6bb2d87c39f63548d694377baf6aa6a15926`  
		Last Modified: Fri, 20 Nov 2026 05:20:46 GMT  
		Size: 12.0 KB (12019 bytes)  
		MIME: application/vnd.in-toto+json
