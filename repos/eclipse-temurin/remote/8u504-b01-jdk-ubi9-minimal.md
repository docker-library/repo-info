## `eclipse-temurin:8u504-b01-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:f210c6ffbb61d247f2b702b15a35704e4315955f79e04f70ea99e91e002639c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:e566b2114eea4911324f153af8b20d791ccf718eccedcdff6391aac2e01ac493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123569737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d761c136815cb50f00f36e4b9eec40b8236da6370f0cb288012ebd6938409eb1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:35:54 GMT
ENV container oci
# Tue, 13 Oct 2026 13:35:54 GMT
COPY dir:2fcd1ca2b477955927b3f5efd987f047101cd586e309b90ff9e3d22cde3fa5f5 in /      
# Tue, 13 Oct 2026 13:35:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:35:55 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:35:55 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:35:30Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:35:30Z" "architecture"="x86_64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:35:30Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:57:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:57:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:57:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:57:12 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:57:12 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 22:57:16 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 13 Oct 2026 22:57:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:57:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:57:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:3655575efb35316918c7e7d2cb81ae7db0e4613f7ffbbadb4980cc0549ac2834`  
		Last Modified: Tue, 13 Oct 2026 14:51:42 GMT  
		Size: 40.7 MB (40737290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c19cb9430f2b3ed8b0fd5c8e661d1e846812ac240682472332933f44255d1`  
		Last Modified: Tue, 13 Oct 2026 22:57:31 GMT  
		Size: 27.6 MB (27637058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b5de4a903598da1c9d5f523891bf95b7b2b18c9ead7f25dbef9ae84f32b97dd`  
		Last Modified: Tue, 13 Oct 2026 22:57:32 GMT  
		Size: 55.2 MB (55192770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e3238571018867bb64fcf8e8c641a42fa777d8a8d1da739da203604897fea0`  
		Last Modified: Tue, 13 Oct 2026 22:57:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82f06e450072ae0b053fd8b8ee45aeec2b2e4179fd1b5cc5fbd0b0c12c8de99`  
		Last Modified: Tue, 13 Oct 2026 22:57:30 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9a0e869c21edeb68cc54d6355c1f4793e82b975b83ff00598493b940ea060277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2636003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b869635f71e09d3d96e8e96d36b3a747554c3a9b3bec119a996a0f845162126f`

```dockerfile
```

-	Layers:
	-	`sha256:70228409b8dcd543b2e493b0a914b6d4a7150c3053723b5f46c76b3ef0ddccaf`  
		Last Modified: Tue, 13 Oct 2026 22:57:30 GMT  
		Size: 2.6 MB (2616130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c03e355fbe49ee1e9efef3fc681844a76b3ed04b719414b893b19eeae4e24116`  
		Last Modified: Tue, 13 Oct 2026 22:57:29 GMT  
		Size: 19.9 KB (19873 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:b4ba0b2deaf898c7a85f413a06db77fcfa84009888e314de9706ccaf22eb7a20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.1 MB (121139491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c569a22a149d3f7b359f2faa6fa7d75d39a4412c2caf2ab6fdde61b887d125ee`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 13 Oct 2026 13:38:25 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:38:26 GMT
ENV container oci
# Tue, 13 Oct 2026 13:38:27 GMT
COPY dir:e0a9e23521da92370ef8c1c702abc899055259c540969022f975e6a9a5db74eb in /      
# Tue, 13 Oct 2026 13:38:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:38:28 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:38:28 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:37:55Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:37:55Z" "architecture"="aarch64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:37:55Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:56:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:56:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:56:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:56:21 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:56:21 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 22:56:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 13 Oct 2026 22:56:26 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:56:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:56:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8aa74cd1ed0a010c9e42b8f13484468b32e94ff9405ce295cbde110e8119e733`  
		Last Modified: Tue, 13 Oct 2026 14:52:30 GMT  
		Size: 38.8 MB (38804143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abc8444fb2e23a66fa7a7ec4c2abb409ec666d78d5b8e6307bab039dfaa5e6c`  
		Last Modified: Tue, 13 Oct 2026 22:56:40 GMT  
		Size: 28.1 MB (28077907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea91eea106fedf34ad041c057d4b451952574799351623a350845c2a40f1575`  
		Last Modified: Tue, 13 Oct 2026 22:56:40 GMT  
		Size: 54.3 MB (54254823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d5d50cd35d1352b5e8eec793fcc815c423ccaaa75354a0b2df39881e89aeb`  
		Last Modified: Tue, 13 Oct 2026 22:56:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fddbc576f4fa0017493612db32f3afc1a3cc45ee16b55e8a4fd38723ec043fcc`  
		Last Modified: Tue, 13 Oct 2026 22:56:39 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8ed659b319ca79644e50b5e133730f72727e7ef1f9bf37d7fb85aee516c54b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca54e2529b2f862af664075cf1ec5d7bc50d8f6ef99a7eef8fc2cfb86a1fae01`

```dockerfile
```

-	Layers:
	-	`sha256:0512ae46ebf955f59f84937afc65115ca1fa704e44962bcb1a33f5b8bdc783eb`  
		Last Modified: Tue, 13 Oct 2026 22:56:38 GMT  
		Size: 2.6 MB (2614418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77eb98a1393539b96a03c5bc81bbfb2f65dfce30b99ca23ee5f561af28ef4650`  
		Last Modified: Tue, 13 Oct 2026 22:56:38 GMT  
		Size: 20.0 KB (19989 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:a3c2e4348126a5af8ca0d696bc49dc9773571e72952d61ae5a84b5582bdeb8c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127913655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0181d16cca9aaac9d30e8deb91de12a376d229a8732762017922e4bcd4082879`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:37:36 GMT
ENV container oci
# Tue, 13 Oct 2026 13:37:37 GMT
COPY dir:92a05a611f8cfd3f18a14877aab31596763f3ce8c391d4c01d7a65b9223e525a in /      
# Tue, 13 Oct 2026 13:37:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:37:37 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:37:38 GMT
COPY dir:f649eae5e047426b308cc16906636d1cf529fb6e62f6a67019b2139bab1fbf90 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:37:38 GMT
COPY dir:f649eae5e047426b308cc16906636d1cf529fb6e62f6a67019b2139bab1fbf90 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:37:38 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:37:13Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:37:13Z" "architecture"="ppc64le" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:37:13Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:55:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:39 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 22:55:48 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 13 Oct 2026 22:55:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:55:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:55:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:52db23f98827188005b2d11f8472b68dc9dae4832da358ce51a293a9e6d44c9f`  
		Last Modified: Tue, 13 Oct 2026 18:23:23 GMT  
		Size: 45.2 MB (45185378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db7a63728b6d2c561d09b30ac4673530838cbe6ecb9a7c79e43cf42a6ca2183`  
		Last Modified: Tue, 13 Oct 2026 22:56:38 GMT  
		Size: 30.1 MB (30058019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91877827cd988bfa345beb91775118f9e90ab5a3765b9c3451ec112e70104025`  
		Last Modified: Tue, 13 Oct 2026 22:56:39 GMT  
		Size: 52.7 MB (52667639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d348d294b68efe598a5f6f6793299950f9c7624edad462d3ea015d5629976778`  
		Last Modified: Tue, 13 Oct 2026 22:56:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8dae8ef8739fb0664086230febe0a48b6ab07089adc1d8003b48223401e4163`  
		Last Modified: Tue, 13 Oct 2026 22:56:37 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1fa7e8e9761ae6277b2ac569779bcde18dce20022ac7d28de29d8112695585b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b68d2d431b15eb3eda547ec37f7a5715bb8650720cac0ed402ea29d9db45b1e`

```dockerfile
```

-	Layers:
	-	`sha256:8a4059f07131896496f49feca120e78a8ac6906a1c8da754504fab5fe88b7b81`  
		Last Modified: Tue, 13 Oct 2026 22:56:36 GMT  
		Size: 2.6 MB (2613073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9a7826a5db772f8c7af5b371b6a7d0be9c929490190ca3eda1b633e7b328f98`  
		Last Modified: Tue, 13 Oct 2026 22:56:36 GMT  
		Size: 19.9 KB (19909 bytes)  
		MIME: application/vnd.in-toto+json
