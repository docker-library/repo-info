## `eclipse-temurin:8-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:b138220232c3c247c843562140a4c6b268165c39b56f46032475518a2540afda
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-jdk-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:b5c6b3adefc05e12a13baf9ca23ea49174a8ded6231629b3c6044525fe4133fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123480744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d5746f41120bde72da617f731eaeed1e2f7535c9771ced0328386efd405dda0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:34:11 GMT
ENV container oci
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:0bbd26efdf764fb2a803e39c5f9309efe9ad8dccb284af5b7fa3a1cebd98b694 in /      
# Mon, 26 Oct 2026 21:34:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:34:12 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:33:49Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:33:49Z" "architecture"="x86_64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:33:49Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:43:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 17:43:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:43:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 17:43:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:43:35 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 27 Oct 2026 17:43:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 27 Oct 2026 17:43:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 27 Oct 2026 17:43:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:43:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8f4a4ef7ec87af1eb84ab8382222fe461e965d7d1c9f8b34dd0890b7009a51bb`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 40.7 MB (40654237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57e3fd0ef58bff51a73b6fffdbdf0e81ea415a3111ba062cf4146246a399f7d`  
		Last Modified: Tue, 27 Oct 2026 17:43:55 GMT  
		Size: 27.6 MB (27631172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5225263742b00658db10c3892c394450ae838dd60242f0b4806245fc8e5486`  
		Last Modified: Tue, 27 Oct 2026 17:43:55 GMT  
		Size: 55.2 MB (55192716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055a29b817bc972ffb7e41327fbd70e319b4f6c7cc78f250e82ba85d168e8bb0`  
		Last Modified: Tue, 27 Oct 2026 17:43:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03414d14c308ab1c2d536980d6985400bae55d3a5e43012c06caa2a095d39075`  
		Last Modified: Tue, 27 Oct 2026 17:43:53 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2304973d4ba8d5813ca001796adeca1dd0927f6b1564990d3e03ba69e5771173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7145059f546c15c731f911142b4544332296019f285fec0b3172f3b1ff772610`

```dockerfile
```

-	Layers:
	-	`sha256:3b06f0cf57040b4859dcf8bb2d564751410a30519e54652a0d6dd0327085d3e4`  
		Last Modified: Tue, 27 Oct 2026 17:43:53 GMT  
		Size: 2.6 MB (2597595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4269c9e53e75d5a2ea56c8653ef5340dbcc3428a20305d43d89af200b64cbee0`  
		Last Modified: Tue, 27 Oct 2026 17:43:53 GMT  
		Size: 19.9 KB (19873 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:edfc41432139e5cfab8304f034c5faffd41dbdb96f5f5caadaba261355aaf34a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121029787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d05af612ea8f16b987ea996631eb0a5982ae8a0dd860df5205693b4bef1d58`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:35:43 GMT
ENV container oci
# Mon, 26 Oct 2026 21:35:44 GMT
COPY dir:4514a7c12566dae98fd88118fcb921951dfe1c5fb68bcd967fa7403f502ed7b3 in /      
# Mon, 26 Oct 2026 21:35:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:35:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:35:46 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:35:14Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:35:14Z" "architecture"="aarch64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:35:14Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:40:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 17:40:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:40:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 17:40:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:40:13 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 27 Oct 2026 17:40:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 27 Oct 2026 17:40:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 27 Oct 2026 17:40:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:40:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2b634c6fd82e08c6136245eb9edf17629696bc4de0436c0eaad35e2a1f3e8050`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 38.7 MB (38703543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1fece421c909dc1e38457fe7d115fd1440959c83a7300599a47338067ef588`  
		Last Modified: Tue, 27 Oct 2026 17:40:31 GMT  
		Size: 28.1 MB (28068788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb19beefa7b1fe98f4d43c3deb5f1b195da5141eb8fd149d3542e201959c99c5`  
		Last Modified: Tue, 27 Oct 2026 17:40:32 GMT  
		Size: 54.3 MB (54254841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634b679bf6b6b74648cfa731360d8b0464c499c3408b2706ae8fbb956c0875d4`  
		Last Modified: Tue, 27 Oct 2026 17:40:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0d073f7471620615c159c07d8ea1dbd1bdffaa11f02871d9b77d98b3e1638f`  
		Last Modified: Tue, 27 Oct 2026 17:40:31 GMT  
		Size: 2.5 KB (2488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6e879ff2a9981346fa1af3488cf37c120982a6a9788cd2898e43cf73dcd8089f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2615872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7aaf7df0065552be5451a0795be5b59db3e8386f67dbbbb8fc1c6507fb735d9`

```dockerfile
```

-	Layers:
	-	`sha256:dca170b36926b5434f4ed8b6c395ad7944e8aa5621bf9967194285c2a91f4b9c`  
		Last Modified: Tue, 27 Oct 2026 17:40:30 GMT  
		Size: 2.6 MB (2595883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed4ce1880ce3f56fc41716207bfa9f501b48ae94b2fde74023db8bec3f98fc76`  
		Last Modified: Tue, 27 Oct 2026 17:40:30 GMT  
		Size: 20.0 KB (19989 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:447b16ea26bb0523a2349e75baf608b0fdcbc60134193fe9e4c2118c3470e99b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127739846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed48b4390b94a5c4efe80899d82383be723232bace30aa52c8bccabd58d2e52`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 26 Oct 2026 21:35:22 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:22 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:35:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:35:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:35:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:35:23 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:23 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:23 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:35:23 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:35:23 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:35:23 GMT
ENV container oci
# Mon, 26 Oct 2026 21:35:24 GMT
COPY dir:76f9a4094e45eeb39a4e9a27fa5c3380093f5b1c6dddfc5065a7d1e628d2df65 in /      
# Mon, 26 Oct 2026 21:35:24 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:35:24 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:35:24 GMT
COPY dir:d2aab5f21efbeeabc1e68bae811e08acdbc33a24cb3ee190740e8cc094a3866f in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:35:24 GMT
COPY dir:d2aab5f21efbeeabc1e68bae811e08acdbc33a24cb3ee190740e8cc094a3866f in /root/buildinfo/      
# Mon, 26 Oct 2026 21:35:25 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:35:01Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:35:01Z" "architecture"="ppc64le" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:35:01Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 20:05:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 20:05:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 20:05:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 20:05:16 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 27 Oct 2026 20:05:16 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 27 Oct 2026 20:05:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 27 Oct 2026 20:05:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 27 Oct 2026 20:05:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 27 Oct 2026 20:05:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:11f9e672dcc1c0741f881480c93354f6ceadf86e2f867365bec13544b3480349`  
		Last Modified: Tue, 27 Oct 2026 00:11:36 GMT  
		Size: 45.0 MB (45013989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21cceb6ab153c3b9aef4d6e821923845dd68c7f9045fd925d1667139d3158ad`  
		Last Modified: Tue, 27 Oct 2026 20:05:54 GMT  
		Size: 30.1 MB (30055603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40ed18e32615881b1df172050bcbf9d63c6ce07fa76ac2ab1ab0a1c2013ce48`  
		Last Modified: Tue, 27 Oct 2026 20:05:54 GMT  
		Size: 52.7 MB (52667637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4687e64eebcf947cefc5f67c2252ad48ea632709ee21ba15abedcc1a7142a474`  
		Last Modified: Tue, 27 Oct 2026 20:05:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c034df2485bbb1722958844ea9f9d220bcceba2774c4ac166cf26dc453dc1a8`  
		Last Modified: Tue, 27 Oct 2026 20:05:53 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b0891a68b4a177019cdc4741312af9613474d3c8a32d300bdb431ebf1baecddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2614446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807ef2fd8fd1869fb3b5df01bf2978c7704c0ae5cecb8caa1afbe8929a167941`

```dockerfile
```

-	Layers:
	-	`sha256:c54059741c5002f695c40d871fd64ff1c0b6786c038e668ce2a27042921c1b62`  
		Last Modified: Tue, 27 Oct 2026 20:05:52 GMT  
		Size: 2.6 MB (2594538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2819f4440568fb7a2e442d13d036fc2f4e69b45ff9d04973b9aa1409d22898da`  
		Last Modified: Tue, 27 Oct 2026 20:05:51 GMT  
		Size: 19.9 KB (19908 bytes)  
		MIME: application/vnd.in-toto+json
