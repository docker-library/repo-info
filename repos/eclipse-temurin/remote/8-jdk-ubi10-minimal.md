## `eclipse-temurin:8-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:a315a21b942b9f48078587a16da7f64a05fd0710a2cd9375d1af93afa213af8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:53b59e489714fcf771e59ce70a3f80ba6be0ce72d5546791077a9f893af8e2e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.9 MB (130878378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e73cc56b00f0e6fbbe9d6db29bf708a2b8080e652d9d0dff37bbce3743f1ed`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:15:04 GMT
ENV container oci
# Wed, 07 Oct 2026 04:15:04 GMT
COPY dir:7c2bbbb7f5210f15511c07d2c4001d7fe8f4d068648bb2a4ad6d3eda0100bdce in /      
# Wed, 07 Oct 2026 04:15:04 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:15:04 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:15:05 GMT
COPY dir:407ad97fdfee3ba60490bbe869c7329b5a73e055c7aead0683d992350fef8781 in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:15:05 GMT
COPY dir:407ad97fdfee3ba60490bbe869c7329b5a73e055c7aead0683d992350fef8781 in /root/buildinfo/      
# Wed, 07 Oct 2026 04:15:05 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:14:06Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:14:06Z" "architecture"="x86_64" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:14:06Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:07:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:07:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:07:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:07:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:07:39 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 07 Oct 2026 22:07:45 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 07 Oct 2026 22:07:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:07:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:07:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7622e8b6ee5965126c68b18861709ea82ce88ca92ffc0ce29f05c5a215e20b96`  
		Last Modified: Wed, 07 Oct 2026 06:14:48 GMT  
		Size: 35.0 MB (34950412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b99dafb664476903fedcd1b8f5aea6d4d188e17f5c2082006939e8cd65e3916`  
		Last Modified: Wed, 07 Oct 2026 22:08:02 GMT  
		Size: 40.7 MB (40732566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccbfd6832a3cc462ea42ff4802ffea9e3acbf68c159937777388af53833e2e48`  
		Last Modified: Wed, 07 Oct 2026 22:08:02 GMT  
		Size: 55.2 MB (55192781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f8e172f778efcfe8d69f8ae8941ba1b64a1fa433507db5e11b5d25cb71276bd`  
		Last Modified: Wed, 07 Oct 2026 22:07:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8eabd0f8ae027002a2784f5407ac1de2b780d5fa8cbac4d886f1e6c9426610`  
		Last Modified: Wed, 07 Oct 2026 22:08:01 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:981f6422ccfd73d5de2795149fbf29326577c86ec2cca5017f60d7436147188b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3932923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2f8bf3f111b7d2ba394ffb4859016c93a79ba34c57f6e64c6b4296d05a8d605`

```dockerfile
```

-	Layers:
	-	`sha256:cf91dd943ce512566efc5da703cd3c9c08e66f897a822c4d89afc223e2c32891`  
		Last Modified: Wed, 07 Oct 2026 22:08:00 GMT  
		Size: 3.9 MB (3912884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95d9edb596ac2a4ec5b0056252ae30323a439b9f571d09534a1f7c9fe6f1b97a`  
		Last Modified: Wed, 07 Oct 2026 22:07:59 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c4941aa5239e6dc17eb2c3a7d8144efb33b07b3f6197a2a0b5a9d34d7b80fab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127922676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8a4eb10a4c795ec4c985e7be6dd1777fe03cf2e27ad144670c87316b998fe3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:15:40 GMT
ENV container oci
# Wed, 07 Oct 2026 04:15:40 GMT
COPY dir:2ef2e4e2a6b41f232e640f18c3dc5f15c442e4e4c8f84bc19a7a6f7ec341c008 in /      
# Wed, 07 Oct 2026 04:15:41 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:15:41 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:15:41 GMT
COPY dir:7d8ee866f219e38f99beeeb1052b5481e3231b5660350d1710f9a43847d257bd in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:15:41 GMT
COPY dir:7d8ee866f219e38f99beeeb1052b5481e3231b5660350d1710f9a43847d257bd in /root/buildinfo/      
# Wed, 07 Oct 2026 04:15:41 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:15:20Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:15:20Z" "architecture"="aarch64" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:15:20Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:07:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:07:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:07:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:07:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:07:20 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 07 Oct 2026 22:07:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 07 Oct 2026 22:07:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:07:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:07:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a74897f26d06e9dd89c15728fca5ccd6144a0eb4a8a988677b35be5ef16025a2`  
		Last Modified: Wed, 07 Oct 2026 06:15:00 GMT  
		Size: 33.2 MB (33194468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348fe5b00c3258be33f2a35c1b00a3429b44dd1081376c8cf386069d62ec4ff8`  
		Last Modified: Wed, 07 Oct 2026 22:07:41 GMT  
		Size: 40.5 MB (40470721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20ee3c4c0d8bbb98d136706dae7a711bae5ddf8f1b3e63476bb67475f993138`  
		Last Modified: Wed, 07 Oct 2026 22:07:41 GMT  
		Size: 54.3 MB (54254869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d141397e19d24f8164da68753fd7244d708769064a59cce98b11fdcd9466807b`  
		Last Modified: Wed, 07 Oct 2026 22:07:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7de8d5bdf31f80df2f95df35362622381388388738f41e13854e3075d958156`  
		Last Modified: Wed, 07 Oct 2026 22:07:40 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:98366b74011c53bbc526072ca3cb546c754ccd7bea3c8415ddcf0c431ba7e3b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3933165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3a489979238aac47b6261738c9b6b1da698a0b92ad73ac287a0e5a6a22fa20c`

```dockerfile
```

-	Layers:
	-	`sha256:a61e99603e521fa1537ef4dc7b71c940152916de33fe17d680e20b9c2f611904`  
		Last Modified: Wed, 07 Oct 2026 22:07:38 GMT  
		Size: 3.9 MB (3913010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a57def9c6fbb0e490f17adeb3cd60c900f32cfc56f64c80b6f98e419d6eee8e4`  
		Last Modified: Wed, 07 Oct 2026 22:07:38 GMT  
		Size: 20.2 KB (20155 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:7bb92baf0963b18b3eb624a395ff5db95827951b39c0124265bf90ca1d9791c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134418105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eeca875f122401172010b500d9d2bb0c8ac3e0dd24f5a3655f501f1d2c72304`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:21:21 GMT
ENV container oci
# Wed, 07 Oct 2026 04:21:22 GMT
COPY dir:2487f3d5e203d3216a55dc379085a4d7d5554d8e2f02df41000fbb0e3e09aa93 in /      
# Wed, 07 Oct 2026 04:21:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:21:22 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:21:22 GMT
COPY dir:f1aa898926061f8db7d6cba7b85a7dfe413a7429132b3c5ede46914750ecf0ff in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:21:22 GMT
COPY dir:f1aa898926061f8db7d6cba7b85a7dfe413a7429132b3c5ede46914750ecf0ff in /root/buildinfo/      
# Wed, 07 Oct 2026 04:21:22 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:21:04Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:21:04Z" "architecture"="ppc64le" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:21:04Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:21:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:21:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:21:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:21:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:21:20 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 07 Oct 2026 22:21:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 07 Oct 2026 22:21:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:21:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:21:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b5d9c969c5baa30f03fe96495c747916f02c7eeeb53fe9ad61b3f919d3b4317c`  
		Last Modified: Wed, 07 Oct 2026 06:15:42 GMT  
		Size: 39.1 MB (39091436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a1e8879bdb28e6db16e53f2e5fb958bd30c0c8fd918d85338639b348a71392`  
		Last Modified: Wed, 07 Oct 2026 22:22:08 GMT  
		Size: 42.7 MB (42656404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9149505eb307b66f8a7718e65d8ecd41b1235a8747bd18ad8623d5c7c9fa30`  
		Last Modified: Wed, 07 Oct 2026 22:22:10 GMT  
		Size: 52.7 MB (52667645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d756f5b6cef3eca8950c70f8ee47eab169b5c5c193e0d939a051236e9c60e344`  
		Last Modified: Wed, 07 Oct 2026 22:22:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6505ab69b90dc391172bde81ad820b1194911f6cb67034f1fc0d66c579569067`  
		Last Modified: Wed, 07 Oct 2026 22:22:08 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:736eb127ebe54399536cd7ccbe347c13f30496a1f22cf7c3c2688089b7471269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3920386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add2c717e1aaf1e0f37cedf3b12f8ba796999055b8065dbd26670574306538aa`

```dockerfile
```

-	Layers:
	-	`sha256:ce647f5fa4c830e46cdc51e5956ffd3d30e7ced9320ec147535daeb35b907f06`  
		Last Modified: Wed, 07 Oct 2026 22:22:07 GMT  
		Size: 3.9 MB (3900311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42c8bbaf7a7e36a3672eff8b9bc7ffb8310944051a024c041c2908575ed7183a`  
		Last Modified: Wed, 07 Oct 2026 22:22:07 GMT  
		Size: 20.1 KB (20075 bytes)  
		MIME: application/vnd.in-toto+json
