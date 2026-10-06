## `eclipse-temurin:27-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:9ebb8cf243abdb663ef1e44c86f0543873a0e4c827e83fb5091f4238a2a1de3d
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

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:694990200cb9493cc18f13736ee2fc5ac9c4f717539b914953be0220dcebc49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136186078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267e08434c12e6fe5f15b3c5d1b1dc3eaeba5bffa863fa438d3d506dffb1a445`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:52:49 GMT
ENV container oci
# Tue, 06 Oct 2026 06:52:50 GMT
COPY dir:f34bac4cb5386fae5c688b9edc1b823fe38f4dd16d1c362f8163660dba6cbcaa in /      
# Tue, 06 Oct 2026 06:52:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:52:50 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:52:50 GMT
COPY dir:a955a0c99bb51e4c1fd6c1c97d380d39455977317b0ff795e31df9ed150f19a8 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:52:50 GMT
COPY dir:a955a0c99bb51e4c1fd6c1c97d380d39455977317b0ff795e31df9ed150f19a8 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:52:50 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:52:27Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:52:27Z" "architecture"="x86_64" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:52:27Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 21:55:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:55:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:55:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:55:28 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:55:28 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 06 Oct 2026 21:56:27 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 06 Oct 2026 21:56:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:56:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:56:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9244a62486f52ea78c7c9bffc8936622a69a982b1ed177ee04ddfae80f9a2f94`  
		Last Modified: Tue, 06 Oct 2026 07:58:50 GMT  
		Size: 35.0 MB (34955692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9301f67786be8013a2d5114f8de8138852310c96a18fc595ca453ac43c0c72`  
		Last Modified: Tue, 06 Oct 2026 21:55:46 GMT  
		Size: 37.9 MB (37859753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e986f838a1c18685be977933c75b871ca26d72c654a09234e5d3bf111bd191b`  
		Last Modified: Tue, 06 Oct 2026 21:56:43 GMT  
		Size: 63.4 MB (63368034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ce38d41dc8a4c940efd9257b6b7994a23e013f5ef1834d3c83f8e09204391e`  
		Last Modified: Tue, 06 Oct 2026 21:56:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d408f43db2c2b825d7ffefb6d7b37bd3bd4efe2ef62ea09f0a2bf44147c8984`  
		Last Modified: Tue, 06 Oct 2026 21:56:42 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1df639a77bdbe0c97eaef23dda0bfe3a5d14f78b6c782b45f4064e7303bd0cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3733345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce59c86c0aa9a9f85fd7fe94916b46f8a706788da3294c74783eb341e769e4a`

```dockerfile
```

-	Layers:
	-	`sha256:5d0393c6cf38d595c9c70cf239422cbd328ba71bd2a2ae43df639443a0becc58`  
		Last Modified: Tue, 06 Oct 2026 21:56:42 GMT  
		Size: 3.7 MB (3713087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5524f99017f3aebb7efde65cd5b517f953c68d53c946f07fd2c42a3104b8d6e4`  
		Last Modified: Tue, 06 Oct 2026 21:56:41 GMT  
		Size: 20.3 KB (20258 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:9e308528c59eaaa999de70aba359dcb6dfcb5322a9abdde34194881905a4068d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133227677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202b220ce88ca03a91f6db4133de87bccbd7ddb6e9a8d4f30e25870a93a267ea`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:54:51 GMT
ENV container oci
# Tue, 06 Oct 2026 06:54:52 GMT
COPY dir:5d724641a5e7af80919f5b39a516d4561f65b3b7352fbda320935cbb5242688a in /      
# Tue, 06 Oct 2026 06:54:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:54:52 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:54:52 GMT
COPY dir:00864b7e610d3da6756b5cf1b37de86187c773ede7d568403a72c9370ca645e1 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:54:52 GMT
COPY dir:00864b7e610d3da6756b5cf1b37de86187c773ede7d568403a72c9370ca645e1 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:54:52 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:54:30Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:54:30Z" "architecture"="aarch64" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:54:30Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 21:51:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:51:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:51:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:51:07 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:51:07 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 06 Oct 2026 21:52:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 06 Oct 2026 21:52:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:52:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:52:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8bbad36d7459a5946aefb1e837706ffa90447344493f010df72763ae29ef2507`  
		Last Modified: Tue, 06 Oct 2026 07:58:54 GMT  
		Size: 33.1 MB (33124268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f34d0fa32e238af2f30b20f4084e55504bdcab9edbb30b6211351725d139c94`  
		Last Modified: Tue, 06 Oct 2026 21:51:27 GMT  
		Size: 37.8 MB (37799560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff21ae5cd14c6aa27048d80d9f176d0bca691cae5f86c76a150612e89b60477`  
		Last Modified: Tue, 06 Oct 2026 21:53:11 GMT  
		Size: 62.3 MB (62301247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9331f044c11bb93106370734a9acea5561f792430dfdb7cd81ed21bed6c1d273`  
		Last Modified: Tue, 06 Oct 2026 21:53:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77964f7bb7d35a4b9786586212c0849f4b68fefc69468ae1b067e2ab825163dd`  
		Last Modified: Tue, 06 Oct 2026 21:53:09 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:af79270f7873f6bd8e12f368e59a9e9dfbb53f79d2ec13ec17fe80f5db4baffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3732860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4179010ad16cf63254af04499e4f3d546732a001d7dc2e788533f67d0cca92`

```dockerfile
```

-	Layers:
	-	`sha256:af73939ddf0850113f90e6a1ef48b8d510207e29c3a92a7cfd5d6b9ed1dc1ac6`  
		Last Modified: Tue, 06 Oct 2026 21:53:10 GMT  
		Size: 3.7 MB (3712498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21853ce2e17e0ab72b08fd9c1510f62f1215ed8eb7c6f0b33c718133478f858d`  
		Last Modified: Tue, 06 Oct 2026 21:53:09 GMT  
		Size: 20.4 KB (20362 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:6e2d3dbf7923b4902b961e8f035ec58b11efb4dc287acff66ea8e51d3cb30444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141036098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf3de5e4dcf264854f45fa521b8b2b75e44a2001423eb023b5cdac4aa290bfb5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:54:24 GMT
ENV container oci
# Tue, 06 Oct 2026 06:54:25 GMT
COPY dir:e25ca9bce19950e134d1571bfd9f5606eb05da1f098ac5b727aef4ebc7b83454 in /      
# Tue, 06 Oct 2026 06:54:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:54:25 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:54:25 GMT
COPY dir:c45e57b863ca71f3508a48e72ff9c0ad8871f2710bd7efaffe74fbc929216e53 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:54:25 GMT
COPY dir:c45e57b863ca71f3508a48e72ff9c0ad8871f2710bd7efaffe74fbc929216e53 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:54:25 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:54:08Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:54:08Z" "architecture"="ppc64le" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:54:08Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 21:49:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:34 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:34 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 06 Oct 2026 21:59:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 06 Oct 2026 21:59:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:59:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:59:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:3a3a2461cd07c59e0c778d6435ecc60f319acf3d0d977d18a22118130e1e6f78`  
		Last Modified: Tue, 06 Oct 2026 12:22:40 GMT  
		Size: 39.1 MB (39133633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2fbb754e1bdb9156007fee5ee8b98c08e806b671924b977b328590aaee1039`  
		Last Modified: Tue, 06 Oct 2026 21:50:16 GMT  
		Size: 39.6 MB (39635607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4edf8d2e689de59be71a4ae70a321a55c817a3dcadef40e17ced3e879a3aa5fa`  
		Last Modified: Tue, 06 Oct 2026 22:00:18 GMT  
		Size: 62.3 MB (62264260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aec26f8b1be2b7c79b7f1d5aabcc13b6e2a4928abb68c9b1d106701e20c5d46`  
		Last Modified: Tue, 06 Oct 2026 22:00:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c7d13dba9518ff3cdd9e1122baae996d877d24ebf14feb78c9c40ba03b2aa0`  
		Last Modified: Tue, 06 Oct 2026 22:00:16 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:909133d2c95985597eef2649135a1a466930b0b15bdb5b37967e2d1a40b1b4fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3721499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f2dc420b80da6d59c189d7b47ceba44d621bbb834184653a498e0c724959c3`

```dockerfile
```

-	Layers:
	-	`sha256:4bd0d41dde2ff2e1ec2ecc5da12415a8a3067c44633dd426fa8ae1c0ff0e44da`  
		Last Modified: Tue, 06 Oct 2026 22:00:17 GMT  
		Size: 3.7 MB (3701211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3481f151369d6d438f356930dabd35648c7122402411ae62043a3002ee087e0`  
		Last Modified: Tue, 06 Oct 2026 22:00:16 GMT  
		Size: 20.3 KB (20288 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:3858c697ee2c43842d0e3452f75b6f493b16f3ca3c9ae5ba8ce0fb53c1c303a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134752875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3bed76d400c968988f9f7a34df7b1d5744d658a26c242d1c3dbbf2f19b3e00`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:58:22 GMT
ENV container oci
# Tue, 06 Oct 2026 06:58:22 GMT
COPY dir:59b340005a5695367b2b6ba200b95afac8af79674120f76d505f107f62ec7ed4 in /      
# Tue, 06 Oct 2026 06:58:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:58:22 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:58:22 GMT
COPY dir:c68ac7435b1ee2e4e342e6f714a2722fab812e488dc6d92d624bfb60cd57be96 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:58:22 GMT
COPY dir:c68ac7435b1ee2e4e342e6f714a2722fab812e488dc6d92d624bfb60cd57be96 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:58:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:57:02Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:57:02Z" "architecture"="s390x" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:57:02Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 21:49:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:56 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:56 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 06 Oct 2026 21:52:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 06 Oct 2026 21:52:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:52:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:52:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:42cbc52a670f5b53993e0233ccf7a79e7a946f4215ce8ab80402bf2f86b79986`  
		Last Modified: Tue, 06 Oct 2026 12:22:34 GMT  
		Size: 34.9 MB (34862390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3427043e69b9e9595c6764c342f83066a7dbb55b962934e649cdf7b38fafebb`  
		Last Modified: Tue, 06 Oct 2026 21:50:27 GMT  
		Size: 38.2 MB (38239362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a307eebcda8d4a31db57471ddb675217f72a2fe55d10664544b692ecf58d9974`  
		Last Modified: Tue, 06 Oct 2026 21:53:13 GMT  
		Size: 61.6 MB (61648524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21a084e666c90b38439368640c3af06a1fe66b0c249b81e9db4ac6b50439a86`  
		Last Modified: Tue, 06 Oct 2026 21:53:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77964f7bb7d35a4b9786586212c0849f4b68fefc69468ae1b067e2ab825163dd`  
		Last Modified: Tue, 06 Oct 2026 21:53:09 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2e664c91d52750a5d2b928d9cf385904ffa78d550ef75a5d612f788c908423d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3722714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0d640622409768b95d716a7dd790e58b1b2116d951ee5ed72d8e8a41b69120`

```dockerfile
```

-	Layers:
	-	`sha256:50b1191afb203e2589172ec248547cede59ff6efc8396596fc23c5a5bcd2350f`  
		Last Modified: Tue, 06 Oct 2026 21:53:12 GMT  
		Size: 3.7 MB (3702456 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f1b8d21fc8143abc2c58898929c624333d06d7fb62642c89c66c0e73c14a0d5`  
		Last Modified: Tue, 06 Oct 2026 21:53:12 GMT  
		Size: 20.3 KB (20258 bytes)  
		MIME: application/vnd.in-toto+json
