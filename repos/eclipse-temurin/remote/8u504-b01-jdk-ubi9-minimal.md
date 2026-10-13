## `eclipse-temurin:8u504-b01-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:c622d037bd58a501a89f80ae0da1f9856f5103a17c6475cd129a769600765e2d
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
$ docker pull eclipse-temurin@sha256:6eb283b74cab6b7bfe9c01032231103b380e00495c3c9e3c6cce4e37f7b81db7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123569312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fbd58e1c2346f85dffa7e2dc78f0cb5b7e057ae9384beaa260e64ecfc76403`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:49 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:50 GMT
COPY dir:e45266e494b9752d347f82bff660e367c92279dd3110ea5b3aba7f7174fdf656 in /      
# Mon, 12 Oct 2026 12:37:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:50 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:05Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:05Z" "architecture"="x86_64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:05Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:34:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:34:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:34:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:34:07 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:34:07 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 00:34:12 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 13 Oct 2026 00:34:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:34:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:34:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c8fb2f748d0518200c41845a3bbb526397078028e42feaddaf7208534fc575b4`  
		Last Modified: Mon, 12 Oct 2026 14:31:54 GMT  
		Size: 40.7 MB (40731722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92ff9bdac3619c8d4fcfa7fa27fe0e762b83d36c89895efe6162f17861e9831`  
		Last Modified: Tue, 13 Oct 2026 00:34:26 GMT  
		Size: 27.6 MB (27642256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27cbb30bc6405b718f3e838e557b6875cd9f4387a5c18841f512514e94bbcd2`  
		Last Modified: Tue, 13 Oct 2026 00:34:27 GMT  
		Size: 55.2 MB (55192716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6df465613628763e69909812ae0e3d391bee754bbe2d7c40cf6b07579fac19`  
		Last Modified: Tue, 13 Oct 2026 00:34:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a54ae783ba692591d70fe3e6038ed584f73bee680ccf80a216dc34e2d8c2e62`  
		Last Modified: Tue, 13 Oct 2026 00:34:26 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:dfab3260a54860062645534b4f101c3b7e13f60609b2ae9cbfeac37a73aebc0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333122b87c32991c462a49027fb574a1e57e55d554b40e0a2cfaec76d2dc4bfd`

```dockerfile
```

-	Layers:
	-	`sha256:b725638a1a6c1caba7efdbb6d0923b7c00797adac26709ded0b54446345efe3c`  
		Last Modified: Tue, 13 Oct 2026 00:34:25 GMT  
		Size: 2.6 MB (2616122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72d78560a8e17575c7c3c53cce5a874e3a1212e85e2f1d85507f57a9051e60f9`  
		Last Modified: Tue, 13 Oct 2026 00:34:25 GMT  
		Size: 19.9 KB (19873 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c2158cf31b4d6e74191870d98095d0fd69d18d8c1d3fcadbe4d1273e198888ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.1 MB (121135798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c53ddec3149e23b895f3a3960f6325e6cf96923c3caef4ddbd830a7a8429c23`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:20 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:21 GMT
COPY dir:123af182f2411d6301e92c5816a09ad572a38ac45c6a006a2a67fe12bba24337 in /      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:22 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:49Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:49Z" "architecture"="aarch64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:49Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:32:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:32:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:32:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:32:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:32:35 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 00:32:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 13 Oct 2026 00:32:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:32:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:32:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e9b14607c5b59da407fa1d8ceb91765c821f6a3e5637af082c822b0741fd9481`  
		Last Modified: Mon, 12 Oct 2026 14:30:43 GMT  
		Size: 38.8 MB (38798784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd00c3cbbe59af25b83e85e5d6c64e1a1d12c3fd253753e64658f61660ee9ee3`  
		Last Modified: Tue, 13 Oct 2026 00:32:54 GMT  
		Size: 28.1 MB (28079570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba328a4888b9d4bd276f15ba139cc5bedf0c12334623b85f240eced5a7e7f280`  
		Last Modified: Tue, 13 Oct 2026 00:32:54 GMT  
		Size: 54.3 MB (54254826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6541dd22b17313c5ee97e82d3c37c20a2d7b2ae36cd84038f689a6bd420e0cb8`  
		Last Modified: Tue, 13 Oct 2026 00:32:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e0caa58417c1ce035e869d5f789616fa5d02cf45f58f0474f5f066455305cee`  
		Last Modified: Tue, 13 Oct 2026 00:32:54 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:139c9de7babcd954ef3dc6c9638699a46e426b8c2cca42368ad72604a5ff1631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af09a3489c2b5a4112d7f6a550854f7d9c623d8e554a84b76d7258def4c00475`

```dockerfile
```

-	Layers:
	-	`sha256:15c1e47673102cadd9a0c4c7db899549b05e02dc269f80f2e3bac5780065cd1d`  
		Last Modified: Tue, 13 Oct 2026 00:32:52 GMT  
		Size: 2.6 MB (2614410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5098accac6e2821bd370e762461ca075d576ed18d325d5c7634a4402afa872b`  
		Last Modified: Tue, 13 Oct 2026 00:32:52 GMT  
		Size: 20.0 KB (19989 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:8e81328ae5043fa1f5d297b8ce223ee6a36865eb09dcfb5fdb72d7626bfd4a29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127820096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fab65aeedf66bf4584d5947bf53cfd6bfc3bd99e97a068783c8d237ab00a2d5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:44 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:d07f2b7b7fc0328aad01cfdaed182c175acb09c22d3d7ce49cc19c491698d5b0 in /      
# Tue, 06 Oct 2026 09:42:45 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:45 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:774b92356406bfee1307af385a5d45b5beda7faea39e85ca4f3d6fbc56d40b00 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:774b92356406bfee1307af385a5d45b5beda7faea39e85ca4f3d6fbc56d40b00 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:45 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:23Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:23Z" "architecture"="ppc64le" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:23Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 21:49:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:24 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 06 Oct 2026 21:49:37 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 06 Oct 2026 21:49:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:49:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:49:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9244f500f9cceb07e7669ad9bfa7c24a2ed1eed26cb416a3d032180e1d0448b2`  
		Last Modified: Tue, 06 Oct 2026 12:14:20 GMT  
		Size: 45.1 MB (45090018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19b15df0f393569d2b35ab6197ae367a01bab491b217c2f51043e833e5b92ae`  
		Last Modified: Tue, 06 Oct 2026 21:50:11 GMT  
		Size: 30.1 MB (30059845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50111d1e5f567daffd7781cf9caf3abf80fa1a8586c2181b935375388347cf42`  
		Last Modified: Tue, 06 Oct 2026 21:50:11 GMT  
		Size: 52.7 MB (52667614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c6879ef33b68f9f5d5f6eed8bbefb9c32b34f00f0cf4f3b52fbf70e9412176`  
		Last Modified: Tue, 06 Oct 2026 21:50:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1071a8e34d42ccce18d27ca993ec820713a0c5833c3ddac010fdbb56572d5b32`  
		Last Modified: Tue, 06 Oct 2026 21:50:10 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:973408401f05b84b850a497fa2a27073235110881b7fa6f8f17710d40b845797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9348ed66da122f9174f0da16dc4a912978719ec90517c6d98b3a5c5d207c7bec`

```dockerfile
```

-	Layers:
	-	`sha256:4e1f79f82ffb88d0cb845de9f417bc82b27888638d22920cc7e6f99a7a6ede57`  
		Last Modified: Tue, 06 Oct 2026 21:50:09 GMT  
		Size: 2.6 MB (2613065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4c47033560bb0d011818da093d670bdb88383cd9e275598828ecae97e46a6cf`  
		Last Modified: Tue, 06 Oct 2026 21:50:08 GMT  
		Size: 19.9 KB (19909 bytes)  
		MIME: application/vnd.in-toto+json
