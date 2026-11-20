## `maven:3-eclipse-temurin-21-noble`

```console
$ docker pull maven@sha256:9b8246b88f74b4321c4e05146d5680423de6d7b2046ff0cf229f81f86ea43c7e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `maven:3-eclipse-temurin-21-noble` - linux; amd64

```console
$ docker pull maven@sha256:3c232e9a6eee8830e3933eb78e9b8cd3ef6556fa589f490282273c59c53bc751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249888547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3c8a38534cf89728089ed04143060f4cd11b3d6cb1db00d5428b17222dee4c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 20 Nov 2026 03:16:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:46 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:46 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:16:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='639d712c96899ec84e95394f90e8b4cc6a0ad0154bbec2fe657f8da00b182013';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:16:56 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:16:56 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 05:43:55 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:43:55 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 05:43:55 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:43:55 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:43:55 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 05:43:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 05:43:55 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 05:43:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 05:43:56 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 05:43:56 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 05:43:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 05:43:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 05:43:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b11213d3aa1567118f717864067458d978cea9f2c940c764fd8deecc92b121`  
		Last Modified: Fri, 20 Nov 2026 03:17:14 GMT  
		Size: 29.1 MB (29055445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441c8138d5bddd027aa6f58c9cb59ee9608f5901f4eee756b73cfc2b9271e511`  
		Last Modified: Fri, 20 Nov 2026 03:17:16 GMT  
		Size: 158.4 MB (158419847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f15a300d17d18df1277a5c9a06c5aa77e4872aa8dc6ca1e4f02eb0708c27232`  
		Last Modified: Fri, 20 Nov 2026 03:17:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8843148c9f1154e55b80044588b54b816e000784f3efa618d776600f6fc4bf7b`  
		Last Modified: Fri, 20 Nov 2026 03:17:12 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37af54a824ea0a64cabebfc922c5b35d48b2d6a4cd60b35afb18f07455aaf32d`  
		Last Modified: Fri, 20 Nov 2026 05:44:09 GMT  
		Size: 22.6 MB (22557311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2970a27b6bcf64cbd1a2e8d3d0f51fe9abe5339a710c4174cdca842ffac47814`  
		Last Modified: Fri, 20 Nov 2026 05:44:09 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2071a0adbcc1a1c62f68b01b1056952b9db26deb79881704dd3880e28dc043`  
		Last Modified: Fri, 20 Nov 2026 05:44:09 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4734a828aecfc4196c58b9ce808cebd6624c721973532e5fedd83b0f1b5a7bfe`  
		Last Modified: Fri, 20 Nov 2026 05:44:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:2da6aed55763671ebee03952d55fde73885fd89f83688af31ad6b510ee32a01b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5053754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88beb5f41f2799759d056f37e4abb7403ef8052f52c41372b916935ab4941c79`

```dockerfile
```

-	Layers:
	-	`sha256:a230035e727a6743e943277e4c467a00cb67e613adb7ced3665ba77a525cdd70`  
		Last Modified: Fri, 20 Nov 2026 05:44:09 GMT  
		Size: 5.0 MB (5036402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecc55677a3df31e07794dac9c8e5362d3809475dae264e7ef1c87e130fd2295d`  
		Last Modified: Fri, 20 Nov 2026 05:44:08 GMT  
		Size: 17.4 KB (17352 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ddaa9313609be819c54155fec87ce60367f13284199775c05938c21ee6ccd488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.4 MB (248375323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f3ed3d853d7af95cf38eb210d5b9e3912cb24164f9faee291e74dd77bdcc34`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 20 Nov 2026 03:17:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:17:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:17:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:17:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:17:22 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='639d712c96899ec84e95394f90e8b4cc6a0ad0154bbec2fe657f8da00b182013';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:31 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 05:46:40 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:46:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 05:46:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:46:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:46:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 05:46:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 05:46:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 05:46:40 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 05:46:40 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 05:46:40 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 05:46:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 05:46:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 05:46:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a000e9b278efd8c4ef9b1689015c18a2e21610baa1ea45dd093736b674d6e4`  
		Last Modified: Fri, 20 Nov 2026 03:17:50 GMT  
		Size: 30.0 MB (30024317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cee1f1e29c3b67dae23c35b095377ad06dacfc0c2effdaf542dc84aa40fa689`  
		Last Modified: Fri, 20 Nov 2026 03:17:53 GMT  
		Size: 156.7 MB (156699715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f810e28e6bddc48f5ed847b1982e6fb1eb692f76b8180cac7f27996268646f4`  
		Last Modified: Fri, 20 Nov 2026 03:17:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4810e87bcebaf23f59e707dd99fa81099346f17e4bc4adbace9425cc769237`  
		Last Modified: Fri, 20 Nov 2026 03:17:49 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda2ff351638a1bf6bb4f13446fce38533510114ac4e3409eaef48822c5a0b8a`  
		Last Modified: Fri, 20 Nov 2026 05:46:54 GMT  
		Size: 22.6 MB (22623337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:910f1acdd406834972979d02907427e0a54942e35821ac1ae76448fb293b65fa`  
		Last Modified: Fri, 20 Nov 2026 05:46:53 GMT  
		Size: 10.1 MB (10059009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865c35bdb23840e068c53c360bbaa151c05e71df8d8f05c5b5527445da72997d`  
		Last Modified: Fri, 20 Nov 2026 05:46:53 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07995534c13bc3fab500b33efe47835db4a76ddf7513bda67dde57ffce66faa0`  
		Last Modified: Fri, 20 Nov 2026 05:46:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:3ec9adb9710e8eda9bb81697f236f43bf40627e4cb862546db1cdce2150dda8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5191448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3288a76d918920a518248ed990e503d262e27b18f532131e6347b2e32ff54f04`

```dockerfile
```

-	Layers:
	-	`sha256:303a751b5cf1a3c222e935a7b9c12b1214059fac5cc7f1b4f08bd57b46cc5b68`  
		Last Modified: Fri, 20 Nov 2026 05:46:53 GMT  
		Size: 5.2 MB (5173963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e8433f3692fb44962a64f49a94be41756bee17404fabc3f5eee046abaf8c9a6`  
		Last Modified: Fri, 20 Nov 2026 05:46:53 GMT  
		Size: 17.5 KB (17485 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:221fc1cf0c7834557f02521ad7172229ba38ddc407c7933b0e074fc6319c4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259583361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c82c483832e1d18b1d91837bc7848244c9626a37f38bb9173c7051682e356d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:26:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='639d712c96899ec84e95394f90e8b4cc6a0ad0154bbec2fe657f8da00b182013';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:26:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:26:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:26:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:26:08 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 07:55:45 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 07:55:48 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 07:55:48 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 07:55:48 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 07:55:48 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 07:55:48 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 07:55:48 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 07:55:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 07:55:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 07:55:53 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 07:55:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 07:55:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 07:55:53 GMT
CMD ["mvn"]
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
	-	`sha256:5995c00d44ae4eb0a183bb82096a7b0200da6ee13835464db290febf7f7c1068`  
		Last Modified: Fri, 20 Nov 2026 03:26:52 GMT  
		Size: 157.6 MB (157581948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807aa793e89d41f9933411f6dba34ce482346402cababa774504b459938c9ead`  
		Last Modified: Fri, 20 Nov 2026 03:26:48 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203154a841a82c99bd7e0b1e414f7eca1dab795a33d4b4c5fa7ecf84856cbe6c`  
		Last Modified: Fri, 20 Nov 2026 03:26:48 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31d6a5127780cc5e4fcc8ff0de833a5748eac00ded1081c7bf979ecfc0033b8`  
		Last Modified: Fri, 20 Nov 2026 07:56:29 GMT  
		Size: 26.6 MB (26588370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ff0ec09062cc825c01a53a1011d00f47b30f90eefc6967745070ad0907aab1`  
		Last Modified: Fri, 20 Nov 2026 07:56:28 GMT  
		Size: 10.1 MB (10059021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403dc19f15ee033d9eaa1afd2d605857c63f1c6f3aed106e42da83e9f224f321`  
		Last Modified: Fri, 20 Nov 2026 07:56:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cf2b81fd131ddda59f2fd194150e4fb974e0b38af8dc0cf380d18906426f87`  
		Last Modified: Fri, 20 Nov 2026 07:56:28 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:452f66a62b6f02266b795f30d5f5715058b012286b0f775048849a4b35c234cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5103113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649d479519af5b3e73ab7feac0a09fef5fdb4dff2b076ac42a24f5193b4fd5c3`

```dockerfile
```

-	Layers:
	-	`sha256:6ea729f9f9d037ee601e74b15169f283775283c944e4fad5f61a7b8852c33974`  
		Last Modified: Fri, 20 Nov 2026 07:56:28 GMT  
		Size: 5.1 MB (5085711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6792b0943921355e897b2fbc09a5313feb7be1ed23f49c95e46fd15167d312bf`  
		Last Modified: Fri, 20 Nov 2026 07:56:27 GMT  
		Size: 17.4 KB (17402 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-noble` - linux; riscv64

```console
$ docker pull maven@sha256:7565ac94b64bf1e8b7700d5755a98861e6a25640384c176f3449bcb85800da1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250582622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43161440d865b1963c39cb12949c963cbdda3446301dd0f3316bbf667aa619b0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sun, 25 Oct 2026 14:40:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:41:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:41:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:41:55 GMT
ADD file:bd60d80275224295b295318dc71399dbd358b15bea499dc5c524ae8260970dd4 in / 
# Sun, 25 Oct 2026 14:42:00 GMT
CMD ["/bin/bash"]
# Sun, 01 Nov 2026 11:50:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 01 Nov 2026 11:50:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 01 Nov 2026 11:50:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sun, 01 Nov 2026 11:50:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 01 Nov 2026 11:50:37 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Sun, 01 Nov 2026 12:02:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='639d712c96899ec84e95394f90e8b4cc6a0ad0154bbec2fe657f8da00b182013';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sun, 01 Nov 2026 12:02:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sun, 01 Nov 2026 12:02:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sun, 01 Nov 2026 12:02:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sun, 01 Nov 2026 12:02:49 GMT
CMD ["jshell"]
# Sun, 08 Nov 2026 12:13:11 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 08 Nov 2026 12:13:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sun, 08 Nov 2026 12:13:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sun, 08 Nov 2026 12:13:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sun, 08 Nov 2026 12:13:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sun, 08 Nov 2026 12:13:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sun, 08 Nov 2026 12:13:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sun, 08 Nov 2026 12:13:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sun, 08 Nov 2026 12:13:12 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sun, 08 Nov 2026 12:13:12 GMT
ARG USER_HOME_DIR=/root
# Sun, 08 Nov 2026 12:13:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sun, 08 Nov 2026 12:13:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sun, 08 Nov 2026 12:13:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9c292ed508c8980046daab8996841e49bec6ec20e645ab48bb63b8228da83d11`  
		Last Modified: Sun, 25 Oct 2026 14:50:32 GMT  
		Size: 31.1 MB (31054629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e326c3dc5d4cffb1ea3e296f71fe2d2f45a7c6730dfff1957677c23c04ccfe5f`  
		Last Modified: Sun, 01 Nov 2026 11:55:37 GMT  
		Size: 20.1 MB (20127382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0f9c34bab7fc053bac01b6cbea456650160dab6383632bdbc28ee221af8f60`  
		Last Modified: Sun, 01 Nov 2026 12:07:20 GMT  
		Size: 157.6 MB (157646408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3c7667c6ea3f0fdf3b714ebfd394a4158ed352c2e4ddc16930b346b98d5f77`  
		Last Modified: Sun, 01 Nov 2026 12:06:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726cf4b72fd46e5a1569b912328bbd8a7969aa4d9cb0c4f231107421fc59c434`  
		Last Modified: Sun, 01 Nov 2026 12:06:57 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7cb84b9af0f43bd99b2983ef60ca6421313f94ab182cc46c824235abbd4f30`  
		Last Modified: Sun, 08 Nov 2026 12:16:43 GMT  
		Size: 31.7 MB (31691559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418c7b5f3b5a4825e1083bbc74ddbc37024ede30b1c9cb9db84c29c545f95d97`  
		Last Modified: Sun, 08 Nov 2026 12:16:39 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7bd7d438486d08122ec3f32d99ae191472dff5510db16d5f63048b29490a0c`  
		Last Modified: Sun, 08 Nov 2026 12:16:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a962c1240cbf9eb277cf954f6fb8e14c203563a76c979f73353886be6040e3e8`  
		Last Modified: Sun, 08 Nov 2026 12:16:36 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:d8202d47dbdc8cb14d3cdc0c035e50146232a1e5866d4d20f355455048527a9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5156812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef2abde1c8b91825a2de886133ac0b31ebc6efa33008ce0819c80c6845dfcbf`

```dockerfile
```

-	Layers:
	-	`sha256:11a355bd644ffa7c7ec0316c82564be96ee9665a577f1836c5c22d0f0f6a4d80`  
		Last Modified: Sun, 08 Nov 2026 12:16:37 GMT  
		Size: 5.1 MB (5139410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b6d3d5b889b8b265d44698b7824f4b9d731a1cc4ff43c95f84bd5385a039446`  
		Last Modified: Sun, 08 Nov 2026 12:16:36 GMT  
		Size: 17.4 KB (17402 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-noble` - linux; s390x

```console
$ docker pull maven@sha256:ed0f59fa89a9e398ad1478722984bbc4f90216a0b36a821e7c5e3703d98af138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.0 MB (237953034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f6d7a23085218dd3cda9cf218be60b63476e4a577860fb8035cd43b9c7cb523`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:30:54 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:30:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:30:54 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:30:56 GMT
ADD file:f57d73889514e35770bca8a6b376ae28a49d35f7eca0530120c0e5edda118257 in / 
# Tue, 10 Nov 2026 18:30:56 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:10:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:10:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:06 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:10:06 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:11:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='639d712c96899ec84e95394f90e8b4cc6a0ad0154bbec2fe657f8da00b182013';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:11:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:11:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:11:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:11:05 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 05:54:47 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:54:47 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 05:54:47 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:54:47 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:54:47 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 05:54:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 05:54:47 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 05:54:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 05:54:47 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 05:54:47 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 05:54:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 05:54:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 05:54:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d6a4828736418640f88890fd03d6d03e5c40e83e24d598ed323f41ba7e349b4f`  
		Last Modified: Tue, 10 Nov 2026 20:09:53 GMT  
		Size: 30.0 MB (29967433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7a574f936a25124302463b4e751d600a4c1d257d415d8068ee54b02d5f4c51`  
		Last Modified: Fri, 20 Nov 2026 03:10:38 GMT  
		Size: 27.3 MB (27342930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb048b2741b55e6ad435f9de9ff92e3376ff58c3a184a5c1af04fc68a39be4ed`  
		Last Modified: Fri, 20 Nov 2026 03:11:31 GMT  
		Size: 146.9 MB (146891544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52bf6f58b7c93cb248139b107af6580578b35a90fa5533533d2125da43072e0`  
		Last Modified: Fri, 20 Nov 2026 03:11:28 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d74627b6d1a38295c28759842ce354aa481a412db6c6ab26c406fd37fa92e4`  
		Last Modified: Fri, 20 Nov 2026 03:11:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b193fe634e116c0ac3531b5a7d8069475f6b35ba40509f6b391d69ee0bd2fb61`  
		Last Modified: Fri, 20 Nov 2026 05:55:03 GMT  
		Size: 23.7 MB (23688532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89cbaa1458066552c68e5f31acdb0cab66e268e7f5d3b3c34e8051a57ee72bc`  
		Last Modified: Fri, 20 Nov 2026 05:55:03 GMT  
		Size: 10.1 MB (10058968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e0ee35b76b265cb22eaac7b651ddea2c98a9e8486c4a5dc3b91d4ebe4d5dc9`  
		Last Modified: Fri, 20 Nov 2026 05:55:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548d3b5e8c4e4ae2f10d9bafdfaf0b512fb0003e311e3058244edb2016be479c`  
		Last Modified: Fri, 20 Nov 2026 05:55:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:44c7e80ab16eeec148eef36fbe7244040ccc5c3dfc500cbbc0cd2bef08904e39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4997908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8722451d82395faa3edf82e9274db779a35e33071deade13ea8571963796ece`

```dockerfile
```

-	Layers:
	-	`sha256:76ca1c6a8a95ef86d738e187247fe7f95f259c47a7faf1fb701d604517ce4ac7`  
		Last Modified: Fri, 20 Nov 2026 05:55:03 GMT  
		Size: 5.0 MB (4980556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0782048b9e3925a6b594674856b5fd7d9472c133b6756c0b73a4b7b80bf71c8b`  
		Last Modified: Fri, 20 Nov 2026 05:55:03 GMT  
		Size: 17.4 KB (17352 bytes)  
		MIME: application/vnd.in-toto+json
