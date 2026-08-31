## `eclipse-temurin:11-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:0779899450611bd763137d96ccc0c7e5c6a408dfc772a9576d6f594ac4f95f98
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

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:bb1c89133e8676a0d3ef8d42c71fb8b0c6a97b44c35d98b2ad9a5e3daa97c005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112707546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85dbb880d86b5ebcfaa586e2d2fa611be45d9eae61c9a44f81feca27cfdea92c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:42:09 GMT
ENV container oci
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:8b54154024a9f6604a1f7d88b375ea31b450980a74152912280af8df957f00cd in /      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:42:09 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /root/buildinfo/      
# Tue, 25 Aug 2026 08:42:10 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:41:53Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:41:53Z" "architecture"="x86_64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:41:53Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:45:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 17:45:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:45:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 17:45:38 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:45:38 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Tue, 25 Aug 2026 17:45:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64le)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        x86_64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 25 Aug 2026 17:45:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 25 Aug 2026 17:45:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:45:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:4853116e101d40f67d98c14106326af68960f39e03627259f46bfe4c535cca9b`  
		Last Modified: Tue, 25 Aug 2026 09:35:48 GMT  
		Size: 40.7 MB (40711993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b9bda38da44e362ef21ee1757314bb0f0a96a7d35fabc6b24ff56e32d812476`  
		Last Modified: Tue, 25 Aug 2026 17:46:08 GMT  
		Size: 27.7 MB (27658024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b8e5d4d90776d614984b5bde75e6be2d55bc28e695c70575812648703cb763`  
		Last Modified: Tue, 25 Aug 2026 17:46:09 GMT  
		Size: 44.3 MB (44334930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f423b1d6c7fea53f17202347f366c4f63fb58c05f46cbff2581d49c3eea417c`  
		Last Modified: Tue, 25 Aug 2026 17:46:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82fd09d55d05c1fd77f76d64350414dc8be2b857dffa2188b23cf0c8fb034acf`  
		Last Modified: Tue, 25 Aug 2026 17:46:07 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c2f748c3967523dbba5c6b1cbfc2a0b7c269d2c7278842872f7f62a2cad9457d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2442760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373d67328042549b89bf82940624f597b149e93698d8ebb5836ba2d2356624e6`

```dockerfile
```

-	Layers:
	-	`sha256:a998719e3eac6e0c7a1e454e7f20d437cc67fa7d8a7b7ceb036616eec71f0e30`  
		Last Modified: Tue, 25 Aug 2026 17:46:07 GMT  
		Size: 2.4 MB (2422574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5780c76f50f70de10d3a9f6f7de884f3cfac44533132f411b31be94b1def4c7a`  
		Last Modified: Tue, 25 Aug 2026 17:46:07 GMT  
		Size: 20.2 KB (20186 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:0f5ffc41f88b93e15b0a5f0b6cafd90ebbaba31936accf479ccac8f718bbeb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109571189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:922f0e05cd4e1952ee8a30e03e09bba7ba6d9c6b674ac3af6d8f379ef6790d9a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:43:54 GMT
ENV container oci
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:fc82963b4cd1761f20a1a620749f6598604531a4997e7419bffffcb2369d8feb in /      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:43:55 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /root/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:43:32Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:43:32Z" "architecture"="aarch64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:43:32Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:45:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 17:45:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:45:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 17:45:06 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:45:06 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Tue, 25 Aug 2026 17:45:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64le)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        x86_64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 25 Aug 2026 17:45:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 25 Aug 2026 17:45:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:45:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cfeec01a2bba583c2dcde9b457cc89d4b56583567390972f5501ce5ad4fa4ae8`  
		Last Modified: Tue, 25 Aug 2026 09:35:36 GMT  
		Size: 38.8 MB (38815608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d42a76ff4d26ede168928ebf810ff371aab80e3bc5d987dddfa9c6c43e7e1e`  
		Last Modified: Tue, 25 Aug 2026 17:45:22 GMT  
		Size: 28.1 MB (28103683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a0fb415c01660886f6bdb37de58c591fa7412765f44393be0ce5c028eff620`  
		Last Modified: Tue, 25 Aug 2026 17:45:23 GMT  
		Size: 42.6 MB (42649298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:444759fe5bd421ee9c5f68104f2592e0b526ad28ead2236c34481538c284df9a`  
		Last Modified: Tue, 25 Aug 2026 17:45:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362aa24b8981cb20389c90deeb0f7245c3ae9e7e88cc644d8077c652bcb3044f`  
		Last Modified: Tue, 25 Aug 2026 17:45:21 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:13c51807071ba99fa532fdeb58129748be53b408c99b72ae18fc31b042338e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2441057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31851e89f727a0cda5bdeebca081f6afbd26d2f393954ccda96fc3ef4297051d`

```dockerfile
```

-	Layers:
	-	`sha256:89728585cffa157a49c8de92d0dfd8a6651fe9d65a28123520d2a287d6ca2eac`  
		Last Modified: Tue, 25 Aug 2026 17:45:21 GMT  
		Size: 2.4 MB (2420768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c46031732edaa9b4cfe4b96af6c886af888da7b0496337d12663c2dab36c8566`  
		Last Modified: Tue, 25 Aug 2026 17:45:21 GMT  
		Size: 20.3 KB (20289 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:d66750121ae6e053f6319118bccc0d4e4dadac06bd11e109fe8ffcb24e8eb902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115068203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33efb4a0306548578a3fc5f574fb95a4feca3fdc8bf8157d913dd1d1e9d579fe`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 25 Aug 2026 08:45:36 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:45:36 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:45:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:45:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:45:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:45:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:45:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:45:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:45:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:45:36 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:45:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:45:36 GMT
ENV container oci
# Tue, 25 Aug 2026 08:45:38 GMT
COPY dir:5b7d9a7c489ff4bd9db849c4171b695bf02c78e97c48d315336d03960abc227b in /      
# Tue, 25 Aug 2026 08:45:38 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:45:38 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:45:38 GMT
COPY dir:e9500d6bea3915896b64522df10b2d353942450b9aa4aae4871e3e0c336425ae in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:45:38 GMT
COPY dir:e9500d6bea3915896b64522df10b2d353942450b9aa4aae4871e3e0c336425ae in /root/buildinfo/      
# Tue, 25 Aug 2026 08:45:39 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:44:56Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:44:56Z" "architecture"="ppc64le" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:44:56Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 18:56:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 18:56:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 18:56:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 18:56:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 25 Aug 2026 18:56:17 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Tue, 25 Aug 2026 18:57:51 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64le)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        x86_64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 25 Aug 2026 18:57:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 25 Aug 2026 18:57:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 25 Aug 2026 18:57:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:60168a2fd9316d0ce1ffd6a13bfa1eb345ec90cfd4ee24c4526f70b1a8b56d50`  
		Last Modified: Tue, 25 Aug 2026 12:14:21 GMT  
		Size: 45.1 MB (45132838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce31b4a9ade370ed68e835bdeba964fc62ac9e3bb5c43344c348b12b1fa2aafc`  
		Last Modified: Tue, 25 Aug 2026 18:56:54 GMT  
		Size: 30.1 MB (30084295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0dc5cdb58bd5d8ebd1c4daae2d2c2d5065101d214357fdaf2eab0b53beeec23`  
		Last Modified: Tue, 25 Aug 2026 18:58:13 GMT  
		Size: 39.8 MB (39848471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc4c63298c1f12b4023b886b0e6d369bbdad4ee25a89753bb87d51d03e04089`  
		Last Modified: Tue, 25 Aug 2026 18:58:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601b22813442e8e02473a3908f0a0bbd970b171998003cd5077742a6de952ad5`  
		Last Modified: Tue, 25 Aug 2026 18:58:12 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5af9aa5cd66023589bf17fdfc793a97f5d83e70641c4bb0f7947b96c902ccd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2441056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b650bed5f2a96e51a858fbe0925b48b7553766f863870cd920cb926603377e9`

```dockerfile
```

-	Layers:
	-	`sha256:f98da0bb6bfa3e77c39df1859099bde2c7bb100e11cff327d8072e8c7e235a13`  
		Last Modified: Tue, 25 Aug 2026 18:58:12 GMT  
		Size: 2.4 MB (2420841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:181292ef16d6f3af52d2ca81ecf6293b6b9f292db09b869ac2f4f452bff9a2c1`  
		Last Modified: Tue, 25 Aug 2026 18:58:12 GMT  
		Size: 20.2 KB (20215 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:103de7fd2bc710e2ab7353d624141c81ef9e4ff6f8fb102d39328e103ca2e37c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104789248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1a0dba43bfdbeb0c40b0f8ef7ace4915d59dfe76a53e65cf75782b71beb3fa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:57:56 GMT
ENV container oci
# Mon, 31 Aug 2026 08:57:57 GMT
COPY dir:297a645d2039f9d861170b120c1e35595311fb8e483281efe2ca89505fd40800 in /      
# Mon, 31 Aug 2026 08:57:57 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:57:57 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:57:57 GMT
COPY dir:087826d4c6d83860f2036bd66ca8f0f80382cdb8e2cd82a570728bd57e6592b0 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:57:57 GMT
COPY dir:087826d4c6d83860f2036bd66ca8f0f80382cdb8e2cd82a570728bd57e6592b0 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:57:57 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:57:16Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:57:16Z" "architecture"="s390x" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:57:16Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:02:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:02:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:02:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:02:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:02:43 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Mon, 31 Aug 2026 19:02:45 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64le)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        x86_64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:02:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:02:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:02:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:165a6faa80bf6d6f276863c223e4056437c02bb8c312f23f942108f889803590`  
		Last Modified: Mon, 31 Aug 2026 12:14:05 GMT  
		Size: 38.8 MB (38787783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b8579b8b5396cf950033a42efa18b67d910cdcf9c4757de03b8d5141eaa288`  
		Last Modified: Mon, 31 Aug 2026 19:03:03 GMT  
		Size: 27.7 MB (27686752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0459250cb69b356c625b2dabd49483db5a965bd18b928aabe9c50de71fe44101`  
		Last Modified: Mon, 31 Aug 2026 19:03:03 GMT  
		Size: 38.3 MB (38312112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c24336622d014cf0344794323da1ee94a792e471119ce7ad7c0778b47bce1ae8`  
		Last Modified: Mon, 31 Aug 2026 19:03:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf30a51cab35a34c560aaf846d772763c3925d02114712b66f4fad0017370da`  
		Last Modified: Mon, 31 Aug 2026 19:03:02 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2d17c0b48a59be16af47927526242266745b3e88192e371738a25b4ee51e431b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2433311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0991b467d942ca0ef49ff3e1f0e28fb12e484fd63b31c32cb0c5844d447f28`

```dockerfile
```

-	Layers:
	-	`sha256:0ea105f22f09bb9731a1e18dd587d965ef0da826f1554636a47c8d67e89b8ea0`  
		Last Modified: Mon, 31 Aug 2026 19:03:02 GMT  
		Size: 2.4 MB (2413125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5880fb76fc5de625e31ab5aafd6f0131b65ab72f6e1dd55264c0e9d7f0d51478`  
		Last Modified: Mon, 31 Aug 2026 19:03:02 GMT  
		Size: 20.2 KB (20186 bytes)  
		MIME: application/vnd.in-toto+json
