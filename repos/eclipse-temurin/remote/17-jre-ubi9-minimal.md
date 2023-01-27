## `eclipse-temurin:17-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:a555758943f264f4c890eb39cdda97d23a56aab31421d5274a1d0ba53c1bb9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:eddd3eb13c2507c1cbac6b9bd089c1c302d3fc9a9ee71979aa2c9cd020786853
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113715612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a076a4279b94fc4427a050a412de321241730d25b458c0b7c7202c1ca24279d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jan 2023 08:31:49 GMT
ADD file:cec23c8fbf16faebe415d9da27af234f476046de04a58fcd5c12596ca22053b4 in / 
# Tue, 17 Jan 2023 08:31:49 GMT
ADD file:214c1de395c24e4a86ef9a706069ef30a9e804c63f851c37c35655e16fea3ced in /tmp/tls-ca-bundle.pem 
# Tue, 17 Jan 2023 08:31:50 GMT
ADD multi:41c7e0f932074ee6ab1584deadf29d960d57d75d1c101ce2209eff05b1a3e756 in /etc/yum.repos.d/ 
# Tue, 17 Jan 2023 08:31:50 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 17 Jan 2023 08:31:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9-minimal"       version="9.1.0"
# Tue, 17 Jan 2023 08:31:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 17 Jan 2023 08:31:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 17 Jan 2023 08:31:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 17 Jan 2023 08:31:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 17 Jan 2023 08:31:50 GMT
LABEL io.openshift.expose-services=""
# Tue, 17 Jan 2023 08:31:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 17 Jan 2023 08:31:50 GMT
ENV container oci
# Tue, 17 Jan 2023 08:31:50 GMT
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2023 08:31:50 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2023 08:31:50 GMT
RUN rm -rf /var/log/*
# Tue, 17 Jan 2023 08:31:50 GMT
LABEL release=1760
# Tue, 17 Jan 2023 08:31:51 GMT
ADD file:f66581c13a3419d0ae04b2e10b800e53882f091321f55e851165a68c6908bdd9 in /root/buildinfo/content_manifests/ubi9-minimal-container-9.1.0-1760.json 
# Tue, 17 Jan 2023 08:31:51 GMT
ADD file:49a69232a0b4ae6f0ead42deb08bd00c74ba6474cc1f3ad8f89a43a6b6628c29 in /root/buildinfo/Dockerfile-ubi9-minimal-9.1.0-1760 
# Tue, 17 Jan 2023 08:31:51 GMT
LABEL "distribution-scope"="public" "vendor"="Red Hat, Inc." "build-date"="2023-01-17T08:21:59" "architecture"="x86_64" "vcs-type"="git" "vcs-ref"="befaf1f5ec7b874aef2651ee1384d51828504eb9" "io.k8s.description"="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly." "url"="https://access.redhat.com/containers/#/registry.access.redhat.com/ubi9-minimal/images/9.1.0-1760"
# Tue, 17 Jan 2023 08:31:52 GMT
RUN rm -f '/etc/yum.repos.d/repo-b9156.repo' '/etc/yum.repos.d/repo-9b4cd.repo'
# Tue, 17 Jan 2023 08:31:53 GMT
RUN rm -f /tmp/tls-ca-bundle.pem
# Tue, 24 Jan 2023 02:17:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Jan 2023 02:17:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 02:17:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 24 Jan 2023 02:17:41 GMT
RUN microdnf install -y binutils tzdata openssl wget ca-certificates fontconfig glibc-langpack-en gzip tar     && microdnf clean all
# Tue, 24 Jan 2023 18:46:29 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:47:23 GMT
RUN set -eux;     ARCH="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')";     case "${ARCH}" in        aarch64|arm64)          ESUM='3797815cb853616b6415e1b8875cda4eaa004887561ea4ea2090d726b8d8582f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.6_10.tar.gz';          ;;        ppc64el|powerpc:common64)          ESUM='f11b86bfd7fa4d7a0d05040ea235102296f03eaf064253f76d7ab94baa0352e3';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.6_10.tar.gz';          ;;        s390x|s390:64-bit)          ESUM='21a7156a29e7921bc7c6eadecb8ee4ac7161921cea85b75b61f0376f9c725caa';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.6_10.tar.gz';          ;;        amd64|i386:x86-64)          ESUM='fe669935609086e76cb0b829e92808766cbf8cb7bda57a76b47813b08584bfd2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.6_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac; 	  wget -O /tmp/openjdk.tar.gz ${BINARY_URL}; 	  echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -; 	  mkdir -p "$JAVA_HOME"; 	  tar --extract 	      --file /tmp/openjdk.tar.gz 	      --directory "$JAVA_HOME" 	      --strip-components 1 	      --no-same-owner 	  ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;
# Tue, 24 Jan 2023 18:47:24 GMT
RUN echo Verifying install ...     && fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:42df1cb831d12cb5122714b5a527807bf78729a544ae05eacc9ab8f82da8dad9`  
		Last Modified: Mon, 23 Jan 2023 18:08:50 GMT  
		Size: 37.9 MB (37856368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d71014b709775b87982103131d6162788201fd81c42f56eb70fc963192c5ad`  
		Last Modified: Tue, 24 Jan 2023 02:21:47 GMT  
		Size: 28.9 MB (28925033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5ae002a9d243882b719141d08b1e54e65b02e4ecc471321d5144c78d5ef638`  
		Last Modified: Tue, 24 Jan 2023 18:56:24 GMT  
		Size: 46.9 MB (46934050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89419edc165fe7383ba56f7f53bfdfd209a10c7ce734e51b8bfa7e5065d2ce5`  
		Last Modified: Tue, 24 Jan 2023 18:56:17 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:f012278bcdfa8700dd66e99836365e803049d724c2b1b53bc8d34ac9e3eee16b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111851057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6163b64481642d6d1099ea225fdcc6133c979e4ef0fea339591211ca48fece4e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jan 2023 08:31:51 GMT
ADD file:944e185ecff8178a43659a7621fe4b8be9ad1284648b367cec7dc780519658a7 in / 
# Tue, 17 Jan 2023 08:31:51 GMT
ADD file:214c1de395c24e4a86ef9a706069ef30a9e804c63f851c37c35655e16fea3ced in /tmp/tls-ca-bundle.pem 
# Tue, 17 Jan 2023 08:31:51 GMT
ADD multi:41c7e0f932074ee6ab1584deadf29d960d57d75d1c101ce2209eff05b1a3e756 in /etc/yum.repos.d/ 
# Tue, 17 Jan 2023 08:31:51 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 17 Jan 2023 08:31:51 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9-minimal"       version="9.1.0"
# Tue, 17 Jan 2023 08:31:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 17 Jan 2023 08:31:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 17 Jan 2023 08:31:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 17 Jan 2023 08:31:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 17 Jan 2023 08:31:51 GMT
LABEL io.openshift.expose-services=""
# Tue, 17 Jan 2023 08:31:51 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 17 Jan 2023 08:31:51 GMT
ENV container oci
# Tue, 17 Jan 2023 08:31:51 GMT
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2023 08:31:51 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2023 08:31:53 GMT
RUN rm -rf /var/log/*
# Tue, 17 Jan 2023 08:31:53 GMT
LABEL release=1760
# Tue, 17 Jan 2023 08:31:53 GMT
ADD file:fad45c78e8320ea27cb96e0b6031b075285d4861e031f358acb03311f3ef9d3a in /root/buildinfo/content_manifests/ubi9-minimal-container-9.1.0-1760.json 
# Tue, 17 Jan 2023 08:31:53 GMT
ADD file:caadda24805049f9dde9bc5025597cde77c1943f743a39db64337a639d89effc in /root/buildinfo/Dockerfile-ubi9-minimal-9.1.0-1760 
# Tue, 17 Jan 2023 08:31:53 GMT
LABEL "distribution-scope"="public" "vendor"="Red Hat, Inc." "build-date"="2023-01-17T08:21:59" "architecture"="aarch64" "vcs-type"="git" "vcs-ref"="befaf1f5ec7b874aef2651ee1384d51828504eb9" "io.k8s.description"="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly." "url"="https://access.redhat.com/containers/#/registry.access.redhat.com/ubi9-minimal/images/9.1.0-1760"
# Tue, 17 Jan 2023 08:31:54 GMT
RUN rm -f '/etc/yum.repos.d/repo-b9156.repo' '/etc/yum.repos.d/repo-9b4cd.repo'
# Tue, 17 Jan 2023 08:31:55 GMT
RUN rm -f /tmp/tls-ca-bundle.pem
# Tue, 24 Jan 2023 02:59:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Jan 2023 02:59:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 02:59:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 24 Jan 2023 02:59:32 GMT
RUN microdnf install -y binutils tzdata openssl wget ca-certificates fontconfig glibc-langpack-en gzip tar     && microdnf clean all
# Tue, 24 Jan 2023 17:43:35 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 17:44:19 GMT
RUN set -eux;     ARCH="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')";     case "${ARCH}" in        aarch64|arm64)          ESUM='3797815cb853616b6415e1b8875cda4eaa004887561ea4ea2090d726b8d8582f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.6_10.tar.gz';          ;;        ppc64el|powerpc:common64)          ESUM='f11b86bfd7fa4d7a0d05040ea235102296f03eaf064253f76d7ab94baa0352e3';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.6_10.tar.gz';          ;;        s390x|s390:64-bit)          ESUM='21a7156a29e7921bc7c6eadecb8ee4ac7161921cea85b75b61f0376f9c725caa';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.6_10.tar.gz';          ;;        amd64|i386:x86-64)          ESUM='fe669935609086e76cb0b829e92808766cbf8cb7bda57a76b47813b08584bfd2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.6_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac; 	  wget -O /tmp/openjdk.tar.gz ${BINARY_URL}; 	  echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -; 	  mkdir -p "$JAVA_HOME"; 	  tar --extract 	      --file /tmp/openjdk.tar.gz 	      --directory "$JAVA_HOME" 	      --strip-components 1 	      --no-same-owner 	  ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;
# Tue, 24 Jan 2023 17:44:20 GMT
RUN echo Verifying install ...     && fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:a8d3a0b99ad4204c6b5f445fc8ad1fe22ab9e51b8410c395fb2f6867cfe1b70b`  
		Last Modified: Mon, 23 Jan 2023 18:09:19 GMT  
		Size: 36.1 MB (36125578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c41bcae4f54181c01a182a9dab2fe9b4f1e84bcd0a5428cc83f1e4519512b`  
		Last Modified: Tue, 24 Jan 2023 03:03:33 GMT  
		Size: 29.3 MB (29309709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b2c9bb1f1bc659964e112f3875eeaf74b5b538a7160ccf8648d78fff44c5b7`  
		Last Modified: Tue, 24 Jan 2023 17:51:06 GMT  
		Size: 46.4 MB (46415611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba7022faf312444fd78e21b8cdf26422205b38cf86b8883c28778ad08d3f17d`  
		Last Modified: Tue, 24 Jan 2023 17:51:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:24499b504818c7053b47c234614fb2aabc5276c252cc21df0d6a7172eb9cea1d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119288549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac2aedc7947d4ae6dbd6beaaa9aa67278ba7220921edc078df5519182bfec50`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jan 2023 08:32:05 GMT
ADD file:aadc181e5886beb02cc2c4061ec26d22c7f2c16b4f92fb72c9d70cde7a462a56 in / 
# Tue, 17 Jan 2023 08:32:05 GMT
ADD file:214c1de395c24e4a86ef9a706069ef30a9e804c63f851c37c35655e16fea3ced in /tmp/tls-ca-bundle.pem 
# Tue, 17 Jan 2023 08:32:06 GMT
ADD multi:41c7e0f932074ee6ab1584deadf29d960d57d75d1c101ce2209eff05b1a3e756 in /etc/yum.repos.d/ 
# Tue, 17 Jan 2023 08:32:06 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 17 Jan 2023 08:32:06 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9-minimal"       version="9.1.0"
# Tue, 17 Jan 2023 08:32:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 17 Jan 2023 08:32:06 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 17 Jan 2023 08:32:06 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 17 Jan 2023 08:32:06 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 17 Jan 2023 08:32:06 GMT
LABEL io.openshift.expose-services=""
# Tue, 17 Jan 2023 08:32:06 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 17 Jan 2023 08:32:06 GMT
ENV container oci
# Tue, 17 Jan 2023 08:32:06 GMT
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2023 08:32:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2023 08:32:08 GMT
RUN rm -rf /var/log/*
# Tue, 17 Jan 2023 08:32:08 GMT
LABEL release=1760
# Tue, 17 Jan 2023 08:32:08 GMT
ADD file:98be3bb39b2b1dc5f521fde094ac8e1e7b9ca068c1a999b93ed6d4f85b70a165 in /root/buildinfo/content_manifests/ubi9-minimal-container-9.1.0-1760.json 
# Tue, 17 Jan 2023 08:32:09 GMT
ADD file:c995bf26c5b7dcbee810e6bad2dc335078d1cf64d424c02e4cff7f4513b32a8d in /root/buildinfo/Dockerfile-ubi9-minimal-9.1.0-1760 
# Tue, 17 Jan 2023 08:32:09 GMT
LABEL "distribution-scope"="public" "vendor"="Red Hat, Inc." "build-date"="2023-01-17T08:21:59" "architecture"="ppc64le" "vcs-type"="git" "vcs-ref"="befaf1f5ec7b874aef2651ee1384d51828504eb9" "io.k8s.description"="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly." "url"="https://access.redhat.com/containers/#/registry.access.redhat.com/ubi9-minimal/images/9.1.0-1760"
# Tue, 17 Jan 2023 08:32:10 GMT
RUN rm -f '/etc/yum.repos.d/repo-b9156.repo' '/etc/yum.repos.d/repo-9b4cd.repo'
# Tue, 17 Jan 2023 08:32:13 GMT
RUN rm -f /tmp/tls-ca-bundle.pem
# Tue, 24 Jan 2023 06:34:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Jan 2023 06:34:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 06:34:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 24 Jan 2023 06:34:25 GMT
RUN microdnf install -y binutils tzdata openssl wget ca-certificates fontconfig glibc-langpack-en gzip tar     && microdnf clean all
# Tue, 24 Jan 2023 18:22:20 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:23:43 GMT
RUN set -eux;     ARCH="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')";     case "${ARCH}" in        aarch64|arm64)          ESUM='3797815cb853616b6415e1b8875cda4eaa004887561ea4ea2090d726b8d8582f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.6_10.tar.gz';          ;;        ppc64el|powerpc:common64)          ESUM='f11b86bfd7fa4d7a0d05040ea235102296f03eaf064253f76d7ab94baa0352e3';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.6_10.tar.gz';          ;;        s390x|s390:64-bit)          ESUM='21a7156a29e7921bc7c6eadecb8ee4ac7161921cea85b75b61f0376f9c725caa';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.6_10.tar.gz';          ;;        amd64|i386:x86-64)          ESUM='fe669935609086e76cb0b829e92808766cbf8cb7bda57a76b47813b08584bfd2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.6_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac; 	  wget -O /tmp/openjdk.tar.gz ${BINARY_URL}; 	  echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -; 	  mkdir -p "$JAVA_HOME"; 	  tar --extract 	      --file /tmp/openjdk.tar.gz 	      --directory "$JAVA_HOME" 	      --strip-components 1 	      --no-same-owner 	  ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;
# Tue, 24 Jan 2023 18:23:45 GMT
RUN echo Verifying install ...     && fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:e30990180b64eaaa193c89681df28e038ee09e4318230d6486f919ca653d5871`  
		Last Modified: Mon, 23 Jan 2023 18:09:39 GMT  
		Size: 40.8 MB (40830101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef88980bd3ab273bd3278c8f7bb7d0a081b4ca432cdb7f4d3d9a1b8f88e6613`  
		Last Modified: Tue, 24 Jan 2023 06:43:02 GMT  
		Size: 31.7 MB (31666243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc252f887ff363879ec6f81aec82ad2aabc54a996a5810ed707fe23312faafd`  
		Last Modified: Tue, 24 Jan 2023 18:35:47 GMT  
		Size: 46.8 MB (46792045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0c9531153cbf6b80ecfec3244beac3aeb7fad63c3cea93661394ecf028aa5c`  
		Last Modified: Tue, 24 Jan 2023 18:35:35 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:0c3914700470e54e4c03392105cfef7592bb6342c7c779aad2f1b6b0b8949d95
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114730944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86a8b4bba95cc39d7489f2effc388f8b7c91f948a13b3b93448358215049132`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jan 2023 08:31:55 GMT
ADD file:d527c9b0a834c6eb52cae9f99a98845378491e3100178eff2b221811a162ab2b in / 
# Tue, 17 Jan 2023 08:31:55 GMT
ADD file:214c1de395c24e4a86ef9a706069ef30a9e804c63f851c37c35655e16fea3ced in /tmp/tls-ca-bundle.pem 
# Tue, 17 Jan 2023 08:31:56 GMT
ADD multi:41c7e0f932074ee6ab1584deadf29d960d57d75d1c101ce2209eff05b1a3e756 in /etc/yum.repos.d/ 
# Tue, 17 Jan 2023 08:31:56 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 17 Jan 2023 08:31:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9-minimal"       version="9.1.0"
# Tue, 17 Jan 2023 08:31:56 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 17 Jan 2023 08:31:56 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 17 Jan 2023 08:31:56 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 17 Jan 2023 08:31:56 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 17 Jan 2023 08:31:56 GMT
LABEL io.openshift.expose-services=""
# Tue, 17 Jan 2023 08:31:56 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 17 Jan 2023 08:31:56 GMT
ENV container oci
# Tue, 17 Jan 2023 08:31:56 GMT
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2023 08:31:56 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2023 08:31:57 GMT
RUN rm -rf /var/log/*
# Tue, 17 Jan 2023 08:31:57 GMT
LABEL release=1760
# Tue, 17 Jan 2023 08:31:57 GMT
ADD file:321b9a097760ca9fb5bf28c0268f554257c4831fcc88a2128ad5ef1b03ed20c2 in /root/buildinfo/content_manifests/ubi9-minimal-container-9.1.0-1760.json 
# Tue, 17 Jan 2023 08:31:58 GMT
ADD file:86736fe2a424e9e21471f8dfcf58603a4d0b53e8701c92e923e96a4972d04acd in /root/buildinfo/Dockerfile-ubi9-minimal-9.1.0-1760 
# Tue, 17 Jan 2023 08:31:58 GMT
LABEL "distribution-scope"="public" "vendor"="Red Hat, Inc." "build-date"="2023-01-17T08:21:59" "architecture"="s390x" "vcs-type"="git" "vcs-ref"="befaf1f5ec7b874aef2651ee1384d51828504eb9" "io.k8s.description"="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly." "url"="https://access.redhat.com/containers/#/registry.access.redhat.com/ubi9-minimal/images/9.1.0-1760"
# Tue, 17 Jan 2023 08:31:59 GMT
RUN rm -f '/etc/yum.repos.d/repo-b9156.repo' '/etc/yum.repos.d/repo-9b4cd.repo'
# Tue, 17 Jan 2023 08:32:01 GMT
RUN rm -f /tmp/tls-ca-bundle.pem
# Tue, 24 Jan 2023 00:58:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Jan 2023 00:58:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 00:58:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 24 Jan 2023 00:58:26 GMT
RUN microdnf install -y binutils tzdata openssl wget ca-certificates fontconfig glibc-langpack-en gzip tar     && microdnf clean all
# Tue, 24 Jan 2023 17:44:03 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 17:44:46 GMT
RUN set -eux;     ARCH="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')";     case "${ARCH}" in        aarch64|arm64)          ESUM='3797815cb853616b6415e1b8875cda4eaa004887561ea4ea2090d726b8d8582f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.6_10.tar.gz';          ;;        ppc64el|powerpc:common64)          ESUM='f11b86bfd7fa4d7a0d05040ea235102296f03eaf064253f76d7ab94baa0352e3';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.6_10.tar.gz';          ;;        s390x|s390:64-bit)          ESUM='21a7156a29e7921bc7c6eadecb8ee4ac7161921cea85b75b61f0376f9c725caa';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.6_10.tar.gz';          ;;        amd64|i386:x86-64)          ESUM='fe669935609086e76cb0b829e92808766cbf8cb7bda57a76b47813b08584bfd2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.6_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac; 	  wget -O /tmp/openjdk.tar.gz ${BINARY_URL}; 	  echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -; 	  mkdir -p "$JAVA_HOME"; 	  tar --extract 	      --file /tmp/openjdk.tar.gz 	      --directory "$JAVA_HOME" 	      --strip-components 1 	      --no-same-owner 	  ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;
# Tue, 24 Jan 2023 17:44:48 GMT
RUN echo Verifying install ...     && fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:fd358aa84d8a7dd9df5e394fa5342f5b7253a86877d8d5ba2e3e12e093f4ad61`  
		Last Modified: Mon, 23 Jan 2023 18:09:49 GMT  
		Size: 36.1 MB (36136516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1cf35a03675225735c26562482a9ea3e110e361d1ed7c1720ef2bf31f1b842`  
		Last Modified: Tue, 24 Jan 2023 01:03:31 GMT  
		Size: 34.9 MB (34859787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0cff5c810a88aff7c37e8d48b9d7d1553314b5e5a16bcb83071cb706035149`  
		Last Modified: Tue, 24 Jan 2023 17:50:37 GMT  
		Size: 43.7 MB (43734481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc0afbce35373e98e2bd4707ca5d27c8acb6ea1c8dac05a9b619f3420a27bb1`  
		Last Modified: Tue, 24 Jan 2023 17:50:32 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
