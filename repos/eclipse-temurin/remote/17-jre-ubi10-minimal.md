## `eclipse-temurin:17-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:366a84621718a0a22fa724ebfafc07915bf72ace25fcf8800edfa5061cdb6d9f
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
$ docker pull eclipse-temurin@sha256:de249855b2d5b3d2178df92e2165f70f03db5c757ef6189e003bab3304b8d8b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120249536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aaab41726147ce187df5b143b7f2f2193b09993aba3c9fad7f9e5706f209dc8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Wed, 01 Jul 2026 00:19:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 01 Jul 2026 00:19:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:19:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 01 Jul 2026 00:19:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:19:39 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 01 Jul 2026 00:20:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 01 Jul 2026 00:20:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:20:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:20:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9e91a846de98f791f2c98e92122c81218bef1873414bce0601911794d3a9719d`  
		Last Modified: Tue, 30 Jun 2026 07:13:08 GMT  
		Size: 34.9 MB (34909780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffcdfcb4fdb52707d9a4a9cac0f8cc77e19ddb9bf2ddd1731df559ff8f04cb31`  
		Last Modified: Wed, 01 Jul 2026 00:19:58 GMT  
		Size: 37.8 MB (37773785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a80ae4972f5c199bd03e7a6443e346ffa9c3ed83ec3dfa1999bd0ad72a9506`  
		Last Modified: Wed, 01 Jul 2026 00:21:11 GMT  
		Size: 47.6 MB (47563554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c2fdcbccbd87c6627b1d385a0e7c1b92e63d7494b0edf2b01a28de9cd006f11`  
		Last Modified: Wed, 01 Jul 2026 00:21:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5d31a64d3ca2c3aeea78219b9667abd619e33ea4adc30cb6e8cf91234f294a`  
		Last Modified: Wed, 01 Jul 2026 00:21:09 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:28657f4b6a0744c25b6834141ea8c757265ff8d59398a1876175307c829be678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3728290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dcefd816520800e63f1ec4acf4dbadb2b52575c210d7a9e90864556f999c920`

```dockerfile
```

-	Layers:
	-	`sha256:04eb8fa924ade36a5a443e94bf0ea9643b5dcd3d971cfbd2d73fa540aeeead5c`  
		Last Modified: Wed, 01 Jul 2026 00:21:10 GMT  
		Size: 3.7 MB (3707912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0788b44b339ab6feb679c465956e1b1ed0fb02d5aaa24d63ebcb6433062b13af`  
		Last Modified: Wed, 01 Jul 2026 00:21:09 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:327aa153a27838a026d2f64a8ef1f30b55d1c8adb922dad79c5591016608419b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117845355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718343deb0849248edf9af668c46405f0b13e93c92f4c616ec49d04b1cf653fb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Wed, 01 Jul 2026 00:12:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 01 Jul 2026 00:12:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:12:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 01 Jul 2026 00:12:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:12:37 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 01 Jul 2026 00:13:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 01 Jul 2026 00:13:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:13:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:13:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d244a14eecf6ccf03b959d58f433192b7b71a785ee93c98410fada3cb064e970`  
		Last Modified: Tue, 30 Jun 2026 07:32:09 GMT  
		Size: 33.1 MB (33090986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b190111120a593f3bebeecb6c08401c406ad27bbd0c41072bee8a15212c501f2`  
		Last Modified: Wed, 01 Jul 2026 00:12:55 GMT  
		Size: 37.7 MB (37702260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1f15729eaf85f25cc53f5f03d0cd3fd8afe4141d26752b4af08e7ad5c3d859`  
		Last Modified: Wed, 01 Jul 2026 00:13:19 GMT  
		Size: 47.0 MB (47049691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dd09d60088eccd790e29e8e8aaa35dc5c71c5bdf27e7545910b74e8829c3b7`  
		Last Modified: Wed, 01 Jul 2026 00:13:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281b7b5628ab2ef76e3af560eb2c53e7a574b2e34b981ce9281096c9f5d86f1b`  
		Last Modified: Wed, 01 Jul 2026 00:13:17 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6545cee20acbab27d00167d28fc991d004edcaf991f60026d0b2f509cb72faa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3727808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b9bfbe519eff102fe87a7b59e80e0d19fb5d8cbbf88938d3b8dee4c12fa2cb`

```dockerfile
```

-	Layers:
	-	`sha256:4c1cc2b29276a1c2218835e60825f2695dc09c1ea65e80c6f9e9bbddbe80c5d6`  
		Last Modified: Wed, 01 Jul 2026 00:13:17 GMT  
		Size: 3.7 MB (3707326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d325aaef34c6dc3e77384b0ed59222354a0898d7bbea7475dedfc597d93d8af`  
		Last Modified: Wed, 01 Jul 2026 00:13:17 GMT  
		Size: 20.5 KB (20482 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:344b8390ef7f71eed978275c33b78de1bc6c4f320af7759dc263a2a91018178a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.0 MB (126047944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b9c70b0f13bc510eeaf415727e14fa40ac01145588f9545c19e95044f3bf4ad`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 01 Jul 2026 00:34:11 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 01 Jul 2026 00:34:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:34:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:34:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:38e2ea22706cc7eac5e8eff8553fdf29530c44601760241ce5ebd9fc1ece994e`  
		Last Modified: Wed, 01 Jul 2026 00:34:38 GMT  
		Size: 47.5 MB (47499664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac6d32fa927105959306de71296805ad781d02d25b702e5ebfea1915f2c48e26`  
		Last Modified: Wed, 01 Jul 2026 00:34:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bdda53d4c125f2fa2105ace1296f069363fee6aaab94f9d476d6b0498ee871a`  
		Last Modified: Wed, 01 Jul 2026 00:34:37 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a9284509c537ed27a44285f150f96573635b2e38c1659fbd00af2490eaef6a49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3717065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1850e73e5d80ee1a0155df3ae236868a03070f0a1c9f04a2c8cbcb6c4637b582`

```dockerfile
```

-	Layers:
	-	`sha256:062a83617c95aad0f0b1b8926a821929f693ca6ffd42ed50fa415ea8e85515a1`  
		Last Modified: Wed, 01 Jul 2026 00:34:37 GMT  
		Size: 3.7 MB (3696657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:507959f5aabbe04d49ff79581d541e6ded277a2f49c3a3ba988d21f2d9f0ed5e`  
		Last Modified: Wed, 01 Jul 2026 00:34:37 GMT  
		Size: 20.4 KB (20408 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:c6ff110f91ca7ab7dce78e8d44cfe587c8bbda2d5fb0b9a3850dc8d7c8690360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117420939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ad754488d66b1bf16f53afa7eebbc56fa5f96fb66da5bd7603d06d3b5eb427`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Wed, 01 Jul 2026 00:15:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 01 Jul 2026 00:15:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:15:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 01 Jul 2026 00:15:08 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:15:08 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 01 Jul 2026 00:15:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 01 Jul 2026 00:15:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:15:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:15:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:4859d60e7172d07eaa2aaf41036026ffadf05a0bb7a8ba6d7085a2255e1cef8e`  
		Last Modified: Tue, 30 Jun 2026 12:24:27 GMT  
		Size: 34.7 MB (34741483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01339f0abe080a465929ca03a14145f93f55210c696ad9bad7a93272d4309fa`  
		Last Modified: Wed, 01 Jul 2026 00:15:32 GMT  
		Size: 38.1 MB (38146024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30220192472d65a550990fb615403448f62b833fc5479c008d4f04797b292326`  
		Last Modified: Wed, 01 Jul 2026 00:16:19 GMT  
		Size: 44.5 MB (44531015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f2e04966bb0c5a0d6036668885652222942e9920878acab75fc8ce54aab5e8`  
		Last Modified: Wed, 01 Jul 2026 00:16:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7ca2e3a8f975877f74f98a4827699c7919bd44a5e7b26c88a7650e1e3ee068`  
		Last Modified: Wed, 01 Jul 2026 00:16:18 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:08deb0436257b4e1b6c50402b54991a3ee7dfdae2e743989a2aca9648d74cdf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65dda5de7bb4407ee66f02264f311f1ccd398aa90d0f01ac08436fcc8d94b056`

```dockerfile
```

-	Layers:
	-	`sha256:c4cb0afb5893dfc72a6054082582f1d6bfa9f1a4467ee369d9192ffd538725d9`  
		Last Modified: Wed, 01 Jul 2026 00:16:18 GMT  
		Size: 3.7 MB (3697902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51ade03b1d0b20293f82cb24fce5408d69767648b807c96fcff017ff537dc74f`  
		Last Modified: Wed, 01 Jul 2026 00:16:18 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json
