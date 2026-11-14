## `eclipse-temurin:8u512-b09-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:cd42553273ac201b4c6fd68a8a67f5ea84f4d269d77080c68e7a33cabedc0dee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u512-b09-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:e574097d39c5fd00d3771a0f1cce06237f9cc494fa8b0f63d3065b97b80ef001
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.7 MB (99724470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f1e59f1c88fe1695aa0f3327d4b0cdbfbbf1ba0bdcfbeac812b2cb5d1af95c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 13 Nov 2026 21:46:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:46:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:46:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:46:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:3cfd5e1005a32b7225818bfd0eb2156a15f6be2100d285589a641ff98bd55281`  
		Last Modified: Thu, 12 Nov 2026 18:03:34 GMT  
		Size: 35.0 MB (34989854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d58ee522d12bbf0e6e8772ba66213fb75b058cc1c3de3d0b3744c10def9a6a6`  
		Last Modified: Fri, 13 Nov 2026 21:46:36 GMT  
		Size: 22.4 MB (22383532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e19f43a7b28fb5c099e9fc5127e466d8dc73c363ad6c998d2f2e86f4ee82646`  
		Last Modified: Fri, 13 Nov 2026 21:46:37 GMT  
		Size: 42.3 MB (42348485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21880537676e5454292abd86d046467a9e834cf2fdee064f52a71147728a1c1d`  
		Last Modified: Fri, 13 Nov 2026 21:46:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05928e4b4b408a19d812a6f588bf34157da1c8989c2b2aabd3cabbfb164f8d4c`  
		Last Modified: Fri, 13 Nov 2026 21:46:34 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4c078368a2c02239c80f8f6352ec39b25df3a5d9ec5088e5a19d6cc210443283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2999349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c70ab3e61c070cc822175e57cdd3bd1a4a30fbc48428365a3ac0e755cfb50a`

```dockerfile
```

-	Layers:
	-	`sha256:d0036f33b3435f4139e75b22f68192d40bbca77561148d97d2989c6b3274dc93`  
		Last Modified: Fri, 13 Nov 2026 21:46:35 GMT  
		Size: 3.0 MB (2979838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15dd2a45c1df7936c497432ef04f46387cad62de220a6a4124d06a9e36b49ead`  
		Last Modified: Fri, 13 Nov 2026 21:46:35 GMT  
		Size: 19.5 KB (19511 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u512-b09-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:3b7ee99bdea37946e3bd521bede71e80e5743c601885022c63d3648da1249e4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96994230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e5ada23e646498fe59d0e44a23843c1701f827d329b987a1e08ae17b17d20e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 13 Nov 2026 21:41:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:41:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:41:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:41:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:f398f0d08fd810d3ceec8b2f660584838eba13fc6e31870e293e21ab1d8feec8`  
		Last Modified: Fri, 13 Nov 2026 21:41:54 GMT  
		Size: 41.3 MB (41309160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c81cecc10d7053dae005de53a9eb9c4b7ee189cbcbf374ba3bec5e42a22c6e`  
		Last Modified: Fri, 13 Nov 2026 21:41:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c6f1d9caea0ad048377a54fe96aa99e0145e790bd5ec8625d13611c1221734`  
		Last Modified: Fri, 13 Nov 2026 21:41:52 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8dc5363376ff7f8d9b6dee503e93f2b106d99bc2e0cfca337387550eedd30c2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2999558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae990f62f7bec5d44749d685b0ba5c623f4d34dfd9424051e210224364f7cf8e`

```dockerfile
```

-	Layers:
	-	`sha256:24bb291b7b2ca2abc23a082423825548272dc027fedbb9a2aee2134f17447d46`  
		Last Modified: Fri, 13 Nov 2026 21:41:52 GMT  
		Size: 3.0 MB (2979944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31b61c7bca188a0564205b56253eb8459b651dfddd19058034eb9c3a62924901`  
		Last Modified: Fri, 13 Nov 2026 21:41:52 GMT  
		Size: 19.6 KB (19614 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u512-b09-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:130e5145c9ccfe8c883b8d55fb00ecaf01b64ac3879ded43d80353767120b8f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120621211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc411fc1181d31ad5aecd8d08babf561dbd80972065025b4a2df4865870aff7e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 13 Nov 2026 21:42:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:42:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:42:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:42:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:e1d6db38aad064e70d28813720c1cd4b058bcdc3c0a0ddc72b7fda2e0db57df1`  
		Last Modified: Fri, 13 Nov 2026 21:42:46 GMT  
		Size: 41.8 MB (41760384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2158fedd72dc40203e737e82d05f538968e714ef27400f2deb0dcdcfdd49ec`  
		Last Modified: Fri, 13 Nov 2026 21:42:44 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486f72ca72b7bc1c47d7ea2a1b11ae6cea77eaaf083ef56864c1b90cce1920a1`  
		Last Modified: Fri, 13 Nov 2026 21:42:45 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7f062d7cae0c5e5c24c629def70bf98138ff8d9a3f57ffb0310be73fc24b54d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3732095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a591ef334df8691a48e3dae3911401d92f20c8276563a0b79b1d09026133275c`

```dockerfile
```

-	Layers:
	-	`sha256:51ea3bf49cb0408d0d3a278173ae6f9692b9517d7eb8245d85756df94d88aece`  
		Last Modified: Fri, 13 Nov 2026 21:42:45 GMT  
		Size: 3.7 MB (3712554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a014e41b80a7b1d8957f3c4ebc3350a647174c2fda4b644d01500d07e37f2551`  
		Last Modified: Fri, 13 Nov 2026 21:42:45 GMT  
		Size: 19.5 KB (19541 bytes)  
		MIME: application/vnd.in-toto+json
