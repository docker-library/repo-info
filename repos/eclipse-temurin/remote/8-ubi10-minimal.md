## `eclipse-temurin:8-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:127b09c6f39b830602118a4fb307316d07eb512bbfe17a4529b587d89480d197
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ccf4ae5b0287cfbea951d2190f99dde29c2c7286dbda7af8a66fdc528dae7f12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127873876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab79aad8242a9ea304b2abf1a160e66e4d024ca19e4877b85de679f9edfa14f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 13:46:35 GMT
ENV container oci
# Wed, 29 Jul 2026 13:46:35 GMT
COPY dir:8b54f62a83609f7ca7db35de99b97ad887016d7d343f267970f635c2bcfb9878 in /      
# Wed, 29 Jul 2026 13:46:35 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 13:46:35 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 13:46:36 GMT
COPY dir:a2f8f5692e4a30fca4b2fd34555df94b325e49a14060efd4825b60aed3fdb4a9 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 13:46:36 GMT
COPY dir:a2f8f5692e4a30fca4b2fd34555df94b325e49a14060efd4825b60aed3fdb4a9 in /root/buildinfo/      
# Wed, 29 Jul 2026 13:46:36 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T13:46:17Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T13:46:17Z" "architecture"="x86_64" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T13:46:17Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 00:12:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 00:12:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:12:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 00:12:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:12:45 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Fri, 31 Jul 2026 00:12:49 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 31 Jul 2026 00:12:49 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 00:12:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:12:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ddfe294a9804613156d3672398df770ff04349398a4be9dea00a32464465ed11`  
		Last Modified: Wed, 29 Jul 2026 14:40:41 GMT  
		Size: 34.9 MB (34900220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b52954cf1ea12c1fedd8c5f25929601cd5797606f12399a4c427223627543f`  
		Last Modified: Fri, 31 Jul 2026 00:13:04 GMT  
		Size: 37.8 MB (37771879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4616bce947c2bfcda150ad32204c045be6d49b2e8ddaa86428cd78c65162416a`  
		Last Modified: Fri, 31 Jul 2026 00:13:05 GMT  
		Size: 55.2 MB (55199158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8952d500e30f52d1e15ef63e80dfc71e55877c3ee058f5846230f79e960c8558`  
		Last Modified: Fri, 31 Jul 2026 00:13:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefdc2fff2b38293d5419f9907f76e2a122d7bb8024846da78131a4d5ee72c3f`  
		Last Modified: Fri, 31 Jul 2026 00:13:02 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:dfcf27e1bc5356dcd04fb8d32e8bcc12c8b4516f2d78d2be7f81f8a9a822385e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3932806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1440ea08267123f4b866001b7721e3a371c7607fde0e73aa7a93e81a1ba40e6a`

```dockerfile
```

-	Layers:
	-	`sha256:1af7cd4e4c08c9e7aa7edb428f609c212ab76e61b9501235828f1d60b8e8af85`  
		Last Modified: Fri, 31 Jul 2026 00:13:02 GMT  
		Size: 3.9 MB (3912767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d72d11c82b94f01ff157cc598a3ad517b746d217ab0a91fe5db6e0d5ecbe4a88`  
		Last Modified: Fri, 31 Jul 2026 00:13:02 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:9c4ee16948dfe1d8579cad1925f5eff4a3e8cb37b0c46c385cbac1756867d37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.1 MB (125051942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d150a01373260ebe7c57e654e9d165db1f4538c345693cc6e7cc4c0bdf24f06`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 13:49:53 GMT
ENV container oci
# Wed, 29 Jul 2026 13:49:54 GMT
COPY dir:6494f0a7f26288c5d33733a2fc6cb0725994b3f7d21bbebda5c614e2d2e0b030 in /      
# Wed, 29 Jul 2026 13:49:54 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 13:49:54 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 13:49:54 GMT
COPY dir:fec0a214d0310fdf953bc240b28235ee5011fef40c975541e9dcd78832e7e9c9 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 13:49:54 GMT
COPY dir:fec0a214d0310fdf953bc240b28235ee5011fef40c975541e9dcd78832e7e9c9 in /root/buildinfo/      
# Wed, 29 Jul 2026 13:49:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T13:49:30Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T13:49:30Z" "architecture"="aarch64" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T13:49:30Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 00:16:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 00:16:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:16:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 00:16:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:16:00 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Fri, 31 Jul 2026 00:16:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 31 Jul 2026 00:16:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 00:16:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:16:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:4993068ac9f96458b90955f8347fdb41bb56d5cdbecf98080b50a406705a5ad7`  
		Last Modified: Wed, 29 Jul 2026 14:40:40 GMT  
		Size: 33.1 MB (33059937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d1b965bd9a742787b67d6a0d9c0cea12996e1d2eb88db2c23671780afda0a20`  
		Last Modified: Fri, 31 Jul 2026 00:16:20 GMT  
		Size: 37.7 MB (37715928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8e2de450b6ff3e65624f5f319fa8c4197c38c7dbe774b71536a5b12a595781`  
		Last Modified: Fri, 31 Jul 2026 00:16:20 GMT  
		Size: 54.3 MB (54273458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd75887787221fda62a8e7dedbee2779dcf3876dca5c7fe6197bd8ce9cdec751`  
		Last Modified: Fri, 31 Jul 2026 00:16:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d41120a6ea871fa0f642ab01ad234250ddbfc741ef44a0941e7de1f2458bd51`  
		Last Modified: Fri, 31 Jul 2026 00:16:19 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3d7b243df0d84dca6a008b97a6dd75329b20b459c42611a663393dc704078829
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3933048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2ba9abdb6236d30d322dec8fab7f63c62e4d46ead3f7778f7ce27e886273a5`

```dockerfile
```

-	Layers:
	-	`sha256:68494615d3670d4a329b918ade7e1c537b8daa24fc4d5f24608925be1681a221`  
		Last Modified: Fri, 31 Jul 2026 00:16:18 GMT  
		Size: 3.9 MB (3912893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b73c2543e02347014c99be420700b60acb53bcdf23146535b9202d7927afe7af`  
		Last Modified: Fri, 31 Jul 2026 00:16:18 GMT  
		Size: 20.2 KB (20155 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:14ad4ba48770358905189c41790b420bc0dd38237d650697232389e4efd65173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131235601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1713aa5710479669842b4101ff2da42370db6d0e85909f0559da215cc96c6ca7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 13:50:05 GMT
ENV container oci
# Wed, 29 Jul 2026 13:50:06 GMT
COPY dir:32b612952f6a200e1fc2841228adfff5b5619d342a0bf5d8f4fb3394f3204d40 in /      
# Wed, 29 Jul 2026 13:50:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 13:50:06 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 13:50:06 GMT
COPY dir:6312ce2863b2ed80640bbcd1b43ae5dd174e45e7d1f30d05f89f474c8f56d870 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 13:50:06 GMT
COPY dir:6312ce2863b2ed80640bbcd1b43ae5dd174e45e7d1f30d05f89f474c8f56d870 in /root/buildinfo/      
# Wed, 29 Jul 2026 13:50:06 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T13:49:48Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T13:49:48Z" "architecture"="ppc64le" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T13:49:48Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 02:11:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 02:11:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 02:11:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 02:11:48 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 02:11:48 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Fri, 31 Jul 2026 02:11:57 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 31 Jul 2026 02:11:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 02:11:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 02:11:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:efe2e261eec9fcfe777756b6158d35446d9dd1a2f1a234aaded7f95906b10b72`  
		Last Modified: Wed, 29 Jul 2026 18:21:45 GMT  
		Size: 39.0 MB (39032105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba0a9d84008c0e73e6b7d424bd5d3c7cbcf8bc4d10b3f3d389a3e69fcafa52f`  
		Last Modified: Fri, 31 Jul 2026 02:12:32 GMT  
		Size: 39.5 MB (39531151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cf18aa970ffa79b71de4827db8946bd32e05600ffc2457987abde6a1a4dd47`  
		Last Modified: Fri, 31 Jul 2026 02:12:33 GMT  
		Size: 52.7 MB (52669727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeddb46d91e86896b280c97cbcca58b2746b97805ff8cb2fc1c931e474b25fd7`  
		Last Modified: Fri, 31 Jul 2026 02:12:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91968a0f47f081ffae1828017fac5bffd281a525533aeb1628d479046bee04e2`  
		Last Modified: Fri, 31 Jul 2026 02:12:30 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9c47242f24e50b00482512c98f70166e3cb254215b92cc8dc9f1a6b2254b43aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3920268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cfa7c1847b316278eafdf12d7a3fce6f4203bcf9101fa55e20e291f7b9784e2`

```dockerfile
```

-	Layers:
	-	`sha256:f0f857e49ea628fbe1936bad6b72a7805828d874899bf9fd131a16d9a10308b1`  
		Last Modified: Fri, 31 Jul 2026 02:12:30 GMT  
		Size: 3.9 MB (3900194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cfdad93b441137e7d53ace784eccbd2d80ee56ce565c3d0e473d5574a887bbc`  
		Last Modified: Fri, 31 Jul 2026 02:12:30 GMT  
		Size: 20.1 KB (20074 bytes)  
		MIME: application/vnd.in-toto+json
