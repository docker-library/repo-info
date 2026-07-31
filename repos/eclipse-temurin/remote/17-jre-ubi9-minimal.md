## `eclipse-temurin:17-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:1e2d11ba571d448bb4c50509a0eafc7acc32f8b4a1c50a6246595b2ee90d44bd
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
$ docker pull eclipse-temurin@sha256:e22cb7dd9c5e8723c0960299b4006240be4af7f7095c65a639aee5f81b10a422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115929412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1d8633ed705df6af3cd5102b0942ee39998b9d91134333d71f373ccd53084a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:33:59 GMT
ENV container oci
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:2712bf6adcbfed5a600b822e93b2431cf1da8013a362d751954f4417ddc9cb0f in /      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:33:59 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /root/buildinfo/      
# Wed, 29 Jul 2026 15:34:00 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:33:16Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:33:16Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:33:16Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:13:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 00:13:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:13:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 00:13:34 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:13:34 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Fri, 31 Jul 2026 00:13:37 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 31 Jul 2026 00:13:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 00:13:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:13:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:fa84e92aded1f99bf9799f6272da6aa325a0ec5833ce54b6067c83c51d373be1`  
		Last Modified: Wed, 29 Jul 2026 16:07:04 GMT  
		Size: 40.7 MB (40700889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7224edfe4b8dfd839cf9f8e95035085162c0a4b1ed38a38eecb9eb3d75e07d`  
		Last Modified: Fri, 31 Jul 2026 00:13:51 GMT  
		Size: 27.7 MB (27662610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f944443a2104005a84dea6fcd28dcdfcada68da5cfe2066d43f1e55e517780`  
		Last Modified: Fri, 31 Jul 2026 00:13:51 GMT  
		Size: 47.6 MB (47563492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b0990ec31deadd8957fca045041ebd5425d4d1ae1c7afca6cb2fe6cf2a34f0`  
		Last Modified: Fri, 31 Jul 2026 00:13:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7657cd30538aef34cd9b15fd26081c177d44b863029f83f75ee9195ba37418`  
		Last Modified: Fri, 31 Jul 2026 00:13:50 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:034ed7c8560f710e61d64f740416d4dcf30b5d0e128854276bfc1bba9cb01fc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2430881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa4be26679a68a4b38b9c05b61b4697bf4ee60c6bcea4bafd42934d19b10324`

```dockerfile
```

-	Layers:
	-	`sha256:a72799eedc5d0c113c7f90938d041452af5dbb13f5ae1b0dbe16e9d45012d59b`  
		Last Modified: Fri, 31 Jul 2026 00:13:50 GMT  
		Size: 2.4 MB (2410671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a014bead0752a42ddcdc0776a666caf2d9715a6509470cec9f51f24177139432`  
		Last Modified: Fri, 31 Jul 2026 00:13:49 GMT  
		Size: 20.2 KB (20210 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:7108d1623f3b0f28220ddfb7395859e349e7c48f9d93c579d7e0e7274a88acdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113996194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736375c6bc129f77544d1023e3ad7f93bf50cdcf06f8208c56871f61f2f8b848`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:36:13 GMT
ENV container oci
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:e79037c55caea67c80589bc5c498ecc00baf2b82e3344e06bc5ee039b57b79cb in /      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:36:14 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /root/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:35:52Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:35:52Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:35:52Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 00:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:16:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 00:16:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:16:32 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Fri, 31 Jul 2026 00:16:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 31 Jul 2026 00:16:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 00:16:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:16:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f72706ee3c4ed7f3012002662319b160e1be4b1d724cbcbdb1344189ada6e8c6`  
		Last Modified: Wed, 29 Jul 2026 16:05:36 GMT  
		Size: 38.8 MB (38838336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:089dafb504c521bd2ea2db1c3e60e133cb1b4ca48f3ee94f2552f6498a5ee3fb`  
		Last Modified: Fri, 31 Jul 2026 00:16:48 GMT  
		Size: 28.1 MB (28105766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72890ab8e4dcb8d511b14561afd32a125ba19a592a7d9c06f668120bc331a0c4`  
		Last Modified: Fri, 31 Jul 2026 00:16:48 GMT  
		Size: 47.0 MB (47049672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da258f70797a66a65c93033e526ae076f47d23deaee170268bf6a1eac5d4a3b`  
		Last Modified: Fri, 31 Jul 2026 00:16:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2310a624d7109a6602e894fb7c46f0b12d162bc9b50edca4138ef8888a6f4447`  
		Last Modified: Fri, 31 Jul 2026 00:16:47 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b79628d91ebae7a099fc067695adaed79bbfb7cee7e604d6133ea890ada233ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2428560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2754b2fdf96eebb778e21843ca8abc7c310644736a8f02b53c22635dfef669c`

```dockerfile
```

-	Layers:
	-	`sha256:fb1a365a68f35ab0954f14614e1b2936071410fb24724f5995917effdd4de424`  
		Last Modified: Fri, 31 Jul 2026 00:16:47 GMT  
		Size: 2.4 MB (2408247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4622e5d3cb81bf59bfc4dc66a70b72698766a1ecfa3e321b2988b46ad323d96`  
		Last Modified: Fri, 31 Jul 2026 00:16:47 GMT  
		Size: 20.3 KB (20313 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:e198cf4f8dbb4d87e8e02a4751d62709a7e545933176b746134046fe7c7998bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122725983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9ea6b14d1805e796faa3a426215ddd365d59f7ca6ee448cd2389fac5592bd6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:34:54 GMT
ENV container oci
# Wed, 29 Jul 2026 15:34:55 GMT
COPY dir:72906aa1a96f70a665310f1d079fbe82d84716ec812c7bae439b95dd6bac6f29 in /      
# Wed, 29 Jul 2026 15:34:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:34:55 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:34:55 GMT
COPY dir:d12d70246322a80b04a4e60aa38419850eb9372ffb1354a00fdae8790e7f708e in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:34:55 GMT
COPY dir:d12d70246322a80b04a4e60aa38419850eb9372ffb1354a00fdae8790e7f708e in /root/buildinfo/      
# Wed, 29 Jul 2026 15:34:55 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:34:39Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:34:39Z" "architecture"="ppc64le" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:34:39Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 02:11:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 02:11:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 02:11:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 02:11:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 02:11:49 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Fri, 31 Jul 2026 02:16:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 31 Jul 2026 02:16:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 02:16:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 02:16:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c6397d998c8172c0ea4d42c2b6c4c055dfae779c02148eb6efd11c011c291939`  
		Last Modified: Wed, 29 Jul 2026 18:14:17 GMT  
		Size: 45.1 MB (45135152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00976049280ef03405c24ee5c3720aeec072beb1e03678a5f0da492ebfeebd7`  
		Last Modified: Fri, 31 Jul 2026 02:12:26 GMT  
		Size: 30.1 MB (30088785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fe926edc47db3753c3de4b0276e0b46e2214180719332721117c8c29adf012`  
		Last Modified: Fri, 31 Jul 2026 02:16:29 GMT  
		Size: 47.5 MB (47499626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c3de762b183cf8f8602f3114602c6b85830755fa87e0cd7f84290055527d45`  
		Last Modified: Fri, 31 Jul 2026 02:16:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003eca31bf3e1a65a97d624a10cb7ef8b0c5b9f38fe3152a808c38d5de6a7773`  
		Last Modified: Fri, 31 Jul 2026 02:16:28 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ff7f63e99a25ca056ad20d5d284ebb8a6a91f1dcc3f2a5f7b9fc907e93566f1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2429172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc538fa824a22578cc8fccab3468c8786c67b1a5655ae9cc15e2030d9ea971b6`

```dockerfile
```

-	Layers:
	-	`sha256:8e5d116df33010fdbaa1891498ec4f4110e491863afef3a8fd5bd29e6e9e5e29`  
		Last Modified: Fri, 31 Jul 2026 02:16:28 GMT  
		Size: 2.4 MB (2408932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7557c8cbdb056d9e9ecfef276a4ec370e1c58ee4978b2ce6721557c83413d9f4`  
		Last Modified: Fri, 31 Jul 2026 02:16:27 GMT  
		Size: 20.2 KB (20240 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:283c124d1da4103d3537953bf3bb61d969b0e0ab62ff4b77c0e6ceddea2f28b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (110992053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e956841a4dbead36ce788ed4f6c4fd41c0699b2c2cc3bfede7e86b7820da54`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 29 Jul 2026 15:42:29 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:42:29 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:42:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:42:29 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:42:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:42:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:42:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:42:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:42:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:42:29 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:42:29 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:42:29 GMT
ENV container oci
# Wed, 29 Jul 2026 15:42:29 GMT
COPY dir:513c10bdf55329b664d7229a63a626e3cc2f1ca0124d071d8cd79f0d8a57ee75 in /      
# Wed, 29 Jul 2026 15:42:29 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:42:29 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:42:29 GMT
COPY dir:a6cc18df450d14036943eff7ac86573f259f6dd783029fa46efa33b0bd3bb59f in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:42:29 GMT
COPY dir:a6cc18df450d14036943eff7ac86573f259f6dd783029fa46efa33b0bd3bb59f in /root/buildinfo/      
# Wed, 29 Jul 2026 15:42:30 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:41:07Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:41:07Z" "architecture"="s390x" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:41:07Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:37:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 00:37:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:37:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 00:37:19 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:37:19 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Fri, 31 Jul 2026 00:38:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 31 Jul 2026 00:38:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 00:38:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:38:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2cc654e25cad850541a177c280b42f56eabfd2b3718ca34191b03c370ec705c`  
		Last Modified: Wed, 29 Jul 2026 18:14:11 GMT  
		Size: 38.8 MB (38773683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30de2c7745d3da328ba1362d7a7e00cd15afd476b84fd9dcfcb0262944ea176a`  
		Last Modified: Fri, 31 Jul 2026 00:37:50 GMT  
		Size: 27.7 MB (27684967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030badbc2638c3a58ffb875009b67af002ed33bd29b2cc06a819d060cfc22c85`  
		Last Modified: Fri, 31 Jul 2026 00:38:32 GMT  
		Size: 44.5 MB (44530983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1504bd453169f22e0b63a473702ab1fd15e35db2cdcedd486b665f464a6e22ba`  
		Last Modified: Fri, 31 Jul 2026 00:38:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2aac82495fc8b71fc958d9651fc36f1c5794ab3b29a1e66bc42d8a1c635c213`  
		Last Modified: Fri, 31 Jul 2026 00:38:32 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f1a7fdf193fde6f2a20a730a4b0326af6cd70bfcb9aded400572961b4c94b6c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c82aee4aafbbeb345625a69bea9f30e3d15754f83d117df366588a476825225`

```dockerfile
```

-	Layers:
	-	`sha256:b381e223d5df4af26042fb9b723d5d011a7f05f58cc53a095f94d3a6ddbef9a3`  
		Last Modified: Fri, 31 Jul 2026 00:38:32 GMT  
		Size: 2.4 MB (2400681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:492e60c43e100cf11e846b7d5ee153a2e87fd2ce33a9df2a8266d88ba071366a`  
		Last Modified: Fri, 31 Jul 2026 00:38:32 GMT  
		Size: 20.2 KB (20209 bytes)  
		MIME: application/vnd.in-toto+json
