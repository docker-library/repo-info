## `eclipse-temurin:26-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:ef9b9c45862e41dfa274131b3ec1431a1980def97e24f46f5238d40e7f18454a
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

### `eclipse-temurin:26-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:c7f4f223762f2d9e52b4fcf59935a1ca6817332e20ed4c9a74006bb2f00e4792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.2 MB (137175941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6f1dfec15d0a0b057d0bf718d8f47bc47be81fc373b0099381260a470220c3`
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
# Mon, 31 Aug 2026 19:16:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:16:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:16:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:16:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:16:13 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Mon, 31 Aug 2026 19:17:44 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c689572d2ea7aa3e19db5e5bc4ee41e90b557593d15eefcec179a9b8abfff0e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='8698a0734da25b9edc552eb80e9db8e69583afbcecbfda291c9f23bac4062f17';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='5803ccac6551ec18aada9ab58a55d7fa3b82f5e698dfd32f8ed16f5dd4b5255e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='585c4cce5807ce5677289a123680a8648c84c9afac66727a0e3027298d8e32c7';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:17:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:17:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:17:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ac2980d72cc6bdfe4cb4a8e0a91eeef134597c45af1e0dc031a54fd0560b2d74`  
		Last Modified: Mon, 31 Aug 2026 02:12:26 GMT  
		Size: 34.9 MB (34889446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5dae3dcb6cbd3d79b2e6d9187c7471e7014d260b13949e2d27d27a73935c317`  
		Last Modified: Mon, 31 Aug 2026 19:16:38 GMT  
		Size: 37.8 MB (37830251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ae8dc20bd5e9765a7a29154cdd9bf89450982cf86747a33d9fd6d4e3a17c0a`  
		Last Modified: Mon, 31 Aug 2026 19:17:59 GMT  
		Size: 64.5 MB (64453649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e420107e6e5d4fe65653c349bf127ab6b440a40d7abaf86980b4f1799a5e134`  
		Last Modified: Mon, 31 Aug 2026 19:17:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3242f34f74503293b383030e9bfd478357374eba4358df7298215b8a752864a0`  
		Last Modified: Mon, 31 Aug 2026 19:17:57 GMT  
		Size: 2.5 KB (2467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:031417d9fbd19f96c3636cc36feb76b35d7498956e3753a2f57e0f0f29531a33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3734047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad64be12ec09bf7917740da8947d3ccfcda120c76a5ceedf96b4d1a851cacf1`

```dockerfile
```

-	Layers:
	-	`sha256:b99231865dca2cc270bdafa5e4b6da941575ad28a1a14b92de510f3344593b99`  
		Last Modified: Mon, 31 Aug 2026 19:17:57 GMT  
		Size: 3.7 MB (3713694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4a942a2e929796b3f7dca1edebf768b2e0c07010b24215ea9ca4da5750216bc`  
		Last Modified: Mon, 31 Aug 2026 19:17:57 GMT  
		Size: 20.4 KB (20353 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:7ad83d84b678bd0593b39f13cc79268982b63773748b037a705b7a35751f926a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134232459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41aa2f96d6df517bd8928688ea468478252526ea4d87948cd14c55f42f8e0cec`
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
# Mon, 31 Aug 2026 19:33:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:33:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:33:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:33:41 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:33:41 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Mon, 31 Aug 2026 19:34:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c689572d2ea7aa3e19db5e5bc4ee41e90b557593d15eefcec179a9b8abfff0e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='8698a0734da25b9edc552eb80e9db8e69583afbcecbfda291c9f23bac4062f17';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='5803ccac6551ec18aada9ab58a55d7fa3b82f5e698dfd32f8ed16f5dd4b5255e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='585c4cce5807ce5677289a123680a8648c84c9afac66727a0e3027298d8e32c7';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:34:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:34:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:34:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:c43323ed5880f183bdb01d75a7b5e19272ea50b71328513e5ca2d5edadd59a70`  
		Last Modified: Mon, 31 Aug 2026 19:35:16 GMT  
		Size: 63.4 MB (63366908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e738d5cc8ecf9718b351db013e4f9ac6c8f465b288eb79d4ef01ffb6c61b5e6`  
		Last Modified: Mon, 31 Aug 2026 19:35:13 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63e0b8350a55a18d6cc43e3d7e68c060bca60d2abd2a55d18d17adabac8520d`  
		Last Modified: Mon, 31 Aug 2026 19:35:13 GMT  
		Size: 2.5 KB (2467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:051a9ab63282871d353f253df94185bdee204835f9e6fd07c77a3b57eebe3ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3733563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5936ba8aee6fcf017ffd8680a685398f5af0e05c7d21b4d617490a97fd9aa4e7`

```dockerfile
```

-	Layers:
	-	`sha256:bb205a7a9b6986f8a3d5f78cc331c2b0dc01d29ba00ca212e4204a92ff4327a7`  
		Last Modified: Mon, 31 Aug 2026 19:35:14 GMT  
		Size: 3.7 MB (3713105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:342c74af61a2e921e4daab3044263c558eb1c7e976e81f2c4b2ae4d9a8997b90`  
		Last Modified: Mon, 31 Aug 2026 19:35:13 GMT  
		Size: 20.5 KB (20458 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:a74059f87da59fd508dd2b73ef76febfce6aded2058b11d7e4f03e2d9f9ec436
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142174793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5200b06c63ff28b5b661d0e55ede29a548023b47bac36e55059472fbff1e02e8`
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
ENV JAVA_VERSION=jdk-26.0.2+10
# Mon, 31 Aug 2026 20:04:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c689572d2ea7aa3e19db5e5bc4ee41e90b557593d15eefcec179a9b8abfff0e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='8698a0734da25b9edc552eb80e9db8e69583afbcecbfda291c9f23bac4062f17';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='5803ccac6551ec18aada9ab58a55d7fa3b82f5e698dfd32f8ed16f5dd4b5255e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='585c4cce5807ce5677289a123680a8648c84c9afac66727a0e3027298d8e32c7';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 20:04:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 20:04:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:04:25 GMT
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
	-	`sha256:498bc366e8abbc96910962d4de89a482f6f4fd52ca183e591ddf368d1f17411c`  
		Last Modified: Mon, 31 Aug 2026 20:04:54 GMT  
		Size: 63.5 MB (63520170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305cb6dded9e1f87f6869a2f7efae74f76b744870bfa1a264f1d4967c75d0977`  
		Last Modified: Mon, 31 Aug 2026 20:04:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c35b24dfaf01e70108182195747185f6cc32f9db92bb8b97c3e60585846532`  
		Last Modified: Mon, 31 Aug 2026 20:04:52 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:abcad3562a61b6bd8d4815cb40e77e02ec93b587a8d4b60bb31031be58c71786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3722194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e584753ea2fea5b926860ef9f519164e59303bbcd152df838eae54a692020947`

```dockerfile
```

-	Layers:
	-	`sha256:fd0a4e1c41ee5b00d14f5d8c9923fc989e0eb84505180c72fced5a868f0d1786`  
		Last Modified: Mon, 31 Aug 2026 20:04:52 GMT  
		Size: 3.7 MB (3701810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:573bb69983b0ee66900dff724e862d0145e967a48682707424917564fe55055f`  
		Last Modified: Mon, 31 Aug 2026 20:04:52 GMT  
		Size: 20.4 KB (20384 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:809620dc08bf6067b1106dc7d67cacd370bfc0b231dac598161e79a92cc64458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135086715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cb28184f4263d81e1628f3ffddf6865a11c07dd6ea9b810a276ddd2a69a243`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk-26.0.2+10
# Mon, 31 Aug 2026 19:04:45 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c689572d2ea7aa3e19db5e5bc4ee41e90b557593d15eefcec179a9b8abfff0e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='8698a0734da25b9edc552eb80e9db8e69583afbcecbfda291c9f23bac4062f17';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='5803ccac6551ec18aada9ab58a55d7fa3b82f5e698dfd32f8ed16f5dd4b5255e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='585c4cce5807ce5677289a123680a8648c84c9afac66727a0e3027298d8e32c7';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:04:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:04:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:04:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:ee2e673e9e0d84bb9195b9857483de112daafe801890c353d717772871b365fc`  
		Last Modified: Mon, 31 Aug 2026 19:05:09 GMT  
		Size: 62.1 MB (62107443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b791d9c1bbe76daac2c9000b1d9be96a4dceeed84b5f2de50b69017494c3bac`  
		Last Modified: Mon, 31 Aug 2026 19:05:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56fa48f0953aa19b4cc2144b5aaf44503e30c3546a465267f70b3e08bf1c6160`  
		Last Modified: Mon, 31 Aug 2026 19:05:08 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:99d43b83ab114894b3e757a761f2ee02f009734b517b941e2888e7c7ae18903e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3723416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9da4540bd4d5193cdbb807c5610009e74246cc981ee3cab7784994ed86dd580`

```dockerfile
```

-	Layers:
	-	`sha256:e46a4792e0dffe627be7e01835a91ff64cff48c672d62c850456fae67c713e12`  
		Last Modified: Mon, 31 Aug 2026 19:05:08 GMT  
		Size: 3.7 MB (3703063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ae152025290eeb20204f98c041852d8e6c2bbe5c0fb714497ccda7d4e0caf22`  
		Last Modified: Mon, 31 Aug 2026 19:05:08 GMT  
		Size: 20.4 KB (20353 bytes)  
		MIME: application/vnd.in-toto+json
