## `maven:3-eclipse-temurin-11-noble`

```console
$ docker pull maven@sha256:168e43e103db4d3f3139c5d77bec47bfd07f29c29e2c686ce1c68ab6122815ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `maven:3-eclipse-temurin-11-noble` - linux; amd64

```console
$ docker pull maven@sha256:226c19a027ca42731a54cc86f0244288d7c028df7764a650950675e1b1fb071a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.7 MB (227714080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7249ced3b2608777d2e423bbcb63d43f4f1fa8248357ee652c48b4f29a3b004a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:16:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:16:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:16:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:16:39 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:16:39 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:16:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:16:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:16:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:16:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:46 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 02:19:05 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:19:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:19:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:19:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:19:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:19:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:19:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:19:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:19:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:19:06 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:19:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:19:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:19:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26db7d36873d5b1b4f90a4da59e004df9d0f99569850af91bffa752b8d51eb3b`  
		Last Modified: Wed, 11 Nov 2026 23:17:02 GMT  
		Size: 17.0 MB (16968820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017b1e28fc29264f2765e322fe9a19d23f9085b9532b7f036bf7747885e18423`  
		Last Modified: Wed, 11 Nov 2026 23:17:05 GMT  
		Size: 145.9 MB (145930902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e40ff41b3a447ed0efc0902d6c81ce7ffeabc3200a502d9a444270d9e64af4`  
		Last Modified: Wed, 11 Nov 2026 23:17:01 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ac0b39c9db4429181f161335b911af938d9d849e1aceb137060403b06c6703`  
		Last Modified: Wed, 11 Nov 2026 23:17:01 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d0b914be01fec078ddb1c6af21a180e3864df50ce51073b0c98eadff4e79fe`  
		Last Modified: Thu, 12 Nov 2026 02:19:18 GMT  
		Size: 25.0 MB (24958495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb71029692d8b5b9e821c930c66586b237c1ebc0e2868daf6f120d91b83714e`  
		Last Modified: Thu, 12 Nov 2026 02:19:17 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59bff381f88214576b7ca270ec72c08a8fe97ebf6b6cd72a4c7686dabf6bf0ae`  
		Last Modified: Thu, 12 Nov 2026 02:19:17 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c5f0563e71d5b47a6786a990d575d1b88645e5f60f73a58bb341194aaff32b`  
		Last Modified: Thu, 12 Nov 2026 02:19:17 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:dde49651e13db60485dd04ad6fb8c468f453a884a5a1b5d6158f15268dc9b98b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4919033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2227cc01f83599577df25bc4b80f993696ea617f4cdaa54c5fcf691f1c37098c`

```dockerfile
```

-	Layers:
	-	`sha256:063433720e9764b90e15851d144fd1535e30ee97c5073c64118fd80d212b0af7`  
		Last Modified: Thu, 12 Nov 2026 02:19:17 GMT  
		Size: 4.9 MB (4901693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9aa8ba2f9dd866287d49ca69eee4e3f2ed087b0fc97d1190dfa7c1dee1962e4c`  
		Last Modified: Thu, 12 Nov 2026 02:19:17 GMT  
		Size: 17.3 KB (17340 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-11-noble` - linux; arm variant v7

```console
$ docker pull maven@sha256:a277b285b00dcef3fa91356f14097ab688a4571f77a57eb2960fc479d7a28a71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218962301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ba3db09b5db5940592f811c27db55218fc5da96b07958b0476a486eef49680`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:23 GMT
ADD file:3cbbfb6c4f8e63d9999d351c6c7c50b4ce512c57a42bc2c5bc2da9cb561f6eed in / 
# Tue, 10 Nov 2026 08:36:24 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:19:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:19:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:19:59 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:19:59 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:20:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:20:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:20:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:20:08 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 01:10:09 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:10:09 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 01:10:09 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 01:10:09 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 01:10:09 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 01:10:09 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 01:10:09 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 01:10:09 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 01:10:09 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 01:10:09 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 01:10:09 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 01:10:09 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 01:10:09 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c9ad55dde9ad5376b797faf6b6dd0caa61cff4a20a14ef03107c1e7fdc9113f0`  
		Last Modified: Wed, 11 Nov 2026 22:58:50 GMT  
		Size: 26.9 MB (26922008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd325f0ba834363c8dbb0296e9c01ee3dffaab52091a6450e96f344d42c7e876`  
		Last Modified: Wed, 11 Nov 2026 23:20:25 GMT  
		Size: 16.3 MB (16286283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061e2a26c7c6319502f7d8e87b148a09f61f1529bfb7844fd53f32e547989270`  
		Last Modified: Wed, 11 Nov 2026 23:20:28 GMT  
		Size: 138.4 MB (138410415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668ab43925e4ca85ca469ff3b968ce3573a4cf9e824b436c087d3908f70faeaa`  
		Last Modified: Wed, 11 Nov 2026 23:20:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e08f92eb4f40d3dfa2085fe488cef5a192250640f3738af865cd73fde9c11fe`  
		Last Modified: Wed, 11 Nov 2026 23:20:24 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bba5952fbb60aa6b017beebb0bb7b49aa2054a57ab5836f793bae539f8d207b`  
		Last Modified: Thu, 12 Nov 2026 01:10:23 GMT  
		Size: 27.3 MB (27280954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523b57462c4fa7d173a407425602a20e29ff381a1f302fa6391e111a4f1610a8`  
		Last Modified: Thu, 12 Nov 2026 01:10:22 GMT  
		Size: 10.1 MB (10059014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b3285933eda995f6eeb1caa828b3930bc42e5c5c2e060c4f930922f6a9fccb`  
		Last Modified: Thu, 12 Nov 2026 01:10:22 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd5c03a9dc44ea59f40548c9f8092138467cc6c69c7143c6773043a36f955dd`  
		Last Modified: Thu, 12 Nov 2026 01:10:22 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:9926851e629c65e9e96d026cff2550fd58d75020068d6c16c3b79e496c4a3403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f877573078378e5bd0721d2723f5e8c56753b2db9e6777e27eb454d164979d`

```dockerfile
```

-	Layers:
	-	`sha256:84694f1638785ffd2a9c0626869fd06da0d034e8d63b68fb9e978b0dbf33cc51`  
		Last Modified: Thu, 12 Nov 2026 01:10:22 GMT  
		Size: 4.9 MB (4901493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0533f02baa17c67a1fde11eac71ff7db8bd8655b70b68d733e06c3f79d8873d`  
		Last Modified: Thu, 12 Nov 2026 01:10:21 GMT  
		Size: 17.4 KB (17447 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-11-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e0ba2889b8b0ca4d47c7fd65298da20d013c8f02e60d99c9befa6a7aa1b18c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221248135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65959bf89ff81e2a9121696c8e324c4d4d490abfd217312dbd3d8507c9bc3e80`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:20:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:14 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:20:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:20:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:20:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:20:42 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 02:18:52 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:18:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:18:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:18:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:18:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:18:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:18:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:18:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:18:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:18:52 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:18:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:18:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:18:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3bad045730c9bbe2de8073b14d6d10b731904bf41945324b4d81a4ad352b84a`  
		Last Modified: Wed, 11 Nov 2026 23:20:28 GMT  
		Size: 17.0 MB (16978185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df8373f16d97150c499faf73890312926ba245d53505c405f5391d749317007`  
		Last Modified: Wed, 11 Nov 2026 23:21:01 GMT  
		Size: 142.6 MB (142623510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6650fb9362df373b3ed5d5d5d683a0dc60f9b7634a4491a602fc9f7ef08227ef`  
		Last Modified: Wed, 11 Nov 2026 23:20:58 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d488b19d04bed1992673516580e3661e8fba1cc7758fa1d913aff7d3e32eae47`  
		Last Modified: Wed, 11 Nov 2026 23:20:58 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472ce655159f572cdb1f8683a8b204a9c036f97a02a33c4b8b1a64924da30b85`  
		Last Modified: Thu, 12 Nov 2026 02:19:05 GMT  
		Size: 22.6 MB (22618534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13eea2588dea5e0c1512676d1ee4f44c7581409d8a402cb5f17d002ef71a6a6`  
		Last Modified: Thu, 12 Nov 2026 02:19:05 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cca7ad2083e9407d593abb184df3ee8750eeffbff03719a6fee03c84dba4d73`  
		Last Modified: Thu, 12 Nov 2026 02:19:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3139f49e287a1f6fb5c1aef3e1c48bbcf938bec910b0d7729994b70c12b2db2`  
		Last Modified: Thu, 12 Nov 2026 02:19:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:6772d4b8836f5cdf034641cef255f05afa31f6f3a5f4914d790d83e66bd1f1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27e34285706f1cdf758ea282200ed946c77c4294f9f2683f18e2f2f81cfcf90`

```dockerfile
```

-	Layers:
	-	`sha256:a5372813ca926376e460107cdb705c5c5fcc443f21f6efe0d560ed19d7d09784`  
		Last Modified: Thu, 12 Nov 2026 02:19:05 GMT  
		Size: 4.9 MB (4908822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:324e879ae11ce886439e2413ea2f240e1ebe53171953a94e0ceee54baf16bb88`  
		Last Modified: Thu, 12 Nov 2026 02:19:04 GMT  
		Size: 17.5 KB (17473 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-11-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:c076c7f1bbc14750766ca1e09cd7e3b5e4fa84ca2c70276e7af62e8b2f0d6654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222118755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e043d1502edc6c0143fa0416e03fd2c81e71f1b1e008d8608aebb96a77547d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 01:42:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:42:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:42:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:42:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:42:18 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Thu, 12 Nov 2026 01:45:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 12 Nov 2026 01:45:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 12 Nov 2026 01:45:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 12 Nov 2026 01:45:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 01:45:59 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 11:36:50 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 11:36:50 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 11:36:50 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 11:36:50 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 11:36:50 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 11:36:50 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 11:36:50 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 11:36:51 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 11:36:51 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 11:36:51 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 11:36:51 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 11:36:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 11:36:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1a2eaa2f10ad948abed3101e624aa8a0b930bc8d06d4be10fffc1fc5e7ccbb`  
		Last Modified: Thu, 12 Nov 2026 01:43:03 GMT  
		Size: 18.8 MB (18782511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57730d81b06d5915cfab2479d320b18d0aa9410ac079241dd49f32dec04a799e`  
		Last Modified: Thu, 12 Nov 2026 01:46:44 GMT  
		Size: 132.3 MB (132281653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e2df5146d90f1ae461424ad194798e568fe96a9577ee8eef204f0c4051d3e9`  
		Last Modified: Thu, 12 Nov 2026 01:46:40 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8a9c8ebcd7230091f472c04d5051b9bb59af68f421dd8fab80548407e2f3e7`  
		Last Modified: Thu, 12 Nov 2026 01:46:40 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ea88167177dace3b98aa08bdcb62e87e31229af427fc8c813c269e18ef01ad`  
		Last Modified: Thu, 12 Nov 2026 11:37:23 GMT  
		Size: 26.6 MB (26585438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f1ac6723b9c072f1f8faa6c48dd12e521628dc226b59b508afbed445438198`  
		Last Modified: Thu, 12 Nov 2026 11:37:23 GMT  
		Size: 10.1 MB (10059014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8fe37b2e0cfe6c053e26edacb3e8d98b979cc03e3f38a8a0fd9b09239ce679a`  
		Last Modified: Thu, 12 Nov 2026 11:37:22 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fe3366b3701d528916eb43c5d5c6423324b6700856651d8ce3613326942870`  
		Last Modified: Thu, 12 Nov 2026 11:37:22 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:88372eeb93a2ab404b029ed1703e76e7f1eb497c2f35bddd3b0fd8eba13bdd6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4922154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e0e93a0b159d7a61659231633c90b8ada077562cacf17f52f0802df4330532`

```dockerfile
```

-	Layers:
	-	`sha256:6619484ccf0e347ccba3411aac54d58680c625da4d6c84e54a7d82a0038c8fb5`  
		Last Modified: Thu, 12 Nov 2026 11:37:23 GMT  
		Size: 4.9 MB (4904764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66be186d79246e5641cd71bb2a53cd1db69195ca7589f767b74dc2a8464be547`  
		Last Modified: Thu, 12 Nov 2026 11:37:22 GMT  
		Size: 17.4 KB (17390 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-11-noble` - linux; s390x

```console
$ docker pull maven@sha256:396467a8f14345a733a492308de85efb821469aad6c48f03440c50875fd46217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207311558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef9ec35f80d0be999ced2c8a1ec73cadf26405b903fbf0944d2245be4a8d3759`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:37:01 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:37:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:37:01 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:37:02 GMT
ADD file:cd6ae236aa13077d423218b776b66e2af298e76f13baa19a6432bfa2416d84e1 in / 
# Tue, 10 Nov 2026 08:37:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:13:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:13:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:13:11 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:13:11 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:13:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:13:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:13:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:13:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:13:16 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 03:12:17 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 03:12:17 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 03:12:17 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 03:12:17 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 03:12:17 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 03:12:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 03:12:17 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 03:12:17 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 03:12:17 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 03:12:17 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 03:12:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 03:12:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 03:12:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb584b35a6c811eb469ba44200296958535ca0aa786d355626ba80f4307e7779`  
		Last Modified: Wed, 11 Nov 2026 23:13:40 GMT  
		Size: 17.6 MB (17558028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e119e9c35180b52496e98ecf71030131632a8a0a36875cfbb6ee1930b72cdb66`  
		Last Modified: Wed, 11 Nov 2026 23:13:43 GMT  
		Size: 126.0 MB (126037189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8c29b52d0b08b47e8b43cc6c691570bb470bd839f6922430d03b901d514a954`  
		Last Modified: Wed, 11 Nov 2026 23:13:40 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2603d9e9891d583a8e8deba8cbcfc398d10c02d46f566a75f908fe0e75f6bf72`  
		Last Modified: Wed, 11 Nov 2026 23:13:40 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4dd86132c04db909da86815c65c708c7cd0923ce4f1e3f281d6d994bd8b3673`  
		Last Modified: Thu, 12 Nov 2026 03:12:35 GMT  
		Size: 23.7 MB (23686112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bab1f0afe35149384db82fe0ea5c22cefeea0159ee7458a286ac24a2a541712`  
		Last Modified: Thu, 12 Nov 2026 03:12:35 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244535db1077b7a8e71dce7a9958fcd1c65b8e9471320fcb95c8069a5fbe0f0f`  
		Last Modified: Thu, 12 Nov 2026 03:12:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38b5029303bd8100f59af24b148e5ca6cfef1e34067651d622f33f229ff0759`  
		Last Modified: Thu, 12 Nov 2026 03:12:35 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:1fb9d22224aff036d0c46d7f22cdd2ed17102ae11da64e8125b8ecba6fcd4fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4915179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e276249616e4adacb8cfc4c61108ef777b2ba3aedab430f7174067b76bfbf6e`

```dockerfile
```

-	Layers:
	-	`sha256:e76b7de7f7409d018fec6e25b189ba974e70ac837cd3ece4d6870ce00772eba7`  
		Last Modified: Thu, 12 Nov 2026 03:12:35 GMT  
		Size: 4.9 MB (4897840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a8d298398c92e6222b51c9a07f2017b8f084bb36643ca428bafd04afd48503c`  
		Last Modified: Thu, 12 Nov 2026 03:12:35 GMT  
		Size: 17.3 KB (17339 bytes)  
		MIME: application/vnd.in-toto+json
