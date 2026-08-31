## `eclipse-temurin:11-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:26970070fbe6bb6dc48f70c521fe96490abb340c16a4c82aee4ab36932398b7e
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
$ docker pull eclipse-temurin@sha256:015c48fb531d66910737cbfa2a7c900cc4ef6a89805652b1d17abdf3484fee7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117067351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a5dfa7d435659a00824548173f247f940398b3b231826ac7d64c51628c9160`
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
# Wed, 26 Aug 2026 18:29:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 26 Aug 2026 18:29:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Aug 2026 18:29:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 26 Aug 2026 18:29:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:29:35 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 26 Aug 2026 18:29:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64le)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        x86_64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 26 Aug 2026 18:29:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 26 Aug 2026 18:29:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 26 Aug 2026 18:29:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:86240237f31dfd7a745de734105e773d38e7ed79b6d73eddcb5554e8e7a96a76`  
		Last Modified: Tue, 25 Aug 2026 21:24:43 GMT  
		Size: 34.9 MB (34915243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5903d2df5b607a19618d43e71d0d5d2573424dc345a563c2317c22182eb67c9`  
		Last Modified: Wed, 26 Aug 2026 18:29:52 GMT  
		Size: 37.8 MB (37814519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252a52649efcac33a6a800d732265f900827adbe66d291c50945e3c1c3c22580`  
		Last Modified: Wed, 26 Aug 2026 18:29:52 GMT  
		Size: 44.3 MB (44334990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596b07b969bb3e6ae57d68d9319c383111ce96e803fee37c59a8a9ef2b3e705c`  
		Last Modified: Wed, 26 Aug 2026 18:29:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f10307dbb0f5cb9963c55a28d1bfb47734f83e90b88a4be304bc45f072f661e`  
		Last Modified: Wed, 26 Aug 2026 18:29:51 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a00242f68a2ffe5a42df655d98b91bb6fae5ed28f4bf08bd4401f16befe1b80d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aef557210588e1d78679450c3a13957513f68f0340babaa1e7a8810f0daedd0`

```dockerfile
```

-	Layers:
	-	`sha256:733c0dab3779fec4f7a7a70906169b58c83fae2d462c76f359e5672dfc849d7a`  
		Last Modified: Wed, 26 Aug 2026 18:29:51 GMT  
		Size: 3.7 MB (3719851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a17687ec83e1aad6f544d153a149c1bc52cab116b0821c8ee0df8b147aef0a8`  
		Last Modified: Wed, 26 Aug 2026 18:29:50 GMT  
		Size: 20.4 KB (20354 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:cfb5a101ffe5490d69d69508c6d62dd1119696abcbf8731146c50ff4ac15025a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113508231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19238afda917ae5817724070a92b386f5fb1ccf52cfb042aa015b261744ab170`
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
# Wed, 26 Aug 2026 18:29:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 26 Aug 2026 18:29:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Aug 2026 18:29:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 26 Aug 2026 18:29:15 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:29:15 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 26 Aug 2026 18:29:18 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64le)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        x86_64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 26 Aug 2026 18:29:18 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 26 Aug 2026 18:29:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 26 Aug 2026 18:29:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:90204bffd8557d6ddc1fe3a7ace7c88713e398b48b9939f3ee4cdfe0070edb6a`  
		Last Modified: Tue, 25 Aug 2026 21:24:43 GMT  
		Size: 33.1 MB (33114682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:176b9d014593491b655fbdcbcce9f678e6ecb592e37b4210fb297bf37400ae7f`  
		Last Modified: Wed, 26 Aug 2026 18:29:33 GMT  
		Size: 37.7 MB (37741584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f5ba0c85f14b53506ee471a2d115309bb85ec4d29a9d79d2834ab38febd508`  
		Last Modified: Wed, 26 Aug 2026 18:29:33 GMT  
		Size: 42.6 MB (42649366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2b99b9573f7d38f8fae8264677b907d91b94e6763f84f8dd94883617305071`  
		Last Modified: Wed, 26 Aug 2026 18:29:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f176e7f5dba2d12482c4f5b973c2c8a7ff60ca106f5991fd95d0848a58bffb`  
		Last Modified: Wed, 26 Aug 2026 18:29:31 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:352a30fe69c9565188ee0d17e8d528d86b3d7e2357e13cc666210e57b2d07766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95bbdb04dddd86f7b56b636e60c80eefd4e6a98035d06ffb724a6373b31c3c31`

```dockerfile
```

-	Layers:
	-	`sha256:543d8b0b2a448572e72872c19ad6b225d42856d5feffa65cd282cad50432ad42`  
		Last Modified: Wed, 26 Aug 2026 18:29:31 GMT  
		Size: 3.7 MB (3719883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ad3fbe176cd34153cb7ec4b339ee216fad07faf53c8bfbf54e72fb319fda55c`  
		Last Modified: Wed, 26 Aug 2026 18:29:31 GMT  
		Size: 20.5 KB (20458 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:685f8244af11e43d9c33770ab08fd9f66b7452b6cbffd7b084cc7da94adb353d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118561196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa25de74586ba7b91852ee327ff98513be3709604a39ece5858d0ec9f3323604`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 25 Aug 2026 20:10:30 GMT
ENV container oci
# Tue, 25 Aug 2026 20:10:31 GMT
COPY dir:230a97990b20c0be360c29959ecb6dbc99e054a10c2b3593307a59e20273d342 in /      
# Tue, 25 Aug 2026 20:10:31 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 20:10:31 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 20:10:31 GMT
COPY dir:c7eb7466e556528be0a1129ff790b42dc37e5994a70b90a997492a48e39689a8 in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 20:10:31 GMT
COPY dir:c7eb7466e556528be0a1129ff790b42dc37e5994a70b90a997492a48e39689a8 in /root/buildinfo/      
# Tue, 25 Aug 2026 20:10:31 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T20:10:13Z" "org.opencontainers.image.revision"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "build-date"="2026-08-25T20:10:13Z" "architecture"="ppc64le" "vcs-ref"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "vcs-type"="git" "release"="1787688243"org.opencontainers.image.created=2026-08-25T20:10:13Z,org.opencontainers.image.revision=0b4cc93aa2450ac257d3e3051c62ff62306cdb95
# Wed, 26 Aug 2026 18:27:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 26 Aug 2026 18:27:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Aug 2026 18:27:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 26 Aug 2026 18:27:47 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:27:47 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 26 Aug 2026 18:28:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64le)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        x86_64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 26 Aug 2026 18:28:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 26 Aug 2026 18:28:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 26 Aug 2026 18:28:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:58c6f82003c371a546554a5fe9af9e5362feefe32f91987ccfca2a713472f373`  
		Last Modified: Tue, 25 Aug 2026 23:51:07 GMT  
		Size: 39.1 MB (39134244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063220101819d640342dfea592627bfdc0dc9d637a3b91b85d4a3b40fd4cede1`  
		Last Modified: Wed, 26 Aug 2026 18:28:22 GMT  
		Size: 39.6 MB (39575806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72e9151a43063ae5bf3983f4c42a5951a8fff98e00de9cb6344cba272cbd6c9`  
		Last Modified: Wed, 26 Aug 2026 18:29:03 GMT  
		Size: 39.8 MB (39848546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f932b0cf2d8d0bd7b3ebba44a9b4bda103b3bd57999d19317c64cdd12e32c7f3`  
		Last Modified: Wed, 26 Aug 2026 18:29:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d3feff03b676d019b110c3ce6616d5a59aa75498e3f6ac5d6a975b1e5c1087b`  
		Last Modified: Wed, 26 Aug 2026 18:29:02 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f961b291d7a9f2b35a63232ea91ddbedd55d9fed363d4fa10458f82635780f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3728986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70551e44af080ca7120e0e17585768c8926f68b9a23cf05f0b444e4e61fa0fab`

```dockerfile
```

-	Layers:
	-	`sha256:e2efee88e44af962b91806ca19a7c653bc870ffde70a0303fcd1658fed6d57f8`  
		Last Modified: Wed, 26 Aug 2026 18:29:02 GMT  
		Size: 3.7 MB (3708602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1ba429f7efcbe168c2b6759499abffbf4a764203f4950b098e8f591e57a1aa9`  
		Last Modified: Wed, 26 Aug 2026 18:29:02 GMT  
		Size: 20.4 KB (20384 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:990aa2a6a31ba6d70fc0e0156e737fa073f5ff5c04c6715aa6b2436fa0f00543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111291414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495e010b0e26f61d66744079c455db45881b6656782b65f1398960fd485e3420`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 01:03:51 GMT
ENV container oci
# Mon, 31 Aug 2026 01:03:51 GMT
COPY dir:e0b55156afc48595f50283f3b5ca4e244773f3f5a271f2cd3ceb460190953ed1 in /      
# Mon, 31 Aug 2026 01:03:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 01:03:52 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 01:03:52 GMT
COPY dir:621390827405d8042b06b62cd80e2a658b5a7b3772c696e3082635466ca2f168 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 01:03:52 GMT
COPY dir:621390827405d8042b06b62cd80e2a658b5a7b3772c696e3082635466ca2f168 in /root/buildinfo/      
# Mon, 31 Aug 2026 01:03:52 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T01:02:39Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T01:02:39Z" "architecture"="s390x" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T01:02:39Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:02:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:02:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:02:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:02:10 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:02:10 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Mon, 31 Aug 2026 19:02:15 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64le)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        x86_64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:02:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:02:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:02:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6a32169b134863613ca74b2a88a364995d45d3ced3576f8ec16b59a99b1445d8`  
		Last Modified: Mon, 31 Aug 2026 06:16:03 GMT  
		Size: 34.8 MB (34778899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc5e46553ed13425a4c1b15af28878b3ad87e14e0112cb7a6bf5d15204bd602`  
		Last Modified: Mon, 31 Aug 2026 19:02:37 GMT  
		Size: 38.2 MB (38197774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ec71f67d36e169a53253561c59fafa60a98ee75d5ba953a3331c566dc2cfd8`  
		Last Modified: Mon, 31 Aug 2026 19:02:37 GMT  
		Size: 38.3 MB (38312142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c36adb50bfa7bf036cd4f68042ce0ea2e434fc29bb88badf11adfa73866840`  
		Last Modified: Mon, 31 Aug 2026 19:02:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8092e4ec1e84ced54607036fd3c7b72583ce9ce382902f9a8f0a712d14c6ce2`  
		Last Modified: Mon, 31 Aug 2026 19:02:37 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:201b0ef9c861dc2d00ce9037497e8012170f6de32a726d26896e13e83aa2ec3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3730212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7424988dffe1fd3e6837fb0bc5b14484277360d8feb9dd1c1ce5bd84128d42`

```dockerfile
```

-	Layers:
	-	`sha256:c826e69c6fe5c5046b97c7e9a46f75c1fa319d23fc67c4d8aad02b5456e8b1d6`  
		Last Modified: Mon, 31 Aug 2026 19:02:36 GMT  
		Size: 3.7 MB (3709859 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b65062959e3c004933ecb030552186ffa6a3ab64a5ea0f4b52f59b6170f27f35`  
		Last Modified: Mon, 31 Aug 2026 19:02:35 GMT  
		Size: 20.4 KB (20353 bytes)  
		MIME: application/vnd.in-toto+json
