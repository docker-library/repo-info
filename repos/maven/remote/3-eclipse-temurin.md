## `maven:3-eclipse-temurin`

```console
$ docker pull maven@sha256:0e4c2f1db01ff5317f4c24ddb868a8581d54ba638f4de410f6bd45f52078e907
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

### `maven:3-eclipse-temurin` - linux; amd64

```console
$ docker pull maven@sha256:e6e4e5ca35913f5c5fbd44ba00a3096429f3f354662398d5ef5483658de0c205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175714255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0eb20c80fb8944fbe84c2d81e50bab419f9091a9f948001537be0046111befe`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 18 Aug 2026 19:16:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:16:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:16:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:16:41 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:16:41 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 18 Aug 2026 19:16:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 19:16:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:16:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:16:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 19:16:58 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 21:24:46 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:24:46 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:24:46 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:24:46 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:24:46 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:24:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:24:46 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:24:46 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:24:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:24:46 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:24:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:24:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:24:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24c1a1f4e797028ceb063569bddf1d2fa694ef87117dec12fe7f65238c50ce80`  
		Last Modified: Tue, 18 Aug 2026 19:17:16 GMT  
		Size: 17.4 MB (17422472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4451976d765452ddc728e485120895f174a52b1d674d33b2872a5e6018f956`  
		Last Modified: Tue, 18 Aug 2026 19:17:18 GMT  
		Size: 94.7 MB (94653902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098a321b58b35be6cf91ed38c6cdb6a0356244789d47c503281e13992f73462f`  
		Last Modified: Tue, 18 Aug 2026 19:17:15 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e5b302709a23b96c618747c8577ab5164fd8cbcce646c3043c02ae2a4fa7f3`  
		Last Modified: Tue, 18 Aug 2026 21:24:58 GMT  
		Size: 24.5 MB (24521591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f7015587e89c9b2d8ae590e7475ad974b5658eb5ff48dde4fff655f1efea50`  
		Last Modified: Tue, 18 Aug 2026 21:24:58 GMT  
		Size: 9.4 MB (9359981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488591363292750b7cfd7ad3f7c347dd23cf898738c9768462f9bed1262b2831`  
		Last Modified: Tue, 18 Aug 2026 21:24:57 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719888a56824ab06bf5096784481ba6328f42f67025fa0a30806b47c59f2c4c8`  
		Last Modified: Tue, 18 Aug 2026 21:24:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin` - unknown; unknown

```console
$ docker pull maven@sha256:b0e15dfbe25882a5f55fe9615d19313a03c89bede3febfe96b5fbd7d1b97847e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4884433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe0ba93ba57ea65e7366fb79d107a363e6a9afe9e13f681554c3b023f0c56430`

```dockerfile
```

-	Layers:
	-	`sha256:2d786ba5ec083dac1bcaf3cdf72309b85a71a9d14d61dc557531a3db3df3ab87`  
		Last Modified: Tue, 18 Aug 2026 21:24:57 GMT  
		Size: 4.9 MB (4863613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c969a2f76e5a95876b551a41faae175a427b73322ddcdb97eadf4c097887702`  
		Last Modified: Tue, 18 Aug 2026 21:24:57 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:f54d5d0fa0f1f5725450b93aa034b8828bc28423f2472b44db5035fc009903f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175105872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8027970b4a1dcb269032df71b425cb53db0eee54e0b37f0ee756f07912b2f5ef`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 18 Aug 2026 19:16:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:16:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:16:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:16:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:16:34 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 18 Aug 2026 19:16:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 19:16:52 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:16:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:16:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 19:16:52 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 21:24:52 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:24:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:24:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:24:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:24:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:24:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:24:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:24:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:24:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:24:52 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:24:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:24:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:24:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df68bd238f158afff731378b6e5d4de0b3c7942fc58f08be15f156e7ffa2a923`  
		Last Modified: Tue, 18 Aug 2026 19:17:09 GMT  
		Size: 18.6 MB (18610268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d1962de8f3ca8f55215a202f272b0ef023b349705b9c255bc00508922df04a`  
		Last Modified: Tue, 18 Aug 2026 19:17:11 GMT  
		Size: 93.6 MB (93630300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41aa763ba37f13b699d9d229f2386c4065f9f5addd3d12a851440ccc952c5338`  
		Last Modified: Tue, 18 Aug 2026 19:17:08 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba383d22a3fe80a29e74891b33ba47165ada721863dddd83e76a8ee7aec55c8`  
		Last Modified: Tue, 18 Aug 2026 21:25:05 GMT  
		Size: 24.6 MB (24614589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154b5a7c5e7e9eba633545fa73f475d7bad0f86988a90668fcb8fc4cb6c21dbf`  
		Last Modified: Tue, 18 Aug 2026 21:25:05 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71ec540408e52963f4024b1b194930b74cefc2ab21e968172970aa3fe40e55e`  
		Last Modified: Tue, 18 Aug 2026 21:25:04 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16cfdfd998b73be6a34ac7454b8a46034fb3e6dd6437c2eddbc444d912267b38`  
		Last Modified: Tue, 18 Aug 2026 21:25:04 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin` - unknown; unknown

```console
$ docker pull maven@sha256:2f64ee297180202f1c7de9e803d27e23da8225f1f81da766a577cef34e6c535d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5022384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c9c7506a5b0505008accd436acdd7c7474a899a01a980dfc384ac202803318`

```dockerfile
```

-	Layers:
	-	`sha256:46fb9526dae487308e7084ab271380b3de9ed6300269c5054aa8eadcea1a2653`  
		Last Modified: Tue, 18 Aug 2026 21:25:04 GMT  
		Size: 5.0 MB (5001299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a1eec5051ae74ee5f5b9d69605f5e9d23387e7c1e61163b69ccb102aaa4110d`  
		Last Modified: Tue, 18 Aug 2026 21:25:04 GMT  
		Size: 21.1 KB (21085 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin` - linux; ppc64le

```console
$ docker pull maven@sha256:ef240c7dabd0b7b585fd7b13fdf75421ed61df707fab36180894c6847477246e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.7 MB (186667931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d7116ee587bbb45c715ef97096aaac682e131917a702626e456306158b4419`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:27:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:27:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:27:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:27:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:27:35 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 01:33:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:33:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:33:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:33:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:33:41 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 07:40:16 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 07:40:16 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 07:40:16 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 07:40:16 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 07:40:16 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 07:40:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 07:40:16 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 07:40:16 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 07:40:16 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 07:40:16 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 07:40:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 07:40:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 07:40:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bde453571613a5be984309dbf5a65777dd960118404cd94b76d39147e5a9b5a`  
		Last Modified: Tue, 04 Aug 2026 01:28:55 GMT  
		Size: 19.9 MB (19917008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b833d80b6bfed18c55dca00d92a333da31e5485bd518531a394b73584c6428a4`  
		Last Modified: Tue, 04 Aug 2026 01:34:18 GMT  
		Size: 94.0 MB (94029601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f791a4c3e57232eb166ae78e438d628ef212b1dae01c387b0c99275184e1b55e`  
		Last Modified: Tue, 04 Aug 2026 01:34:15 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc9c9d58326c59453f75e858da7ea1f26ed4c13bddc20504954baf8c68fc8a8`  
		Last Modified: Tue, 04 Aug 2026 07:40:42 GMT  
		Size: 29.0 MB (29047171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39558a39408f975ed5aa2b7518d491aeec73777730d71d27f55c55f23b871fb9`  
		Last Modified: Tue, 04 Aug 2026 07:40:42 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a481f797390915d58a130fa13d364e2dee4fed79f409e54685c09727573de6`  
		Last Modified: Tue, 04 Aug 2026 07:40:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61fac2283dfdae5eb60c97c0d71287a41bcd29b91075d85f0e609e54534311f`  
		Last Modified: Tue, 04 Aug 2026 07:40:41 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin` - unknown; unknown

```console
$ docker pull maven@sha256:822b2b97d50bf8b513cf8cc064c58da3382911c0e759b84fc356d0a1ed0f90be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4919073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7124aeacfe517a46e9853db76bfe1a5c13268668c5bbcfc47546d4da91d19f56`

```dockerfile
```

-	Layers:
	-	`sha256:71199c1d9015a6d4df33c5324e4727f3d179f8bffce4beb6404cc70e3e98cc9e`  
		Last Modified: Tue, 04 Aug 2026 07:40:41 GMT  
		Size: 4.9 MB (4898138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27942e40c08ac1f34383ae32a68ebeab064a65686a5a383c140b767c21b29f47`  
		Last Modified: Tue, 04 Aug 2026 07:40:41 GMT  
		Size: 20.9 KB (20935 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin` - linux; riscv64

```console
$ docker pull maven@sha256:f4b1032dc028a8194dbda79f50bb31a8faead176ea7f3db10276f10817ea16e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.5 MB (180506349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91eeeaa6d2a22c3d5a8a8897d47f8f31378bb5734c39938841f0e83fc45e04a8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 17 Aug 2026 14:15:49 GMT
ARG RELEASE
# Mon, 17 Aug 2026 14:15:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 14:15:51 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 14:17:04 GMT
ADD file:337a123e95e711614eff11fd53aa4a84d1e090961d0511f1605a70ac7c33d46a in / 
# Mon, 17 Aug 2026 14:17:10 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 00:39:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 00:39:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:39:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 00:39:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:39:27 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 19 Aug 2026 00:55:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 19 Aug 2026 00:55:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 19 Aug 2026 00:55:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 19 Aug 2026 00:55:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 19 Aug 2026 00:55:42 GMT
CMD ["jshell"]
# Wed, 19 Aug 2026 08:44:44 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 08:44:45 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 19 Aug 2026 08:44:45 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 19 Aug 2026 08:44:45 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 19 Aug 2026 08:44:45 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 19 Aug 2026 08:44:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 19 Aug 2026 08:44:45 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 19 Aug 2026 08:44:45 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 19 Aug 2026 08:44:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 19 Aug 2026 08:44:46 GMT
ARG USER_HOME_DIR=/root
# Wed, 19 Aug 2026 08:44:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 19 Aug 2026 08:44:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 19 Aug 2026 08:44:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d85e724d9e83fe5958acde2418944fdb2b9077a9c6b5963f99e62d6feb11fb31`  
		Last Modified: Mon, 17 Aug 2026 14:27:49 GMT  
		Size: 31.0 MB (30983072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d13ba77835e49ad6ad00d1cf4e85f46c70183c285649ee44858a24627a91a30`  
		Last Modified: Wed, 19 Aug 2026 00:45:29 GMT  
		Size: 13.8 MB (13807212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e7d691ffb3463761b829d62f48a263952e011bb9282d6bf8c0c2bbc950a102`  
		Last Modified: Wed, 19 Aug 2026 00:59:15 GMT  
		Size: 93.2 MB (93219797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd192d6e137c3b9622bbe3bf92c458240ad8a4b9694af7954dd29f52d1c4526`  
		Last Modified: Wed, 19 Aug 2026 00:59:01 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8d35e2e36bc19d4b549b042221fd4c42ade41220a1af68257520a98e71e544`  
		Last Modified: Wed, 19 Aug 2026 08:47:43 GMT  
		Size: 33.1 MB (33132794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc658d1a38b809b083a68a6413539934926b953cb7cdaea56dcf95bb4e744937`  
		Last Modified: Wed, 19 Aug 2026 08:47:40 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c743465728d1c88763920c4ac9324c1a9a55a58a3acc611a18bb5282eb3e827`  
		Last Modified: Wed, 19 Aug 2026 08:47:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fff11432a2fcb4f7767d0f03bd78b6ebd3b871504fb1e6a01a0f191d24dc40e`  
		Last Modified: Wed, 19 Aug 2026 08:47:37 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin` - unknown; unknown

```console
$ docker pull maven@sha256:46f1c38949bc347f7ff1c8f198c6e6ea01c2898faf801fd85f3090715c5c6929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4970854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d8b231f72e2a482ba1d069ef67ad652b4789a4b9d8dba5535a77d1e6937081`

```dockerfile
```

-	Layers:
	-	`sha256:0d2b8bcc99ef8d5cf3435e24b4bd397cd195c032a06bd6f342696f28934fbf18`  
		Last Modified: Wed, 19 Aug 2026 08:47:38 GMT  
		Size: 4.9 MB (4949918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5885ece6672126ee4a15c4777a03ce0e7db1b2a57a70f1a84b99af92852b35b8`  
		Last Modified: Wed, 19 Aug 2026 08:47:36 GMT  
		Size: 20.9 KB (20936 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin` - linux; s390x

```console
$ docker pull maven@sha256:0c5e527cbbf9858b6202eef80ef01761f981985912a98a40fbc97227f8a0a312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (171968842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73583dc61a32604f42b26c89f8c4eddfc82ae9ce9cd996b61b8b502b4625d347`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:10 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:10 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:12 GMT
ADD file:4483a9a8fede37e8d587c88a49ab036598c57a1cdc8558d50175c642d747d633 in / 
# Mon, 17 Aug 2026 13:37:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:14:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:14:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:14:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:14:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:14:08 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 18 Aug 2026 19:14:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 19:14:22 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:14:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:14:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 19:14:22 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 21:29:24 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:29:24 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:29:24 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:24 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:24 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:29:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:29:24 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:29:24 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:29:24 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:29:24 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:29:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:29:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:29:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ee0430f8558bc48d0f8955c97cbc8f0d5fe39e822879d4ca2062a95823af0db`  
		Last Modified: Tue, 18 Aug 2026 19:14:46 GMT  
		Size: 16.3 MB (16266083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7027fb45f7ddec99896c87f78fe2db7e4d5aaf052044e2b1226f25ba05aaeda3`  
		Last Modified: Tue, 18 Aug 2026 19:14:47 GMT  
		Size: 90.7 MB (90665684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b138c799e59c9ba0c5770ac195e7b4f6cc01d87d6b6bf9b7f509341fa34422`  
		Last Modified: Tue, 18 Aug 2026 19:14:45 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7d8bbf05bf91f4f4d6cd0c8520cfeb8644b8f90b5bba1a201582da45345330`  
		Last Modified: Tue, 18 Aug 2026 21:29:43 GMT  
		Size: 25.7 MB (25738350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:736b58a154579bcf2ddd9c8ea209b06a36ecb34110156ba29a5278d751f3740b`  
		Last Modified: Tue, 18 Aug 2026 21:29:42 GMT  
		Size: 9.4 MB (9359965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fc19cbd85bcfb778a397530d6d03b61cc634c12f87719150d249a0cf408519`  
		Last Modified: Tue, 18 Aug 2026 21:29:42 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e32adecf79f7a4fe870f0e6ab5e6029e9b069f4d2e585d335b65241e78c488`  
		Last Modified: Tue, 18 Aug 2026 21:29:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin` - unknown; unknown

```console
$ docker pull maven@sha256:c0860c8292956678c25a5c23bec8817434eb5eb266aee5d3e944ea429e2e0f13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4815023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:641a57ab4ac94cc366c6f3cde5d4cee7cdf5191d3289d8e1d999f6445eb9e398`

```dockerfile
```

-	Layers:
	-	`sha256:91cc097760966fb017cf372cf221c4c172f56de1941925ca988d43cb091c98c9`  
		Last Modified: Tue, 18 Aug 2026 21:29:42 GMT  
		Size: 4.8 MB (4794203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b43d068e3fd76691db25c75cefecae4df12d11b2f761d9591b6231ac452a894`  
		Last Modified: Tue, 18 Aug 2026 21:29:42 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json
