## `eclipse-temurin:17-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:953a3bacb63850a1b39601f23a2a4c2947a6f528b855295fa025385087b22b9a
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

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:f7e8cea1a9cece97e52736362fbcd18bed7a86f9054a9eb28ef768306bbb3545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120257002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b122247c1ccc48f5ffdfe18c46aed45494724819c5d98dc88e49ebf66a2f293d`
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
# Tue, 11 Aug 2026 17:50:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 17:50:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:50:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 17:50:56 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:50:56 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 11 Aug 2026 17:50:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 11 Aug 2026 17:50:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 17:50:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 17:50:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:57ad07d2cd224920b88126949754e7f4ce28cf93f6845916da07c959c6d98f1d`  
		Last Modified: Tue, 11 Aug 2026 00:19:13 GMT  
		Size: 34.9 MB (34906619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad51d892f040cd975f1f1153a7ade47b54d016dc875ee2f4f9f9f78122b0d67`  
		Last Modified: Tue, 11 Aug 2026 17:51:13 GMT  
		Size: 37.8 MB (37784412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f440b2b18792fa148306ab395c811b9c1a086eadfddd8ef0f633c9c809753ccc`  
		Last Modified: Tue, 11 Aug 2026 17:51:13 GMT  
		Size: 47.6 MB (47563553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c552542ad18daa3a42e2734eff5e63f00713697fc8f41ebea4858e2a73d209`  
		Last Modified: Tue, 11 Aug 2026 17:51:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1741ae85d35ca4366693e3c6fbeff2e94e65f948c67bf875a34a0ab50bc8665e`  
		Last Modified: Tue, 11 Aug 2026 17:51:01 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fa18629221b53c85ce80d6cb9f8776613a5a102abcdb81309424b02f03e7f2b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3728321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:211c6064038a69286380e6919b2ff6af2447593f984a5364b123f7b65d4481f8`

```dockerfile
```

-	Layers:
	-	`sha256:b215a5828f6b116c2e009b76cf14a1b92fd5326c14c9f4adf0d2a25675ff63c9`  
		Last Modified: Tue, 11 Aug 2026 17:51:11 GMT  
		Size: 3.7 MB (3707943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cef45ad698d57dd3d2226607af1017c380396b8d829ab1d0cbe5a42f59888a24`  
		Last Modified: Tue, 11 Aug 2026 17:51:11 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:61ce288d41ed915da39c3619cf1082372e355cf2632f4c310324f2a1606debd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117878826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af546cd97bb5ea67d1b2b594d9b40619a085720cdc6e29d98da8a87a5cb2cd39`
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
# Tue, 11 Aug 2026 19:05:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 19:05:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 19:05:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 19:05:27 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 19:05:27 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 11 Aug 2026 19:05:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 11 Aug 2026 19:05:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 19:05:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:05:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6ad2b21e4232c6d46ffbc015ce8e9bfb1643a196de1763d432d925693df6f338`  
		Last Modified: Tue, 11 Aug 2026 00:19:28 GMT  
		Size: 33.1 MB (33117757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4ed02bb51e73c2056785d858ff03a1b123f5698305dd1d115efbbc74652c51`  
		Last Modified: Tue, 11 Aug 2026 19:05:45 GMT  
		Size: 37.7 MB (37708942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cf7d9edea0078d153680d5fa2ee626a757b2c3f90c0f70e6770504160fb62b`  
		Last Modified: Tue, 11 Aug 2026 19:05:46 GMT  
		Size: 47.0 MB (47049708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95417c1f610f83941c2fc2a5e605337386f850f2cc4dc041e3f1168f0672bb28`  
		Last Modified: Tue, 11 Aug 2026 19:05:44 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd737ccd35f9125faf48addb0e05721b2108edd555d3352cba979994063b9aea`  
		Last Modified: Tue, 11 Aug 2026 19:05:44 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0c928906bec1d3575da7951824aca4b8c6f86f5b365db2c32224c1eeb2879d30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3727839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a17bef51e12ac15b1b87773b5e0f636fc43e865ab6892a858f83df87e548f8`

```dockerfile
```

-	Layers:
	-	`sha256:c20ba0e1935414bbfab653e055a4f561b68bece3bb0da279533af58466e131b9`  
		Last Modified: Tue, 11 Aug 2026 19:05:44 GMT  
		Size: 3.7 MB (3707357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c511af457a4cbfc97011abcc744b53aa001d95d3c6e15222c422f2d8b0b31302`  
		Last Modified: Tue, 11 Aug 2026 19:05:44 GMT  
		Size: 20.5 KB (20482 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:ced8e457021e4f34723f2133ed2d8e2095685c5820d7d5482e2082c69f31a8fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.0 MB (126040409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25462a82fc48de386ec0f56a41dad87f90d44103d9eabfc933337261eb19c8bb`
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
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 11 Aug 2026 20:24:16 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 11 Aug 2026 20:24:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 20:24:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 20:24:17 GMT
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
	-	`sha256:eb89b4e8f0865b825ade5aa6dcac11fd521e2f6502ecbb441c519ff136a636f0`  
		Last Modified: Tue, 11 Aug 2026 20:24:43 GMT  
		Size: 47.5 MB (47499662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfd8d5e87331e2633d063e11c3278e9dfa6e85d1d803839873719660a958b4e`  
		Last Modified: Tue, 11 Aug 2026 20:24:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384517f308e8c5a8440c7e2d2a4de9b233fb55908cbc4550abdf4c5cab54d964`  
		Last Modified: Tue, 11 Aug 2026 20:24:41 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f9db27a0c90eeb93a2ab10e24a0b0dafa0079feb0233749cb98f7b5189071ddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3717095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72abe0bdcc95845643d4f51990d92cd88f9355022c40949250962d39def549de`

```dockerfile
```

-	Layers:
	-	`sha256:e8ed4f73f6b1ba201bfaf61a39eec207a0b1fe17ff52c0bed0214791c3a99635`  
		Last Modified: Tue, 11 Aug 2026 20:24:41 GMT  
		Size: 3.7 MB (3696688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e53546f5dc303fb89fa054b4d802475d164d599f64fae94aea4fc6884b42aba`  
		Last Modified: Tue, 11 Aug 2026 20:24:41 GMT  
		Size: 20.4 KB (20407 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:044c2538f7373b1db93bfe90b95d21c1904c06c2b39e92f83b872d3f7460eb3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117463994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24a4e9ac1b4b16e3be30d08a0fff9073c70d40abb78365acbb9ae1b612233f4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 10 Aug 2026 22:13:57 GMT
ENV container oci
# Mon, 10 Aug 2026 22:13:58 GMT
COPY dir:2529f8755d9ee8e53623ba27aa56e84fca0d00a668e2f0a6ab24b9e486487435 in /      
# Mon, 10 Aug 2026 22:13:58 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 22:13:58 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 22:13:58 GMT
COPY dir:80d51a898d3b26a95270997d07c6c3dac30eb3437f15cc4502861f1a56e565ec in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 22:13:58 GMT
COPY dir:80d51a898d3b26a95270997d07c6c3dac30eb3437f15cc4502861f1a56e565ec in /root/buildinfo/      
# Mon, 10 Aug 2026 22:13:58 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T22:12:27Z" "org.opencontainers.image.revision"="f79522b6176b2c2293398c933c4f7a44008ab395" "build-date"="2026-08-10T22:12:27Z" "architecture"="s390x" "vcs-ref"="f79522b6176b2c2293398c933c4f7a44008ab395" "vcs-type"="git" "release"="1786398535"org.opencontainers.image.created=2026-08-10T22:12:27Z,org.opencontainers.image.revision=f79522b6176b2c2293398c933c4f7a44008ab395
# Tue, 11 Aug 2026 17:49:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 17:49:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:49:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 17:49:56 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:49:56 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 11 Aug 2026 17:51:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 11 Aug 2026 17:51:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 17:51:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 17:51:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:003f683bf518c0de90b2047dd27ee887a3a0041122084567ca251d13afdf8017`  
		Last Modified: Tue, 11 Aug 2026 00:19:41 GMT  
		Size: 34.8 MB (34777119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9431dabf78066273272e7350d2fde98f1defa2ee9f6e9f1585dd7f5c16a1ccec`  
		Last Modified: Tue, 11 Aug 2026 17:50:43 GMT  
		Size: 38.2 MB (38153436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0540f093ffaaa537a68e42378197dc9cc1062fb9eb6ece1b0dfd35c7303dc0e`  
		Last Modified: Tue, 11 Aug 2026 17:51:43 GMT  
		Size: 44.5 MB (44531021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a4387d7a34b3334698d30abcc4a9b36032344cfd759c2510d14aca24ff36bf`  
		Last Modified: Tue, 11 Aug 2026 17:51:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29adf8b0ddfa47c84be5c9f954a68df99aa849ae428e32c10c92d9c7f46bbb37`  
		Last Modified: Tue, 11 Aug 2026 17:51:41 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:84fa2377781e8eb00e3affaebdc70543427e3691204c824e625f291a8f4a29ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34de1aade301dd60af8d60ce1b0efcfeebf9f5f711b0de02a7e8d6d0a6911788`

```dockerfile
```

-	Layers:
	-	`sha256:1a98bfed46ca7cc487a525bcc16d7dc30a4f6b69d703633af1160c716ce332de`  
		Last Modified: Tue, 11 Aug 2026 17:51:41 GMT  
		Size: 3.7 MB (3697933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c0d7f8e88ecdadcc589d2768c3c4c271de3ec8f5db2bfb2734352951c36b504`  
		Last Modified: Tue, 11 Aug 2026 17:51:41 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json
