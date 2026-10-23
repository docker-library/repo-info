## `eclipse-temurin:11-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:a405988d4e3f2cb480ef1c76881e58655201fb5d5fb81799358f838c3e9ecc57
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-temurin:11-jdk-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:327f7512b6e9e86209f3764a38f5c09a08676365b30197ce0e781782d669b051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210570937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed24cdd4af24cab5cce1add2a6d4996fb4ef9d28f77665ea01803c79245f372`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:55:55 GMT
ENV container oci
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:2fc4551098c6ebd5c0304b2f61efdc67d6aebcbff8032750054f600bbeec82fc in /      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:55:56 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /root/buildinfo/      
# Fri, 23 Oct 2026 07:55:57 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:55:29Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:55:29Z" "architecture"="x86_64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:55:29Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:49:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:49:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:49:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:49:58 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:49:58 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 23 Oct 2026 16:50:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 23 Oct 2026 16:50:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:50:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:50:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 23 Oct 2026 16:50:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74b09d47403b6e0522a8cc3fd6a898259e54bbaae0be6c397399bd41ee27d9c1`  
		Last Modified: Fri, 23 Oct 2026 09:52:32 GMT  
		Size: 40.6 MB (40609256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f95af9d1d10debb34e830a996b668f06e5731e15305ecabdd47472217b87bd2`  
		Last Modified: Fri, 23 Oct 2026 16:50:22 GMT  
		Size: 27.6 MB (27634928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc4e1615014e5a821dfdf16f8c85ce2799a6e62a75d5f71b036285b1b5854f1`  
		Last Modified: Fri, 23 Oct 2026 16:50:24 GMT  
		Size: 142.3 MB (142324154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98169119f20015616938e758f35496d9969ba220d13cb4da9b8f7feebe382fef`  
		Last Modified: Fri, 23 Oct 2026 16:50:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d00f5a74bfa3835f28132ab8101e9da5d55c12c440b706d041f87b77593fae`  
		Last Modified: Fri, 23 Oct 2026 16:50:21 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2b82a44bc938661374c7f18a8deb3d9f8a4187753302721d5a1c296feaf10205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2517310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363d3b6a96f8715e466497a1d2069c8917dc91fbb9b61fa153b6e33114fc4a75`

```dockerfile
```

-	Layers:
	-	`sha256:69a725830e6f9cf5ccc073f9498a8ad8ca71c554229bcefc4cbbd587956e6dd3`  
		Last Modified: Fri, 23 Oct 2026 16:50:21 GMT  
		Size: 2.5 MB (2496118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a313125f6e58bf1ade22fe36287b6a68fdaa462c9d1792a88a48d1c92eb92cae`  
		Last Modified: Fri, 23 Oct 2026 16:50:21 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c9596d6db15708bf83ca6ec383830c6491c61a2a1054e1564ebc44f2eb796b1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.8 MB (205821850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77009e9b2a67b9c70bca166b2baef387a72292bec55d91968adbd88e425d08ab`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:17 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:18 GMT
COPY dir:5dfa310507da27398f8076c2456ffd2197b043828a75f962db7044d875161543 in /      
# Fri, 23 Oct 2026 07:58:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:18 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:45Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:45Z" "architecture"="aarch64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:45Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:50:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:50:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:50:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:50:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:50:17 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 23 Oct 2026 16:50:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 23 Oct 2026 16:50:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:50:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:50:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 23 Oct 2026 16:50:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6cb90586f16ba5f631bc69ed4b10258b9b651fbb54718f47b878a4abd17252cb`  
		Last Modified: Fri, 23 Oct 2026 09:53:00 GMT  
		Size: 38.7 MB (38714705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a88de2213be888172cbbb0ba7349f18d046d7c764f71dd7a34c414e90ae934f5`  
		Last Modified: Fri, 23 Oct 2026 16:50:42 GMT  
		Size: 28.1 MB (28069290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7badb92d83138314c76fb14dd7959de16f4ce4f72706cef0604a618d8aaecc3d`  
		Last Modified: Fri, 23 Oct 2026 16:50:44 GMT  
		Size: 139.0 MB (139035255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219530edf0534cc08d8cb9fc4030ab5f4e21ab7da4a623e52afd3c4d7e8138d9`  
		Last Modified: Fri, 23 Oct 2026 16:50:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6515f308924a04aca170b1f99a44d8263cb0f80e0333dbde95c9d370e36b10`  
		Last Modified: Fri, 23 Oct 2026 16:50:33 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e8b49f2a81137c88909b19f4d2b0c8b8e9871f844d1272c384031a9066aa268c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2515631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3436f7dcb4d9192f1af3d7c68672ca5afbe47535efd93642c0bc4ea5489751eb`

```dockerfile
```

-	Layers:
	-	`sha256:9bebd77b30d8ca21dbfcb4b787b93b6711e0c2bb3a34dfedf7852ed30d5304cb`  
		Last Modified: Fri, 23 Oct 2026 16:50:41 GMT  
		Size: 2.5 MB (2494324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac369433419c8b732f694f5843c141474de755ad93d6cbbddd24313282a15e1`  
		Last Modified: Fri, 23 Oct 2026 16:50:40 GMT  
		Size: 21.3 KB (21307 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:611eb52be4124fdc13c471f70ad76375d8216bd906c5729874f1289079e9f7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204711392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd35d5126c04fbe5bde9bf65c20d4d4bffcceb1c282be6a63c7ae805b361708`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:18 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:20 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:20 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:22 GMT
COPY dir:be29e417dbef72628a967183b8b7ae7e922e6bdd49b1170f0357574ceddc0063 in /      
# Fri, 23 Oct 2026 07:58:23 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:23 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:24 GMT
COPY dir:f6840b105933cf6e1dea85d65fe324fc36d97841d50c0cc737f9d0bd85087e6e in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:24 GMT
COPY dir:f6840b105933cf6e1dea85d65fe324fc36d97841d50c0cc737f9d0bd85087e6e in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:25 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:24Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:24Z" "architecture"="ppc64le" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:24Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 17:28:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 17:28:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 17:28:04 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 23 Oct 2026 17:30:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 23 Oct 2026 17:31:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 17:31:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 17:31:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 23 Oct 2026 17:31:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8600d58bbb8bb01636d59485bcdcbec2b5f7bed900f808d2f3873025a1c10f51`  
		Last Modified: Fri, 23 Oct 2026 12:17:14 GMT  
		Size: 45.1 MB (45056999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52173a77234d725955af0360e83880a1f64675cf3b0d0ef520415a9ac8a3b48`  
		Last Modified: Fri, 23 Oct 2026 17:28:53 GMT  
		Size: 30.1 MB (30055408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c65a81a99729fc616e603ba636df947630284e07fed5bd57f9d5f0486256574`  
		Last Modified: Fri, 23 Oct 2026 17:31:47 GMT  
		Size: 129.6 MB (129596383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74fe56b0cbc13af5a75893a778ef592b24ebde73e45b2cc03ab0a6c295d4259`  
		Last Modified: Fri, 23 Oct 2026 17:31:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d11338851ea570b004113987df67799a8302f8f5b858490fd3bdd56c6566678`  
		Last Modified: Fri, 23 Oct 2026 17:31:44 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9b87b61481cdd9755da343184cc951739a6b2bef999253f60486cfbe9798a75f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2513079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d704886e846172a155b2be29a26a6d22fd0bbe234c2037bd83bcb00b50920455`

```dockerfile
```

-	Layers:
	-	`sha256:1d882411531d701268dcda22e52139c83e4a18185c6b5e7f8378f63f0365c8e3`  
		Last Modified: Fri, 23 Oct 2026 17:31:44 GMT  
		Size: 2.5 MB (2491851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e245c8c75ecfa4256a212f08355239f7678a42300c314bf77d69d44d66ea944`  
		Last Modified: Fri, 23 Oct 2026 17:31:44 GMT  
		Size: 21.2 KB (21228 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:1812a33f9d402c06a9927729bfc71ba1502c756904046c8660db8d5fd09c548d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189422016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64dd2db8b1e2ad92eaa46d3559b03fc63cc950329a07d498156d9e3332f90dab`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 08:03:00 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:03:00 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 08:03:00 GMT
ENV container oci
# Fri, 23 Oct 2026 08:03:02 GMT
COPY dir:700234f76bc35f95b0db1568179e5016110455c7aed925c6189dba8998aeec8b in /      
# Fri, 23 Oct 2026 08:03:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:03:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:03:03 GMT
COPY dir:bdd4945543c96b7ab6f1cf5a706ca0181786069878cf74ca8f22a6b07aacdc59 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:03:04 GMT
COPY dir:bdd4945543c96b7ab6f1cf5a706ca0181786069878cf74ca8f22a6b07aacdc59 in /root/buildinfo/      
# Fri, 23 Oct 2026 08:03:04 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:01:32Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T08:01:32Z" "architecture"="s390x" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T08:01:32Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:57:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:57:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:57:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:57:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:57:37 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 23 Oct 2026 16:57:44 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 23 Oct 2026 16:57:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:57:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:57:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 23 Oct 2026 16:57:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c79017a98668fd0611d5357e4d3098bed87e792207ab39da4b6b5fade8cf7f80`  
		Last Modified: Fri, 23 Oct 2026 09:52:32 GMT  
		Size: 38.7 MB (38708637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5fab9e35de67c478ced171ab49814163a02118377cf2be6454074b881ef855`  
		Last Modified: Fri, 23 Oct 2026 16:58:07 GMT  
		Size: 27.7 MB (27662612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea48a6dacfb0421919971c8e73abdf176dd6e87fc11917bdfaf29ec3dfddff6d`  
		Last Modified: Fri, 23 Oct 2026 16:58:10 GMT  
		Size: 123.0 MB (123048167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:118007f62b055b3e44a2aaf400f252f7b09b8a261485d580a6afb46f155b493a`  
		Last Modified: Fri, 23 Oct 2026 16:58:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10be2aec9477b596d2fa88c0dd0eb7a566b07b10a463121212d2fb12598a02df`  
		Last Modified: Fri, 23 Oct 2026 16:57:58 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fc92c0b0773a821a5802e549600112d0357006f69157cfce11fec148762e6b69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2502924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc5d77e7b71b9c6163549aaac5b42fefa863a76e8feaf101764e32c8332710a`

```dockerfile
```

-	Layers:
	-	`sha256:612d7b2e9931fc21f8139247f3e0b94903081ed8f4a3544b1c36f54c7c6d0f53`  
		Last Modified: Fri, 23 Oct 2026 16:58:06 GMT  
		Size: 2.5 MB (2481732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf4bc4632e4a40839193aa26819dcc53bb8b1e6fb2a34fbbe014465d8dd409aa`  
		Last Modified: Fri, 23 Oct 2026 16:58:06 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.in-toto+json
