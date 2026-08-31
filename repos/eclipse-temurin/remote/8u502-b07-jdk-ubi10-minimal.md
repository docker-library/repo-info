## `eclipse-temurin:8u502-b07-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:ff1622e7033804787b4107f5f058158d60f8c2448bc66bfc721fd7e00035bd08
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u502-b07-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:9dcdb1420521dcdecd7d603f8ff7517457a9c8e188b4191909820863db17d535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127887342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ec0bf656cf6030e2625089f13b3ca38b5d17aa3db2129e49f9238c0750067a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Mon, 31 Aug 2026 19:15:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:15:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:15:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:15:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:15:40 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Mon, 31 Aug 2026 19:15:44 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 31 Aug 2026 19:15:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:15:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:15:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ac2980d72cc6bdfe4cb4a8e0a91eeef134597c45af1e0dc031a54fd0560b2d74`  
		Last Modified: Mon, 31 Aug 2026 02:12:26 GMT  
		Size: 34.9 MB (34889446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef51ea9404f22511e60fa110f6e4b5154314db90df8e35d385da0f25314cb0b`  
		Last Modified: Mon, 31 Aug 2026 19:15:59 GMT  
		Size: 37.8 MB (37830336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372652c8a0763c90962883f331165c696dc0700e9a1e3bb4a60ea9553c90634e`  
		Last Modified: Mon, 31 Aug 2026 19:15:59 GMT  
		Size: 55.2 MB (55164942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8366f99ae75d353fa30c7915740bc5939c55599a3b1c749a0c640961dc8122`  
		Last Modified: Mon, 31 Aug 2026 19:15:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:150472cc30d50f8e6d76bb92d110fa5c544045f17d7f9a09683b4908d7198526`  
		Last Modified: Mon, 31 Aug 2026 19:15:57 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b83a2f5965673f0a3f2eaef41c5337e08ffdf8e2e42f0366d5143e2b14c3e7af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3932885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca2c6b6539c8f1f083cf114c6e335ea806aaa27a84f1070c8fbbc3e91d1de94e`

```dockerfile
```

-	Layers:
	-	`sha256:9ddc950cf432e91f375a83d260ce545d253987d60b620d80c39f7d3d2a4c80e9`  
		Last Modified: Mon, 31 Aug 2026 19:15:56 GMT  
		Size: 3.9 MB (3912846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a0edefa7ecb4624221b6136b1849761cff8618f965ddebc1be0e1b0f3b3b773`  
		Last Modified: Mon, 31 Aug 2026 19:15:56 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u502-b07-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c916c07010b427258d696b603e2791b2af254e4711315b5ec8a3be2e89ee23bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.1 MB (125128646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799e2d541b04ddd743e1d39ba7620edaf750b2a1a49adf2995343b3703af8aa1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Mon, 31 Aug 2026 19:33:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:33:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:33:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:33:24 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Mon, 31 Aug 2026 19:33:29 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 31 Aug 2026 19:33:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:33:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:33:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:759ceaf0b34529e4230d22d353f231af30923d9ec82e0d2da5c0bebd4c37e463`  
		Last Modified: Mon, 31 Aug 2026 02:11:43 GMT  
		Size: 33.1 MB (33102863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b929374b1041e2eafe6689c9801739505de670732e8e773ecebf4e81b5ab0c32`  
		Last Modified: Mon, 31 Aug 2026 19:33:43 GMT  
		Size: 37.8 MB (37759826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67085694d2e239e93933dba9701fb1b4afc118f8019a749095232cd9da1f1d`  
		Last Modified: Mon, 31 Aug 2026 19:33:44 GMT  
		Size: 54.3 MB (54263338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869935d4a516e96989feb332cfb1f3e28b62154bf65ffabccccac12f3a49afbe`  
		Last Modified: Mon, 31 Aug 2026 19:33:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a47efd977e8253c7b30009480568d783cc46e68a6792d189997074f9bd71e0`  
		Last Modified: Mon, 31 Aug 2026 19:33:42 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5ebcc552c60addc3bff5f0d3ca86b04581446ec688122f586b72a85ac27f822f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3933127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029f55c245a0e2eb29656f714d4d2739f0b8ede15c85006034b55faeacd13c33`

```dockerfile
```

-	Layers:
	-	`sha256:843adb537108a48fefe3ebaaf0ba3e4c9c5553c1840c577927f11ffc220f4e10`  
		Last Modified: Mon, 31 Aug 2026 19:33:42 GMT  
		Size: 3.9 MB (3912972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b4b7aa1f13e38cc6db9e8c484a89cbcd2519435f1a0599620132b53a45cee56`  
		Last Modified: Mon, 31 Aug 2026 19:33:42 GMT  
		Size: 20.2 KB (20155 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u502-b07-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:5ca5107abc937daa638714616bb455aff563079af71baa1484d623f6c4454d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131325867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846ea08b3058879426e5955627435bfc090a8feea00c12458ba834762155ebbc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk8u502-b07
# Mon, 31 Aug 2026 19:56:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 31 Aug 2026 19:56:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:56:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:56:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:5b691928088048cd7aed53291fe6f393e8a49234c9721ff078d124172d9a5711`  
		Last Modified: Mon, 31 Aug 2026 19:56:41 GMT  
		Size: 52.7 MB (52671223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec45d7d157b3010ebfb09db9d9c59d2a035b08daf7566a26a7ca60e5ab875359`  
		Last Modified: Mon, 31 Aug 2026 19:56:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f652e99b79c1992431c9915989f7a790038cd5ce66c3bc3b5e029914250620bb`  
		Last Modified: Mon, 31 Aug 2026 19:56:39 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c0527da96fd1a8beb717b9c52eac6268ae1cf978cf47cfb7307854270970be2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3920340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdbea556e87bf6391142fa86b2e79fe295a47b3bf373988b11a2867b6d9a7536`

```dockerfile
```

-	Layers:
	-	`sha256:18ae999f91f984b0d6954f50a38209be16ea3e9e3a8eae33aaab0eda5ff42069`  
		Last Modified: Mon, 31 Aug 2026 19:56:38 GMT  
		Size: 3.9 MB (3900265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cc7bb5ebb0456838e2bebbff265de64b9bf387c0e6d10eaf1116260b00239f9`  
		Last Modified: Mon, 31 Aug 2026 19:56:38 GMT  
		Size: 20.1 KB (20075 bytes)  
		MIME: application/vnd.in-toto+json
