## `eclipse-temurin:11-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:499bb22bc8db954befb11aa71a277a9bf13018da6fa2a4b2ac88311f6b9bc61f
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

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:463613b8b413bed8b72b905671d871312d65202e349b4072f07a2f7dac1d0f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117132096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e9b5c5a358eedd6ab2ee951af20f656c0902fc3c5d4904cb2c0d87e5c194aa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 08:02:32 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:02:32 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:02:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 23 Oct 2026 08:02:33 GMT
ENV container oci
# Fri, 23 Oct 2026 08:02:33 GMT
COPY dir:4ef772c9b83bf8948ac396e6b5f660d3d02caa9066e2f4d6be0580375526780a in /      
# Fri, 23 Oct 2026 08:02:34 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:02:34 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:02:34 GMT
COPY dir:dc4324ca422503b9a7366f984c1e682523829d527bc9a78f4fc74c8527616475 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:02:34 GMT
COPY dir:dc4324ca422503b9a7366f984c1e682523829d527bc9a78f4fc74c8527616475 in /root/buildinfo/      
# Fri, 23 Oct 2026 08:02:35 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:01:58Z" "org.opencontainers.image.revision"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "build-date"="2026-10-23T08:01:58Z" "architecture"="x86_64" "vcs-ref"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "vcs-type"="git" "release"="1792742351"org.opencontainers.image.created=2026-10-23T08:01:58Z,org.opencontainers.image.revision=c29332dc58c1d049841f2bd7506b3249dc37ea6a
# Fri, 23 Oct 2026 16:50:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:50:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:50:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:50:01 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:50:01 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 23 Oct 2026 16:50:03 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 16:50:04 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:50:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:50:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:edca3061e3f8cfe5f00501af75c579244a887baf7f8fd85a71875d83824f8676`  
		Last Modified: Fri, 23 Oct 2026 09:57:09 GMT  
		Size: 34.9 MB (34900902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb13a21f048b6e310fd21c8d77eb170ee42d26ad60b369f1192214b7d30b4f10`  
		Last Modified: Fri, 23 Oct 2026 16:50:18 GMT  
		Size: 37.9 MB (37891565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0c3c27bd8d2ed860399329f1bf674693710e708d93148f1a2cabc5ecc418cb`  
		Last Modified: Fri, 23 Oct 2026 16:50:18 GMT  
		Size: 44.3 MB (44337034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf00c0baae28ab76f94e57e56e7740dc9235302c2fc335b578cb87d3678848c`  
		Last Modified: Fri, 23 Oct 2026 16:50:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4548708be0fc16c302dd5c7b26b3ec83f6351e309f1a609b80e8b77b040e07`  
		Last Modified: Fri, 23 Oct 2026 16:50:16 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b58276ab7bb3345d6a2b9856e32fb8c708ee1c22b6cbb63bd99b28cb60921bcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3721768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3773d7834c46efbf7dc38b6978351c102d4a42866e305b9745ab43aca8c0248`

```dockerfile
```

-	Layers:
	-	`sha256:587a51ba69e958d1799d6de11fa59cd5e8c377ca39ad4f034a724973adcee14a`  
		Last Modified: Fri, 23 Oct 2026 16:50:16 GMT  
		Size: 3.7 MB (3701366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddbc1969cf970d9a0c17ea4e8e23d421de93adc4a43f086ba012cbc72ebc1347`  
		Last Modified: Fri, 23 Oct 2026 16:50:16 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:315cac69d87930dc2a4f22d3455f7d780c3043ac721cff238b6b2fb14fa87ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113567910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4d3068b050c11db87e3d9ce886ba7622c420d598ada06a4ea3c6bbdbaf3228`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 08:05:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:05:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:05:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 23 Oct 2026 08:05:48 GMT
ENV container oci
# Fri, 23 Oct 2026 08:05:49 GMT
COPY dir:e5dbb20dbdbbcb5b4f719f8d622d63ebf4e2d505b01fa95a911188697c8edd96 in /      
# Fri, 23 Oct 2026 08:05:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:05:50 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:05:50 GMT
COPY dir:ba33a5b875939ee2df7b46dc225238d8c473a8441cb6ddf0255eaa58260f734f in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:05:50 GMT
COPY dir:ba33a5b875939ee2df7b46dc225238d8c473a8441cb6ddf0255eaa58260f734f in /root/buildinfo/      
# Fri, 23 Oct 2026 08:05:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:05:19Z" "org.opencontainers.image.revision"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "build-date"="2026-10-23T08:05:19Z" "architecture"="aarch64" "vcs-ref"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "vcs-type"="git" "release"="1792742351"org.opencontainers.image.created=2026-10-23T08:05:19Z,org.opencontainers.image.revision=c29332dc58c1d049841f2bd7506b3249dc37ea6a
# Fri, 23 Oct 2026 16:50:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:50:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:50:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:50:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:50:17 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 23 Oct 2026 16:50:20 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 16:50:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:50:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:50:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e1ecea44eec3674f31a32de1c39243e72839956e709ab2cbf88e40dd2f0ed92b`  
		Last Modified: Fri, 23 Oct 2026 09:57:12 GMT  
		Size: 33.1 MB (33087679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99da98fb3d88b62a869e47ee248c67b814081dfc9c5c518c0ca2884a6af72295`  
		Last Modified: Fri, 23 Oct 2026 16:50:34 GMT  
		Size: 37.8 MB (37827911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4580d40a41a76a8feab3997227297515c5603223012eff7eda7676fe00c0a114`  
		Last Modified: Fri, 23 Oct 2026 16:50:34 GMT  
		Size: 42.6 MB (42649721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473a0d85aadd1d3b3f118bf61d0fe9cfa2aefc8d93a95b096f49a0dd6f674357`  
		Last Modified: Fri, 23 Oct 2026 16:50:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6515f308924a04aca170b1f99a44d8263cb0f80e0333dbde95c9d370e36b10`  
		Last Modified: Fri, 23 Oct 2026 16:50:33 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:591b75bb2dc9fb8926b02ae617a63b5e774b9b985891b334258c1b49aaffbd21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3721904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1a92c36827e9a16304784eee86026829473204e3265fa77cd8c157a8d8c9a3`

```dockerfile
```

-	Layers:
	-	`sha256:1009a7b0f0ef8b27c0abc563eb55df146ca4a16897dd9d19fe45e732f50aa877`  
		Last Modified: Fri, 23 Oct 2026 16:50:33 GMT  
		Size: 3.7 MB (3701398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea82ab92ea2c1d2f418c0288d4ad0459fc144206f6f86c4614606f1493d47c3`  
		Last Modified: Fri, 23 Oct 2026 16:50:32 GMT  
		Size: 20.5 KB (20506 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:8641ed1d50ab74937525e6d221bc188ca4eee2d05e7147b0c1466fc4cb0742ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118594750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a603bc4aaeb0776e0eb42fbf5d00ea0a19b8755c88612b1546bb14b6528ecd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:09:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:09:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 23 Oct 2026 08:09:54 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:09:54 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 23 Oct 2026 08:09:54 GMT
ENV container oci
# Fri, 23 Oct 2026 08:09:55 GMT
COPY dir:295f54453e7171fac61302211ace298d2599ac74ce7eafb2d533fab73fc69f78 in /      
# Fri, 23 Oct 2026 08:09:55 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:09:55 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:09:56 GMT
COPY dir:4b9d0f2ce0fb12a692c80fa1ba2513a2251c3bfb06c748f9bf7b7f033c1b09e1 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:09:56 GMT
COPY dir:4b9d0f2ce0fb12a692c80fa1ba2513a2251c3bfb06c748f9bf7b7f033c1b09e1 in /root/buildinfo/      
# Fri, 23 Oct 2026 08:09:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:09:19Z" "org.opencontainers.image.revision"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "build-date"="2026-10-23T08:09:19Z" "architecture"="ppc64le" "vcs-ref"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "vcs-type"="git" "release"="1792742351"org.opencontainers.image.created=2026-10-23T08:09:19Z,org.opencontainers.image.revision=c29332dc58c1d049841f2bd7506b3249dc37ea6a
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 17:28:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 17:28:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 17:28:04 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 23 Oct 2026 17:32:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 17:32:18 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 17:32:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 17:32:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:042c4028d78dcc708e3f9c3f1307df9c25ca8765bc563c8dcb32b8bb0c801979`  
		Last Modified: Fri, 23 Oct 2026 12:28:33 GMT  
		Size: 39.1 MB (39073309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969ce94ed7c6e19366c1a1d59b4dc3ff007e030109167a5482ede99bab701a7`  
		Last Modified: Fri, 23 Oct 2026 17:28:58 GMT  
		Size: 39.7 MB (39670474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8877186ee5638d946f31fc11d3d23c64efaf13ba4610e3e6272acaa468966cd`  
		Last Modified: Fri, 23 Oct 2026 17:32:48 GMT  
		Size: 39.8 MB (39848372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ead067b4aa30b6000e36bb3be21780e9805718169f39f702560a42f5373df4`  
		Last Modified: Fri, 23 Oct 2026 17:32:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556175692ca260dc1d49b7075e7acfc7d1f34b6576e567da52dd49007684a567`  
		Last Modified: Fri, 23 Oct 2026 17:32:47 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e425c5ab137f12e2e2166ab3261d7b7132246dc74110a9fd93a4c93dbacd2c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3710549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7575060ba43d4e8e71fdd2f13d81110c346fee7cd001a197f170b3282e3efa86`

```dockerfile
```

-	Layers:
	-	`sha256:8d2a622f951adcb8afde5872c8a452552e8989cc0f47b964d07e3863353478bd`  
		Last Modified: Fri, 23 Oct 2026 17:32:47 GMT  
		Size: 3.7 MB (3690117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:008551dc03a40efd2d0c2075f6958e55e20e14133d29a5be4cfc7a69bc149b7d`  
		Last Modified: Fri, 23 Oct 2026 17:32:47 GMT  
		Size: 20.4 KB (20432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:3b4bc7ec39d7b564670e0531456ddf6d53620a86fccefac0f10b19ee2ae32eaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111338625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d38918b81fa0dc239bfbd88b3662628c74fac03bdf571640382265702d39e4c1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:15:41 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:15:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 23 Oct 2026 08:15:41 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:15:41 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 23 Oct 2026 08:15:41 GMT
ENV container oci
# Fri, 23 Oct 2026 08:15:44 GMT
COPY dir:83ca23c900e74c48f911f17df6964c8db7f1d1d173c7ee325446aa5ea16de38a in /      
# Fri, 23 Oct 2026 08:15:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:15:45 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:15:46 GMT
COPY dir:0c5d7a9af49e28b6ac193f2aa63c70ac079c7d77e50827d97d8eaaf3cd83e91b in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:15:46 GMT
COPY dir:0c5d7a9af49e28b6ac193f2aa63c70ac079c7d77e50827d97d8eaaf3cd83e91b in /root/buildinfo/      
# Fri, 23 Oct 2026 08:15:47 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:13:02Z" "org.opencontainers.image.revision"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "build-date"="2026-10-23T08:13:02Z" "architecture"="s390x" "vcs-ref"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "vcs-type"="git" "release"="1792742351"org.opencontainers.image.created=2026-10-23T08:13:02Z,org.opencontainers.image.revision=c29332dc58c1d049841f2bd7506b3249dc37ea6a
# Fri, 23 Oct 2026 16:57:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:57:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:57:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:57:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:57:37 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 23 Oct 2026 16:57:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 16:57:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:57:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:57:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:51a9c44503b0d69d15181c68a4bd60279649613f78dbe34b58f969720280bda2`  
		Last Modified: Fri, 23 Oct 2026 12:28:18 GMT  
		Size: 34.8 MB (34752836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300f3da6d470afda0ac3e75fd30d3f3ff7534c093bbcfc3ebce4b657b2879018`  
		Last Modified: Fri, 23 Oct 2026 16:58:00 GMT  
		Size: 38.3 MB (38270822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46bdeb27afff2762661006eba7839e3e8d77bdce3bc68e061df62a899a4aadd9`  
		Last Modified: Fri, 23 Oct 2026 16:58:00 GMT  
		Size: 38.3 MB (38312370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98edfba1a7b2a54bea2afba678f40e9f3bb4d731cd98a22d1e2774467ebefd14`  
		Last Modified: Fri, 23 Oct 2026 16:57:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10be2aec9477b596d2fa88c0dd0eb7a566b07b10a463121212d2fb12598a02df`  
		Last Modified: Fri, 23 Oct 2026 16:57:58 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ae278135ce6f3448e320942956440b47427a992da32772b3fca2fda2396ab50f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3711764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72702dcb75baea8d4d67d0e786cf97e4afa034f6b086b8c7bb9fd220d342c1f`

```dockerfile
```

-	Layers:
	-	`sha256:4c2e6eb92fd7cac4b060a041bc1f3f3c8301ac70b5dd104d41b53bf255b2bfc4`  
		Last Modified: Fri, 23 Oct 2026 16:57:59 GMT  
		Size: 3.7 MB (3691362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ae3f51f0bc05909a7708bddf9bb2308313cd688e1030bef80e7dae6558e2836`  
		Last Modified: Fri, 23 Oct 2026 16:57:59 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json
