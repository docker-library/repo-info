## `eclipse-temurin:8u502-b07-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:d9092706e8bc5d62b16c84bec5f814e72876bacb2b59af0392f7c0abf10b951e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u502-b07-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:3efc0d1c8410c5712a1b592fab1c0a62dbbcede5c79d858275594332f8362e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110704943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfaab4eaf3e5d20753dd6e08453e0d81cb969af8b2c69e5872548ab33e79b2e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:53:59 GMT
ENV container oci
# Tue, 22 Sep 2026 10:53:59 GMT
COPY dir:14bfe291e51cfd3471e9b85d5e9d491fe06b3ecf4d74ad9ed060eeed665412ea in /      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:54:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /root/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:53:29Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:53:29Z" "architecture"="x86_64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:53:29Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:48:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:48:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:48:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:48:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:48:00 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Tue, 22 Sep 2026 18:48:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 22 Sep 2026 18:48:04 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:48:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:48:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f54a0fb19efce07c95685474b80ea80c4eb2ed40ae83a65e0624d0d8543a9b7f`  
		Last Modified: Tue, 22 Sep 2026 11:51:29 GMT  
		Size: 40.7 MB (40734776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a7f7263ec2de1344bb44d4d4474874087bbaeb217a8679b4d2e17fbf4303c5`  
		Last Modified: Tue, 22 Sep 2026 18:48:18 GMT  
		Size: 27.6 MB (27641206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f5c9a0eceae471c11c516be1d8706e61192161ce075f02293a225844d6ac94`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 42.3 MB (42326364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac11831f95563fa63876807495f263cb2869626c4107b3d907d46caed60e56a`  
		Last Modified: Tue, 22 Sep 2026 18:48:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7adfd54f1b8848e110928a7e5f0de625a33360b44e2a413db4a20b08f17bed92`  
		Last Modified: Tue, 22 Sep 2026 18:48:15 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7e2fabc705156b8eadb8d330a9d4e7966ce7113ef3a6623773dd0e238b09f741
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2459471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24447a11ab2fe9d73bf5ecef37f2e3f0ad263d7979b335692b967b856627a07`

```dockerfile
```

-	Layers:
	-	`sha256:909d2501c9a07a00060e795f1b0cb83a97009dbf806b3d2d1e2b7610b388f982`  
		Last Modified: Tue, 22 Sep 2026 18:48:16 GMT  
		Size: 2.4 MB (2440124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:124fefd22f53884a66af844c4784bb43204f12a1c569e0167437d34b2a6316af`  
		Last Modified: Tue, 22 Sep 2026 18:48:15 GMT  
		Size: 19.3 KB (19347 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u502-b07-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c6a300bc7314557ca856145102eb5ae7a75bf9f9795410ed23ca97591caf40ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108180480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037c81136431ffaa65a2fbcc4a3fb94e27ca9593ab2a1d0165aa2f49e15d6f6a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:37 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:f1b1d9f069c6fd519132b1abb0a3eadbb548b4c2598519d645212ad8182e3e90 in /      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:38 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:39 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:55:15Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:55:15Z" "architecture"="aarch64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:55:15Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:46:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:46:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:46:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:46:08 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:46:08 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Tue, 22 Sep 2026 18:46:11 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 22 Sep 2026 18:46:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:46:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:46:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:dea0c826e8cdc58b1ff5a08680eb69ae64129bfee1b07b773c9c5e1d9ffb1e86`  
		Last Modified: Tue, 22 Sep 2026 11:49:08 GMT  
		Size: 38.8 MB (38803467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdcd75db409daefe5622c9ec9f6ec313fe15c5780f5fef7260352f46cd0c9910`  
		Last Modified: Tue, 22 Sep 2026 18:46:23 GMT  
		Size: 28.1 MB (28077455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcacc33d69e4f5adb84f110c5ea6e594eb60c05a3f98c105553eadac8ef6fcb0`  
		Last Modified: Tue, 22 Sep 2026 18:46:23 GMT  
		Size: 41.3 MB (41296959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2654b207c406b0fb8c51e0ff139568cbc1eeac1afc96848166260586a467e7f0`  
		Last Modified: Tue, 22 Sep 2026 18:46:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8581b1f93f3560a9d015143f40fc67946f1b7a6f870423ecb70fcc294fb96f07`  
		Last Modified: Tue, 22 Sep 2026 18:46:22 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:29004473fc990702926e74708f341c5c5e36005fabe8de99b3a67c3d146fa954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2457843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a522355f19ce4008b62d59c62b9eeaa7bf30f7a7b9e9e9c7d0991a67c2711221`

```dockerfile
```

-	Layers:
	-	`sha256:53a437b82dd2c6438e845fcb5757d2bd68cc8ace0750735808f21588834363f7`  
		Last Modified: Tue, 22 Sep 2026 18:46:22 GMT  
		Size: 2.4 MB (2438392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80ff42bc211b130cfd2e056891e0eb997411d8467fdde4c262eb8510a82222e0`  
		Last Modified: Tue, 22 Sep 2026 18:46:22 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u502-b07-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:6d954057aba046c856df3c9349271f08615d38a035ce035aedfe3ccebc4486e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116929668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751ad8d0db9eb43fbd0f675c2d120d28bb085c5cd095649b8e504d6027426379`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:12 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:12 GMT
COPY dir:e4eb2c1671c9cf1f18e1acc99df1bdd89a609545254164422bc0f58d6e119a4e in /      
# Tue, 22 Sep 2026 10:55:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:12 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:12 GMT
COPY dir:2873fc57f881f500990993deeec8e7b40faee6af06ac82631fee3dfabf7d7ad5 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:12 GMT
COPY dir:2873fc57f881f500990993deeec8e7b40faee6af06ac82631fee3dfabf7d7ad5 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:13 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:54:50Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:54:50Z" "architecture"="ppc64le" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:54:50Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:44:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:44:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:44:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Tue, 22 Sep 2026 18:45:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 22 Sep 2026 18:45:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:45:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:45:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:4108cbe7aded7eca3bde90732e30405ccf46a54516e043a2af89a1be17eafd2c`  
		Last Modified: Tue, 22 Sep 2026 12:17:19 GMT  
		Size: 45.1 MB (45122832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0795e3a65708847d5bcf3d61080098eba5e49f58c02cdb68701041b0df5eaba`  
		Last Modified: Tue, 22 Sep 2026 18:45:08 GMT  
		Size: 30.1 MB (30060798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bedaecce1054ffe536649ab273303a557d0ed5f47ab1fd7f1adac187e2985fd`  
		Last Modified: Tue, 22 Sep 2026 18:46:29 GMT  
		Size: 41.7 MB (41743439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad314f354df6397070c63d0dda4843cd870a9a9a6e04502223e8452ff76bedc8`  
		Last Modified: Tue, 22 Sep 2026 18:46:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a0063a3f487af99bc4b4734e30970ca756157499cb996531c8b980722bbf920`  
		Last Modified: Tue, 22 Sep 2026 18:46:28 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6016b9bd059879bcf64fa6a1b304b907aca572384b8e58fdd9c01210fd03dd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2458454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72226c5c27f0fc6124600ccce2df6ffedf89a2fc4f58431ba538e4f4d3e8857a`

```dockerfile
```

-	Layers:
	-	`sha256:7b6c49153a0ea87388ec93c4a735aa59827b2cf4fd1ab97ee6c27dc0138c51d6`  
		Last Modified: Tue, 22 Sep 2026 18:46:28 GMT  
		Size: 2.4 MB (2439077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbca25ffa43aaa12c5839c9cd9ad7c6514850a13d7c7bb3997c3e02c499730ea`  
		Last Modified: Tue, 22 Sep 2026 18:46:28 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json
