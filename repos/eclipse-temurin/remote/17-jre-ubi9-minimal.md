## `eclipse-temurin:17-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:2db9b4161699d2f926eb530b720a72e409d7467c535321ddcf5a758e7f3a95cd
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

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:15540e8deb05e1fcfa68590dedb80e0d8f58248bd69bae6267df9bf62c13865b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115808454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8253a498df17eed24eaa8b7bc9b8fb01fcb092ffb5743b3d7ebdad20fbdfd24e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:54:23 GMT
ENV container oci
# Thu, 29 Oct 2026 05:54:23 GMT
COPY dir:cb36e4a04f700577f4d44e5ef8e97fee2e20c96c2328537ddf72d477ad63850e in /      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:54:24 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:53:50Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:53:50Z" "architecture"="x86_64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:53:50Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:56:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:56:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:56:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:56:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:56:32 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Thu, 29 Oct 2026 18:57:03 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 18:57:03 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:57:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:57:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2164d2820af90f29766403e395ab877c03c4ae5dd020d8a1180c2bdb12e89bf2`  
		Last Modified: Thu, 29 Oct 2026 06:37:49 GMT  
		Size: 40.7 MB (40656045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a666c02bfcac040d6663f904e2288f5969aaa41b13b145eb76cb50ed1edf1e`  
		Last Modified: Thu, 29 Oct 2026 18:56:51 GMT  
		Size: 27.6 MB (27632400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391acea3b82d4321efdaa03fe99f55f9b9f049ef19261450da218a20d44a2915`  
		Last Modified: Thu, 29 Oct 2026 18:57:16 GMT  
		Size: 47.5 MB (47517410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:188b391d463a93760a19c3ad86d5989e90cd4a09ece0f5455f9912f7336c9a7f`  
		Last Modified: Thu, 29 Oct 2026 18:57:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29d608806539ce0d8905ce1a52c7f4dc55f9e0f09b3911976ecaa7b9d79053f`  
		Last Modified: Thu, 29 Oct 2026 18:57:15 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fadda52f96aecde1ab18305c41629237533697dba3d6cc9046ffdf01b8a46dc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2413004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10bdad41b08cac7b4ad83e9a5ab7830ea860e4d4d564d5a8d2b3daaefa382c4`

```dockerfile
```

-	Layers:
	-	`sha256:72c10bbef8213f92f0f68b4cc04e2eb5f0c905f0bafa60236b5cb8acac346728`  
		Last Modified: Thu, 29 Oct 2026 18:57:15 GMT  
		Size: 2.4 MB (2392770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:816843cff5b876aa7fea365272f02b4d0a4f7206b7eedf404a801d0924f88268`  
		Last Modified: Thu, 29 Oct 2026 18:57:14 GMT  
		Size: 20.2 KB (20234 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:479a06b5c4b446ea0101c060d87ae513dd550ab5e3ca7ac00b41e78adde55fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.8 MB (113793712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a2334e2771c33388c7d8d35b7d865db1bbcfaf0e5c8f20a09e583bbd760e495`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:55:50 GMT
ENV container oci
# Thu, 29 Oct 2026 05:55:51 GMT
COPY dir:c2f7b4c82de3b29a784fee39f42a89d24dcfb89cdf321a56be39c3db78376c0a in /      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:55:52 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:55:53 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:55:19Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:55:19Z" "architecture"="aarch64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:55:19Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:56:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:56:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:56:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:56:12 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:56:12 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Thu, 29 Oct 2026 18:56:16 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 18:56:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:56:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:56:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d1fd8731fe293042fa0b8c35e7a013605e676c89fdf9067f0f919ee6053921e5`  
		Last Modified: Thu, 29 Oct 2026 06:37:51 GMT  
		Size: 38.7 MB (38719163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511f00ea51c9b0b9f93fd62df9136aea95c96cd93c7c9fb91a5215a0552e8692`  
		Last Modified: Thu, 29 Oct 2026 18:56:29 GMT  
		Size: 28.1 MB (28069202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7874aaedf9988f6b92c0c96f5e0cfded028c2e848257cfbc6dbaa548317d9e2`  
		Last Modified: Thu, 29 Oct 2026 18:56:30 GMT  
		Size: 47.0 MB (47002751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77139d280999c80b6c90ba0d6a5792b5ba4f2132e31b63ec7dbb39820e5bc73`  
		Last Modified: Thu, 29 Oct 2026 18:56:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd657275e4379c5565d526310d5ff741c5dfd0fcbbc330fd3e95d7c2fc6197b`  
		Last Modified: Thu, 29 Oct 2026 18:56:28 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:34d33ef9bd49f383cd988f046fb410fb90e07e4aea1d1950503fc5925eb9411a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2410684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:593d93b57608822844580868ba404a4dbef5b67061e2d994e777d7c58234a1b3`

```dockerfile
```

-	Layers:
	-	`sha256:35c13ef1c06b9feb819692a4d5f052ed4276a0dfaea1ac3add9830c5e3af2040`  
		Last Modified: Thu, 29 Oct 2026 18:56:28 GMT  
		Size: 2.4 MB (2390346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e91481d970674adddb226ef3d9a2c0d39072c601c6f8824cc496a84214b4576e`  
		Last Modified: Thu, 29 Oct 2026 18:56:28 GMT  
		Size: 20.3 KB (20338 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:77d0ed3878e62646297f525df066a681b574f6e2d89653c80e70ea8913f58070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.6 MB (122576890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb9ef8355b8139896645b351b35332372908a32a78b0e146a8d2cabdbf0f5de`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:58:25 GMT
ENV container oci
# Thu, 29 Oct 2026 05:58:26 GMT
COPY dir:0026950a9b8b7c1c27d592a235541afe594d9de67eefba2fbb763cdbf2d5f8d7 in /      
# Thu, 29 Oct 2026 05:58:27 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:58:27 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:58:27 GMT
COPY dir:34a5453c79547edb954a2ea82e6026030ab59ad39fdb79e99ec07f7d651d754f in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:58:27 GMT
COPY dir:34a5453c79547edb954a2ea82e6026030ab59ad39fdb79e99ec07f7d651d754f in /root/buildinfo/      
# Thu, 29 Oct 2026 05:58:28 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:57:58Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:57:58Z" "architecture"="ppc64le" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:57:58Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:54:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:54:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:54:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:54:41 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:54:41 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Thu, 29 Oct 2026 18:56:49 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 18:56:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:56:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:56:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:de78ad82fc5d05f77be9c1b61185ba38225ae24b7df59ad9836c14d79e190d33`  
		Last Modified: Thu, 29 Oct 2026 12:14:34 GMT  
		Size: 45.1 MB (45074730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31689038f0fb703560ee2eaa847681a4060eda3eedc5b286c043a5c089cf824d`  
		Last Modified: Thu, 29 Oct 2026 18:55:14 GMT  
		Size: 30.1 MB (30057324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925c15cb5a609bc77ef7fda3a48122ee784dc50811fd9e6ad4e341c4cc9e3f52`  
		Last Modified: Thu, 29 Oct 2026 18:57:19 GMT  
		Size: 47.4 MB (47442237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f2865ff5cfc99c04ce2919609b24106a4e09764854936731a903a9acda4f0d`  
		Last Modified: Thu, 29 Oct 2026 18:57:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b3af4dfaa7cae3a8c666f3ea5a73f0d1f6e355ed9291c022de4712fff3c15c`  
		Last Modified: Thu, 29 Oct 2026 18:57:17 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:24ecd66404f91ed18dd72a6f9b94f34b655839c120e788bc5a896bf8917e5972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2411295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff2c132070518e20c36955afc7b2c0bda7e7aab363064c804b73b212a616958`

```dockerfile
```

-	Layers:
	-	`sha256:fc5e369ebc33ccdd7aeff7f17f090f88b9e5644c6e9dbb513981941cb59653ad`  
		Last Modified: Thu, 29 Oct 2026 18:57:18 GMT  
		Size: 2.4 MB (2391031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eec88ce94a0d73903d8350a5dce58cbcdba2c8f40cfe35703a66b1fb4c0397b5`  
		Last Modified: Thu, 29 Oct 2026 18:57:17 GMT  
		Size: 20.3 KB (20264 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:f4b7e4c36d956c1ecb288b070120675f018eb1b63b2ef4c642e3e86d8c45de59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110899279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ebfba849a516cf9e7212a4fc5199e09e56273a0f86f9d5e077b0666ce1e5d4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 06:07:48 GMT
ENV container oci
# Thu, 29 Oct 2026 06:07:49 GMT
COPY dir:fbe70df2419d9d545aec8be7bad9997e5a9470d232d17e4723645c000c9d18cc in /      
# Thu, 29 Oct 2026 06:07:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 06:07:49 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 06:07:49 GMT
COPY dir:588a8b4a64bceafe5ba9c367157b3010af3511599e7ed68fbc111003233f4907 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 06:07:50 GMT
COPY dir:588a8b4a64bceafe5ba9c367157b3010af3511599e7ed68fbc111003233f4907 in /root/buildinfo/      
# Thu, 29 Oct 2026 06:07:50 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T06:06:55Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T06:06:55Z" "architecture"="s390x" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T06:06:55Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:54:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:54:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:54:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:54:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:54:43 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Thu, 29 Oct 2026 18:54:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 18:54:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:54:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:54:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c2d671d5a5027eb53117b93c8cac23d41361feef032e1ced7dbb740fe4e89807`  
		Last Modified: Thu, 29 Oct 2026 06:54:57 GMT  
		Size: 38.7 MB (38723239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07c3f54380c619c1d13565712716737004d636e02300100758ad5365a35b233`  
		Last Modified: Thu, 29 Oct 2026 18:55:18 GMT  
		Size: 27.7 MB (27667534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a0236a6426dd6c4c7367507fa9036767d78ed8cea11979a2e410ddd407961d`  
		Last Modified: Thu, 29 Oct 2026 18:55:19 GMT  
		Size: 44.5 MB (44505908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9bd414286487fd6e8af12f8e1e9d4467ce3fd5bbd8b38d30715d5b0e988277`  
		Last Modified: Thu, 29 Oct 2026 18:55:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bdce063c162c454a5bd9eec25de0cc8851b2645d25563f5e793665db58d22b3`  
		Last Modified: Thu, 29 Oct 2026 18:55:17 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3edf49d3a7f05e4e80a1e00b1dcc55a146ac99f54c321c619ed4bc34e6bc9717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac9166e2d45e2e6732e8b39617f4058b7a82b149bedd61850382c02a0129f84`

```dockerfile
```

-	Layers:
	-	`sha256:d6281f6ad37efa197def1fcd4dc2cc6ff3ceb8adc31008d9127953edd34ed88c`  
		Last Modified: Thu, 29 Oct 2026 18:55:16 GMT  
		Size: 2.4 MB (2382780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa5eae128cc5ade06d84c26f780bbc35f8aefbc23342f71e2a4efb062e1c4278`  
		Last Modified: Thu, 29 Oct 2026 18:55:15 GMT  
		Size: 20.2 KB (20234 bytes)  
		MIME: application/vnd.in-toto+json
