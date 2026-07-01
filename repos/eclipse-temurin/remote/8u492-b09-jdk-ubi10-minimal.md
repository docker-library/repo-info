## `eclipse-temurin:8u492-b09-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:b5911c5841407c05201f44a60ba80ab63f1aaaf28af25d1b6f06cc070689f716
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u492-b09-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ca20410a9e2c0050b49094afe8f700fdeb908a06815458bb0d02e4c62c42403b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127885274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34afdfed5afb9a6687f3500cdd76a78aafdee67d4d4b21dc9482eb5c7909870d`
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
# Wed, 01 Jul 2026 00:19:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 01 Jul 2026 00:19:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:19:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 01 Jul 2026 00:19:12 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:19:12 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 01 Jul 2026 00:19:15 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 01 Jul 2026 00:19:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:19:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:19:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9e91a846de98f791f2c98e92122c81218bef1873414bce0601911794d3a9719d`  
		Last Modified: Tue, 30 Jun 2026 07:13:08 GMT  
		Size: 34.9 MB (34909780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5583ea1fcd3bebe4d9b2426f03a14b56caba8ed75c9a493d8ec1a7e8cecc6cc3`  
		Last Modified: Wed, 01 Jul 2026 00:19:31 GMT  
		Size: 37.8 MB (37773716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5ccde66aaa82f4451d627edbb81e1c2dba377bc8f60fe22c3442a5b9189953`  
		Last Modified: Wed, 01 Jul 2026 00:19:32 GMT  
		Size: 55.2 MB (55199162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971ef0f22898bb9e87fdffa974879d65e3aa0c5a622baf00e818af0b779f2937`  
		Last Modified: Wed, 01 Jul 2026 00:19:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ea0835e87ef11b365f7a4a7ce3333a5409b7b9200f9b23eb3e36dd0229194d`  
		Last Modified: Wed, 01 Jul 2026 00:19:30 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:32f7e17a2ed1ca68dd7455058cd46c5e4a07cba62f6cc0e3cabdcf2c4d317594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3932793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dc790fb0e63687f2666055326f7e67b6169c2c32d03e6266af35480eae519a`

```dockerfile
```

-	Layers:
	-	`sha256:3f1abca41fd757e357dad9bbe44cb8437346afa044032d6667056acb42b4f6d6`  
		Last Modified: Wed, 01 Jul 2026 00:19:28 GMT  
		Size: 3.9 MB (3912755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93b8fa2064b69eb6a394241268e3ab21933d9e0ca949076d013428ac2c77acd0`  
		Last Modified: Wed, 01 Jul 2026 00:19:28 GMT  
		Size: 20.0 KB (20038 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:8b1a8411f852755fef9392b54dbb4efbf094c83cb3adce8f4bafa0dd7667ab48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.1 MB (125069156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ef1304320689daa7a99c01018e29ecb4e7b125559d37e44c675f3a30009954`
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
# Wed, 01 Jul 2026 00:12:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 01 Jul 2026 00:12:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:12:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 01 Jul 2026 00:12:01 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:12:01 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 01 Jul 2026 00:12:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 01 Jul 2026 00:12:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:12:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:12:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d244a14eecf6ccf03b959d58f433192b7b71a785ee93c98410fada3cb064e970`  
		Last Modified: Tue, 30 Jun 2026 07:32:09 GMT  
		Size: 33.1 MB (33090986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09dfd15ee5269599fb69a4d9ec7045b0ee31198b95f490885e06787b7b334bbb`  
		Last Modified: Wed, 01 Jul 2026 00:12:21 GMT  
		Size: 37.7 MB (37702090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6de5686b6c5e5cfd3f4aefa9f8aa812ae3c8c2638d0e4a8f47a6e8bdcb1fe58`  
		Last Modified: Wed, 01 Jul 2026 00:12:21 GMT  
		Size: 54.3 MB (54273461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec4f88d3da45ac804c4ea15d89c5566048cab1ad0e2284a8d34e942f2ecc8be`  
		Last Modified: Wed, 01 Jul 2026 00:12:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7128867a7c4db5951f06a1f6b1af7d69506e85bc829ef94f31cdbee7c34af7`  
		Last Modified: Wed, 01 Jul 2026 00:12:20 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6849d83db94abad2aa658723bb9e0f6fb7f54b9b23b4e7aa17bd12eb7152f896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3933036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89cda37b44f2435084e5152822148f052d2e5161d9cb4e4940dd0145168d802c`

```dockerfile
```

-	Layers:
	-	`sha256:12addb82f548aaa2631236266b1060b03eb9f2fedb1a3fe72905367fe1d18c65`  
		Last Modified: Wed, 01 Jul 2026 00:12:19 GMT  
		Size: 3.9 MB (3912881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c3c4113a9cba73e053c2c893716bf237edd0b3875e5992ed8a42b46da290de9`  
		Last Modified: Wed, 01 Jul 2026 00:12:19 GMT  
		Size: 20.2 KB (20155 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:27e9f82a5b3d3b10babe14423de2eb444f230585f016b49a3ce4ed7e47f467ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131218205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea770dec642325bc647453fa37728a7624a88ad69dcc99008a1c1a2f689b6735`
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
# Wed, 01 Jul 2026 00:29:45 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 01 Jul 2026 00:29:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:29:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:29:46 GMT
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
	-	`sha256:a15976f727ad5061d0e8d4eff18745b35966c15f3d1ef679398ef062d8b2af93`  
		Last Modified: Wed, 01 Jul 2026 00:30:18 GMT  
		Size: 52.7 MB (52669728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3194ab2ef379eb6a4c444d97dcb18ae9025c7bedb94115fa859d506a9d7adf`  
		Last Modified: Wed, 01 Jul 2026 00:30:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21344f0da42ae200313a0ef8292fc5a8a5c99b8cec1ba8f72edc9427083a4015`  
		Last Modified: Wed, 01 Jul 2026 00:30:17 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4cdfce407ae888eb69a17fe398cc23a05322daf81df2b61e4274eab29da2b28d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3920257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b56c66a054e3cbacee71f8fe45d6f0e753b397e1a62c7389da2afbc73a9941d`

```dockerfile
```

-	Layers:
	-	`sha256:0b0147834a73a2a3ee1eff396c9c1e9389a8b61ea437616d6036e9e82ec88def`  
		Last Modified: Wed, 01 Jul 2026 00:30:15 GMT  
		Size: 3.9 MB (3900182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ee8180c3a6a870bf7335ad7eeeb7ba64907cc60087cb8bd14cd8ca19f7b1ca7`  
		Last Modified: Wed, 01 Jul 2026 00:30:15 GMT  
		Size: 20.1 KB (20075 bytes)  
		MIME: application/vnd.in-toto+json
