## `eclipse-temurin:25-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:933bf7b614e8829147ed67d338ea0215c95e36674d6aee4cd9a913597e3aa2e1
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

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:80d26bb03b873bc96603a302c77cea6582255a5a64c2df03a07d501f9cb49031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.7 MB (135741296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf8c294431b275a7ed26b05033af34d91fe7e64c24528e3302777e412cb0e76`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Tue, 15 Sep 2026 22:52:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 15 Sep 2026 22:52:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:52:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 15 Sep 2026 22:52:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:52:59 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Tue, 15 Sep 2026 22:53:36 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 15 Sep 2026 22:53:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 15 Sep 2026 22:53:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:53:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b2a0a2287149cc416166ed23549eb27c7c85bb290f7f72720084c62240c18942`  
		Last Modified: Tue, 15 Sep 2026 08:55:08 GMT  
		Size: 34.9 MB (34945197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f84b04eb3a4c03da630373300cbf9a8c9412d339bb4795466dec2587285ed4e5`  
		Last Modified: Tue, 15 Sep 2026 22:53:24 GMT  
		Size: 37.9 MB (37854279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa050b63e8bf230c3d85ece998ce7fb9c8c9e392c2de525ca6c9c5e98067cd37`  
		Last Modified: Tue, 15 Sep 2026 22:53:51 GMT  
		Size: 62.9 MB (62939221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5c6b43c1180bd610fe8ac42aaecad146432dae0428f1687866fcabc842e6b1`  
		Last Modified: Tue, 15 Sep 2026 22:53:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eccf427f6b8909f0c7d77bfd4d2494091d6cf770106a7224b09fb1931088da27`  
		Last Modified: Tue, 15 Sep 2026 22:53:50 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f75fd5c7626569adeea94462521e4b054690f9a656a0cffa345db63433a02b1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be84df84a7ad03469407c8ba560d908e36cd2e0fb3d1c1264a0097a04a720764`

```dockerfile
```

-	Layers:
	-	`sha256:3a4c05e7a73a62b06257f509ce3c17913f116a4ce4cae929565798117290a55c`  
		Last Modified: Tue, 15 Sep 2026 22:53:50 GMT  
		Size: 3.7 MB (3715581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:625f4adad37ed6cdbf4c26464d9cbce3c32d487950de801f12128adf2ca80266`  
		Last Modified: Tue, 15 Sep 2026 22:53:50 GMT  
		Size: 20.3 KB (20330 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:588c8f9c8bfa5187e43ca6f9ae12d1f85f647687ee2a438af76090e1968de55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132732041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1525ce393fe777e1360aaf29dff609c141607c159bb92e417e00fd88af9f74b0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Tue, 15 Sep 2026 22:42:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 15 Sep 2026 22:42:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:42:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 15 Sep 2026 22:42:08 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:42:08 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Tue, 15 Sep 2026 22:42:36 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 15 Sep 2026 22:42:37 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 15 Sep 2026 22:42:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:42:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:bc840691d14453cf4b8d9c57d899d7ea0d7fa6dae3fcee6dbcaa685e0c31d009`  
		Last Modified: Tue, 15 Sep 2026 08:55:06 GMT  
		Size: 33.1 MB (33144625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd85674acf17e42351c26bf489d2d70bb8c97ba01176d7a93305a367579e4a5`  
		Last Modified: Tue, 15 Sep 2026 22:42:25 GMT  
		Size: 37.8 MB (37780092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a120ece20d8361a2c5e1d7b98d64d19e80519fa07b5f3285b089d6abb77d1d8`  
		Last Modified: Tue, 15 Sep 2026 22:42:53 GMT  
		Size: 61.8 MB (61804724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52051221d6b97e387c675214c7c099a44021de6d26be1bb4a7592ef494a401c7`  
		Last Modified: Tue, 15 Sep 2026 22:42:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1335dce9255ba60a9f7148e184f693281c999012a832c89c3757a5dfe33419`  
		Last Modified: Tue, 15 Sep 2026 22:42:51 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6666247351c921c7afad654a9a7f69e64bbdac4859a379f6cb0a1b68995b607d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9adefbbe9f38c11c91f75d0a4f00cfff358f10b98b15148f4080ce6c24addf1`

```dockerfile
```

-	Layers:
	-	`sha256:ab3e9554e373bcc32f558c8457aa7ca977e52a7a91d8e34352dfb42aef8cb07c`  
		Last Modified: Tue, 15 Sep 2026 22:42:51 GMT  
		Size: 3.7 MB (3714992 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36b3bdef8c5a0aef818cb8dbb076b2b1c8e0fb850c2758ef22b8aa905ffc5318`  
		Last Modified: Tue, 15 Sep 2026 22:42:51 GMT  
		Size: 20.4 KB (20433 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:e228049fa9e4d03c6eaa283a9d970f23e94e05684a99a0051ff859ec4c41e5b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.6 MB (140592591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c110e0e4111534df18aa3ab9db30f532fbd108155c434ee1ae39a113e0e9e37`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 16 Sep 2026 01:59:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 01:59:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 01:59:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:651176bf56770dc598db37c67568d15d8a6fecd21a4726dcfa0b57514ac03e0a`  
		Last Modified: Wed, 16 Sep 2026 02:00:41 GMT  
		Size: 61.9 MB (61892203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fc776e9e8e42b8328ad55f6e82bc523335a2080587ca44fe7dfb731c91c178`  
		Last Modified: Wed, 16 Sep 2026 02:00:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0d7e31b1f1981c936b42fce7a64ecb8b7bd5cb104cfb108d88eca7cbc478f0`  
		Last Modified: Wed, 16 Sep 2026 02:00:39 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cfccc0a142f96d1efc8162a3c30e58bef187873f3b54d7bc4f2d43678e5f3662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9af0a07aa8e9995afcb8b338fc8a5d26fa0157ca90a6e8873954e371e56ed79`

```dockerfile
```

-	Layers:
	-	`sha256:9b32ac9f26301af835b9d7d1655510b60a3fc66522c7fe7cad42d65b053135ea`  
		Last Modified: Wed, 16 Sep 2026 02:00:39 GMT  
		Size: 3.7 MB (3703705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:583e89887d4eeb30f0263a2b249fcfd810fc118de44e9af83772ed54df2648ab`  
		Last Modified: Wed, 16 Sep 2026 02:00:38 GMT  
		Size: 20.4 KB (20360 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:8bf2b83d24898c3591ffcfa06d4e2e370caff27ce65c8535679d931051c7cfe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133428595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13492a7e8d254647f3a79980c85fe752262b70394b64495f6007b56a4a1b586`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Thu, 17 Sep 2026 21:31:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:31:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:31:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:31:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 17 Sep 2026 21:31:32 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Thu, 17 Sep 2026 21:32:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:32:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:32:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:32:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d97d02b8db9d80fe6eec5b9573d4beca2780aed0b522d7adadbb0f3782cb55ea`  
		Last Modified: Tue, 15 Sep 2026 12:25:31 GMT  
		Size: 34.8 MB (34802850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d935d23c474d1007c29ef66a26b4eaa5f6dd4b64435e59d157b53c95007069`  
		Last Modified: Thu, 17 Sep 2026 21:31:52 GMT  
		Size: 38.2 MB (38225239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9761c21fff5ceb5990dc0ef3e99d49c672938bec1d10e952b834d2f715d2558d`  
		Last Modified: Thu, 17 Sep 2026 21:32:52 GMT  
		Size: 60.4 MB (60397908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d25b9db8ca51899e753ccf4818e59c3ba55efb5e80a7bb81b358a93ef5c2e8`  
		Last Modified: Thu, 17 Sep 2026 21:32:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cb99053931c0f14b2e0db5cc58a2e09574d4bd8965259fb025910369b5c027`  
		Last Modified: Thu, 17 Sep 2026 21:32:51 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:61bec7db48a2f90487582de6f17b396cf5a150e555bac008e91aa1bc302fd9ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3725282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86327058597a3d840163f5011f1177c97c07688d9bad1524fa0f7d0463a3e959`

```dockerfile
```

-	Layers:
	-	`sha256:4681eb2ac9375fe5cd39cdf6d5965c942dfc5474eeab7c302985e69621fc1408`  
		Last Modified: Thu, 17 Sep 2026 21:32:51 GMT  
		Size: 3.7 MB (3704952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26a4c5fde86eb9e3cea1b248ff1cc347ea820504ef7dd259852159a26514c104`  
		Last Modified: Thu, 17 Sep 2026 21:32:51 GMT  
		Size: 20.3 KB (20330 bytes)  
		MIME: application/vnd.in-toto+json
