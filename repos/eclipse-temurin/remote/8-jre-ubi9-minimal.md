## `eclipse-temurin:8-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:3b9ac317c593fa35942b1a13c4282c8063c4dd49a4ed31d8a9f9cba56e299cef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:89f7cf98b0311ad1ce525821296e27ec1edac3c2960d38d85da535863464f246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110705443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ff826868ddf6d9553dea60eac4ae1085a230b9739d4b2647569812bcb66a55`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:35:54 GMT
ENV container oci
# Tue, 13 Oct 2026 13:35:54 GMT
COPY dir:2fcd1ca2b477955927b3f5efd987f047101cd586e309b90ff9e3d22cde3fa5f5 in /      
# Tue, 13 Oct 2026 13:35:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:35:55 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:35:55 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:35:30Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:35:30Z" "architecture"="x86_64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:35:30Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:57:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:57:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:57:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:57:22 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:57:22 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 22:57:25 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 22:57:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:57:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:57:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:3655575efb35316918c7e7d2cb81ae7db0e4613f7ffbbadb4980cc0549ac2834`  
		Last Modified: Tue, 13 Oct 2026 14:51:42 GMT  
		Size: 40.7 MB (40737290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8595637374660a0830914fd78a7ed97fa1e78b4a52e4aed0386679b3804e0c`  
		Last Modified: Tue, 13 Oct 2026 22:57:37 GMT  
		Size: 27.6 MB (27637090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddbd9ffbccc0afcf614b8a1a03e790098eb13f08a6a5bc86d9db269aafb6af52`  
		Last Modified: Tue, 13 Oct 2026 22:57:37 GMT  
		Size: 42.3 MB (42328464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03c94ad26c1a40f7d14908b76048ba5ede5cbfbbd5b46f9363eb28ae247cacc`  
		Last Modified: Tue, 13 Oct 2026 22:57:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46c9b0d99c3b654df92ddaa5227da294a230de1fcec284aca905fd369accfd4`  
		Last Modified: Tue, 13 Oct 2026 22:57:36 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4c32da14df01211a3ca420d8726ef98e89ea6f634266994b88dbba939c94d3b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2459490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2f609bbe60142ff0147bae2214aad59f965e758adbcdf23fcf4e9d1a25611e`

```dockerfile
```

-	Layers:
	-	`sha256:db4beb2ac1e9d0c1ad5484972bb1ae4fd15f97ebd7f28490e8e8d8c04d73bfca`  
		Last Modified: Tue, 13 Oct 2026 22:57:36 GMT  
		Size: 2.4 MB (2440144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:400fb7be70051c5028490fdcb4f44516ea0fa6981541439f32da3a5fd45b8147`  
		Last Modified: Tue, 13 Oct 2026 22:57:36 GMT  
		Size: 19.3 KB (19346 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:7a60524a71093c9b86a7499d7862979767c64beeab245bde6fff6ae0af8c3b67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108177567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b62f4b6bc77eb5d235a305ce293472bbb0c5b8d301b816c39c659e17bd7df3e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 13 Oct 2026 13:38:25 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:38:26 GMT
ENV container oci
# Tue, 13 Oct 2026 13:38:27 GMT
COPY dir:e0a9e23521da92370ef8c1c702abc899055259c540969022f975e6a9a5db74eb in /      
# Tue, 13 Oct 2026 13:38:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:38:28 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:38:28 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:37:55Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:37:55Z" "architecture"="aarch64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:37:55Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:56:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:56:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:56:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:56:51 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:56:51 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 22:56:54 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 22:56:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:56:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:56:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8aa74cd1ed0a010c9e42b8f13484468b32e94ff9405ce295cbde110e8119e733`  
		Last Modified: Tue, 13 Oct 2026 14:52:30 GMT  
		Size: 38.8 MB (38804143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd138e123bc54f023b24f5c7eadd97b6d9ab9bb3300541d2eb1e90d06e2ce683`  
		Last Modified: Tue, 13 Oct 2026 22:57:07 GMT  
		Size: 28.1 MB (28077792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6105e45cfff6ba21a7c35eca33fe356a50be340a73dae79ec4fb4d3d4a7b25d`  
		Last Modified: Tue, 13 Oct 2026 22:57:07 GMT  
		Size: 41.3 MB (41293031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a2906bb0e32b2755da2edad4b134bb020a82de6bc9aaa9326c3d93642d509f8`  
		Last Modified: Tue, 13 Oct 2026 22:57:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f6d06771e8af0fba718f3562a95a7ac2fc3146be96a828f4c75dffae4185ec`  
		Last Modified: Tue, 13 Oct 2026 22:57:05 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b574c329b85ceb303f3b7161a3eb018eb8ef04189d6a397419a1c5ae64aa5b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2457863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5dfbb5960e107654b1201a370e466587efe58b7579d0052dfe3c3e28836c13`

```dockerfile
```

-	Layers:
	-	`sha256:a42bc4617ae0103097ba6d3d51672bcbc0b546ea34fc6e11a90d991c442cb331`  
		Last Modified: Tue, 13 Oct 2026 22:57:06 GMT  
		Size: 2.4 MB (2438412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e4f7ac68c1fdd37e85f1d9895b12f0bd7f26195c3f01a629d8eabdc723836a9`  
		Last Modified: Tue, 13 Oct 2026 22:57:05 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:948d5b950eeb83f47fab6b8a65f9e8129fbcfca84b4dd005f93705ce1dd3ec58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116983596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d5fcf6bcd0d2e635cc7650b3e245756ac49efde0fc2621a24074ffb7236f3b1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:37:36 GMT
ENV container oci
# Tue, 13 Oct 2026 13:37:37 GMT
COPY dir:92a05a611f8cfd3f18a14877aab31596763f3ce8c391d4c01d7a65b9223e525a in /      
# Tue, 13 Oct 2026 13:37:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:37:37 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:37:38 GMT
COPY dir:f649eae5e047426b308cc16906636d1cf529fb6e62f6a67019b2139bab1fbf90 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:37:38 GMT
COPY dir:f649eae5e047426b308cc16906636d1cf529fb6e62f6a67019b2139bab1fbf90 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:37:38 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:37:13Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:37:13Z" "architecture"="ppc64le" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:37:13Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:55:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:39 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 22:57:01 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 22:57:03 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:57:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:57:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:52db23f98827188005b2d11f8472b68dc9dae4832da358ce51a293a9e6d44c9f`  
		Last Modified: Tue, 13 Oct 2026 18:23:23 GMT  
		Size: 45.2 MB (45185378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db7a63728b6d2c561d09b30ac4673530838cbe6ecb9a7c79e43cf42a6ca2183`  
		Last Modified: Tue, 13 Oct 2026 22:56:38 GMT  
		Size: 30.1 MB (30058019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f60f6d7504176205fbef49d8282a118d22380834d31de902cc7764945cf96ae`  
		Last Modified: Tue, 13 Oct 2026 22:57:39 GMT  
		Size: 41.7 MB (41737600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23533d493453dcdb3168d90ae940fa8a743ab7c6aeb6224a466addd7fe226259`  
		Last Modified: Tue, 13 Oct 2026 22:57:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d1dc529c682d78beb9ace98ab0e20a53e9205643e6bfc2eb800f06a24ee674`  
		Last Modified: Tue, 13 Oct 2026 22:57:38 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:433c18c84d6a1025d28ec988bd123ac1f2a223c69ca5a58a0ad9a3742a98c9aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2458473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e94677202bbecf955d9249b5126d3ab9f534142884d306c54576f802dfdd34a`

```dockerfile
```

-	Layers:
	-	`sha256:88f26c4f96294939276d6f0daeb541527739092bee5350b17f2a22b222c200de`  
		Last Modified: Tue, 13 Oct 2026 22:57:38 GMT  
		Size: 2.4 MB (2439097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07c5af1921671d9d0103bdea945ce19a22f485eb386762fffd5f8edd0387d4ad`  
		Last Modified: Tue, 13 Oct 2026 22:57:38 GMT  
		Size: 19.4 KB (19376 bytes)  
		MIME: application/vnd.in-toto+json
