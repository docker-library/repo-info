## `eclipse-temurin:8-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:68ae02db73df65379516731f70fcc06c874a242e257d31536884475bbaaf059d
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
$ docker pull eclipse-temurin@sha256:bc3b070626e7a8aeaa84ad8447df354eed8a9123014dfb2e72d293fa76779d7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115018386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97615041050b4c0f011ebc8431ee9f53043aa9d23c23758e7b887a16e360e980`
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
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 01 Jul 2026 00:19:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 01 Jul 2026 00:19:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:19:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:19:42 GMT
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
	-	`sha256:450aa0a94b6186a70e545742a2501ab7a726dc31662c0b4d0d22d79af00b60f2`  
		Last Modified: Wed, 01 Jul 2026 00:19:57 GMT  
		Size: 42.3 MB (42332222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8ba18c9a09d1fadd973f33581989218450db1c0439bab55194d8e96b1433ba`  
		Last Modified: Wed, 01 Jul 2026 00:19:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecede2d57625c2090124c1f947a5ffbdce62b0e94d5f1aeef94bd58b84b235be`  
		Last Modified: Wed, 01 Jul 2026 00:19:55 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b2bba2aa92e6b136a836ee9e7211bb400fa29cf3472628ca4b9d9f4874f8ce70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b6311762626e11653e039ccfb677fb76b7ad2ff038dab2c0188a04496f18f7`

```dockerfile
```

-	Layers:
	-	`sha256:c46cf0757f8edfb8dd0329519e60d6004eb2423cfabb1c9277a6503094285016`  
		Last Modified: Wed, 01 Jul 2026 00:19:55 GMT  
		Size: 3.7 MB (3736767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c3125d35ce45b7db40f03e2efdf685a778d8c8bd4848366439d35808c7a9b0a`  
		Last Modified: Wed, 01 Jul 2026 00:19:55 GMT  
		Size: 19.5 KB (19511 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:b5b4507423953339c210bc9b69b59e252e86ca729d1949185b3eed8f61d8f1bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112097394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8649150f840a2224cfb7f8145bae99973405805962eb5eea36c6b059457f523a`
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
# Wed, 01 Jul 2026 00:12:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 01 Jul 2026 00:12:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:12:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 01 Jul 2026 00:12:11 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:12:11 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 01 Jul 2026 00:12:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 01 Jul 2026 00:12:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:12:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:12:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d244a14eecf6ccf03b959d58f433192b7b71a785ee93c98410fada3cb064e970`  
		Last Modified: Tue, 30 Jun 2026 07:32:09 GMT  
		Size: 33.1 MB (33090986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60576468c3f22fdfec76e36d11edeb4e2eda5babcacab97a0f89dd2e05c4875`  
		Last Modified: Wed, 01 Jul 2026 00:12:29 GMT  
		Size: 37.7 MB (37702130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8784f8787a6c6e30b2fa01595a0e666b777425907d4d457ed343e3bb6745410a`  
		Last Modified: Wed, 01 Jul 2026 00:12:29 GMT  
		Size: 41.3 MB (41301679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd4e407c2a5a725f2222645c74c89e102f1f4b9138e17d5a9729a407a14efbd`  
		Last Modified: Wed, 01 Jul 2026 00:12:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8afa35693933e14760263e1d70731a94a4ccb4702938f3ba23eb49b184f89b1`  
		Last Modified: Wed, 01 Jul 2026 00:12:26 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:69f1de5f1c126bd4982cfbe598ae01f7d28772d03287c2cc7b4fe94a34c519ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cbd39069f28e7f08ed312784541fd0882387eb8d49fd7e3ab661f55c1b9ff5`

```dockerfile
```

-	Layers:
	-	`sha256:60e5110d77cbc164071449c373c7d0123b0ff811e222b2f249c5637a50c5c156`  
		Last Modified: Wed, 01 Jul 2026 00:12:27 GMT  
		Size: 3.7 MB (3736873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82b44129b0f88b0182897c6e98b8bb4546af4e11dd96e3285ddd909aa3c6afd8`  
		Last Modified: Wed, 01 Jul 2026 00:12:27 GMT  
		Size: 19.6 KB (19615 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:f9d1ec3820d5a8c753ac1bbac5cd8d363290e5d476c59c6d584c1a186d396a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120288928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f50456f418b5a69e8f6a83d46a6fc3e047fcd476828691bc3813ee4219d9a16b`
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
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 01 Jul 2026 00:30:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 01 Jul 2026 00:30:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:30:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:30:31 GMT
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
	-	`sha256:5df580b4f24cc4eea523b1c70914d8358681a9ecf6c464285982e27a9458865b`  
		Last Modified: Wed, 01 Jul 2026 00:30:57 GMT  
		Size: 41.7 MB (41740469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7f6aa9ab9e8efc9a99bef04c191f367535a06780186708463968a0b7235965`  
		Last Modified: Wed, 01 Jul 2026 00:30:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07abc298ccbabdf2784b441e4617c5beef174898c03f61197c260be5945dd2fb`  
		Last Modified: Wed, 01 Jul 2026 00:30:56 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7579023d59b059e1f48b46435c1fc781948504e320b4b33ed62fb47be9ae8c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad7bb8e785616c1e9e2f963d6be560b263b211ab38735891d461a840f184da5`

```dockerfile
```

-	Layers:
	-	`sha256:a7f0b906207e8754e9a20eb2cafa2d7732adc9251ea30939dda0f3abdee6578d`  
		Last Modified: Wed, 01 Jul 2026 00:30:56 GMT  
		Size: 3.7 MB (3726204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6881dfabf40f853ee03670ca2b0407d4b1068558590179f6502474031cc8b02`  
		Last Modified: Wed, 01 Jul 2026 00:30:56 GMT  
		Size: 19.5 KB (19541 bytes)  
		MIME: application/vnd.in-toto+json
