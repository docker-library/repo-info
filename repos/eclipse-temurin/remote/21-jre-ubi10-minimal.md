## `eclipse-temurin:21-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:607511b6979c4de1a696793d1f0f2dc6a092d216318d78f9602f801d473334f2
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

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:af1d95628c32b8a23717c58a42b911a60e3a507950bf7a3fc254fc3f4188d16e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125808198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4518f8d2b774ad993109839328f42ab9090a5751daa0228b29cfff485541a2b`
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
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 01 Jul 2026 00:21:29 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 01 Jul 2026 00:21:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:21:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:21:29 GMT
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
	-	`sha256:4c4f8522fa1129efe12621911abbd9ac90a95c30c1a469671d99d066bed33cee`  
		Last Modified: Wed, 01 Jul 2026 00:21:43 GMT  
		Size: 53.1 MB (53122285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b86a9632128a277431de68a386c59c40ecd04636cca807435c0818d2ff8472`  
		Last Modified: Wed, 01 Jul 2026 00:21:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a58f1b97e75492a4735a53cc2df52e0c5709a2c649d9fcec3957f17925a031c`  
		Last Modified: Wed, 01 Jul 2026 00:21:41 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0c93e97873f10bb07f7223bb585152415811ba674d77c19555786c74ca327ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3729538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f79c1c43b8d62b7fbfc720937ed36927fab31e496167477d00852fb9d0e6894`

```dockerfile
```

-	Layers:
	-	`sha256:fa7c08d851be5cfb8d757845e17a6900a83e62fa9f126eb6d3b69803823e481e`  
		Last Modified: Wed, 01 Jul 2026 00:21:41 GMT  
		Size: 3.7 MB (3709160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4676cd69848f23b4e9ca36150e30b3a19a73b4f603091b91fb863db74aa80ae5`  
		Last Modified: Wed, 01 Jul 2026 00:21:41 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:a6ca002b8def72abd14002fed6aac52f0ec1c2d0dceb9994f03dfbce191f57b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123104947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd1901a18b3fa21c8aeb0e263da75b5b2f1dad77478e7992b303f624861ee8f1`
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
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 01 Jul 2026 00:13:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 01 Jul 2026 00:13:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:13:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:13:28 GMT
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
	-	`sha256:3346879b0755a091770282278b94b82c6dbcefb147a85689f71101a8715f5098`  
		Last Modified: Wed, 01 Jul 2026 00:13:43 GMT  
		Size: 52.3 MB (52309283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad6d06e13d136513f5e57ff2580cfda63ff3adfc683a2e7db384fa2543b69e2`  
		Last Modified: Wed, 01 Jul 2026 00:13:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c4b6b6c52bf42e8cd5c8cc7272a9c0995318ad83d544ef34eaa9665c9e4b516`  
		Last Modified: Wed, 01 Jul 2026 00:13:42 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:74187b8591cf28245ca512058e99e14966dce091dd611b1e50b8acb843b06247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3729056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:321d407de1f2d6275b7a6bcf37aafc14bc0a4061e51c91bea69df097f5fab19f`

```dockerfile
```

-	Layers:
	-	`sha256:9c99a16fef34e5289b95dc7e8dad26976248985bbb7c75caa55aa35da25ea06d`  
		Last Modified: Wed, 01 Jul 2026 00:13:42 GMT  
		Size: 3.7 MB (3708574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b73951085be196ed471a57cc5dc787ea2f293b30bd3704dafc105a979330349`  
		Last Modified: Wed, 01 Jul 2026 00:13:41 GMT  
		Size: 20.5 KB (20482 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:b29cd7f119d9e2225ed93a426b6bb09fb33c089cc47b65f21b6d674d2d70494e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131686731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ef344d5ebade81ba303c878bba19b290c40447e39b4758a5410c20ff654b16`
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
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 01 Jul 2026 00:36:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 01 Jul 2026 00:36:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:36:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:36:15 GMT
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
	-	`sha256:94c25097e66ea247661299db98e65d66b0e2177ec9b4711ce3b0e656c9663d28`  
		Last Modified: Wed, 01 Jul 2026 00:36:44 GMT  
		Size: 53.1 MB (53138450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99a8a1c7082b4b893040d062d1d07a5487855451a8d553622638a2d049e0bd3`  
		Last Modified: Wed, 01 Jul 2026 00:36:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e484f1a91f722f27432b1fdc5f61be37d65937213b59e2c43662d969f655ee4`  
		Last Modified: Wed, 01 Jul 2026 00:36:42 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4395b949df633d64bf439e2ac5eb42badb5c860315cc0696324a42d8c426374b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361f7b564bab3b87b30e5e905fe8f8ecdafa3b9c1655620720d7f871b30b17fc`

```dockerfile
```

-	Layers:
	-	`sha256:9ea8baf9385770db61cd6d48b12e54cf71ad6d3648b901a8f1d3ff7f3b339755`  
		Last Modified: Wed, 01 Jul 2026 00:36:43 GMT  
		Size: 3.7 MB (3697905 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89c8e880836614cdb56e1db06077ca40f0a038a5d59b956632a6fa3fa2b5201c`  
		Last Modified: Wed, 01 Jul 2026 00:36:42 GMT  
		Size: 20.4 KB (20407 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:a97fe7d65999634e2dbf1e3f8e515cfa57f8e2b120dac643e7da64346544974f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122545758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82401f857c3b753f1d9343230b2ef8d53dea772abaa8b9568efb5569d27a324c`
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
# Wed, 01 Jul 2026 00:15:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 01 Jul 2026 00:15:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:15:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 01 Jul 2026 00:15:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:15:00 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 01 Jul 2026 00:16:44 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:ac6b11ccb3595c453a0796b25cc79f92ee65fc1af6b03790eca857f0847f7049`  
		Last Modified: Wed, 01 Jul 2026 00:17:05 GMT  
		Size: 49.7 MB (49655905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af609eb7bb34f81522916193b5f41d4f5a158821702e65c96951ef10a6205d3`  
		Last Modified: Wed, 01 Jul 2026 00:17:04 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b95976c0b76b2822d81abde97f037a52a3888ed0f322e82f2d7257009bd5f1`  
		Last Modified: Wed, 01 Jul 2026 00:17:05 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3e962a4ae1752b9d012f1f6be1b63bf87cca1fca2e26639a6ba700ba0163886b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3719528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f089a43f611ff7b3c53a7898cb618ee93fb7a1b0d790c8c0faa6573430a8537a`

```dockerfile
```

-	Layers:
	-	`sha256:554b211b45e843732f1a834b2a3bc5f17c916c4240ea35c355bd7bdf52374fb4`  
		Last Modified: Wed, 01 Jul 2026 00:17:05 GMT  
		Size: 3.7 MB (3699150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc5cc9e78b89c5f667311cc107f105d60b3ce1263de1c8edfe990526c2c688ab`  
		Last Modified: Wed, 01 Jul 2026 00:17:04 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json
