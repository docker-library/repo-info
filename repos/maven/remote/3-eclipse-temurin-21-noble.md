## `maven:3-eclipse-temurin-21-noble`

```console
$ docker pull maven@sha256:58120ec3ae219fc50442001b775b7601d9b6da19df209a6ab1404775327f8db2
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
$ docker pull maven@sha256:c146cec15b48eabce469674b6677d89cab582cbd9de48194d0800464b528644a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243760751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f0061c9a5adaeaf48c68a43a2a3f054202e94cd9a2b439f1d798c44e03abf0b`
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
# Thu, 29 Oct 2026 19:10:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:10:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:10:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:10:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:10:49 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:10:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='639d712c96899ec84e95394f90e8b4cc6a0ad0154bbec2fe657f8da00b182013';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:10:56 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:10:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:10:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:10:56 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 23:05:02 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:05:02 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:05:02 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:05:02 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:05:02 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:05:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:05:02 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:05:02 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:05:02 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:05:02 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:05:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:05:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:05:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717e148b2a28338d89aff5d5ad8951ba98c2451601e9d0d661b8049d4d434406`  
		Last Modified: Thu, 29 Oct 2026 19:11:14 GMT  
		Size: 23.0 MB (22953045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d444886783017acb3ef64a351aee857e5614c59f789720a0b29018bf3551b523`  
		Last Modified: Thu, 29 Oct 2026 19:11:17 GMT  
		Size: 158.4 MB (158419817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e9ab97aa34b4da8fb301148ee965a75b028d9f15e927b44ac5247d6a61da3`  
		Last Modified: Thu, 29 Oct 2026 19:11:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e443c767c9b5bffd256d7c25258f2a4c46e255fff05e785de1f9770c554922`  
		Last Modified: Thu, 29 Oct 2026 19:11:13 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecee1455a3af148940a9161ecf7acfc99c998214b65a4a857d6bb4f076e7cac2`  
		Last Modified: Tue, 03 Nov 2026 23:05:17 GMT  
		Size: 22.6 MB (22557634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27831f60736f6108e619999cffb600082ec82bf68b49b3011b356ef794d812b`  
		Last Modified: Tue, 03 Nov 2026 23:05:16 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c75905089cb391d7610db4b12f051612e3fb384fc8b8dde4cc7d12574f5358`  
		Last Modified: Tue, 03 Nov 2026 23:05:16 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ed11cd129f0a25c8b8903e12120eb70a2efafac5581779a036e96b384edec8`  
		Last Modified: Tue, 03 Nov 2026 23:05:16 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:d7793fa5b83fc156ca9be72ad221df79f683da83edaab4039d2673f535b4c2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5053142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2052b271b8fcd004307acac0805dcd16c095171e6fe9c4b00b7e607748416e1d`

```dockerfile
```

-	Layers:
	-	`sha256:f89b1dbc4c588ffbe8649452fcef7ec097954b8b3cfdecfec82625833acf99f2`  
		Last Modified: Tue, 03 Nov 2026 23:05:16 GMT  
		Size: 5.0 MB (5035790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc7ebad4462ff7dc43d4a72028c9a095e01e5ea64642e0b22999686e5582cd44`  
		Last Modified: Tue, 03 Nov 2026 23:05:15 GMT  
		Size: 17.4 KB (17352 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:4b073a5f1ef9fd83254d9334f3fc35835e3520d47c5823716fb6fa40e4c2895d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.5 MB (242475185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:479838647bdf79e16f185e4a9fc6c71bd046c7776fabcb1466637bc157947137`
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
# Thu, 29 Oct 2026 19:07:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:07:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:07:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:07:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:07:10 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:07:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='639d712c96899ec84e95394f90e8b4cc6a0ad0154bbec2fe657f8da00b182013';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:07:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:07:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:07:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:07:18 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:58:26 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 22:58:26 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 22:58:26 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 22:58:26 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 22:58:26 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 22:58:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 22:58:26 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 22:58:26 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 22:58:26 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 22:58:26 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 22:58:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 22:58:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d42c8921b45ea9846371c6b4411b54c8bf03aff3f43b445c27282a6550283f`  
		Last Modified: Thu, 29 Oct 2026 19:07:37 GMT  
		Size: 24.2 MB (24152097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07143b5fa34c7037f35cc47a48e3b210236067933fa42e7df4ed23888cd5a9be`  
		Last Modified: Thu, 29 Oct 2026 19:07:39 GMT  
		Size: 156.7 MB (156699698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4decda0627989e65bbebd435ed78cf1bb8ebe6068a53792411721b0a060fa82b`  
		Last Modified: Thu, 29 Oct 2026 19:07:36 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab045b2ed5b71e6afd095bb2b8df78256a29fab2e3021d68a7689944ae8e6f0`  
		Last Modified: Thu, 29 Oct 2026 19:07:36 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef279de3dd09af442909550c5a3a4de56d6196de8ecfe6977ef54822cb0e32e`  
		Last Modified: Tue, 03 Nov 2026 22:58:40 GMT  
		Size: 22.6 MB (22620653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57250c1ed25875b0e8a055f3675caa48ec8e9ac9406488327884ca1a195eaf8`  
		Last Modified: Tue, 03 Nov 2026 22:58:40 GMT  
		Size: 10.1 MB (10058977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60c8911dc2368a95929a13112e82e05e2f5855f32d00c5875318e47bdb465896`  
		Last Modified: Tue, 03 Nov 2026 22:58:39 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f494be935cb02de38226e6e8d17939f4eabc874d47fc280032efa02853be74`  
		Last Modified: Tue, 03 Nov 2026 22:58:39 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:6ddfb5c70c2a80cee69b53d11d6db7da3d3d223716349ab488e3d3791d2326f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5190836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c11a5fa03325511901f8e9dca08c30b96c133dbbb06d451aaac7abb3797f7dc`

```dockerfile
```

-	Layers:
	-	`sha256:6f4f3c0d41f585495f0f617a3b8c0a69229a34e1280ee597a35b4668e33d8ac4`  
		Last Modified: Tue, 03 Nov 2026 22:58:39 GMT  
		Size: 5.2 MB (5173351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faae3ce15d54f5040e9637c2e0da194069df53096093d4a53f01e4ec56dbce17`  
		Last Modified: Tue, 03 Nov 2026 22:58:39 GMT  
		Size: 17.5 KB (17485 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:6fafe99d6acc2078744eab9e2101d85b151db52be36838bad540056e327ae714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252691361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27472f7c76e37e9e414ef7d9bb692c184161e5a128c4f759d1a3681203353c32`
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
# Thu, 29 Oct 2026 19:04:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:04:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:04:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:04:05 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:04:05 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:04:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='639d712c96899ec84e95394f90e8b4cc6a0ad0154bbec2fe657f8da00b182013';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:04:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:04:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:04:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:04:18 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 23:51:39 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:51:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:51:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:51:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:51:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:51:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:51:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:51:41 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:51:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:51:42 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:51:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:51:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:51:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e474c2f119ba42790b09faac20f09b994f58787dd1fb34834d9af7e94d687f`  
		Last Modified: Thu, 29 Oct 2026 19:05:05 GMT  
		Size: 24.1 MB (24072711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087584e3ef2aaf137dd6abf4e4d9a16150d223f3eeb8a5e36c76cd3ab2918c73`  
		Last Modified: Thu, 29 Oct 2026 19:05:08 GMT  
		Size: 157.6 MB (157581756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d32e634a78b75efd2fff9f440e44b29fbeb9fe69398521c7dd4ae530663fcc`  
		Last Modified: Thu, 29 Oct 2026 19:05:04 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c51cf1c9500a109e41a116d1748c423094d0aa3ea3c9424255891c25ced7473`  
		Last Modified: Thu, 29 Oct 2026 19:05:04 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b455ebb0f2f2b09215dc1544734b6e38ce0e9e6d77cc19a320686ecaea6ce829`  
		Last Modified: Tue, 03 Nov 2026 23:52:16 GMT  
		Size: 26.6 MB (26595939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a849b89a9d59cd8aaf543989adeab751757ba6ed4b037face696d65c63fa89cb`  
		Last Modified: Tue, 03 Nov 2026 23:52:16 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32b234c264de5015ee95d6807a2ed6aafbe90279f2353d15dc5135ccb372ac79`  
		Last Modified: Tue, 03 Nov 2026 23:52:15 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677670f59349ac106d6a8548217735db8aa7eb5c2fab94aeb0f48dda49348599`  
		Last Modified: Tue, 03 Nov 2026 23:52:15 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:3f74837fee80ca7c9cd37b193702c9d24b0d9869a54a34939822c42b9822675d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5102501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a7ade3b1ea2cef1d955d7ad28c65246e55d18754312bfc7c8b0655d2f3282a`

```dockerfile
```

-	Layers:
	-	`sha256:89402c7e164922e364aadbd91105381c953709e8ee8790d04a0cceaf2be19575`  
		Last Modified: Tue, 03 Nov 2026 23:52:15 GMT  
		Size: 5.1 MB (5085099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02ed8c6d25132194e8bf63b073a7427b5009e3ebc1d5a942e6cb9c627165a7cb`  
		Last Modified: Tue, 03 Nov 2026 23:52:15 GMT  
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
$ docker pull maven@sha256:e13a8645c0973964b23c09ea9a2788fdd5a57e5759035c3998b09c0f0c9904a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.7 MB (232691433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16eb2289cdfe4038763e891c41e27f1c96eca45b7d0f3830326ac22c722da33b`
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
# Thu, 29 Oct 2026 18:59:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:59:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:59:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:59:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 18:59:12 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 18:59:19 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='639d712c96899ec84e95394f90e8b4cc6a0ad0154bbec2fe657f8da00b182013';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 18:59:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:59:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:59:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 18:59:21 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 23:03:22 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:03:25 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:03:25 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:03:25 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:03:25 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:03:25 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:03:25 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:03:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:03:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:03:33 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:03:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:03:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:03:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b731531ca11822e0fbb7520397a55f0560fc879cddf0b8cb5d62de5c7198a04a`  
		Last Modified: Thu, 29 Oct 2026 18:59:58 GMT  
		Size: 22.1 MB (22101961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69618361535888b290b9b8161ca7275f03f4794ec3e4b0ab4d8cf7d9c10bf519`  
		Last Modified: Thu, 29 Oct 2026 19:00:01 GMT  
		Size: 146.9 MB (146891561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4315a3651184be6e9b74f6aeffc1bf1a72ad446cb5f6c22729d01880a1570cbe`  
		Last Modified: Thu, 29 Oct 2026 18:59:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2dcc3c8c21c4bcc13b90c3003232ce347ff86285cbc3e0f77d1f3f1cb9d6a8`  
		Last Modified: Thu, 29 Oct 2026 18:59:57 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9fef024df2c59b060e442cc0c9bdae66f0723d1017951cc34f57402439f1a29`  
		Last Modified: Tue, 03 Nov 2026 23:04:33 GMT  
		Size: 23.7 MB (23688217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba09fba72e2e9010b7cb1bed06667002c6b7bcb8c5973e3cbb135290de4d556`  
		Last Modified: Tue, 03 Nov 2026 23:04:32 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e92b22579803ae6b44cce25a51f76959e43d2472d7331c890c1669e95f0f33a`  
		Last Modified: Tue, 03 Nov 2026 23:04:31 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8a0acb07e1b3aa2cd0749f7ad1da5c6f6058994b28c7e271b6a758069bfbc7`  
		Last Modified: Tue, 03 Nov 2026 23:04:31 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:1e9e0e9a3af1c5b63cc74cb33472680698d39fdc99aaded9580b9b6e5e11318c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4997296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47645c74afa8e8585b9a0ca614fcf3fcf13b5cba6bf560974cfbdaa9a876b82`

```dockerfile
```

-	Layers:
	-	`sha256:cbda09d025dc505c3c95216105af81af4c7f17949b043adf6c8aa3803f71c513`  
		Last Modified: Tue, 03 Nov 2026 23:04:32 GMT  
		Size: 5.0 MB (4979944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4efaae5b69971eca78d8b95a06c6e5319576ac87924e7df1a936bdfb064cf7ac`  
		Last Modified: Tue, 03 Nov 2026 23:04:31 GMT  
		Size: 17.4 KB (17352 bytes)  
		MIME: application/vnd.in-toto+json
