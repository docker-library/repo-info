## `maven:3-eclipse-temurin`

```console
$ docker pull maven@sha256:2bc6924d954a6efefde0a9629228914acf72e4abcdb927b68f19edd1135a0cb1
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
$ docker pull maven@sha256:5e422f0629a3dc306762b6b31e85a6fe7886eac5e60306b70fb11e1d2a8e9048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175770909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44784ba76092331c1cef20060df9239d39864d662dfd3cdded8840319d86f2ad`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:21:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:21:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:21:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:21:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:21:23 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 02:21:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        arm64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64el)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        riscv64)          ESUM='b247d7cb807d6b2be85c7e7bd2ba2c968cf7cbe2533a63689276c03ce51dc8d4';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:21:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:21:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:21:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:21:45 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 04:35:40 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:35:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:35:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:35:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:35:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:35:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:35:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:35:40 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:35:40 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:35:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:35:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:35:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:35:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c62326d8409f82486abe8c611c009e67b716b3b2d9ad6a306e96d178d8801c1`  
		Last Modified: Wed, 09 Sep 2026 02:22:02 GMT  
		Size: 17.4 MB (17422589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c6bc8c1efcab29f7812c7db91bb9f26bb82d2dc8c50e88cd26e300d414a497`  
		Last Modified: Wed, 09 Sep 2026 02:22:03 GMT  
		Size: 94.7 MB (94695773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403da0842ab1e1029bdf26db6590fafe11dfb87786b02c78b14ff686d9f7da87`  
		Last Modified: Wed, 09 Sep 2026 02:22:01 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d93faa09af32e737d542cb411b80ac6def2fd36f9df93060f3b63fd66fee829`  
		Last Modified: Wed, 09 Sep 2026 04:35:53 GMT  
		Size: 24.5 MB (24525825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ddbc23fd5cbb3cb8ac5ab8a131e56aa7b1eaf2ba0f79ec3a4e181c02f654a63`  
		Last Modified: Wed, 09 Sep 2026 04:35:53 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc05de4748e705d2738f30c4c46157e187a0483aeca8b67b063782c2ff28c70`  
		Last Modified: Wed, 09 Sep 2026 04:35:52 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c45ce069451a0f54557630023b02e0df9d48bdca2af67da53e52d23d1f83bc`  
		Last Modified: Wed, 09 Sep 2026 04:35:52 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin` - unknown; unknown

```console
$ docker pull maven@sha256:0d712a6d0d27ec813ad09e4239dc78a2677f2cadebd63286433dbf060c256f8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4884450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca298838605605dc49dbd66a52e4fb862605d06cd522ea7196f5b7f6b6245725`

```dockerfile
```

-	Layers:
	-	`sha256:4d4dde76ea133710a05e31b7f82dc4ca47fd34ab516f8025c9409c0cdaa2f633`  
		Last Modified: Wed, 09 Sep 2026 04:35:52 GMT  
		Size: 4.9 MB (4863629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f05b54762ce6a7a3fcca14ae569ade007c5bb5435a91219c6828346509115d53`  
		Last Modified: Wed, 09 Sep 2026 04:35:52 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:fdcb6d079d75647dea3453dcbd2e6604a9ddabe8b33da04acad62b6216a39403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175224315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d973281e22778591180620c88a8255a23f868a6ab8b82134fe9dbf1ad0e202b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:18:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:18:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:18:27 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 02:18:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        arm64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64el)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        riscv64)          ESUM='b247d7cb807d6b2be85c7e7bd2ba2c968cf7cbe2533a63689276c03ce51dc8d4';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:18:50 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:18:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:18:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:18:50 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 04:24:49 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:24:49 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:24:49 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:24:49 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:24:49 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:24:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:24:49 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:24:49 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:24:49 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:24:49 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:24:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:24:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:24:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb9eb55a8e4543b3f862e0cfee1109d03217d26101e27fb9fee46758fdfcbc2`  
		Last Modified: Wed, 09 Sep 2026 02:19:06 GMT  
		Size: 18.6 MB (18610074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:216ec218d09d962eb22a4ad7feafa30e2d5a2374bf3703d9bcbb5b6454e659ef`  
		Last Modified: Wed, 09 Sep 2026 02:19:08 GMT  
		Size: 93.7 MB (93675672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7accbea624985d1093365f062671af6bb2c8bc84557202789132adfed0b69340`  
		Last Modified: Wed, 09 Sep 2026 02:19:05 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d1652f0497ecead83de6624a4a904fcedb240a5a7d81da8632e8b33ce29d27`  
		Last Modified: Wed, 09 Sep 2026 04:25:02 GMT  
		Size: 24.6 MB (24635085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4783efa83d3da614daaf66815a29fde002238a972339a729fe200fbb36774681`  
		Last Modified: Wed, 09 Sep 2026 04:25:02 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c4da0a177035132f22bec8828c40df08a1481cc55de9b3f24c0eac9541cccb`  
		Last Modified: Wed, 09 Sep 2026 04:25:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0e71313d3e14fc30da1862d9c2533b1d165ddfcc5e79e6e7d8971d0daeae0f`  
		Last Modified: Wed, 09 Sep 2026 04:25:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin` - unknown; unknown

```console
$ docker pull maven@sha256:168160ceefc271630c36fa20924388efe231fe64f468347a0a7908d13e7c00f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5022402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5358005097fcf18b077b7df86b0572a9034c72704bb3c163f2909a4a9e984897`

```dockerfile
```

-	Layers:
	-	`sha256:709e8431e87c3f76a8a7ca053f21e8fdbec76f04e6a78aa3c9165f8219921292`  
		Last Modified: Wed, 09 Sep 2026 04:25:01 GMT  
		Size: 5.0 MB (5001315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dbbabe3e0f5ce624c332069b795097356afa542d4508467da0c849a81004142`  
		Last Modified: Wed, 09 Sep 2026 04:25:01 GMT  
		Size: 21.1 KB (21087 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin` - linux; ppc64le

```console
$ docker pull maven@sha256:c5b492f3a044faa1db629f3c30d18bad41dd48cc49e9fe2c1a7002185b19be6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 MB (183566234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f13a97c096113255740b33279e441344740ab2fdee2be1584f12be59f9c12d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:54:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:54:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:54:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:54:30 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:54:30 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 02:02:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        arm64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64el)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        riscv64)          ESUM='b247d7cb807d6b2be85c7e7bd2ba2c968cf7cbe2533a63689276c03ce51dc8d4';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:03:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:03:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:03:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:03:04 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 12:14:11 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 12:14:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 12:14:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:14:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:14:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 12:14:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 12:14:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 12:14:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 12:14:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 12:14:13 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 12:14:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 12:14:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 12:14:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6bdbb37cb2c7dd6b6324c9b69a5b224774b31347423ee9ee03b392776f32d2`  
		Last Modified: Wed, 09 Sep 2026 01:57:26 GMT  
		Size: 17.3 MB (17288987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa71dcee3de8d78ee1ad356e716e893964765e04f6bfe448e9a22ab94481118f`  
		Last Modified: Wed, 09 Sep 2026 02:04:02 GMT  
		Size: 93.5 MB (93481542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94526c9d24ad0f3489bff02b985bf008ffd9947274711c70981f7bb47ee355a`  
		Last Modified: Wed, 09 Sep 2026 02:03:59 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f870eb7094581aff251bcbb0a4daad1b1a29c3941a840e0afff261dbc784461`  
		Last Modified: Wed, 09 Sep 2026 12:14:42 GMT  
		Size: 29.1 MB (29055370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12d90309d010af2560937e323c910453e5c803faa8676e69ae794a254046514`  
		Last Modified: Wed, 09 Sep 2026 12:14:42 GMT  
		Size: 9.4 MB (9359954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:830ca73e9279f6aba8f48789aac1c2170cb10d75d335778041fb4a0ae2820d69`  
		Last Modified: Wed, 09 Sep 2026 12:14:41 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73522e3c517e160cf098498f19c4c5a5d13bdaf5f97f30ed87e3da42e4141b52`  
		Last Modified: Wed, 09 Sep 2026 12:14:41 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin` - unknown; unknown

```console
$ docker pull maven@sha256:39fd25d29ef0e2424140f826130f0314db94cfff96f41a2daef6a865aec4fbe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4919092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766a6184516a7bd63e1647c940d98f3d491082f71572f7252d3822e6860cef71`

```dockerfile
```

-	Layers:
	-	`sha256:daf6ce3f45d6f06be27f32106317bad00629c2b97c9e019bd150a90af379d783`  
		Last Modified: Wed, 09 Sep 2026 12:14:41 GMT  
		Size: 4.9 MB (4898154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7b9a83a0d77fcb811fdd3330b736d62fefccb026abf4e0e18fdf225fa2981ae`  
		Last Modified: Wed, 09 Sep 2026 12:14:41 GMT  
		Size: 20.9 KB (20938 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin` - linux; riscv64

```console
$ docker pull maven@sha256:a81a721698a67e6d23961229fd136897e4cd690dea69da0ecb40b8717341db18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.6 MB (180598579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29e880e512356d2ef6d912c00b47383ff7fd4124bf4fe594c77febea2bb11296`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 07:43:12 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:43:13 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:43:13 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:44:03 GMT
ADD file:b9e2d6d291d1ed94a7f69f48c708e50bb181af64736f283e384c42c217fefce1 in / 
# Mon, 07 Sep 2026 07:44:07 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:39:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:39:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:39:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:39:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:36 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 02:55:21 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        arm64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64el)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        riscv64)          ESUM='b247d7cb807d6b2be85c7e7bd2ba2c968cf7cbe2533a63689276c03ce51dc8d4';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:55:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:55:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:55:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:55:36 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 09:22:34 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 09:22:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 09:22:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 09:22:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 09:22:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 09:22:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 09:22:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 09:22:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 09:22:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 09:22:35 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 09:22:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 09:22:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 09:22:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:43253cac98e0bd3027a1f91776c6624571e5e05e6df478c1452294560ee5ff91`  
		Last Modified: Mon, 07 Sep 2026 07:57:26 GMT  
		Size: 31.0 MB (31049202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70da7f41ae33d6ea0eeffe7a4534d2cd0e01d63196929e1e64c11277e73d6ca8`  
		Last Modified: Wed, 09 Sep 2026 02:45:38 GMT  
		Size: 13.8 MB (13807252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1087d8b1709253512c6247456f0094e5122f2f3b90acd4f71fbabaa004ef3867`  
		Last Modified: Wed, 09 Sep 2026 02:59:10 GMT  
		Size: 93.3 MB (93251289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac7c080c253e2689dc8f9727773c8f215e6e1c800103ebebd6c9532a8b04d61`  
		Last Modified: Wed, 09 Sep 2026 02:58:56 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c4a667db43fa8a83d86db30521da135b3353fc5d16dbce321e647113ef9c49`  
		Last Modified: Wed, 09 Sep 2026 09:25:31 GMT  
		Size: 33.1 MB (33127358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeed3177e9b66005771e46b603644455176c6bc5a53ec012763bd899cf7484f2`  
		Last Modified: Wed, 09 Sep 2026 09:25:27 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0572e9646ea201263654d1cf7a61b046514fe1a088a4318a927f3edb768a7213`  
		Last Modified: Wed, 09 Sep 2026 09:25:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cb480fc6f2cee05458294889f5ca0dcffd1f78459993266a26ec89d57649db`  
		Last Modified: Wed, 09 Sep 2026 09:25:24 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin` - unknown; unknown

```console
$ docker pull maven@sha256:1e47996c1156d4b33879eed916ca3403579c86084769071b3b2db6f6380e971d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4970872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f030c9b0ceceb5096cd8aa180d0311753b739d004c473a2ca30ec65076f4a820`

```dockerfile
```

-	Layers:
	-	`sha256:642156760cdf0b6767b013e89a85fd5111635d6afb01b2cee96ba0758d458ed5`  
		Last Modified: Wed, 09 Sep 2026 09:25:26 GMT  
		Size: 4.9 MB (4949934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0d7e035672668ae45a1d6ddf93c8c6633e903c28aa3e3edca53cba703eea0f0`  
		Last Modified: Wed, 09 Sep 2026 09:25:24 GMT  
		Size: 20.9 KB (20938 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin` - linux; s390x

```console
$ docker pull maven@sha256:307a2609602f873b7ea6433f2d52b9146d7cc8ac47c383e2719ee3c1b61361a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172017930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502f7d4ffec9ecbcfde9528d5ba6c3203874f8d99587eb8fd872e05cdd2f0fb1`
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
# Fri, 21 Aug 2026 18:32:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:32:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:32:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:32:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:32:31 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:36:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        arm64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64el)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        riscv64)          ESUM='b247d7cb807d6b2be85c7e7bd2ba2c968cf7cbe2533a63689276c03ce51dc8d4';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:36:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:36:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:36:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:36:33 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:21:38 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:21:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 21 Aug 2026 19:21:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 19:21:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 19:21:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 21 Aug 2026 19:21:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Aug 2026 19:21:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 21 Aug 2026 19:21:38 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 21 Aug 2026 19:21:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 21 Aug 2026 19:21:39 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Aug 2026 19:21:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Aug 2026 19:21:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Aug 2026 19:21:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe0db45147d76997a9756d7b6ee3b49c8e34ee1d34e6d2cea3a47f7cc257241`  
		Last Modified: Fri, 21 Aug 2026 18:33:06 GMT  
		Size: 16.3 MB (16266067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3378d5c59f385a13ee4a4cdbfc2c5b680bf02c4e7d579af9d0bc09e2a6dbc4ae`  
		Last Modified: Fri, 21 Aug 2026 18:36:56 GMT  
		Size: 90.7 MB (90712373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa9645351124605804c89cd338104d3ac45cb12c133b55fdbc69c960b0af2e57`  
		Last Modified: Fri, 21 Aug 2026 18:36:54 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42ba254de664a62ac416e4e308d39620cc5e8336ffec9fb8f45dd7d69f3a74d`  
		Last Modified: Fri, 21 Aug 2026 19:21:57 GMT  
		Size: 25.7 MB (25740754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd33a97a8b83d7d860b3379710cc80c54a4355f6c70d0fb44122bc8ac48b0f9`  
		Last Modified: Fri, 21 Aug 2026 19:21:56 GMT  
		Size: 9.4 MB (9359980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbf16809c32df0927ab14d3daa5ad240237b9f81928dff49618f26411d40c622`  
		Last Modified: Fri, 21 Aug 2026 19:21:56 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7020c340c6be7d14657c799bb4cbf2c3693c5afa345f99c5865386ddc9004a`  
		Last Modified: Fri, 21 Aug 2026 19:21:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin` - unknown; unknown

```console
$ docker pull maven@sha256:ac05dc6f68cf8157efc86a2af317f4160b61b50081fb89396f70a7e03bdfa84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4815027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1664760b6d06cbc9c86432a90f503a381a0a8037c383a741e08048295578867f`

```dockerfile
```

-	Layers:
	-	`sha256:7916fe3c352ab367f57738ccd87595fe52198d6e78987f4e58308470d340055d`  
		Last Modified: Fri, 21 Aug 2026 19:21:56 GMT  
		Size: 4.8 MB (4794205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2ae7aa216647769d8e29b1fe986f1b03c5d284c47966d9cb5fd020fbc886f48`  
		Last Modified: Fri, 21 Aug 2026 19:21:56 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json
