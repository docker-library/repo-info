## `eclipse-temurin:25-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:7e96b6a0aa6a649a01201e430c9e19088b65eb3e69bf625d27caa94a53baaec8
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

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6e8e86fb222de59ab228659319e80b99d05d75559f1b823e092bccf022401e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165418512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c574a4398b3551cd8281de730866b525b3a4ed224ed0d8db20f754b2188472db`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:21:02 GMT
ENV container oci
# Tue, 15 Sep 2026 07:21:02 GMT
COPY dir:21cef458533fac690c798cfa3b3e5958e280e4511a75d89de7a743be02a08382 in /      
# Tue, 15 Sep 2026 07:21:02 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:21:02 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:21:02 GMT
COPY dir:ef66525f31f34b461a1091c522dc4a2eae7c85b57a795b4dd467ec5654b1d180 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:21:02 GMT
COPY dir:ef66525f31f34b461a1091c522dc4a2eae7c85b57a795b4dd467ec5654b1d180 in /root/buildinfo/      
# Tue, 15 Sep 2026 07:21:03 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:20:44Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:20:44Z" "architecture"="x86_64" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:20:44Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Tue, 15 Sep 2026 22:53:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 15 Sep 2026 22:53:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:53:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 15 Sep 2026 22:53:38 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:53:38 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Tue, 15 Sep 2026 22:53:43 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 15 Sep 2026 22:53:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 15 Sep 2026 22:53:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:53:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 15 Sep 2026 22:53:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b2a0a2287149cc416166ed23549eb27c7c85bb290f7f72720084c62240c18942`  
		Last Modified: Tue, 15 Sep 2026 08:55:08 GMT  
		Size: 34.9 MB (34945197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68370a5efdeb32b9107b1b6a5b80af1e337163b5aa44895f2cc4f0296c142395`  
		Last Modified: Tue, 15 Sep 2026 22:54:01 GMT  
		Size: 37.9 MB (37854341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6469cea218e92e2890ed5e50e4f5d65f4472195e3f056958c0236d917ee27591`  
		Last Modified: Tue, 15 Sep 2026 22:54:03 GMT  
		Size: 92.6 MB (92616373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07b3a82f077a7565267b1cde31788947be852c4189bb11d64568ac623f31597`  
		Last Modified: Tue, 15 Sep 2026 22:54:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad3d183986cef6d9cfccedb36c39256e9b5e644151f2a33405f4d6a0a1b23478`  
		Last Modified: Tue, 15 Sep 2026 22:54:00 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d8d4a984c6ec8c5154626e0b81798cd287b35d33d1719daaa5a30ed7952677af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3781177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fed46eb6a2606ae13d92398f5d144418f0c636c484e24be6d5b1aa7409c2cd81`

```dockerfile
```

-	Layers:
	-	`sha256:68c543409fcb7711564375ef8aed2cddd9deb93e98b8a0d0c41339ac6f22c189`  
		Last Modified: Tue, 15 Sep 2026 22:54:00 GMT  
		Size: 3.8 MB (3759888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d7bb3aa33ab1e5c9ce40d15f9ff6a667ef841bdde1dc3a8356bc62e01e93a5`  
		Last Modified: Tue, 15 Sep 2026 22:54:00 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:d017220d1a1f5721a6600f50c59bbab6a045167e5b43f6ee20dcc3d07198f248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.5 MB (162460201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc0d6c493b05f05fe7af6eb1422233656b6cd384352213aae89e1bb6cd17e8c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:23:41 GMT
ENV container oci
# Tue, 15 Sep 2026 07:23:42 GMT
COPY dir:0845143fbed957104ab911522be3d0b6d3786a7c091384a3b77e4182364ea680 in /      
# Tue, 15 Sep 2026 07:23:42 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:23:42 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:23:42 GMT
COPY dir:6f027d514aa0d332f638ab89347dc08b3f3268364d11eb6c4c523f18d39132e3 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:23:42 GMT
COPY dir:6f027d514aa0d332f638ab89347dc08b3f3268364d11eb6c4c523f18d39132e3 in /root/buildinfo/      
# Tue, 15 Sep 2026 07:23:42 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:23:13Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:23:13Z" "architecture"="aarch64" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:23:13Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Tue, 15 Sep 2026 22:42:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 15 Sep 2026 22:42:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:42:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 15 Sep 2026 22:42:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:42:37 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Tue, 15 Sep 2026 22:42:43 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 15 Sep 2026 22:42:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 15 Sep 2026 22:42:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:42:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 15 Sep 2026 22:42:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bc840691d14453cf4b8d9c57d899d7ea0d7fa6dae3fcee6dbcaa685e0c31d009`  
		Last Modified: Tue, 15 Sep 2026 08:55:06 GMT  
		Size: 33.1 MB (33144625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3131ea71be559106fd5ceff13f3e37db57e4ee50cf9d01cf136f55e3f4b34f34`  
		Last Modified: Tue, 15 Sep 2026 22:43:03 GMT  
		Size: 37.8 MB (37780063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f933e98f1929ba495d08e15d79ee1cff3560abc8070479415fc851cdaf76e20`  
		Last Modified: Tue, 15 Sep 2026 22:43:04 GMT  
		Size: 91.5 MB (91532911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60a2b50e889cada2b92a41ea593ba32f58e9cfad6f6463be3cc1747936b2a9d`  
		Last Modified: Tue, 15 Sep 2026 22:43:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1707c5b848e936bedc3721856b4943d86a89be18a8dbabb5bb41213cc855f97`  
		Last Modified: Tue, 15 Sep 2026 22:43:02 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a9a19371017c84ea76727944165ba765099ddcc55ed60b5f43bf0715ac486076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3780716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c539829750685b288689fc81522750f8d1b4d4b4f857edfbac37b18d61a19790`

```dockerfile
```

-	Layers:
	-	`sha256:81b831fc076b3e90ab4e13d6b955c089930a04a318479bf0d05ff0c579fa1367`  
		Last Modified: Tue, 15 Sep 2026 22:43:02 GMT  
		Size: 3.8 MB (3759311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02da22c9a474abcc56ef80781e8b71b19bb4a314a60d574b7f0596cfe06e2673`  
		Last Modified: Tue, 15 Sep 2026 22:43:02 GMT  
		Size: 21.4 KB (21405 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:55876fc7d422d1290bedb713adf133059f499fc61e04e0cf1f8e60b3e9614a71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (169956780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45d824899c8eb269efc69da6ddb7c6eef230a78c57233ed969edc01a54e69db`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:24:47 GMT
ENV container oci
# Tue, 15 Sep 2026 07:24:47 GMT
COPY dir:74a02c466907e44b158ce4759bc510ce82dea90059cdd3111818e1216e94981e in /      
# Tue, 15 Sep 2026 07:24:47 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:24:47 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:24:48 GMT
COPY dir:d3f35ec2e3cd701d60ea9e59cc460be3f9ef6f13480ada9a8a3a859627e87d9e in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:24:48 GMT
COPY dir:d3f35ec2e3cd701d60ea9e59cc460be3f9ef6f13480ada9a8a3a859627e87d9e in /root/buildinfo/      
# Tue, 15 Sep 2026 07:24:48 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:24:30Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:24:30Z" "architecture"="ppc64le" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:24:30Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Wed, 16 Sep 2026 01:52:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 01:52:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 01:52:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 01:52:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 16 Sep 2026 01:52:03 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Wed, 16 Sep 2026 01:59:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 16 Sep 2026 02:00:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 02:00:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 02:00:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 02:00:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6853c34644bdb2f7b388f1cfefb2460bb0c83858f9ead1b21da21eea8bd737a`  
		Last Modified: Tue, 15 Sep 2026 12:25:37 GMT  
		Size: 39.1 MB (39092184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6379114af2b533684e58aa624cc4897b1150e50cdf93de63632dbb75ca065b`  
		Last Modified: Wed, 16 Sep 2026 01:52:39 GMT  
		Size: 39.6 MB (39605606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4d0cbf28b8c4711a905991e33e96d0970a860a2e5ea87719b8d0dbb1c48abb`  
		Last Modified: Wed, 16 Sep 2026 02:00:48 GMT  
		Size: 91.3 MB (91256387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac7f290b2d98d75535934da001efcd0f69592ebfd4dbf2b4bfbdf42866e34c1`  
		Last Modified: Wed, 16 Sep 2026 02:00:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23800309177c4c68ba6e5d6b9aa15a1d34c4cf787b739e59b329fd07e10bf37e`  
		Last Modified: Wed, 16 Sep 2026 02:00:46 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7d4091fbefd4be522bedf3beae7721c95a52e7c21195aab5b4ec949606417aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaef3e1f0fd23470f99e58affbc135a3db5cd0279f66203dc8b1978d69fd166e`

```dockerfile
```

-	Layers:
	-	`sha256:467408e1024a5369064886233d6cb57192d8ec3b7596deef4aabe1856073882e`  
		Last Modified: Wed, 16 Sep 2026 02:00:46 GMT  
		Size: 3.7 MB (3730032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aba92938bbe1fd8332896d8dffad60e77ac059b67f86940de128e4b7c124904f`  
		Last Modified: Wed, 16 Sep 2026 02:00:46 GMT  
		Size: 21.3 KB (21324 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:c566b0586c4a724da0f3c573fd06ed54d5a9dd67b5c5c51b1f9b235d090e5041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161452997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4613987e23b6e796e9ec4ce2525ea0d7fea338e11da8f865c2a95858892d7b83`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:31:33 GMT
ENV container oci
# Tue, 15 Sep 2026 07:31:34 GMT
COPY dir:48e27affc10b861c48ae46456c0107bf65eb31343712fe3d0c44b63ae3b34e32 in /      
# Tue, 15 Sep 2026 07:31:34 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:31:34 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:31:34 GMT
COPY dir:f7862075649e7dffde76dc4e3a71678b8f8fea1664ce349c89d76fca8b3fba3a in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:31:34 GMT
COPY dir:f7862075649e7dffde76dc4e3a71678b8f8fea1664ce349c89d76fca8b3fba3a in /root/buildinfo/      
# Tue, 15 Sep 2026 07:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:30:29Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:30:29Z" "architecture"="s390x" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:30:29Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Thu, 17 Sep 2026 21:31:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:31:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:31:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:31:26 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 17 Sep 2026 21:31:26 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Thu, 17 Sep 2026 21:32:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:32:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:32:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:32:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:32:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d97d02b8db9d80fe6eec5b9573d4beca2780aed0b522d7adadbb0f3782cb55ea`  
		Last Modified: Tue, 15 Sep 2026 12:25:31 GMT  
		Size: 34.8 MB (34802850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227372e33d6888a6a28a55df0eea3ea24fb4a2868df46c7977f52754ae312020`  
		Last Modified: Thu, 17 Sep 2026 21:31:54 GMT  
		Size: 38.2 MB (38225212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a4881092102a95e6fd4730225ec101f184f6d4612006522c2a1e08d7ea728a`  
		Last Modified: Thu, 17 Sep 2026 21:32:54 GMT  
		Size: 88.4 MB (88422336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4aa9024dd911f0d25530b9834d27f1e7be3aa0a3ca98c06f06ea4e222fc71d6`  
		Last Modified: Thu, 17 Sep 2026 21:32:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf1848011aabbb7efbbc3996b8a1b96c7f4cbabab259e27a0ddbe0e4eaa1675`  
		Last Modified: Thu, 17 Sep 2026 21:32:53 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:14cc0954d9bd18ebe37fa816420c633f27fe241e5214820f25856dbe96401067
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a6a95872f70ad4bb97a46186d364c0f0191c5ecbc2c07b5450a248a0f3cd4c`

```dockerfile
```

-	Layers:
	-	`sha256:3f0be23d9ec2dcdce0168fd861d35fb6736f446404fbf0fe86f5b63ed441a6ff`  
		Last Modified: Thu, 17 Sep 2026 21:32:53 GMT  
		Size: 3.7 MB (3730042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85ca344a60a90d189e2731480fa4d9b81b1c433607f1012ee2fe4ec29285da20`  
		Last Modified: Thu, 17 Sep 2026 21:32:52 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json
