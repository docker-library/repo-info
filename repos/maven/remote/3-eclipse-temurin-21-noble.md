## `maven:3-eclipse-temurin-21-noble`

```console
$ docker pull maven@sha256:be0d4ea47a9844740bd691de7af8c1e51e861bb7284068e055f383da5c6ccdb7
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
$ docker pull maven@sha256:3e598b8b4680fa5ec51f9661fe278901cde75af841116f9f03956601c92a778f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243463478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dae7ba6ab719b3627206c755e24c411d1c281a12b1acb3d53515051cd7dbf98`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:12:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:12:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:12:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:12:56 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:12:56 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:13:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='e6cac9a9f74a001bd21644461697be1ad0d06c9c69076b51984dc9f3b1bb2478';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:13:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:13:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:13:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:13:03 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 01:45:34 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:45:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 01:45:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 01:45:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 01:45:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 01:45:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 01:45:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 01:45:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 01:45:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 01:45:35 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 01:45:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 01:45:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 01:45:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1107eb4d57a197cf92fee9346a1d1613b49bdc8354f5100f65e86b156ad9c344`  
		Last Modified: Mon, 26 Oct 2026 23:13:20 GMT  
		Size: 23.0 MB (22953033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3782cad2410fa5c87451473b779952d0e593aca4e0f71ddc7f25e7178907dac2`  
		Last Modified: Mon, 26 Oct 2026 23:13:23 GMT  
		Size: 158.1 MB (158122714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ca24936b7e6ec34cbbde4dd5246a2c3c8839645428546ae6b16a5c78c033d6`  
		Last Modified: Mon, 26 Oct 2026 23:13:19 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99edbeddc6397d76a182d754553e69059d7aa5b70ed167e87f9c7dcaefe744d8`  
		Last Modified: Mon, 26 Oct 2026 23:13:19 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c021e411d234ac6356f5370926f298af0b14897d20f0aa1c72b8c89c5796d429`  
		Last Modified: Tue, 27 Oct 2026 01:45:48 GMT  
		Size: 22.6 MB (22557483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3394508e38b9e19dfc7f9abe308427f9bf7eae943373292a7ff2814bd4aa6678`  
		Last Modified: Tue, 27 Oct 2026 01:45:47 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53dbae6daeed3671fd65a376f270f904cc149169b61aa71d18139661d4ace496`  
		Last Modified: Tue, 27 Oct 2026 01:45:47 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326590fd94fdcb13ed90087cf89a52a2385fdcf9440630e1d2f57504bcf977ce`  
		Last Modified: Tue, 27 Oct 2026 01:45:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:33e834701db38a16b49b0690744cb2984a9af3257e8961bbe18782cda9ade4c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5053154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87333e35f7f5ad0278a3c1d365509eefff9c1d0abb2c3ab81f02f5f511313e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5f6625bc950ffc76244a2b8c9606bf0792bedb4504acae234d6790c827f480af`  
		Last Modified: Tue, 27 Oct 2026 01:45:47 GMT  
		Size: 5.0 MB (5035798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79368c9fe75d86e65e8fdbbe027de23a872161cba67c9614df19a20b22721776`  
		Last Modified: Tue, 27 Oct 2026 01:45:47 GMT  
		Size: 17.4 KB (17356 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:65cedfb84cfbb1dc9974c14662d6bf9b20aa6aea274c877fe08952bdfae7992f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242185194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1f0cef06dadb4b4e7b613be22c806414f48f3357c9728e659f7bc0baab7326`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:17:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:17:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:17:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:17:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:17:22 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:17:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='e6cac9a9f74a001bd21644461697be1ad0d06c9c69076b51984dc9f3b1bb2478';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:17:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:17:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:17:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:17:31 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 01:30:52 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:30:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 01:30:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 01:30:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 01:30:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 01:30:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 01:30:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 01:30:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 01:30:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 01:30:53 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 01:30:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 01:30:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 01:30:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbdb01060bf82eae120cdae1ce95bf58ae5c6d8e7506ad66ec4f127a0aac72e`  
		Last Modified: Mon, 26 Oct 2026 23:17:48 GMT  
		Size: 24.2 MB (24152176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f555f24a635d4f5be412aa51cbb6256d0d7fe35d13bd0c196b37cdc467f7aed1`  
		Last Modified: Mon, 26 Oct 2026 23:17:51 GMT  
		Size: 156.4 MB (156409734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa88fa0cce2dc522cc0e39ab7bf28020a77b77383ec10d3019ee3b9e90b59d9`  
		Last Modified: Mon, 26 Oct 2026 23:17:47 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857ead2f7fa2de20bc65a7aa72f83546948d91bcfd5f1eac04bdf051a0122bcb`  
		Last Modified: Mon, 26 Oct 2026 23:17:37 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e913c35f9bf90b433a192a83cb1b7d6139dd135f6010e1dfca70c43376e7739`  
		Last Modified: Tue, 27 Oct 2026 01:31:06 GMT  
		Size: 22.6 MB (22620517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c61f90c62fd1ccbbd3b7a06396ca0ee9010a03f2e266a5c8294cf61d23a865`  
		Last Modified: Tue, 27 Oct 2026 01:31:06 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:532608b30deb200b6e9a1e165c8ea0d2d240428ad75c901696b81ee6b0759454`  
		Last Modified: Tue, 27 Oct 2026 01:31:05 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca414f942cc74a8f9c1ac0c98683046adc4852ba5325a839e1a691a994d747b`  
		Last Modified: Tue, 27 Oct 2026 01:31:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:d407a346c82f76bb7ea7feea3846ac65231d9c6ce3472f202f43c6e2a1145d1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5190848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054b449d494be9a0c010a5c378e39480526afa974919708a1d71abef94a26a3c`

```dockerfile
```

-	Layers:
	-	`sha256:04fd38e896d5ef7799bc497bf7fab99da0787f0c589eab6b071ae85769c08f6b`  
		Last Modified: Tue, 27 Oct 2026 01:31:05 GMT  
		Size: 5.2 MB (5173359 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:327025bdcd732d30da6ca44ecad9b61e7037a4907bf2395c6235ee228255506c`  
		Last Modified: Tue, 27 Oct 2026 01:31:05 GMT  
		Size: 17.5 KB (17489 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:328e64245b64b465734e9c8091863da2aece0733063143ee9398bf26d41df25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253394997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999acd0690fbd87834548eef984a33df87d4959b2e9ad2f117e7c1c43328732c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:11:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 05:11:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 05:11:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 05:11:11 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 05:11:11 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 27 Oct 2026 05:13:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='e6cac9a9f74a001bd21644461697be1ad0d06c9c69076b51984dc9f3b1bb2478';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 27 Oct 2026 05:13:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 27 Oct 2026 05:13:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 27 Oct 2026 05:13:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 05:13:43 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 22:04:10 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 22:04:10 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 22:04:10 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 22:04:10 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 22:04:10 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 22:04:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 22:04:10 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 22:04:11 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 22:04:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 22:04:15 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 22:04:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 22:04:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 22:04:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9441a0f7e654898c24d7db2216722ee22bee79685909f360192756b170c79811`  
		Last Modified: Tue, 27 Oct 2026 05:12:14 GMT  
		Size: 24.1 MB (24072637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68fe978ab63135ce3729cb8ed4b4d26f0d6f036715e5b4434e1931aba60d2b8`  
		Last Modified: Tue, 27 Oct 2026 05:14:31 GMT  
		Size: 158.3 MB (158285410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669e6e5fe97de87fe4249a7c0b8a6428a405daead7d52d38d7564533cb49b904`  
		Last Modified: Tue, 27 Oct 2026 05:14:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba6abbae588cbf88706a9dfe75b2b5e84282937c2b31694998632c74a3ac3b`  
		Last Modified: Tue, 27 Oct 2026 05:14:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c16795e0565c93e7e9ebf78eda59c327a22e928f5e5eb62182f1863ba4c7738`  
		Last Modified: Tue, 27 Oct 2026 22:04:48 GMT  
		Size: 26.6 MB (26595991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:404577f217b8f448273ef1739a18923031fa134be148a453304d7d2c54a8cc3d`  
		Last Modified: Tue, 27 Oct 2026 22:04:48 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a849cd0bdca01c94f2fb31221681cc077984ab96892f94edd2adf96e4155208`  
		Last Modified: Tue, 27 Oct 2026 22:04:47 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5713226fe2d1283b771c170166b2bd1a77274eddf05525081f78b39156df6e67`  
		Last Modified: Tue, 27 Oct 2026 22:04:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:c605e63cd6838623de8c488b39998f703425fea68647c532714bc7eedbf1ce94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5103759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a2272f7d29750998a756f532edaf7888ee1c3c325b3f13ca3bfb193fcffcf52`

```dockerfile
```

-	Layers:
	-	`sha256:6874a0d993c98fce1321f91150d367cb34fa7c6d71ef5435dd56b9e85466e04f`  
		Last Modified: Tue, 27 Oct 2026 22:04:47 GMT  
		Size: 5.1 MB (5086353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b92631bc9cfca4871a20e1da0bd1dc7d6a393be7ee46728735eb72fa8f4e2908`  
		Last Modified: Tue, 27 Oct 2026 22:04:47 GMT  
		Size: 17.4 KB (17406 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-noble` - linux; riscv64

```console
$ docker pull maven@sha256:2441b2c1bcb9a5dc83d832a368e20edfc690ec23b3524bd2e987e988f602ab24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.6 MB (249647889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1da883d7cdab1ce50faea504bca4831d4ad1f11ededb2f4c435238d4fce0352`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 02 Oct 2026 08:25:26 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:25:27 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:25:27 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:26:13 GMT
ADD file:902c2a17706a401d4186db6f76d930ee8d9bfdf11a18905ad7b4475895533666 in / 
# Fri, 02 Oct 2026 08:26:17 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 15:37:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 15:37:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 15:37:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 15:37:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 15:37:16 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 15:49:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='e6cac9a9f74a001bd21644461697be1ad0d06c9c69076b51984dc9f3b1bb2478';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 15:49:22 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 15:49:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 15:49:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 15:49:22 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 23:41:12 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 23:41:13 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 23:41:13 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 23:41:13 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 23:41:13 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 23:41:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 23:41:13 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 23:41:13 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 23:41:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 23:41:13 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 23:41:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 23:41:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 23:41:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6ac3b4459b1cfc53476c9bca2bcbbd91ffee22c902b3d5791e258f4a99455cf0`  
		Last Modified: Fri, 02 Oct 2026 08:36:44 GMT  
		Size: 31.1 MB (31052636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd7b3e71979955f62734f1ac555d87c5c3461c52d973d5526b6c444e033b3ac`  
		Last Modified: Sat, 17 Oct 2026 15:42:17 GMT  
		Size: 20.1 MB (20128575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293cb12fb515765ae43ad4a413bd137d2716d602f1bef583bf799c40f182e123`  
		Last Modified: Sat, 17 Oct 2026 15:53:38 GMT  
		Size: 157.4 MB (157392554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12032576b2519ced3c00833a4787189704ba36a0efa54753248edbefc5a2ecc8`  
		Last Modified: Sat, 17 Oct 2026 15:53:15 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3970226d39f7d86be41829ad95941d149c9440cf604de1564cde3e2cb37eb7e`  
		Last Modified: Sat, 17 Oct 2026 15:53:15 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292269cf0aa1f7159df9a7837a413c9f165b761b52e30536ba2ae539d1893d58`  
		Last Modified: Sat, 17 Oct 2026 23:44:41 GMT  
		Size: 31.0 MB (31011454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0fd23b7e787be3e98a2a64cac7c8802580e26d9a9165504f01026bde4da6d8`  
		Last Modified: Sat, 17 Oct 2026 23:44:38 GMT  
		Size: 10.1 MB (10059037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fe60b2988ac0d2cf45d90fedd279904f1e746c12bd942b955319675c902dc7`  
		Last Modified: Sat, 17 Oct 2026 23:44:34 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0670258f65ff6a1dc70ce47c2d8bbbb30988f9ae2296722f34f01873973388cc`  
		Last Modified: Sat, 17 Oct 2026 23:44:34 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:da4ab2acaea3e92713f2679dbb068d206591248493c9b6316bfe211deb149253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44c081af231b101db5cb402628e4b83db724442ee067902adb14d34a8a12bae`

```dockerfile
```

-	Layers:
	-	`sha256:baeea3333dd85cc5df76282b6eec5d1db5c39cf726eb19604b7001c0024c93a9`  
		Last Modified: Sat, 17 Oct 2026 23:44:36 GMT  
		Size: 5.1 MB (5140050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fa9ddd8ab5a2f9fe8bcc650fdff887f00b102bdaeb451be9ffacd21e4195db7`  
		Last Modified: Sat, 17 Oct 2026 23:44:34 GMT  
		Size: 17.4 KB (17406 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-noble` - linux; s390x

```console
$ docker pull maven@sha256:e84392f9c5dd0c1f68bda3054f70e999b8ec7777ce81076f664023b31e701b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233155298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3376adf40e1077fccc1f97fbdfd439fc7da936e18eef1924603889d91b57766`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:59 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:00 GMT
ADD file:c2156dcf753b3a0ab0d36b29087b8209a73050420505b4ce2fb173267e1306b5 in / 
# Sun, 25 Oct 2026 14:18:01 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:40:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:40:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:40:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:40:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:40:09 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:40:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='e6cac9a9f74a001bd21644461697be1ad0d06c9c69076b51984dc9f3b1bb2478';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:40:19 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:40:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:40:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:40:19 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 02:08:59 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 02:08:59 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:08:59 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:08:59 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:08:59 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:08:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:08:59 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:08:59 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:08:59 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:08:59 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:08:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:08:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:08:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b31eeac690d9e720d87470087fc7e7a96181727a27cf11395528de4629667c`  
		Last Modified: Mon, 26 Oct 2026 23:40:48 GMT  
		Size: 22.1 MB (22101737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1145e7aa5d87adb69cc3d4c78dc397d969fcd1e6432553c37f82f01f8ceba763`  
		Last Modified: Mon, 26 Oct 2026 23:40:50 GMT  
		Size: 147.4 MB (147356210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83112b5ca780679d662f1c64dcdee82113668a39f44f27126c3f8879e96ebcd3`  
		Last Modified: Mon, 26 Oct 2026 23:40:46 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e587cdfbe702757e3520bb788d06fe0c0db99881dedfb159ea21a91775909fef`  
		Last Modified: Mon, 26 Oct 2026 23:40:47 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:957c1cfbba14f581869efa43601439b5695a70aff6245db5a367e9995da10705`  
		Last Modified: Tue, 27 Oct 2026 02:09:17 GMT  
		Size: 23.7 MB (23687654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3995e2f9052e908a3bcf927e82fa1b3a22721b8c0a3ccea8fba0a85f8a3cbb28`  
		Last Modified: Tue, 27 Oct 2026 02:09:18 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb993aff45c154d611ef9d9af54a0fba10e0e82278408abcb587a9ec1bf5269`  
		Last Modified: Tue, 27 Oct 2026 02:09:18 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6647df4f2e7a009896358d2b1ecde121024b681a8862894c1dc31462ce2ba60`  
		Last Modified: Tue, 27 Oct 2026 02:09:17 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:69c0338c49c926569e83260d67dd2c320879655f247adf6ce9854bb84f4b7660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4998553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac544f7316025f28610b428c6017d7f75733d9b00d825a2d550f47d4f22cb4b`

```dockerfile
```

-	Layers:
	-	`sha256:fa3a6dda1d672bc03d277bd4f69815c493335b45ff933fbb1f8e58786fcb0d04`  
		Last Modified: Tue, 27 Oct 2026 02:09:18 GMT  
		Size: 5.0 MB (4981198 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5053e05319e52de41651e17cce60b45f5b90ac7bc92108ab2c939e93a1128ad1`  
		Last Modified: Tue, 27 Oct 2026 02:09:18 GMT  
		Size: 17.4 KB (17355 bytes)  
		MIME: application/vnd.in-toto+json
