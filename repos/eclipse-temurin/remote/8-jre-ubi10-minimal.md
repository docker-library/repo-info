## `eclipse-temurin:8-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:95232dc6d2758a7bba42bd3b8da82c358ed04bb9f8cf9dc293bc485934c48a16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:0d96939f6e86675e2038bae0e18b79fa4b2344fc8765cfcab6314dbc8bf5b67a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115025871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e2c5184a2005d77730160f69cd361bb8a8ad3dc2051fdbbed7d298c3ec59a4d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 10 Aug 2026 21:51:29 GMT
ENV container oci
# Mon, 10 Aug 2026 21:51:30 GMT
COPY dir:7a04abc64e369dd32456066306b8fddc9c1e490ec0cf51450d2d195a7ad5c1e9 in /      
# Mon, 10 Aug 2026 21:51:30 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 21:51:30 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 21:51:30 GMT
COPY dir:0b22cdacfd54d8b903ea695d9151f1ccb890483ff9ca8176faa3c586cf67071d in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 21:51:30 GMT
COPY dir:0b22cdacfd54d8b903ea695d9151f1ccb890483ff9ca8176faa3c586cf67071d in /root/buildinfo/      
# Mon, 10 Aug 2026 21:51:30 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T21:51:06Z" "org.opencontainers.image.revision"="f79522b6176b2c2293398c933c4f7a44008ab395" "build-date"="2026-08-10T21:51:06Z" "architecture"="x86_64" "vcs-ref"="f79522b6176b2c2293398c933c4f7a44008ab395" "vcs-type"="git" "release"="1786398535"org.opencontainers.image.created=2026-08-10T21:51:06Z,org.opencontainers.image.revision=f79522b6176b2c2293398c933c4f7a44008ab395
# Tue, 11 Aug 2026 17:49:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 17:49:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:49:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 17:49:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:49:49 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 11 Aug 2026 17:49:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 11 Aug 2026 17:49:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 17:49:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 17:49:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:57ad07d2cd224920b88126949754e7f4ce28cf93f6845916da07c959c6d98f1d`  
		Last Modified: Tue, 11 Aug 2026 00:19:13 GMT  
		Size: 34.9 MB (34906619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cea8098e50e6ae5db16f822c1321cb01b883c60796b08ea6b7e8d2cbdf08c97`  
		Last Modified: Tue, 11 Aug 2026 17:50:07 GMT  
		Size: 37.8 MB (37784430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44cfdc9e16d8f3ee954fa2e64a5eadd3405e87823b1642abeba0d53a46b6361`  
		Last Modified: Tue, 11 Aug 2026 17:50:07 GMT  
		Size: 42.3 MB (42332224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3500179418c0c646967f047f5fee31bf2b236abb691ab08b3240708131384643`  
		Last Modified: Tue, 11 Aug 2026 17:50:05 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066816890c298118a7a2d1705c7ff3bccb0d59580d7abb8f8e48faa3ad699374`  
		Last Modified: Tue, 11 Aug 2026 17:50:06 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3ba15b8a2ff96b9f137068521a3c2e239da3335b45d67fcb959b139360fd3b5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ccad80eb2b5389fd52128b8321110eedb130d37e8b5434e2ed8fb3ee082ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:dd82a2cd76ea62d048ece1dfdca8de183d94fbf9e555ac41958e0348e326ed40`  
		Last Modified: Tue, 11 Aug 2026 17:50:05 GMT  
		Size: 3.7 MB (3736798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d934c8bc2e4218ff9ab2cc33acc90a1b9adf67eb85eb643d5cc92f7fbe2578b`  
		Last Modified: Tue, 11 Aug 2026 17:50:05 GMT  
		Size: 19.5 KB (19511 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:cf381ff011108d3e87dbd43b5e5007752efb067ca395039d7d8c48839f70c242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112131155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da01a5c484763c7b5e0e8e7bffd4c8656cdd7381dc1d8a20be47247ffc0f360d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 10 Aug 2026 21:53:25 GMT
ENV container oci
# Mon, 10 Aug 2026 21:53:26 GMT
COPY dir:9b127e1be7f03495b8968f9753237fa3e68b28fbfc2ca0a6affa6cd45dc58ba9 in /      
# Mon, 10 Aug 2026 21:53:26 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 21:53:26 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 21:53:26 GMT
COPY dir:9ab660a0e21475a7f5a194ebb4173ccfdc8efc453ad00cf084e289cfef69ef69 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 21:53:26 GMT
COPY dir:9ab660a0e21475a7f5a194ebb4173ccfdc8efc453ad00cf084e289cfef69ef69 in /root/buildinfo/      
# Mon, 10 Aug 2026 21:53:26 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T21:53:05Z" "org.opencontainers.image.revision"="f79522b6176b2c2293398c933c4f7a44008ab395" "build-date"="2026-08-10T21:53:05Z" "architecture"="aarch64" "vcs-ref"="f79522b6176b2c2293398c933c4f7a44008ab395" "vcs-type"="git" "release"="1786398535"org.opencontainers.image.created=2026-08-10T21:53:05Z,org.opencontainers.image.revision=f79522b6176b2c2293398c933c4f7a44008ab395
# Tue, 11 Aug 2026 19:04:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 19:04:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 19:04:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 19:04:54 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 19:04:54 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 11 Aug 2026 19:04:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 11 Aug 2026 19:04:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 19:04:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:04:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6ad2b21e4232c6d46ffbc015ce8e9bfb1643a196de1763d432d925693df6f338`  
		Last Modified: Tue, 11 Aug 2026 00:19:28 GMT  
		Size: 33.1 MB (33117757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc780820f0dea6f952cbe41b5c9c708162f916546c311b1e1e2be7f3e73c43e9`  
		Last Modified: Tue, 11 Aug 2026 19:05:12 GMT  
		Size: 37.7 MB (37709107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d08ad1d7faad4a950e11ab5757ca922a9e5ef3efb135fb03b5a1ea12b18aa9`  
		Last Modified: Tue, 11 Aug 2026 19:05:13 GMT  
		Size: 41.3 MB (41301691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d120fdc4e60cf86b0812850b0a7c015b8ee3ceb426569e34d07ed14a631f3c9`  
		Last Modified: Tue, 11 Aug 2026 19:05:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30050e9189e41887114ad6b30a344a56e6405a4a4ce475f15ec95cad76f3e6f`  
		Last Modified: Tue, 11 Aug 2026 19:05:11 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fdffe5e2c8f1cb793700c5f7110444e6952d9d69ea8d618bc5485a334229ec53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838b0cdbe23ebd19754733712b4f853ea22bc8582dfa94284c9da4551b9997de`

```dockerfile
```

-	Layers:
	-	`sha256:505d1d3ee2758a819b151abbfc62653c94fc5b2a0d466337be66cd1b4ca71129`  
		Last Modified: Tue, 11 Aug 2026 19:05:11 GMT  
		Size: 3.7 MB (3736904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5155c84a13eb492e644aeb54da839c3fc271faa8d78a0355766bf4eb91f04f99`  
		Last Modified: Tue, 11 Aug 2026 19:05:11 GMT  
		Size: 19.6 KB (19615 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:2ebcc5e1815b3fb49f1da57ce2282e9b69fb64bfd521b43fda08574859192a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120281380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be61954d7624f94ee228cf3f305d0ccab08b1d5be4d328af020707f7c255706`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 10 Aug 2026 21:59:05 GMT
ENV container oci
# Mon, 10 Aug 2026 21:59:05 GMT
COPY dir:249066be360b20bac2c3d87c82d2fd5913a2bd1c8a7703095843f7bb07f442b8 in /      
# Mon, 10 Aug 2026 21:59:05 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 21:59:05 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 21:59:05 GMT
COPY dir:7876787ddee47582bd5037da96d6c1c51bee54abfb82e51e92e428cf06595bca in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 21:59:05 GMT
COPY dir:7876787ddee47582bd5037da96d6c1c51bee54abfb82e51e92e428cf06595bca in /root/buildinfo/      
# Mon, 10 Aug 2026 21:59:06 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T21:58:46Z" "org.opencontainers.image.revision"="f79522b6176b2c2293398c933c4f7a44008ab395" "build-date"="2026-08-10T21:58:46Z" "architecture"="ppc64le" "vcs-ref"="f79522b6176b2c2293398c933c4f7a44008ab395" "vcs-type"="git" "release"="1786398535"org.opencontainers.image.created=2026-08-10T21:58:46Z,org.opencontainers.image.revision=f79522b6176b2c2293398c933c4f7a44008ab395
# Tue, 11 Aug 2026 20:19:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 20:19:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 20:19:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 20:19:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 20:19:36 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 11 Aug 2026 20:20:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 11 Aug 2026 20:20:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 20:20:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 20:20:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8cd8bf1356749857de78a84ea2d535a37f25277dac8b1dcfbb2a37ef254ca46b`  
		Last Modified: Tue, 11 Aug 2026 00:19:54 GMT  
		Size: 39.0 MB (38992795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3681bd23f68912b8e5fc514148289990dda7f13561576208484ea88934ecba6`  
		Last Modified: Tue, 11 Aug 2026 20:20:14 GMT  
		Size: 39.5 MB (39545533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f14ea09d256b5e0cfbc69fc6666960f42b7c6e6790689b64fd9ac54f2da2c3`  
		Last Modified: Tue, 11 Aug 2026 20:20:54 GMT  
		Size: 41.7 MB (41740454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2ee0734c0c4f88421e8a56a919a6766bbe8f60e18fec9fb77a4071a481bceff`  
		Last Modified: Tue, 11 Aug 2026 20:20:49 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fd1c1af85d761fdce14a2fae7977247962714b7e469eeabd04f68176f5fa2f`  
		Last Modified: Tue, 11 Aug 2026 20:20:53 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6a00391d5cb8c2a5bf03ce679afcd8a5c28316b4a290ba6dfef85b70d6c39bdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420011a48969b4c7c70c96a81a2b09b3154662608b1deb44152298c3e4f6a8aa`

```dockerfile
```

-	Layers:
	-	`sha256:b6907e1eebe03cb0681b021dd3b79e4b219a5a0cb5d033899b18fbf19ab97667`  
		Last Modified: Tue, 11 Aug 2026 20:20:53 GMT  
		Size: 3.7 MB (3726235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7246f4c04444a2d07b15e0dd432c8e1e9e1dd8f99c2636b1bba48e1e20932a5`  
		Last Modified: Tue, 11 Aug 2026 20:20:53 GMT  
		Size: 19.5 KB (19541 bytes)  
		MIME: application/vnd.in-toto+json
