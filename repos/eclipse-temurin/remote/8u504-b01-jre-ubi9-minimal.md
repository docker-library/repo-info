## `eclipse-temurin:8u504-b01-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:618fdc6ef747eafcff8408e25c6d361b5047be0e0bd5f8c7fbbd961558cad4cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:90dbd7c3bbc8a60cb266584c19c7bf24086be17dc467caefb0196ef9a7d81d5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110706566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f527973df6e3e509fb55c301cb6bf5fccde7a56aaf4f54ec79d1b951c6c04d35`
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
# Fri, 25 Sep 2026 22:35:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:35:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f54a0fb19efce07c95685474b80ea80c4eb2ed40ae83a65e0624d0d8543a9b7f`  
		Last Modified: Tue, 22 Sep 2026 11:51:29 GMT  
		Size: 40.7 MB (40734776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cde25dcb2ea2220ea723554ebd238b333be90b6c5fe4e644b65c3a64946455`  
		Last Modified: Fri, 25 Sep 2026 22:35:47 GMT  
		Size: 27.6 MB (27640711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de4b2f8152ef745e2415d840dd9c72fa6f06d4f4a0f767bfbc70d20fb27f0b0`  
		Last Modified: Fri, 25 Sep 2026 22:35:48 GMT  
		Size: 42.3 MB (42328481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0943915f3ce98dd73330926848cc29539f66e46ce8f78956925b93e3948c017a`  
		Last Modified: Fri, 25 Sep 2026 22:35:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89973797dd70f80d75a252b3879822ccc87a749436e643f5809368e6f05e5b62`  
		Last Modified: Fri, 25 Sep 2026 22:35:46 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f643fce44d344d750587728a48e780d4752316f5330269fbc67290dea9c85da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2459471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ffb00772be29d2ee909f018a38b2d4393fb6cfd0b38ac62daebc319f4dc0b0b`

```dockerfile
```

-	Layers:
	-	`sha256:64789cb70defa24199754fc515354b113561ef5b2c80ca7748550ce9385845af`  
		Last Modified: Fri, 25 Sep 2026 22:35:46 GMT  
		Size: 2.4 MB (2440124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:342c3f669e77c9f01561247ab29983110d247c73ef79549dd7d3d20db8713fe5`  
		Last Modified: Fri, 25 Sep 2026 22:35:46 GMT  
		Size: 19.3 KB (19347 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:cc9023d10510da418167a42f79e7de60422c9ab13911e419fe7314c95aac292c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108176703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b43f67a4bad4e5ed656797cff174c07e0b578c86e8427628d3d66395fc6acd6c`
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
# Fri, 25 Sep 2026 22:35:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:11 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 25 Sep 2026 22:35:11 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:35:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:dea0c826e8cdc58b1ff5a08680eb69ae64129bfee1b07b773c9c5e1d9ffb1e86`  
		Last Modified: Tue, 22 Sep 2026 11:49:08 GMT  
		Size: 38.8 MB (38803467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4333de49de49f8f851396416d5435bc08f7eb99fa9756f95ca2d94076bdaafad`  
		Last Modified: Fri, 25 Sep 2026 22:35:26 GMT  
		Size: 28.1 MB (28077602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de0b7df211a91f5ae63dbfc1120308a8a7c2c018e840f667144be891e449c23`  
		Last Modified: Fri, 25 Sep 2026 22:35:26 GMT  
		Size: 41.3 MB (41293034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aaab6adc4084ffe2be5ff8268ce61da32405abb972dd63eaba7352a02a96a2d`  
		Last Modified: Fri, 25 Sep 2026 22:35:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9819aa52809c71d800cd6a92c7f7d86cbd272d0175537d8221ca1c551f8b0a9`  
		Last Modified: Fri, 25 Sep 2026 22:35:25 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e1c624fdcca4564555083d3b8a716a40318685f9e5026780492238518acc8d42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2457843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a99533b1192553efeac0f90634cc3e8d53635abbf2a19cd2aa2e9761ad6e88`

```dockerfile
```

-	Layers:
	-	`sha256:e2a91c6a82b15bb4d938bea9101844170f59cbec1ca1d1eacd4428229eecb23b`  
		Last Modified: Fri, 25 Sep 2026 22:35:25 GMT  
		Size: 2.4 MB (2438392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b701439629887ac6ae97196c1e661f573013400135b67ff625c895a0031508c4`  
		Last Modified: Fri, 25 Sep 2026 22:35:25 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:49452253e93577fb6f03bb7898755a8b12fae7b619779e98ddf422f052855977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116923839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7829c8df9c1a3c06bf916527ff32bc11196b2dd3253d4382acc786c0c0e82b3`
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
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:38:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:38:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:27 GMT
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
	-	`sha256:cbe0d699828c8d472ae4cb4ce37f2f36fc6838650753197b60336439f7f485e9`  
		Last Modified: Fri, 25 Sep 2026 22:39:04 GMT  
		Size: 41.7 MB (41737611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ea9f010f9b3140145831d9558851a3308bc0106d8798462019dfe5f02fb872`  
		Last Modified: Fri, 25 Sep 2026 22:38:39 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1ec6cdd5f3410ad348595a840271c828f25ac8ac81279f1529be24dcdc7cc2d`  
		Last Modified: Fri, 25 Sep 2026 22:39:03 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e08e42b2e14d319e6acda3cb9d279be983de831b349d45200fe25ffab4149875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2458454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a3b6afca28c9b14e70dea23ad8a4f2e231089338317e7ee4e382e775884ebc6`

```dockerfile
```

-	Layers:
	-	`sha256:c057d5c7cda8d108ab1df59d7fd489e8bddfd721b9cf20fe81e4652d76e28693`  
		Last Modified: Fri, 25 Sep 2026 22:39:03 GMT  
		Size: 2.4 MB (2439077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c951e938ea826e14262bdad7615aeb79a5cf5069f2ed3288467ff0907a7cde53`  
		Last Modified: Fri, 25 Sep 2026 22:39:03 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json
