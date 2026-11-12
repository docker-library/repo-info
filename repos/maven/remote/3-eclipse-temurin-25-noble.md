## `maven:3-eclipse-temurin-25-noble`

```console
$ docker pull maven@sha256:8bc26436417b39cd3fbac4150d63df1fa6f8262b713c765c99f4d8075d79bcb8
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

### `maven:3-eclipse-temurin-25-noble` - linux; amd64

```console
$ docker pull maven@sha256:b0ed06b4bab36320e1cd914c6e39209160f9cc4896382dab2f170f2b8a02bde7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176970873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357f9144fef68d0e42b18a592c57aa369e1552bd72778bc44ebf1ed82cf22948`
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
# Wed, 11 Nov 2026 23:18:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:18:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:18:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:18:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:18:16 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 23:18:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:18:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:18:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:18:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:33 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 01:46:12 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:46:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 01:46:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 01:46:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 01:46:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 01:46:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 01:46:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 01:46:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 01:46:12 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 01:46:12 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 01:46:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 01:46:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 01:46:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3127865f71468b83a7a67b75511bc5ca0499459b852c5586e884f4d55600d71`  
		Last Modified: Wed, 11 Nov 2026 23:18:49 GMT  
		Size: 17.4 MB (17442918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e9afc7e76075663e137873bff10b04d6c6e89bfdeb35749efaa107fe52a182`  
		Last Modified: Wed, 11 Nov 2026 23:18:51 GMT  
		Size: 92.7 MB (92732005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ea43271021708e07440ce676eb9a214266e35eed8b415fc019076c3a0c73b5`  
		Last Modified: Wed, 11 Nov 2026 23:18:48 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f23ba1ab8e01a561c0b92551281a4f9f2e2af08f615eef17146afe545f0028`  
		Last Modified: Thu, 12 Nov 2026 01:46:27 GMT  
		Size: 26.9 MB (26940214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2771c720d0d03d7ed10b0e9cc941b0360495e012e67039d2555330dee0694de6`  
		Last Modified: Thu, 12 Nov 2026 01:46:27 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36940caef87e9aef09a4956f5b1b490862ef7ebd799d61828884fce33f846bb5`  
		Last Modified: Thu, 12 Nov 2026 01:46:26 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd8514b8902f2febae6c04fcf342a1bed68b87b36f18fdee56d06e23f524c9b`  
		Last Modified: Thu, 12 Nov 2026 01:46:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:a68b3e8df46005c482eb4558cec01482eb9aecdedfedae75ae2fc103f41152ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4885070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b070dfc47fa3c8b53b4e780af8e56bdf53ea7e504f54f209e48f71c77d94ff0b`

```dockerfile
```

-	Layers:
	-	`sha256:8965b187d25328d20fe915907c62bec3a408ff27b20aa3352e62b3486671d28c`  
		Last Modified: Thu, 12 Nov 2026 01:46:26 GMT  
		Size: 4.9 MB (4867732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aec158dd2236db13234b253852e9bd655e55347f75a93f466f8eef741988417a`  
		Last Modified: Thu, 12 Nov 2026 01:46:26 GMT  
		Size: 17.3 KB (17338 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-25-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:6bdb821dfcb7f490efc6ab10e8f96df417f7f8d75bd255b452793677cc4fe692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.0 MB (173956502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19613ea72071a629cea30bf2ca48572e05bedd1b504270987f353dd3b93dcec`
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
# Wed, 11 Nov 2026 23:22:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:22:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:22:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:22:25 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:22:25 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 23:22:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:22:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:22:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:22:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:22:43 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 01:51:02 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:51:02 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 01:51:02 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 01:51:02 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 01:51:02 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 01:51:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 01:51:02 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 01:51:02 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 01:51:02 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 01:51:02 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 01:51:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 01:51:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 01:51:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66d10968cd9ff6f330a1c77bf186024fcb91b5bb6600fd5ae64d42ad48a2542`  
		Last Modified: Wed, 11 Nov 2026 23:23:00 GMT  
		Size: 18.6 MB (18633732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35579e99da51e83043199daf14ab33d4b4a21206103dd6c3a83677e50cc2ef8`  
		Last Modified: Wed, 11 Nov 2026 23:23:02 GMT  
		Size: 91.7 MB (91668030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ee1da0415936a2fb9f3b23c75f15b3f9695fbb07c43e4642c98194a9f4e387`  
		Last Modified: Wed, 11 Nov 2026 23:22:59 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac3c2d1b581dc28ae06880a2f8551cfb1518a0edf1543f17e1d0865fa3d7d23`  
		Last Modified: Thu, 12 Nov 2026 01:51:16 GMT  
		Size: 24.6 MB (24626977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44e5c401921858f1e7f84dc27cf078be3a8cec28e89d7ea653532db34399531`  
		Last Modified: Thu, 12 Nov 2026 01:51:16 GMT  
		Size: 10.1 MB (10059005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a51e761d38792d7e8caf20fe63d5df3a36f3eefb580b357379f5fcd10d839698`  
		Last Modified: Thu, 12 Nov 2026 01:51:15 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a4f620d787838cf561f626b821ff5ee9da5f6113a268bbe34fde22b607dfb0`  
		Last Modified: Thu, 12 Nov 2026 01:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:e4d144f2dd7c834a4c55bd7b4784fae2e4080aea87ea3b48aafbbe11c85d5a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5022759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f8e6e697a7620a2f45c068f568ac6becff8d61c44d4b957a921b3ccafcc7be`

```dockerfile
```

-	Layers:
	-	`sha256:79b1c2f8c6b8eb20a0bef20dc70076e4cae62e4d2222e014c5f626b82cc23ffb`  
		Last Modified: Thu, 12 Nov 2026 01:51:15 GMT  
		Size: 5.0 MB (5005286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:badf8e6769102b93eb89e7a8f52292b605161427558870ab24369ee8e0a6d706`  
		Last Modified: Thu, 12 Nov 2026 01:51:15 GMT  
		Size: 17.5 KB (17473 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-25-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:ae71cea437be1cdd390ec3c709a8870a5d95942f4792fbf16ae4203f4f106310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181079192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a921519d5396c5d625a391bf47ff255905ecd17983f64a3c2bc193a780b820a`
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
# Thu, 12 Nov 2026 02:02:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 02:02:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 02:02:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 02:02:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:02:37 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 12 Nov 2026 02:04:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 12 Nov 2026 02:04:50 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 12 Nov 2026 02:05:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:05:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 02:05:00 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 10:28:03 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 10:28:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 10:28:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 10:28:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 10:28:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 10:28:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 10:28:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 10:28:06 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 10:28:07 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 10:28:07 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 10:28:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 10:28:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 10:28:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5013c177613a5990101ab050543b8548ddaa1a87524c663c32f3f367c4f72c`  
		Last Modified: Thu, 12 Nov 2026 02:06:04 GMT  
		Size: 17.3 MB (17309210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0677f1b043e0679b21964f7254ada2a418ab17c2a789d034dd7f9b535251ec5c`  
		Last Modified: Thu, 12 Nov 2026 02:06:06 GMT  
		Size: 90.2 MB (90234512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f86fa32b7257cba2ad625fbde90034b1ce7fd0ffd75ceab222301c852b091a`  
		Last Modified: Thu, 12 Nov 2026 02:06:03 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b441c8ebe5cdaffa6f81673e8f9b32d0e106070e91c7d4e61eff3d4fd1bb9b60`  
		Last Modified: Thu, 12 Nov 2026 10:28:47 GMT  
		Size: 29.1 MB (29066442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c92c32249fa4fbd752e513e095a5467d7b992801b10b89860df55de4002119`  
		Last Modified: Thu, 12 Nov 2026 10:28:47 GMT  
		Size: 10.1 MB (10059014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df44493c8dc96a91c1542bd4b024e399ebbe93c652a46660740c5452e4b700e1`  
		Last Modified: Thu, 12 Nov 2026 10:28:46 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9b1f91262302b9496f68878b69cab5ed52df5a3c7213fc8a6b0be35ee075f4`  
		Last Modified: Thu, 12 Nov 2026 10:28:46 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:d8d21535f761844803438d512e565d74ad3321a27f6b988c6e919fc1b1d1747c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4917096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd6ce9c1b08eb6dd6196fab721d07cd08b1317be187a463e0e8c43b4248f895`

```dockerfile
```

-	Layers:
	-	`sha256:d4d2be93bc59ebc5a6484fb7e73d1bf931c92a53746de0b57a07f72442838d54`  
		Last Modified: Thu, 12 Nov 2026 10:28:46 GMT  
		Size: 4.9 MB (4899706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6840c611a83ea241f1cecd2b077e43d214543d26d7c85555251cc8407a05d9df`  
		Last Modified: Thu, 12 Nov 2026 10:28:46 GMT  
		Size: 17.4 KB (17390 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-25-noble` - linux; riscv64

```console
$ docker pull maven@sha256:5e10284fe5c6d09f711996c3b628f572f39db09d8ba36b2140b0f4e1a5c90a5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.9 MB (179925749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a208257da7358c736bad168a9d91fffca7c13a90f5476c72a91fbb42b86aac`
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
# Sun, 01 Nov 2026 12:12:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 01 Nov 2026 12:12:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 01 Nov 2026 12:12:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sun, 01 Nov 2026 12:12:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 01 Nov 2026 12:12:58 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Sun, 01 Nov 2026 12:15:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sun, 01 Nov 2026 12:15:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sun, 01 Nov 2026 12:15:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sun, 01 Nov 2026 12:15:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sun, 01 Nov 2026 12:15:42 GMT
CMD ["jshell"]
# Sun, 08 Nov 2026 12:24:16 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 08 Nov 2026 12:24:17 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sun, 08 Nov 2026 12:24:17 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sun, 08 Nov 2026 12:24:17 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sun, 08 Nov 2026 12:24:17 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sun, 08 Nov 2026 12:24:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sun, 08 Nov 2026 12:24:17 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sun, 08 Nov 2026 12:24:17 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sun, 08 Nov 2026 12:24:17 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sun, 08 Nov 2026 12:24:17 GMT
ARG USER_HOME_DIR=/root
# Sun, 08 Nov 2026 12:24:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sun, 08 Nov 2026 12:24:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sun, 08 Nov 2026 12:24:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9c292ed508c8980046daab8996841e49bec6ec20e645ab48bb63b8228da83d11`  
		Last Modified: Sun, 25 Oct 2026 14:50:32 GMT  
		Size: 31.1 MB (31054629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ae991d124179bb9f66e1c43d4dfc4300f34b93982d94e5fdad2e69d7f774fb`  
		Last Modified: Sun, 01 Nov 2026 12:19:12 GMT  
		Size: 13.8 MB (13816568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c07b122ab0a13b100137e4c65fd5f8f35018de198bd4102a7b85718929d41f`  
		Last Modified: Sun, 01 Nov 2026 12:19:24 GMT  
		Size: 91.2 MB (91166584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fff3e5a267f1978d9d9f974c4af62c24d836998f289084af7789dba4c89caa4`  
		Last Modified: Sun, 01 Nov 2026 12:19:08 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e9b79c39c1f8b4d96785d08d0169a053f68ad25f23783f6bb4c2e74cbee280`  
		Last Modified: Sun, 08 Nov 2026 12:27:31 GMT  
		Size: 33.8 MB (33825451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5419f96df19edcb7ed38ec77b18a012edf36721811d36af4a08dd22a9cd2b61`  
		Last Modified: Sun, 08 Nov 2026 12:27:27 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3aaa611fe6c1a7994d1a1ca3d19efaf5a8279b477479acd651452caa9b18d7`  
		Last Modified: Sun, 08 Nov 2026 12:27:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a92fe78d45bc01b012334b44d6f4d657c7c87eac656b4c56f287c95ce3b5ff4`  
		Last Modified: Sun, 08 Nov 2026 12:27:24 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:64c285b44ca12bf087b39e43665f5b17a653605cf9ad02c9ecfcc9ed965c3ec3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4969518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd764310a0f8a0cd12656faeb714092a663e6771cf272e51096dbd278602fce3`

```dockerfile
```

-	Layers:
	-	`sha256:bf9e5afc56c18abf2a588e7e58f56256eca9246d474526bdb9c842907e4c5d77`  
		Last Modified: Sun, 08 Nov 2026 12:27:26 GMT  
		Size: 5.0 MB (4952128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083d7f80474cb79f6327567d8f3dd5bb924250039b69e1de1ef80997b12f6e36`  
		Last Modified: Sun, 08 Nov 2026 12:27:23 GMT  
		Size: 17.4 KB (17390 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-25-noble` - linux; s390x

```console
$ docker pull maven@sha256:6e68f0d8dd05a033032e4acc67237f440b4b5a1471b044f84e59f2592ed1e74e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170250043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e718ab1b42697ec6c962d304a9fff834132c0d64f5daf4f8c6081e07f6c13c4`
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
# Wed, 11 Nov 2026 23:16:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:16:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:16:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:16:06 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:16:06 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 23:16:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:16:19 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:16:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:16:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:19 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 02:53:17 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:53:17 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:53:17 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:53:17 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:53:17 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:53:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:53:17 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:53:17 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:53:17 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:53:17 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:53:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:53:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:53:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7293687af58ff49010e19a0c0385c8642169b34f375b99c251f17826a4cf5e07`  
		Last Modified: Wed, 11 Nov 2026 23:16:40 GMT  
		Size: 16.3 MB (16277005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef210bd85b0ff973a4270435191bea22748c9553d4eda0a5c0d5422e7ed6413`  
		Last Modified: Wed, 11 Nov 2026 23:16:41 GMT  
		Size: 88.2 MB (88185594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aea66d37aee713a873583bab0b23bce44e2dc584bc1bf1b912b59bae5e93c4d`  
		Last Modified: Wed, 11 Nov 2026 23:16:39 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96ecccba4bfba4febf6e8e1b1a414e768bb0179b943d4d267a0102203333831f`  
		Last Modified: Thu, 12 Nov 2026 02:53:35 GMT  
		Size: 25.8 MB (25757340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d873d53e6fb5dfa469db34d69b39c94d73f8e0d90784c5a7a466a67cc818409`  
		Last Modified: Thu, 12 Nov 2026 02:53:34 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6973c0be6077cfd6d6bdd510b7bc8b08fdd1bb69b85fdac1f80d6c9bcf04c3`  
		Last Modified: Thu, 12 Nov 2026 02:53:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b986d724f27e18fe34318a9ea30e576d2a8b84bb60739c400dbcca06a051f15`  
		Last Modified: Thu, 12 Nov 2026 02:53:34 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:46d74663027da54accc52efdfa5f67cda3a45a6c2445d59ddd332c03b8995b33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4813177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fbdca502d933b9d4290d909dedc9432df4006ff1890cd1f3004029a2561517`

```dockerfile
```

-	Layers:
	-	`sha256:984fe91af688b3059da77b41e4564a784403f70780ce961eec6125cac72234b3`  
		Last Modified: Thu, 12 Nov 2026 02:53:34 GMT  
		Size: 4.8 MB (4795837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7924b4d3ac9eb85275eeab1a51ddadce80fc6455ae3b661aafcbf1b79447ccea`  
		Last Modified: Thu, 12 Nov 2026 02:53:34 GMT  
		Size: 17.3 KB (17340 bytes)  
		MIME: application/vnd.in-toto+json
