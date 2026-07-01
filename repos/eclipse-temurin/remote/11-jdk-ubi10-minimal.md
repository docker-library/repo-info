## `eclipse-temurin:11-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:48ef00ed64745ad103b651fb25b8a51b4f3bafe5b9af9d1b727335258355cf4b
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

### `eclipse-temurin:11-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6c6f5441667999d72ea71071b316a33ff92bafaa0243cd8dc7cfab998a9a5420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (215034707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457b17e4993a6772264f239bd67bf0b5bd3b3c43fab98b4c5744c5e8c48da234`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 30 Jun 2026 05:58:20 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:58:20 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:58:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:58:21 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 30 Jun 2026 05:58:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:58:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 30 Jun 2026 05:58:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:58:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:58:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 30 Jun 2026 05:58:21 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:58:21 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 30 Jun 2026 05:58:21 GMT
ENV container oci
# Tue, 30 Jun 2026 05:58:21 GMT
COPY dir:826a40ace3907e1f9970d5a08955d5b6fa6c723fcffac174d9cae163b2ae817c in /      
# Tue, 30 Jun 2026 05:58:21 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:58:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:58:21 GMT
COPY dir:0284359278ca147ec570006b2f73ec9a3496d218bf3cc370592f0c400a985228 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:58:21 GMT
COPY dir:0284359278ca147ec570006b2f73ec9a3496d218bf3cc370592f0c400a985228 in /root/buildinfo/      
# Tue, 30 Jun 2026 05:58:22 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:58:02Z" "org.opencontainers.image.revision"="44f0ddba4a090cf20869fe52250e95ba0eca806d" "build-date"="2026-06-30T05:58:02Z" "architecture"="x86_64" "vcs-ref"="44f0ddba4a090cf20869fe52250e95ba0eca806d" "vcs-type"="git" "release"="1782798957"org.opencontainers.image.created=2026-06-30T05:58:02Z,org.opencontainers.image.revision=44f0ddba4a090cf20869fe52250e95ba0eca806d
# Wed, 01 Jul 2026 00:20:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 01 Jul 2026 00:20:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:20:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 01 Jul 2026 00:20:01 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:20:01 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 01 Jul 2026 00:20:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 01 Jul 2026 00:20:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:20:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:20:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 01 Jul 2026 00:20:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9e91a846de98f791f2c98e92122c81218bef1873414bce0601911794d3a9719d`  
		Last Modified: Tue, 30 Jun 2026 07:13:08 GMT  
		Size: 34.9 MB (34909780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb6432960dc7aba933fd15fb3bcf26c856950de2c04133e81e957ce3bf28379`  
		Last Modified: Wed, 01 Jul 2026 00:20:25 GMT  
		Size: 37.8 MB (37773672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c9eb899a7c77cc172864bb52d464b881579531a35d9211ad90a052a09c70ab`  
		Last Modified: Wed, 01 Jul 2026 00:20:27 GMT  
		Size: 142.3 MB (142348835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de3c0e6ae9bb8afc2f5e87cbac7f309a45c88dc332c558828576b8e2437fbad`  
		Last Modified: Wed, 01 Jul 2026 00:20:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e43a71dae152f8b87d219761c820dc3441244e9ec25fde2befb74a4d57f0724`  
		Last Modified: Wed, 01 Jul 2026 00:20:23 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:de3b587b81e912cdf174af53363f326855bdf9c536e6db0be41db510e6176ab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3832626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb50771072293b3988927815196d39e92d636c57cc2eeaa34c1ae6845e051a5`

```dockerfile
```

-	Layers:
	-	`sha256:838576cff165d4efc208e0f638519985b15ebddd833f8380b08a84a5b53c712e`  
		Last Modified: Wed, 01 Jul 2026 00:20:23 GMT  
		Size: 3.8 MB (3811286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6236564728d1fee7933ee224d065bce72c36a16dab94fae748fc4acae566272e`  
		Last Modified: Wed, 01 Jul 2026 00:20:23 GMT  
		Size: 21.3 KB (21340 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:feb39ffb567a946e5fb27c62f47ff84413beb01c61c1b58e56c8c504ac4bdcea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209836394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2bb9b038d4de29d27580f7bc2e981598cd5118398fde998c19c1ff123cbd0d0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 30 Jun 2026 06:00:27 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 06:00:27 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 06:00:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 06:00:27 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 30 Jun 2026 06:00:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 06:00:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 30 Jun 2026 06:00:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 06:00:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 06:00:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 30 Jun 2026 06:00:27 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 06:00:27 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 30 Jun 2026 06:00:27 GMT
ENV container oci
# Tue, 30 Jun 2026 06:00:28 GMT
COPY dir:6532b60aee6596eedc54150733b22a4bd5845766d2e036847d94db009e28c073 in /      
# Tue, 30 Jun 2026 06:00:28 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 06:00:28 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 06:00:28 GMT
COPY dir:bf92bcd7ce86cb6517dab9f0376ba8e4643a80e464a985b546839b4dfe432698 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 06:00:28 GMT
COPY dir:bf92bcd7ce86cb6517dab9f0376ba8e4643a80e464a985b546839b4dfe432698 in /root/buildinfo/      
# Tue, 30 Jun 2026 06:00:29 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:59:57Z" "org.opencontainers.image.revision"="44f0ddba4a090cf20869fe52250e95ba0eca806d" "build-date"="2026-06-30T05:59:57Z" "architecture"="aarch64" "vcs-ref"="44f0ddba4a090cf20869fe52250e95ba0eca806d" "vcs-type"="git" "release"="1782798957"org.opencontainers.image.created=2026-06-30T05:59:57Z,org.opencontainers.image.revision=44f0ddba4a090cf20869fe52250e95ba0eca806d
# Wed, 01 Jul 2026 00:12:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 01 Jul 2026 00:12:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:12:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 01 Jul 2026 00:12:14 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:12:14 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 01 Jul 2026 00:12:21 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 01 Jul 2026 00:12:22 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:12:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:12:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 01 Jul 2026 00:12:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d244a14eecf6ccf03b959d58f433192b7b71a785ee93c98410fada3cb064e970`  
		Last Modified: Tue, 30 Jun 2026 07:32:09 GMT  
		Size: 33.1 MB (33090986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd88960c4a6b94b69c612c2cfe0ff277295f4263867738dd1af89d1adc13bad6`  
		Last Modified: Wed, 01 Jul 2026 00:12:41 GMT  
		Size: 37.7 MB (37702307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c9ca63329d8bc9005c30178c13940bb794095489e1b15e327670ac5e849412`  
		Last Modified: Wed, 01 Jul 2026 00:12:43 GMT  
		Size: 139.0 MB (139040681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873009c498376f3ffa8a6a199e8c99cf38bd241942a23de9144f4649058d7580`  
		Last Modified: Wed, 01 Jul 2026 00:12:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5951127ecbdf04c841e669f40ccfa4c50095289f3f5b621446d021177a2aa49`  
		Last Modified: Wed, 01 Jul 2026 00:12:39 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:13a1d102f23c16fc02e42593404aed6121f00c16b8237fb79dd5d2201573573c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3832786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c328e5d17521920caf8bcbfea554141b15b9129a4088236e068c596c2ef840`

```dockerfile
```

-	Layers:
	-	`sha256:2b38ad41308ef02ddc6d611731b289adce4a2bcb9ad102b41ced547729597b28`  
		Last Modified: Wed, 01 Jul 2026 00:12:39 GMT  
		Size: 3.8 MB (3811330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adc15a195bb412806abadab2b580c56e438b70eebaabde724c64dfaf2888d001`  
		Last Modified: Wed, 01 Jul 2026 00:12:39 GMT  
		Size: 21.5 KB (21456 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:2ae6cc9be392e133a7ddc046b1805bf1c27bc720134c2816429886595a4ad5cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208162477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4275f6e9e11f3a86082a248169f68ee9e1ac03a80bfcf0039cf044be341a525`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 30 Jun 2026 06:39:30 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 06:39:30 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 06:39:30 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 06:39:30 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 30 Jun 2026 06:39:30 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 06:39:30 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 30 Jun 2026 06:39:30 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 06:39:30 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 06:39:30 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 30 Jun 2026 06:39:30 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 06:39:30 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 30 Jun 2026 06:39:30 GMT
ENV container oci
# Tue, 30 Jun 2026 06:39:30 GMT
COPY dir:208449fd102c7409c4eb05b78eaa72eb86ef8c0c7e3b1d12e12541a27969801f in /      
# Tue, 30 Jun 2026 06:39:31 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 06:39:31 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 06:39:31 GMT
COPY dir:5d5950678dad20b7d06b4931247605bb73a4f35b6baa2761b72673afc4e54933 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 06:39:31 GMT
COPY dir:5d5950678dad20b7d06b4931247605bb73a4f35b6baa2761b72673afc4e54933 in /root/buildinfo/      
# Tue, 30 Jun 2026 06:39:31 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T06:39:13Z" "org.opencontainers.image.revision"="44f0ddba4a090cf20869fe52250e95ba0eca806d" "build-date"="2026-06-30T06:39:13Z" "architecture"="ppc64le" "vcs-ref"="44f0ddba4a090cf20869fe52250e95ba0eca806d" "vcs-type"="git" "release"="1782798957"org.opencontainers.image.created=2026-06-30T06:39:13Z,org.opencontainers.image.revision=44f0ddba4a090cf20869fe52250e95ba0eca806d
# Wed, 01 Jul 2026 00:29:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 01 Jul 2026 00:29:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:29:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 01 Jul 2026 00:29:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:29:40 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 01 Jul 2026 00:31:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 01 Jul 2026 00:31:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:31:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:31:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 01 Jul 2026 00:31:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecbe95bf4df2ad90de35afe9a4c6666f20c142133f097fb335760ca55cf139a9`  
		Last Modified: Tue, 30 Jun 2026 12:24:36 GMT  
		Size: 39.0 MB (39015227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ee7913facd8c877dce694cd79064446efa7f648926585866760df9642cc380`  
		Last Modified: Wed, 01 Jul 2026 00:30:18 GMT  
		Size: 39.5 MB (39530635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5092c69f2a549128ee0dfcb296682a8976172223ceb84c17375da8fa97b394a`  
		Last Modified: Wed, 01 Jul 2026 00:32:13 GMT  
		Size: 129.6 MB (129614196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aceea486e42274afe5f548cb5bd81dab47df75874d85545c8f6c14716f2f2373`  
		Last Modified: Wed, 01 Jul 2026 00:32:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b97dfe4a3169457acb5efbe5132e0a3bf4322c46c5568c08058776d3a7758a`  
		Last Modified: Wed, 01 Jul 2026 00:32:10 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:14c78c771c2eb7fc95050dd38d7808921e3553dd34533306bd845f794594d0f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3818879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8036d19e2f76a15e09153ab96279ceee5574f34231132e31e8624719e2eaa4f`

```dockerfile
```

-	Layers:
	-	`sha256:ef29410e0d7e4fd776b8b102911899db51eba30a753ad6caef9367f9f156c549`  
		Last Modified: Wed, 01 Jul 2026 00:32:10 GMT  
		Size: 3.8 MB (3797503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b24491678d152b553e7689f6974fd1f3e2adad376c546214d7ded054c59b3a9`  
		Last Modified: Wed, 01 Jul 2026 00:32:10 GMT  
		Size: 21.4 KB (21376 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:703ceac811948c8cc848b3fe924f53e9bf5627a7f0a912e9718b823b862b822f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.0 MB (195951336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7720e6197ff1cd1c9d9584aeb69233a10bf483d3207ec34be398f7ea6a453703`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 30 Jun 2026 06:25:25 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 06:25:25 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 06:25:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 06:25:25 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 30 Jun 2026 06:25:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 06:25:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 30 Jun 2026 06:25:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 06:25:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 06:25:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 30 Jun 2026 06:25:26 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 06:25:26 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 30 Jun 2026 06:25:26 GMT
ENV container oci
# Tue, 30 Jun 2026 06:25:26 GMT
COPY dir:41bb866e16b421953cbafb15c2dc9e40848b48d1c25fa19f927432de90df78d0 in /      
# Tue, 30 Jun 2026 06:25:27 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 06:25:27 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 06:25:27 GMT
COPY dir:420ae4ae0c4b8322df242dd169be66fe8a84d7f2f21b8b962e76b33b9b759f64 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 06:25:27 GMT
COPY dir:420ae4ae0c4b8322df242dd169be66fe8a84d7f2f21b8b962e76b33b9b759f64 in /root/buildinfo/      
# Tue, 30 Jun 2026 06:25:27 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T06:23:57Z" "org.opencontainers.image.revision"="44f0ddba4a090cf20869fe52250e95ba0eca806d" "build-date"="2026-06-30T06:23:57Z" "architecture"="s390x" "vcs-ref"="44f0ddba4a090cf20869fe52250e95ba0eca806d" "vcs-type"="git" "release"="1782798957"org.opencontainers.image.created=2026-06-30T06:23:57Z,org.opencontainers.image.revision=44f0ddba4a090cf20869fe52250e95ba0eca806d
# Wed, 01 Jul 2026 00:15:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 01 Jul 2026 00:15:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:15:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 01 Jul 2026 00:15:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:15:00 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 01 Jul 2026 00:15:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 01 Jul 2026 00:15:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:15:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:15:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 01 Jul 2026 00:15:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4859d60e7172d07eaa2aaf41036026ffadf05a0bb7a8ba6d7085a2255e1cef8e`  
		Last Modified: Tue, 30 Jun 2026 12:24:27 GMT  
		Size: 34.7 MB (34741483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4eee8922d48edef64bfa6e5b68ca1e68e4d4749556c876ffd68a7351a75611`  
		Last Modified: Wed, 01 Jul 2026 00:15:34 GMT  
		Size: 38.1 MB (38145954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701305864f12f66c623bf3a8ff6aa27b2e4beeaaf96b8913ac477cacda413f6a`  
		Last Modified: Wed, 01 Jul 2026 00:15:36 GMT  
		Size: 123.1 MB (123061479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3396afedd43ef90aaa5a426a36bfb8deb975ed3de7211b3a060d5077139c1e`  
		Last Modified: Wed, 01 Jul 2026 00:15:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16ba0eb9b0eff4fa443a23bc2dd973740409b2d4a579f0fe58e8e5b05f62817`  
		Last Modified: Wed, 01 Jul 2026 00:15:33 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:53e2c70aa0cc8362038a7740ea567959c24caeb8fec94d87f0c2b2f2a4a6dd7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3818220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eca09fb8aaee3a742fa056ba423592346a8186692df75abd32bf32ee69d9391`

```dockerfile
```

-	Layers:
	-	`sha256:2fccb3f9ec9c3f61a8eb18e5f7db4487672b5b4211d9d938455efbe65eb3deb1`  
		Last Modified: Wed, 01 Jul 2026 00:15:32 GMT  
		Size: 3.8 MB (3796880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82f694bbb75831b4cfd13cfec104a3976661165492b824f918457b2219656fc6`  
		Last Modified: Wed, 01 Jul 2026 00:15:32 GMT  
		Size: 21.3 KB (21340 bytes)  
		MIME: application/vnd.in-toto+json
