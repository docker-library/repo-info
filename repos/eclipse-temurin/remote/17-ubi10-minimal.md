## `eclipse-temurin:17-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:1142b46b410c2d5fefa7d4336acae3822af9051f7a9f856865d0043fb25f39db
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

### `eclipse-temurin:17-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ea46452d10c80ca4107054074064fa7b1ee42943addebee0ee4955bd13826a75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.5 MB (203472099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f0b6ddb9570805835e87234fdb4fbce6e56678d1efdf125c55a63aa7fe43cdb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:03:35 GMT
ENV container oci
# Thu, 12 Nov 2026 16:03:36 GMT
COPY dir:abaeaccaa183ac0f937690d9c3d971f171eee110eb25e55bb2014a260848d444 in /      
# Thu, 12 Nov 2026 16:03:36 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:03:36 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:03:36 GMT
COPY dir:4907c31dd7720cc331953cb8cbe73d698387e1a9bb6e1ff53fe2e44570a4e195 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:03:37 GMT
COPY dir:4907c31dd7720cc331953cb8cbe73d698387e1a9bb6e1ff53fe2e44570a4e195 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:03:37 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:02:48Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:02:48Z" "architecture"="x86_64" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:02:48Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:46:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:46:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:46:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:46:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:46:20 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Fri, 13 Nov 2026 21:46:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:46:27 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:46:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:46:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:46:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cfd5e1005a32b7225818bfd0eb2156a15f6be2100d285589a641ff98bd55281`  
		Last Modified: Thu, 12 Nov 2026 18:03:34 GMT  
		Size: 35.0 MB (34989854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f9e4caeaac669de4aeac97bfe60c13502866b82cba53f934f7a6d8de4c24fd`  
		Last Modified: Fri, 13 Nov 2026 21:46:44 GMT  
		Size: 22.4 MB (22383590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81dffd1f396837af5448558e0b57effa1eacfae7bdc86c607f314e91529bc3c9`  
		Last Modified: Fri, 13 Nov 2026 21:46:46 GMT  
		Size: 146.1 MB (146096053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b8ebc091b2064a5c3a1b14df9bebf3fb55c7b1fbf1d3ccf60a9d43633249442`  
		Last Modified: Fri, 13 Nov 2026 21:46:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05928e4b4b408a19d812a6f588bf34157da1c8989c2b2aabd3cabbfb164f8d4c`  
		Last Modified: Fri, 13 Nov 2026 21:46:34 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7c08e0d0e7df4cc1f9fd2ff879ba1a1315a64a14b5d1d0e93c640b029d86d1a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9298745721d219a81f006dcebd5b5f16e1a2c64969212b3dcb3880e496fd8e00`

```dockerfile
```

-	Layers:
	-	`sha256:8e1a0e28175688216be438e847fe2ccc639cdcf32077c2202c4562efe8b0ff78`  
		Last Modified: Fri, 13 Nov 2026 21:46:43 GMT  
		Size: 3.0 MB (3035462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:589d937290fd78a7404ffe29bbdff6d336394333f6bac689292345832a9e8fe8`  
		Last Modified: Fri, 13 Nov 2026 21:46:42 GMT  
		Size: 21.3 KB (21316 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:1303e062e3d6bbd60621024ff01720e36db661dd0302113926d748522210a75d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200651477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d803648c5dc355254075b7e326272220fafe2a65320bea3e4e97ea4e249d859`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:05:37 GMT
ENV container oci
# Thu, 12 Nov 2026 16:05:39 GMT
COPY dir:fe8420d32862f0115fa228720b49066fadc1b8d1092b0d3d3cb9962c75e35cc6 in /      
# Thu, 12 Nov 2026 16:05:39 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:05:39 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:05:39 GMT
COPY dir:fc47a3f30ae4d6e4c8b5cebf7d8469dad63931bae6197b61a549f3789f2ea498 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:05:40 GMT
COPY dir:fc47a3f30ae4d6e4c8b5cebf7d8469dad63931bae6197b61a549f3789f2ea498 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:05:40 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:05:09Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:05:09Z" "architecture"="aarch64" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:05:09Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:41:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:37 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Fri, 13 Nov 2026 21:43:03 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:43:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:43:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:43:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:43:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:92b92fb6cc01fdbff60386e24bb888d8cbdc5d4af6a26214b7a8c5549a2ed08a`  
		Last Modified: Thu, 12 Nov 2026 18:03:29 GMT  
		Size: 33.1 MB (33057880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100918ea78ea51df29f21098024433ab4fe2e36832415b3c2cc0eae1aef6ca6e`  
		Last Modified: Fri, 13 Nov 2026 21:41:53 GMT  
		Size: 22.6 MB (22624592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85dab6836545fe487bd31880e7c00226619f806534d6bf20511895b13bea2d9`  
		Last Modified: Fri, 13 Nov 2026 21:43:24 GMT  
		Size: 145.0 MB (144966406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c515dbf5b7f2b4cba8bba51474969ff40d8f926245be11ae818e8488a4abc5`  
		Last Modified: Fri, 13 Nov 2026 21:43:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2711d9a6b1421aac313ff90b44b23ec44627bafbbb1d90ee130d4112f6b93c`  
		Last Modified: Fri, 13 Nov 2026 21:43:19 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1010a60c0f75fbf3bdcde09f430a40626ccec18158f1332d31c056ad20501cd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c56b929329924777bad14b9aca31e578d16170a3109ba5e760d144baaeca5f6e`

```dockerfile
```

-	Layers:
	-	`sha256:5ed23c6cdae35cd5393104b0a85a4bc2a039f3b5cc79849a8be71a1c25fe426b`  
		Last Modified: Fri, 13 Nov 2026 21:43:20 GMT  
		Size: 3.0 MB (3034888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5a3702196f0ed651409f7150c6631021180b6d465c975e8de242a2eecc0ea93`  
		Last Modified: Fri, 13 Nov 2026 21:43:20 GMT  
		Size: 21.4 KB (21432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:af1a0af2f1f32b2103bb2325052464ec89387df494a8d0c85930c7e348b627e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223739745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0801499222806074738c8cdddc7506089b8785f2290e519ab06c48738bd10610`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 16:09:58 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:09:59 GMT
ENV container oci
# Thu, 12 Nov 2026 16:10:00 GMT
COPY dir:ad66467f60bb0a64961b37b18c45eabc5da9768db94a9506ecae7a8434041e56 in /      
# Thu, 12 Nov 2026 16:10:00 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:10:00 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:10:00 GMT
COPY dir:004ff3a132bc9072133b960572269ccc9d243198026dfe8e2c063dd7a6729985 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:10:01 GMT
COPY dir:004ff3a132bc9072133b960572269ccc9d243198026dfe8e2c063dd7a6729985 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:10:01 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:09:32Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:09:32Z" "architecture"="ppc64le" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:09:32Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:41:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:03 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Fri, 13 Nov 2026 21:45:27 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:45:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:45:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:45:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:45:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:732e1cc5e2c16e0c0f268f77b46621ef010009a9109126d06365d7e29c2876d6`  
		Last Modified: Thu, 12 Nov 2026 18:29:10 GMT  
		Size: 39.1 MB (39060038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a091144000673e21ab164cebc0c14f91c53123f6d6f421fc75f70b68a4b4d0`  
		Last Modified: Fri, 13 Nov 2026 21:41:43 GMT  
		Size: 39.8 MB (39798191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15383e89afd7bb9394f185009cf704eda14690b613714577b4330d7c4aac22c`  
		Last Modified: Fri, 13 Nov 2026 21:46:21 GMT  
		Size: 144.9 MB (144878916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea3bd6d0adb2c99aa8b7a15bd34e3a0c4be276d18fa81beca2ec35659b4280d`  
		Last Modified: Fri, 13 Nov 2026 21:46:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074918af286ff67a3531ba5693f8c67b0d056368c431e85b1470190d58171a82`  
		Last Modified: Fri, 13 Nov 2026 21:46:17 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:567e6b807176673b392bce7655acd4e834e99ccbd3c2ccd63d092ac512aab2d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac467c890e2582438747b19af494fd80426a3792efe2e8fdce7cf079fd8cee61`

```dockerfile
```

-	Layers:
	-	`sha256:8c27cea4267dd5e3f54660d0429533d05b77adbb5a4d23b0a9b734b8d3429ae7`  
		Last Modified: Fri, 13 Nov 2026 21:46:18 GMT  
		Size: 3.8 MB (3764327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b547ad671f74baf831aa5044071d6509c73375903dc5db47aa52a52d1ea26f4a`  
		Last Modified: Fri, 13 Nov 2026 21:46:17 GMT  
		Size: 21.4 KB (21352 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:4748f187360d5869c2f6b7cfadbb3929adaefdc38b5b8b7ff12434a8104ebd46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.9 MB (192949100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e7da1cc4833f4b9a0b8081eacd4b70ed168fad9dec07abea773c8872706694`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 16:37:23 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:37:23 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:37:23 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:37:23 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:37:24 GMT
ENV container oci
# Thu, 12 Nov 2026 16:37:25 GMT
COPY dir:566a5022316ff560512005a088367d2853859f574e9087ef74ae030a0a6af5df in /      
# Thu, 12 Nov 2026 16:37:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:37:25 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:37:25 GMT
COPY dir:ec55cb9b5c6900c8ca824e865d9eb8d5a48c85e1c2ebfcf28d8cfa0a5d4ab260 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:37:26 GMT
COPY dir:ec55cb9b5c6900c8ca824e865d9eb8d5a48c85e1c2ebfcf28d8cfa0a5d4ab260 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:37:26 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:35:59Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:35:59Z" "architecture"="s390x" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:35:59Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:40:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:40:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:40:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:40:48 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:40:48 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Fri, 13 Nov 2026 21:41:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:41:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:41:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:41:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:41:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e71dc9438b94c2c137e529ef670ef1400ab2d4cdcaa57af35b766fe14f8fa33d`  
		Last Modified: Thu, 12 Nov 2026 18:28:59 GMT  
		Size: 34.8 MB (34831835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc856a7fbb26c45ee9cf85ed91dfbd18d64bbbaa22febfe6fb495dd45d5c523`  
		Last Modified: Fri, 13 Nov 2026 21:41:09 GMT  
		Size: 22.7 MB (22723830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b3f2a19fec7d9a68fd3a6b1904dc9fedd9c7a9ed17044140c2631e92062a7c9`  
		Last Modified: Fri, 13 Nov 2026 21:41:58 GMT  
		Size: 135.4 MB (135390838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5db10398c7836c55d4b4b6249b3e9532f19cdb339fb4a60d546cf8de2b4fdc`  
		Last Modified: Fri, 13 Nov 2026 21:41:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad78db4aa2e55c08a406887ea96cb05d31f002e69fce8b18f7b2a36c646c78a`  
		Last Modified: Fri, 13 Nov 2026 21:41:55 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:80ae82d0659d830c3f0dfff6904b3901775fb0434b85247fcad2c589ae57fa99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3048046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8663ddfb873af41d95df6bd4290f7ae3fd5c25c16ea368c599b49e752c610c8d`

```dockerfile
```

-	Layers:
	-	`sha256:6e3c048cfe075908956bb9972ce7c1e5959ca26e7b1924060b1ef33645bb83dc`  
		Last Modified: Fri, 13 Nov 2026 21:41:55 GMT  
		Size: 3.0 MB (3026730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e333e4ff286dd292d3a17116e89744eafda7447c539e6335a9d59dd552a530f`  
		Last Modified: Fri, 13 Nov 2026 21:41:55 GMT  
		Size: 21.3 KB (21316 bytes)  
		MIME: application/vnd.in-toto+json
