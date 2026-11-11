## `eclipse-temurin:17-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:4decef9174b7ece09614e6d468e48e68d5115b931453486fa6c5d8a5233b1238
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

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6731b3f14af5518ba2ca2d3289f82c6e7abfb09e47564091ebf9483d72ea26e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214417330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4f0e06d18c57d8026ee2737fa775d5a3ccf58006abe839e07fe0520982b6774`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:08:05 GMT
ENV container oci
# Mon, 09 Nov 2026 01:08:06 GMT
COPY dir:9eb7fe1483abb86fafcd0fbf84cfecbc7c9615d954a2774b27c93dfb190ebd65 in /      
# Mon, 09 Nov 2026 01:08:06 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:08:06 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /root/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:06:50Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:06:50Z" "architecture"="x86_64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:06:50Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:48:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 21:48:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:48:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 21:48:16 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:48:16 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 10 Nov 2026 21:48:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 21:48:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 21:48:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:48:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 21:48:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2789facb1a5b2775fea7adde25fbe9982aa5639bcda32a3a035159eb54c6ad35`  
		Last Modified: Mon, 09 Nov 2026 03:11:14 GMT  
		Size: 40.7 MB (40682185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:707df5c8334b39b3bf10d8015a83fda3391004e5c5cf2d942768e3ccc9293590`  
		Last Modified: Tue, 10 Nov 2026 21:48:40 GMT  
		Size: 27.6 MB (27636545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c71bb021753c026ebe614748a4647d91b05d83b20ae17d99fbbd70b00fe400`  
		Last Modified: Tue, 10 Nov 2026 21:48:42 GMT  
		Size: 146.1 MB (146095999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8a5e4b00f0b23931b7bfb99450e0620a624c26d8293c95e02721c1f6c1afac`  
		Last Modified: Tue, 10 Nov 2026 21:48:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87eae8e5521b7430bc6b62c36257762b847089a02cb2ed57d67b1953d90c843`  
		Last Modified: Tue, 10 Nov 2026 21:48:39 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:300918cddfa563de39174cf674e559482c3e91e38b6ae192db72dba49bb1068a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2498398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b3c0c3790bad85cdf277f2aaf0b27d21888edba9626b5156e69cd99ea68c7c`

```dockerfile
```

-	Layers:
	-	`sha256:ac205844f5f0bc9baceae78fa31869688eb6d421257f8dbd1ad5d01a5c9e60bc`  
		Last Modified: Tue, 10 Nov 2026 21:48:39 GMT  
		Size: 2.5 MB (2477255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba98dbf908bdbde7ae25a65ff51169359f6146a1d494152c25a2f2b65063bbfd`  
		Last Modified: Tue, 10 Nov 2026 21:48:39 GMT  
		Size: 21.1 KB (21143 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:86e9978f45162915714a935f304b1692a9fa188b31cd6f1655e1b9d3fed28961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211766216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3529faf8f6a3d2891c32ee73e368229520419c997365412bfe5314aa13097719`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:09:23 GMT
ENV container oci
# Mon, 09 Nov 2026 01:09:24 GMT
COPY dir:c64a3fab6fbd9c83c22b7c3160855229a2f77503d8810a44260c85bbadecd08b in /      
# Mon, 09 Nov 2026 01:09:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:09:25 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:09:25 GMT
COPY dir:a7b9fc1ec276b470b91ac7f5d0116cd6e7f22c97d5e274215635ac5d5a214745 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:09:26 GMT
COPY dir:a7b9fc1ec276b470b91ac7f5d0116cd6e7f22c97d5e274215635ac5d5a214745 in /root/buildinfo/      
# Mon, 09 Nov 2026 01:09:26 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:08:53Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:08:53Z" "architecture"="aarch64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:08:53Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:51:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 21:51:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:51:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 21:51:15 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:51:15 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 10 Nov 2026 21:51:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 21:51:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 21:51:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:51:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 21:51:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f800754b2b30fbd746290877c9ebb909e5c3e306e231c43a66c23980b19aedc2`  
		Last Modified: Mon, 09 Nov 2026 06:13:13 GMT  
		Size: 38.7 MB (38728868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716f584096285548712594035e3e8fa944571f35071b1cccc91c441e7014d391`  
		Last Modified: Tue, 10 Nov 2026 21:51:41 GMT  
		Size: 28.1 MB (28068335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c0d0dc3094d028f2b8f9e45fd9f0e89db337531ec3a2218228de4fe311b1a8`  
		Last Modified: Tue, 10 Nov 2026 21:51:44 GMT  
		Size: 145.0 MB (144966414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec4433cda9052676883a306355bf7cc13ce88c63d6796809bfb02650b3f2514`  
		Last Modified: Tue, 10 Nov 2026 21:51:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8278365c96984c5dfa9cf9298e8058113ac1318526578c8acb58ed7df8cd8d1`  
		Last Modified: Tue, 10 Nov 2026 21:51:40 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7b57f7fc02dd713f7324adf94090dc93ed0a63146a7cd73da1e656f6e5a8caf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2496103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3993ed82520cde54c6e29c7a81e2522734151ce231ded5f0cc2bb768eb49187c`

```dockerfile
```

-	Layers:
	-	`sha256:416c03ad8bb802b1fb7f5676a6e37cce8f96d42b83a89d012fd586ccc74886d0`  
		Last Modified: Tue, 10 Nov 2026 21:51:40 GMT  
		Size: 2.5 MB (2474843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0259c558e4f71afa3481eb9e27400af60a81293a74b96b2c7f9bf15f45d387d`  
		Last Modified: Tue, 10 Nov 2026 21:51:40 GMT  
		Size: 21.3 KB (21260 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:909088cac70160675884b826bc0c220fbf1501e578fd6c8ab6d4d1d2e1737b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.9 MB (219941416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a7cceb218f081b0795e71915ed6c245e53d04c58ed2c4a1f4e29b317a46c31`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 09 Nov 2026 01:08:40 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:40 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:08:41 GMT
ENV container oci
# Mon, 09 Nov 2026 01:08:42 GMT
COPY dir:ae933929e423fdc96e35a47a9102721b0c39f8055e05b214b559d52ceb06cfa1 in /      
# Mon, 09 Nov 2026 01:08:42 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:08:42 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:08:42 GMT
COPY dir:450db05b77204e5448b53b7fab125a177b2d34720183cfd97ef6e5309e56d1c3 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:08:42 GMT
COPY dir:450db05b77204e5448b53b7fab125a177b2d34720183cfd97ef6e5309e56d1c3 in /root/buildinfo/      
# Mon, 09 Nov 2026 01:08:43 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:08:19Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:08:19Z" "architecture"="ppc64le" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:08:19Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 23:53:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 23:53:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 23:53:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 23:53:15 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 23:53:15 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 10 Nov 2026 23:58:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 23:58:17 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 23:58:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 23:58:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 23:58:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dd9d34dc080ec17d2c6dc06a436bf23e89831b2d08e2f855bd8a7bd52c0adc54`  
		Last Modified: Mon, 09 Nov 2026 06:13:26 GMT  
		Size: 45.0 MB (45004833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a83c89023ce7d1ea493029ab89f5d86cecc36f3f41ceaf2b6333c7a75e416a`  
		Last Modified: Tue, 10 Nov 2026 23:54:20 GMT  
		Size: 30.1 MB (30055026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366d39db9f873f3b8cb700fd41f63fd05e73beaa1e5ce4780e5dd9f564f17bf1`  
		Last Modified: Tue, 10 Nov 2026 23:58:56 GMT  
		Size: 144.9 MB (144878953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6e1311cbbaf5a4e99dd012707248bed56b7968ae26818246c94b194838fe7a`  
		Last Modified: Tue, 10 Nov 2026 23:58:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a239033ea8f02f891e41e3c35050d55e495f9d1db0322e9e6e22f97ac87dcacd`  
		Last Modified: Tue, 10 Nov 2026 23:58:53 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:150ef415a644869675f5acec2671d7568ab4b15695f4ddd2ce5f3735062ad6a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2493537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21889a397f8b66aecda882b1ef817b477a72a329efed810e8021c78e80bc408d`

```dockerfile
```

-	Layers:
	-	`sha256:e75766c30d32fec52ed3bff3a24793e14d91db08b859fe014684c4a6fbf40542`  
		Last Modified: Tue, 10 Nov 2026 23:58:53 GMT  
		Size: 2.5 MB (2472357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16e62416ef6e81ba09f91d4b3e544cdebeee23136cb0ba35b100bc4b008cdc68`  
		Last Modified: Tue, 10 Nov 2026 23:58:52 GMT  
		Size: 21.2 KB (21180 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:b8fd7b88dd9c2289a46d89990e20334f40c6a5d0ee9da5383109758d2936564e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 MB (201728670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5165e4d7151ba3b8584bc7a1874fe99613a5ae18ccb7a6a6cdc623c8f47e4279`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:14:48 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:14:48 GMT
ENV container oci
# Mon, 09 Nov 2026 01:14:49 GMT
COPY dir:320e83e83d77e941a7511823fd9e2b238efaab30770a87fcf8c2c828620ece6d in /      
# Mon, 09 Nov 2026 01:14:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:14:49 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:14:50 GMT
COPY dir:51add0d0f79b38581fcd93d48bae03a2f6684f5defdbd1d55101e6920839917a in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:14:50 GMT
COPY dir:51add0d0f79b38581fcd93d48bae03a2f6684f5defdbd1d55101e6920839917a in /root/buildinfo/      
# Mon, 09 Nov 2026 01:14:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:13:58Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:13:58Z" "architecture"="s390x" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:13:58Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 22:53:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 22:53:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 22:53:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 22:53:01 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 22:53:01 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 10 Nov 2026 22:55:11 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 22:55:17 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 22:55:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 22:55:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 22:55:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7cffab3152ca736b966d1762b7e8a3d76fe2b104ec531a34cf50ec37a03f085e`  
		Last Modified: Mon, 09 Nov 2026 06:13:22 GMT  
		Size: 38.7 MB (38666747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aeacd155185445b128cc7d817e637f6a2e99ff20e6fe7a1878078a97d244fa4`  
		Last Modified: Tue, 10 Nov 2026 22:54:32 GMT  
		Size: 27.7 MB (27668505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913487bb3330ad1515f6167e75df0fc3a80b877e00ed1ea3dbf6d1b0c3d615c`  
		Last Modified: Tue, 10 Nov 2026 22:56:16 GMT  
		Size: 135.4 MB (135390818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9e66603294da43f3ccadbacdcec25c48f131cd9f095dd534d8d6d0f7da1ea7`  
		Last Modified: Tue, 10 Nov 2026 22:56:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4231d8980c4710080fb2ff46bd78dbe1391ab975edde292f155dc44f57f8277`  
		Last Modified: Tue, 10 Nov 2026 22:56:06 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3e8d746f2be41877cc0ff884fdb249430360b98ab7b6848f10cd7f0af324b7c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2482763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b48ce5b51a64cbf156977cdf6102f64425b3720da042721fe5fc0542c51fc0e`

```dockerfile
```

-	Layers:
	-	`sha256:de1ff7b27e6b55d40380b5e28940f32f93f88c9eca8e512b8d863918b21428d9`  
		Last Modified: Tue, 10 Nov 2026 22:56:08 GMT  
		Size: 2.5 MB (2461619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd0335401cd02c5ed84476da26f4c993a1b0a4dbb497340a55b481234bba42e2`  
		Last Modified: Tue, 10 Nov 2026 22:56:07 GMT  
		Size: 21.1 KB (21144 bytes)  
		MIME: application/vnd.in-toto+json
