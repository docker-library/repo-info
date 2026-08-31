## `eclipse-temurin:21-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:efdfb18f4fbabfb6f3b7943e650f872d9c5fce91b59885110e8d0b97dca18359
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
$ docker pull eclipse-temurin@sha256:1c67732ab7d3b2e0fcb2503e8bfe03aa3bb6659994cb9a0b624158a20426e456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.8 MB (230848769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5b9c83abfdb4e4056e08ecc836336dfd94dfa9a61072ff6e2a07fd48fd37ba`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 00:57:31 GMT
ENV container oci
# Mon, 31 Aug 2026 00:57:32 GMT
COPY dir:458d6b12437e2fe1aea7458dedc8afbb3f3a79785ef8bf9db56b6c8e9d81c2bd in /      
# Mon, 31 Aug 2026 00:57:32 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 00:57:32 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 00:57:32 GMT
COPY dir:f5142977308c4527d6c246c51d646f592e5402b34a96136130ebe6385bd6536a in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 00:57:32 GMT
COPY dir:f5142977308c4527d6c246c51d646f592e5402b34a96136130ebe6385bd6536a in /root/buildinfo/      
# Mon, 31 Aug 2026 00:57:32 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T00:57:07Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T00:57:07Z" "architecture"="x86_64" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T00:57:07Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:16:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:16:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:16:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:16:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:16:39 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Mon, 31 Aug 2026 19:17:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:17:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:17:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:17:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:17:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ac2980d72cc6bdfe4cb4a8e0a91eeef134597c45af1e0dc031a54fd0560b2d74`  
		Last Modified: Mon, 31 Aug 2026 02:12:26 GMT  
		Size: 34.9 MB (34889446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ff0c0450753a50692f59f46c6e9a3f33c2ddd1fd52305f9432f6b7cc0deadc`  
		Last Modified: Mon, 31 Aug 2026 19:16:56 GMT  
		Size: 37.8 MB (37830340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d436ef9b22d1dfa8486db50b28825764e6a1a7b8adccce1fc62554411bf7bab`  
		Last Modified: Mon, 31 Aug 2026 19:17:30 GMT  
		Size: 158.1 MB (158126381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0317eea74a55eb4244614c098d72e4135e38f089cb5dbe7ac60284c97cbb0b`  
		Last Modified: Mon, 31 Aug 2026 19:17:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5406d22951fd8e9ff3bea1cc6dbaa2215dfa7123d836bbeef811a24d8bc8fe8`  
		Last Modified: Mon, 31 Aug 2026 19:17:26 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2151438037ab8f84faaa66db35578b1d16ed44cd697143f907161a96769ab00a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7651710bf077d3a725f97332727405b7dd259b047e0809e988a56c6eb8889456`

```dockerfile
```

-	Layers:
	-	`sha256:be8fd97ef1eae5828580aa16726509116f7899b1d6a78a7e6771479c06a7bb1e`  
		Last Modified: Mon, 31 Aug 2026 19:17:26 GMT  
		Size: 3.8 MB (3794334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae29457c82ec2762d599d51b6b13731e62cc1e6b4176a73ade4fadc3d3a7c004`  
		Last Modified: Mon, 31 Aug 2026 19:17:26 GMT  
		Size: 21.3 KB (21315 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:35479aa5c1ca994c6d859eed21f067d6b9125335dddae4ae9896031159982ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.3 MB (227271355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6195b3d362df23bf9dd896ad359e15058069fa483a2a0a5b23e744a2894ccb4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 31 Aug 2026 00:59:39 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 00:59:39 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 00:59:39 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 00:59:40 GMT
ENV container oci
# Mon, 31 Aug 2026 00:59:40 GMT
COPY dir:6edc2d67ec7ce81de4d5e2e694d20368d7f98a402c5908188e9b9c3e9f626bab in /      
# Mon, 31 Aug 2026 00:59:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 00:59:40 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 00:59:41 GMT
COPY dir:3bd29e4a02a383c54782ac3cac9fc34c309a5293bb636ff3decba1a75c438d98 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 00:59:41 GMT
COPY dir:3bd29e4a02a383c54782ac3cac9fc34c309a5293bb636ff3decba1a75c438d98 in /root/buildinfo/      
# Mon, 31 Aug 2026 00:59:41 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T00:59:17Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T00:59:17Z" "architecture"="aarch64" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T00:59:17Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:33:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:33:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:33:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:33:41 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:33:41 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Mon, 31 Aug 2026 19:34:25 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:34:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:34:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:34:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:34:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:759ceaf0b34529e4230d22d353f231af30923d9ec82e0d2da5c0bebd4c37e463`  
		Last Modified: Mon, 31 Aug 2026 02:11:43 GMT  
		Size: 33.1 MB (33102863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1da6560a8af5400ea0d60be0d3a1c2715bd286d67a12b6cf0df32f7b2fc9673`  
		Last Modified: Mon, 31 Aug 2026 19:34:08 GMT  
		Size: 37.8 MB (37760093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7c835e904919284f225123ea3926bac51e180e63ba1de00c191bcf87661a96`  
		Last Modified: Mon, 31 Aug 2026 19:34:47 GMT  
		Size: 156.4 MB (156405797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1079910f25c6008b9027dd6a8ae5aaf9afc44357f9db68eb5e8c3309dc7797`  
		Last Modified: Mon, 31 Aug 2026 19:34:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:005684f8e9a9966052be702e3dc1f27d1c991647a1923dfcced8317411015b85`  
		Last Modified: Mon, 31 Aug 2026 19:34:43 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:34796e5d779b4133ca275c336af119fe71c8b2706d80c091650db815bfbe30d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a59fb4cc1bea2e62d237390deae5f9f0b559601a84a4802e1d281cb408d6d84`

```dockerfile
```

-	Layers:
	-	`sha256:5ce9335c8a710bb528232ddb3953def2a8c6ec85ce67b27380bdd42d47022f8e`  
		Last Modified: Mon, 31 Aug 2026 19:34:44 GMT  
		Size: 3.8 MB (3793760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4418a8ad271a19b22970f76507324298037bcd0b2b144a0394b0813b5569d53d`  
		Last Modified: Mon, 31 Aug 2026 19:34:43 GMT  
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
