## `eclipse-temurin:21-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:9bda575665659e157065290c2fa01e01027a15e6443bc35fae3787dffb30c767
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

### `eclipse-temurin:21-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:22bae9f413d0571f2e5d80722a057629e709bfb5d300cb192d771dd12eaf3496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230858715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b45cb534924ca697d08140db2cbedf0e459ffe67f3ad477a6922afc16ea7999f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Wed, 26 Aug 2026 18:29:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 26 Aug 2026 18:29:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Aug 2026 18:29:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 26 Aug 2026 18:29:46 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:29:46 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 26 Aug 2026 18:29:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 26 Aug 2026 18:29:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 26 Aug 2026 18:29:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 26 Aug 2026 18:29:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 26 Aug 2026 18:29:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:86240237f31dfd7a745de734105e773d38e7ed79b6d73eddcb5554e8e7a96a76`  
		Last Modified: Tue, 25 Aug 2026 21:24:43 GMT  
		Size: 34.9 MB (34915243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75af46815b880ade5b67fcf1035538a3a0d3c5d6b8fc0e6bd87c86a1b89257a`  
		Last Modified: Wed, 26 Aug 2026 18:30:12 GMT  
		Size: 37.8 MB (37814474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c4944e770193d280cbbb9df80f233545448f73bce2446567a05069b8b9a623`  
		Last Modified: Wed, 26 Aug 2026 18:30:14 GMT  
		Size: 158.1 MB (158126397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484a9eae9e5ee1d2c08df33b52a28e46c38f18d598dd5c4dc74fd79b1f288aef`  
		Last Modified: Wed, 26 Aug 2026 18:30:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3255b938d6cd2fd39336f4e7e60bad04dba654f9e6700708bfb04ee266b7f059`  
		Last Modified: Wed, 26 Aug 2026 18:30:10 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2536f11069f44d871db3b5b5d7549ac59f3b9b66043459fa8da193443163e584
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1783de755ddc04a4e296b49d05661c7e249f4c94c0ded4f3c51f6d425f04aef7`

```dockerfile
```

-	Layers:
	-	`sha256:d68fbbef5e984b8c54bb792b9e6073412980c7d05ade2412ad4f4de5b752235c`  
		Last Modified: Wed, 26 Aug 2026 18:30:10 GMT  
		Size: 3.8 MB (3794322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03ef024407f7ea2e4d37a8da6e78e10b4c2e155643e511510222a396a61c8209`  
		Last Modified: Wed, 26 Aug 2026 18:30:10 GMT  
		Size: 21.3 KB (21316 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:886a70dc37444caf10c96e125ba0f7ca2371fe73e71750004fea0dbb7e8e8970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.3 MB (227264831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6967efab52d76fff59472d149f68b948b751d460db22a2ea1ee4d1359b2158fa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Wed, 26 Aug 2026 18:29:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 26 Aug 2026 18:29:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Aug 2026 18:29:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 26 Aug 2026 18:29:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:29:24 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 26 Aug 2026 18:29:31 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 26 Aug 2026 18:29:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 26 Aug 2026 18:29:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 26 Aug 2026 18:29:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 26 Aug 2026 18:29:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:90204bffd8557d6ddc1fe3a7ace7c88713e398b48b9939f3ee4cdfe0070edb6a`  
		Last Modified: Tue, 25 Aug 2026 21:24:43 GMT  
		Size: 33.1 MB (33114682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d86c9bd146d4e814480181e15b2df165878f9155829b9456c493e928d107c1`  
		Last Modified: Wed, 26 Aug 2026 18:29:52 GMT  
		Size: 37.7 MB (37741753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e014855c9afcf3a6021d924a9ae15622e7a5641e17291a84f808d4a3832c48df`  
		Last Modified: Wed, 26 Aug 2026 18:29:55 GMT  
		Size: 156.4 MB (156405796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64031314495d7eb458200474a6c796572d44f28d15977c1e6c00592a938bbc4f`  
		Last Modified: Wed, 26 Aug 2026 18:29:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cfd646f47c1cd6fde1597fce0ef27d422c6b9183f01677c93507b434393632`  
		Last Modified: Wed, 26 Aug 2026 18:29:51 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:af0251b40b445d9c0946a7f856fe2e52d71a9d6f895863b85bea13bb3c801995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07eb5aa8b12feb8c393ebcfd47197804ab336c089b7e592534097db717ba382`

```dockerfile
```

-	Layers:
	-	`sha256:30ade91c1033ec3b47db045e9b1485bf395010af231551f2a9c1a40e04545d90`  
		Last Modified: Wed, 26 Aug 2026 18:29:51 GMT  
		Size: 3.8 MB (3793748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a8801acd8f847198eb0d38fdf3b765d6255149d18075518eea80c9c6a3706e1`  
		Last Modified: Wed, 26 Aug 2026 18:29:50 GMT  
		Size: 21.4 KB (21432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:dc4a2deb734de97135ebf830f14cf6dfd2212b964ccad548a45f8084f52b1e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.9 MB (236935558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a824431f9f46a1c1c8d13707b51ec417d466ab1b7cb78e04a94534ef56ae78a0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
ENV JAVA_VERSION=jdk-21.0.12+8
# Mon, 31 Aug 2026 20:01:12 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 20:01:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 20:01:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:01:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 20:01:15 GMT
CMD ["jshell"]
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
	-	`sha256:6ecc1fdf01c2a30aa8c9438d8cfaaebdcca3ae8c940f3336c4861488a9df33a8`  
		Last Modified: Mon, 31 Aug 2026 20:01:54 GMT  
		Size: 158.3 MB (158280931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef91e7b8a87a4dc03943272106391a0664bb7fd635d6fe885100cc32828157bb`  
		Last Modified: Mon, 31 Aug 2026 20:01:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7151394c2e671c85c4a8b832a33b45efd927993fc8e4bbbf9b13c60821a736f`  
		Last Modified: Mon, 31 Aug 2026 20:01:49 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cea4d6d13b06186423b652b1c438f3185f605f09270da2183db8846043bd43c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3802510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b181863ea7d1a0d3463e49b5561326c2afca0c3d27bc709def9a701d4e201bc`

```dockerfile
```

-	Layers:
	-	`sha256:aefa7a1dba1ade6a988eb6a73e993e9833f41969e6f5c5dbeae6779ef68bccdb`  
		Last Modified: Mon, 31 Aug 2026 20:01:49 GMT  
		Size: 3.8 MB (3781158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c7fca286ce0ee08bc0d18a43bb07ef3d7e5877c39e35568878cf25f1ff94c26`  
		Last Modified: Mon, 31 Aug 2026 20:01:49 GMT  
		Size: 21.4 KB (21352 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:cdd2a1a920fa43c01c693c0bae769d59115d17a9104807b2a1a0e129850769b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.3 MB (220325716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214465d4a1cae21090bdc51e4c5ba638568e1b57557bfa62ea7a75f0109f9650`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
ENV JAVA_VERSION=jdk-21.0.12+8
# Mon, 31 Aug 2026 19:03:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:03:55 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:03:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:03:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:03:55 GMT
CMD ["jshell"]
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
	-	`sha256:f4d46e8f26a6331d6a66bba1e914127508e19d7888730e3a273c2e67ddd98b84`  
		Last Modified: Mon, 31 Aug 2026 19:04:22 GMT  
		Size: 147.3 MB (147346443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad00767e4cc068219bc761ff910ed0a6abd155f927ee65eacaf806ac18b4336`  
		Last Modified: Mon, 31 Aug 2026 19:04:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b626073ddc2e122a29e9292dea63cb4637904aaa3f383a5586cd457fb970ac5`  
		Last Modified: Mon, 31 Aug 2026 19:04:20 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f7fa547d19989ae8942969c8313fa8bea883e060adc300fec8f2efd96251b267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3801240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9cac76f0a2a9308b195bc5b8d4110d57453113b9d550218503145f0bcecc1f`

```dockerfile
```

-	Layers:
	-	`sha256:e9650b51be76527a749e92f9f247a1bc6a7b62188a0151843865321837eb9195`  
		Last Modified: Mon, 31 Aug 2026 19:04:20 GMT  
		Size: 3.8 MB (3779924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d91c1993eb9b3a5c105d29f4e267d71c0538ca821d40f15d2a12b9af6cec524`  
		Last Modified: Mon, 31 Aug 2026 19:04:20 GMT  
		Size: 21.3 KB (21316 bytes)  
		MIME: application/vnd.in-toto+json
