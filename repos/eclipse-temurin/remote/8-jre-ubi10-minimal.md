## `eclipse-temurin:8-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:2f1a9b570377d7780594e0597b5ac431974192d35a1515c79f016fb0f7123adc
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
$ docker pull eclipse-temurin@sha256:809e420ccdae5f2590e1786f8f6fffa61ad6d593ec443b2ffd713dd523b17b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115058643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ec68030abc96d07b87696cc215915368156dcfe4fb62d553c2dc9137f5507f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 25 Aug 2026 20:06:48 GMT
ENV container oci
# Tue, 25 Aug 2026 20:06:48 GMT
COPY dir:e7620ad0de168d433994ebbf7fb7f61c959a1e46f62a586e13d1420fdf828782 in /      
# Tue, 25 Aug 2026 20:06:48 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 20:06:48 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 20:06:49 GMT
COPY dir:843679555eb85e63c3d46c8573b56fcb4e641b4a9bd8ecdac5dc2ff16c34caac in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 20:06:49 GMT
COPY dir:843679555eb85e63c3d46c8573b56fcb4e641b4a9bd8ecdac5dc2ff16c34caac in /root/buildinfo/      
# Tue, 25 Aug 2026 20:06:49 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T20:06:27Z" "org.opencontainers.image.revision"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "build-date"="2026-08-25T20:06:27Z" "architecture"="x86_64" "vcs-ref"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "vcs-type"="git" "release"="1787688243"org.opencontainers.image.created=2026-08-25T20:06:27Z,org.opencontainers.image.revision=0b4cc93aa2450ac257d3e3051c62ff62306cdb95
# Wed, 26 Aug 2026 18:29:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 26 Aug 2026 18:29:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Aug 2026 18:29:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 26 Aug 2026 18:29:11 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:29:11 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 26 Aug 2026 18:29:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 26 Aug 2026 18:29:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 26 Aug 2026 18:29:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 26 Aug 2026 18:29:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:86240237f31dfd7a745de734105e773d38e7ed79b6d73eddcb5554e8e7a96a76`  
		Last Modified: Tue, 25 Aug 2026 21:24:43 GMT  
		Size: 34.9 MB (34915243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f61963267feb8ff176b28390d4cedc17dab32e280f049835f9ab0a72bef99e`  
		Last Modified: Wed, 26 Aug 2026 18:29:29 GMT  
		Size: 37.8 MB (37814419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527a6efc3ddb61d0438bde945e40246a936f4da8f07d4478c7de60d7ef0319b2`  
		Last Modified: Wed, 26 Aug 2026 18:29:29 GMT  
		Size: 42.3 MB (42326382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff0d09b674014997b887898f5b2da1c4c149a5f9ebe527ad81e42b6afeb7187`  
		Last Modified: Wed, 26 Aug 2026 18:29:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a58ffd83dd1cb4c5e53f0d157d17f0c3f26b18d12c761c27bd3ca4dbd1966b2`  
		Last Modified: Wed, 26 Aug 2026 18:29:27 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7261c47375d9b0000dd0fa47e35e1b78b714a975565f1d6aded20f9af6be9d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ce4804a9cb374aa9ad3ef18e4a9fb620ac6360a8226bb106c07e16dd9a7a32`

```dockerfile
```

-	Layers:
	-	`sha256:4abea8fb39ae40e6122a6a2efa386f309b4fe8ff1d0c10927e2867ffd6696728`  
		Last Modified: Wed, 26 Aug 2026 18:29:27 GMT  
		Size: 3.7 MB (3736846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5eb684e9c24ec134602d813ac5c79cbfc5a698e332dc4dd16aa495b16f1b3dfa`  
		Last Modified: Wed, 26 Aug 2026 18:29:26 GMT  
		Size: 19.5 KB (19509 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:1f44714fb20931392a6c51b0e21c9c90e76972ddbf8d89e90282dcc9e869fbc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112156297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1373e1ed95721bbd707e6e1b7ca063d9a2bc09880a82b31475295449235c8b97`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 25 Aug 2026 20:08:40 GMT
ENV container oci
# Tue, 25 Aug 2026 20:08:41 GMT
COPY dir:e85602551ea7d4c5d143bc326f1b43b9ed8ad5fb111723cc57a2cb7efa3f9446 in /      
# Tue, 25 Aug 2026 20:08:41 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 20:08:41 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 20:08:41 GMT
COPY dir:b636c4dfbfa88e3b3b3d8395ea556d0e4ce7dfa8eccc649eb8c4efc46735c01e in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 20:08:41 GMT
COPY dir:b636c4dfbfa88e3b3b3d8395ea556d0e4ce7dfa8eccc649eb8c4efc46735c01e in /root/buildinfo/      
# Tue, 25 Aug 2026 20:08:41 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T20:08:18Z" "org.opencontainers.image.revision"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "build-date"="2026-08-25T20:08:18Z" "architecture"="aarch64" "vcs-ref"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "vcs-type"="git" "release"="1787688243"org.opencontainers.image.created=2026-08-25T20:08:18Z,org.opencontainers.image.revision=0b4cc93aa2450ac257d3e3051c62ff62306cdb95
# Wed, 26 Aug 2026 18:29:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 26 Aug 2026 18:29:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Aug 2026 18:29:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 26 Aug 2026 18:29:09 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:29:09 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 26 Aug 2026 18:29:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 26 Aug 2026 18:29:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 26 Aug 2026 18:29:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 26 Aug 2026 18:29:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:90204bffd8557d6ddc1fe3a7ace7c88713e398b48b9939f3ee4cdfe0070edb6a`  
		Last Modified: Tue, 25 Aug 2026 21:24:43 GMT  
		Size: 33.1 MB (33114682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7eddba9392a7bbcaa5529bce4e233885bb345d4d4bd8602d1512be48641cc6a`  
		Last Modified: Wed, 26 Aug 2026 18:29:28 GMT  
		Size: 37.7 MB (37742002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7460ad074b616f2d9c156b4e55c0e56cfd7bb97f3ce551a9b1f59a24f117390b`  
		Last Modified: Wed, 26 Aug 2026 18:29:28 GMT  
		Size: 41.3 MB (41297014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff0d09b674014997b887898f5b2da1c4c149a5f9ebe527ad81e42b6afeb7187`  
		Last Modified: Wed, 26 Aug 2026 18:29:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb43bfd19a639e5e470e7b7c411be81e4390164295ccf5feb322101d059a8b3`  
		Last Modified: Wed, 26 Aug 2026 18:29:26 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a195c5ef53a2e802855582f1a77b5a6f24e16f65dea35aa1d2b0a978baf81c63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc87ff0e47c382ce76b17935af814284bbf8fff47ddb977d6a271cbc3a7c06f`

```dockerfile
```

-	Layers:
	-	`sha256:f5abbc12667d3244a4160ef8d60f3d9e4ed6f842db09807946fe304f2f7fd372`  
		Last Modified: Wed, 26 Aug 2026 18:29:27 GMT  
		Size: 3.7 MB (3736952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef2c0d119fd13d76a7fb32e3b83159278df97258e352e5ee218197481cbc5949`  
		Last Modified: Wed, 26 Aug 2026 18:29:26 GMT  
		Size: 19.6 KB (19615 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:88b27e8d6bab882960843599eb7f8033de04ce99a19f4887cb7d82e6d6a04750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120398081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d33f3b1ae8894a6483af6b8d75be9c41716bb98ec48f61bc6aa909d42a78bcf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 00:58:57 GMT
ENV container oci
# Mon, 31 Aug 2026 00:58:58 GMT
COPY dir:c6698b30bc4613bb5c731dfe85b9f0b6f175062b68301d046396d7b130d9f1e9 in /      
# Mon, 31 Aug 2026 00:58:58 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 00:58:58 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 00:58:58 GMT
COPY dir:fc70cb278a18b9e01906c23db2ebc4b16dbe24dae1cf884a16eba92125f805ab in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 00:58:58 GMT
COPY dir:fc70cb278a18b9e01906c23db2ebc4b16dbe24dae1cf884a16eba92125f805ab in /root/buildinfo/      
# Mon, 31 Aug 2026 00:58:58 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T00:58:33Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T00:58:33Z" "architecture"="ppc64le" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T00:58:33Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:55:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:55:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:55:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:55:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:55:59 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Mon, 31 Aug 2026 19:56:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:56:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:56:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:56:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d030c9a6b8d1eae81256166dca814ef7b7aefa89f72c9955e620439c07b6b16b`  
		Last Modified: Mon, 31 Aug 2026 06:16:21 GMT  
		Size: 39.1 MB (39080206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa8dcf3c07e25b50889f9a461403092890829375d0f1248be3d65145272f984`  
		Last Modified: Mon, 31 Aug 2026 19:56:40 GMT  
		Size: 39.6 MB (39571819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e0cc62a8a5d22a538ae653e40a89171908126d916d6e9ff593bfdd0782da33`  
		Last Modified: Mon, 31 Aug 2026 19:57:21 GMT  
		Size: 41.7 MB (41743458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4bde0bc03e0e447e3f8175c9ca00622d48447362dca38631771244012672c6`  
		Last Modified: Mon, 31 Aug 2026 19:57:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6828eb1378e3c42c9b171494d90c61cca67dde1fa1c14858c76a0470dc955e`  
		Last Modified: Mon, 31 Aug 2026 19:57:19 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e7d2e52b3e6f68977033950dafb167b79d9758fc86ac7037315479f7b2acafbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c828fbe892b86d5136f99836893e3d9bfcc2fac07495f375b03708aef1b9f260`

```dockerfile
```

-	Layers:
	-	`sha256:9538baa429e6112154e4256b88ac17eb57f0016cfcaf5192b38854886def6bc3`  
		Last Modified: Mon, 31 Aug 2026 19:57:20 GMT  
		Size: 3.7 MB (3726287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f1d98b7b997cb043737c4e0693ac0003ed8adc05465de586cca8bf8f423927f`  
		Last Modified: Mon, 31 Aug 2026 19:57:19 GMT  
		Size: 19.5 KB (19541 bytes)  
		MIME: application/vnd.in-toto+json
