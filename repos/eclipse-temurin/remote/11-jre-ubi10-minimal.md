## `eclipse-temurin:11-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:53cbd3a376df07dcb2dc2b8e0150ffac088bdf05df99eb1960ca179fc0b26adf
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

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:28a60add48615345b441390ae5a6f8dbed4249f9d5ccab9aa6b7a87c1a1ea747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117147244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc380bf8517790bd3444536d9c04e211feac9bfdc6b5ae5d32c4cadc5eedbd3a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:02:36 GMT
ENV container oci
# Mon, 12 Oct 2026 06:02:37 GMT
COPY dir:662455959852c430acd151a5481507682dd939cb3325ebea7aac09cc24e390f9 in /      
# Mon, 12 Oct 2026 06:02:37 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:02:37 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:02:37 GMT
COPY dir:016729f945913aceb7571e77a6d9ea831075e4386b1a556c4ed3e50ecfb271e9 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:02:37 GMT
COPY dir:016729f945913aceb7571e77a6d9ea831075e4386b1a556c4ed3e50ecfb271e9 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:02:38 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:02:13Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:02:13Z" "architecture"="x86_64" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:02:13Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 00:34:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:34:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:34:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:34:40 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 13 Oct 2026 00:34:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:34:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:34:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:34:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a1611a4fd41ee882f5745fd873c8693214050b6032a4e61339549ed17953e7d4`  
		Last Modified: Mon, 12 Oct 2026 06:46:04 GMT  
		Size: 34.9 MB (34932576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd95e46ad86e222691d37fe7e44fe3d714b7aa224dc411d937b2e4caa4dae96`  
		Last Modified: Tue, 13 Oct 2026 00:34:57 GMT  
		Size: 37.9 MB (37875054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f74c0fd3043e67aeb7d00fed0b3bf8aa718b119562656ffd2ae1a5aaabe2cae`  
		Last Modified: Tue, 13 Oct 2026 00:34:58 GMT  
		Size: 44.3 MB (44337015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52965644ec2409a1f62ee8341ffdc4861076331a450b160558911b0e13e56f2`  
		Last Modified: Tue, 13 Oct 2026 00:34:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21f632f1bb3b7fd8968145a59858463ab70ca886a2914560acc1b0c9d13f4e5`  
		Last Modified: Tue, 13 Oct 2026 00:34:54 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:96d5738a7cb97cb73d0f0e16c0bd9afc467a31bb749f4fa93d4e99f1085befca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b5bdbae86f91c05e57bc2be9fbe65522e655dd32296d57b2c5c85dc8c95488e`

```dockerfile
```

-	Layers:
	-	`sha256:4e14fef19ed9a36e3ac5e23322b3b5fcba99cd7a3e7f62ae673867f06b5bbeff`  
		Last Modified: Tue, 13 Oct 2026 00:34:56 GMT  
		Size: 3.7 MB (3719913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a945b2405832cec4da6d312584e333cb7b0ed2a698328f75b4c8c88d15ae90b`  
		Last Modified: Tue, 13 Oct 2026 00:34:55 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:16cf9a42079e549c46ab922acd4245810ea6f7e51915c3f5dd5001aa892fe54a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113622850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499cca761133acf567e542382cab403393b35f4edd8a9ab8a00824a24a4f6dff`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 06:05:54 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:05:55 GMT
ENV container oci
# Mon, 12 Oct 2026 06:05:56 GMT
COPY dir:9a18f15373f3f6870de0ed60f1e7a72b1623f7ec9ce1a8aed46a7e94ccc7a645 in /      
# Mon, 12 Oct 2026 06:05:57 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:05:57 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:05:57 GMT
COPY dir:a0efbfbbb701c1098b615c13945a40436016435d065496628534f0f16c07f828 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:05:57 GMT
COPY dir:a0efbfbbb701c1098b615c13945a40436016435d065496628534f0f16c07f828 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:05:58 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:05:27Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:05:27Z" "architecture"="aarch64" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:05:27Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 00:32:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:32:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:32:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:32:54 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:32:54 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 13 Oct 2026 00:32:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:32:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:32:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:32:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6bb0cea67a57d2a977aceca249e6de2824aa79518f87729063f5b1d476030b0f`  
		Last Modified: Mon, 12 Oct 2026 06:46:01 GMT  
		Size: 33.1 MB (33147526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd77ce96b96a2bd2e55c5312e4e19d49a7badc20dab3edb79a50dae57a4e9d8`  
		Last Modified: Tue, 13 Oct 2026 00:33:12 GMT  
		Size: 37.8 MB (37823006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a19fbaa89799858dfdb4e2b42b3003918018fa211006596e0cd7f6dda25c159`  
		Last Modified: Tue, 13 Oct 2026 00:33:12 GMT  
		Size: 42.6 MB (42649721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b251d5dcd35d207303e6403d40a774ba26149a728a6a2372ee00e0f9598781`  
		Last Modified: Tue, 13 Oct 2026 00:33:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e36ee19fd6d52e743c667e371079093b659573a0761855089a3b7afc862a8635`  
		Last Modified: Tue, 13 Oct 2026 00:33:10 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2459e7549311d6f6ffbf39cf5a45d3d39be856bb75c2c0c2fb017476914e54f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c69f43c4d0b350876ee378289ecdcd84da0c5f915772c049ebe0b67b4a2a7ff`

```dockerfile
```

-	Layers:
	-	`sha256:0557cd3a3ffa237281e8fe0c6ad8c6a6c176aeb82089ed1b86b8f3181475f94a`  
		Last Modified: Tue, 13 Oct 2026 00:33:11 GMT  
		Size: 3.7 MB (3719945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e7eae44d6a45907d65cc403f72b3711fecdaa737fa3b14897c70391fce71e92`  
		Last Modified: Tue, 13 Oct 2026 00:33:10 GMT  
		Size: 20.5 KB (20505 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:6c1790b121a97065d67f8d5e09eb9bcf47c5997728154a9feb71320cf890ee3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118620766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fadb166e8db352769b941a3679fbbe65b57a6011edd4328c0074213ea68969`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 06:07:16 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:07:16 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:07:17 GMT
ENV container oci
# Mon, 12 Oct 2026 06:07:18 GMT
COPY dir:6692fc3e66bbf0913b2d152014d3b0e34bbd923bc55d13e178d365aac806e220 in /      
# Mon, 12 Oct 2026 06:07:18 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:07:18 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:07:18 GMT
COPY dir:39461ef2f88a895d3655798d126e96b7b231101a07bff7389995c2e8e741ee23 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:07:19 GMT
COPY dir:39461ef2f88a895d3655798d126e96b7b231101a07bff7389995c2e8e741ee23 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:07:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:06:54Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:06:54Z" "architecture"="ppc64le" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:06:54Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 02:14:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 02:14:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 02:14:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 02:14:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 02:14:02 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 13 Oct 2026 02:17:29 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 02:17:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 02:17:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 02:17:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a05cfbffa86171447875ba9950514b237a53b4f2fba7ac663609dcb504587364`  
		Last Modified: Mon, 12 Oct 2026 11:37:08 GMT  
		Size: 39.1 MB (39115195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6af5f3f2e6337c522ced566c86f9580c3d36ea3228b09072ff572272d3010e`  
		Last Modified: Tue, 13 Oct 2026 02:14:54 GMT  
		Size: 39.7 MB (39654589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b4bf77d073bf9d8d8a5d4dd7da5fc006012334aea5f89a2616dc5fe3a8a869`  
		Last Modified: Tue, 13 Oct 2026 02:18:02 GMT  
		Size: 39.8 MB (39848385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0810047e8c28c58ef59a207b8ba221243fd6a99d42476d7c5c3e387916fd33`  
		Last Modified: Tue, 13 Oct 2026 02:17:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff73d9834eee118657f5236eec67188bd728b34f29dc8fb42566474bec1c6fca`  
		Last Modified: Tue, 13 Oct 2026 02:17:58 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7fde2027caaa60ee4796a67abc7b9e09e497e83203a0267109c639ba47effdf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3729095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2f33730689c30488156c46aea378e4ec3ec2baf2864717aeba177206b9db4c`

```dockerfile
```

-	Layers:
	-	`sha256:082448e6d5d9f337ed656c5259c1ddff42dc3c3f1a6fca34b152aa5589e56673`  
		Last Modified: Tue, 13 Oct 2026 02:18:01 GMT  
		Size: 3.7 MB (3708664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6246434b68036572359cccb92a48f82ad0cf74a866217f35359d220a3bf7ff8c`  
		Last Modified: Tue, 13 Oct 2026 02:18:01 GMT  
		Size: 20.4 KB (20431 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:b665e4d42686ebdef489351c3531d75935aa97fb01c8d4191b4e0bfca57efc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111398059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a5e340f9027a42d9ec95609a52cec602315a47f5aa4dc500258ff140c1df8c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 06:17:06 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:17:06 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:17:06 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:17:07 GMT
ENV container oci
# Mon, 12 Oct 2026 06:17:08 GMT
COPY dir:893be50f2bde617bab5db42627335bd90926b299a738ab8303d64db7a35f19f4 in /      
# Mon, 12 Oct 2026 06:17:08 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:17:08 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:17:09 GMT
COPY dir:ee139889734b4c4aac9a2aa2c8fbe722845bb8a72a1576a27597931723d46e30 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:17:09 GMT
COPY dir:ee139889734b4c4aac9a2aa2c8fbe722845bb8a72a1576a27597931723d46e30 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:17:09 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:15:23Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:15:23Z" "architecture"="s390x" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:15:23Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 00:31:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:31:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:31:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:31:51 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:31:51 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 13 Oct 2026 00:31:54 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:31:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:31:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:31:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8a2084faf73dd02eee4a91504c8641d976b2ea7a34d44da41565f5c24a375c51`  
		Last Modified: Mon, 12 Oct 2026 11:37:18 GMT  
		Size: 34.8 MB (34821002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c30088a0b3db88d531b537a431b79eb168520c945386f329ef71eea9bba822`  
		Last Modified: Tue, 13 Oct 2026 00:32:13 GMT  
		Size: 38.3 MB (38262096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc54b2a071f35901bf8276cc8526c635af77d62ce24efee864b913d7794364b5`  
		Last Modified: Tue, 13 Oct 2026 00:32:13 GMT  
		Size: 38.3 MB (38312364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1949968ff3abab34af76445365adca4c09aec56af5c488409531f76fb9f69f00`  
		Last Modified: Tue, 13 Oct 2026 00:32:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9291e681298478f44e5df4f8a279e88ca8f1d4d8c4b94c318a09b6f5c30557ba`  
		Last Modified: Tue, 13 Oct 2026 00:32:13 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ef8250908c8cb2af4efb796163da38d55a963a1edb4a8823db09815c40a26907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3730311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06127a247645c2eeade8252e1019c79370ae5d28d414fa573794491c11193e12`

```dockerfile
```

-	Layers:
	-	`sha256:c1eb063194bd4a3c5c8a50f56428468b7f4b7cea9e2b8197ecb435054448ee54`  
		Last Modified: Tue, 13 Oct 2026 00:32:12 GMT  
		Size: 3.7 MB (3709909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9f154e2bc7895c6720205db9081837aeba9cdb19d51f9b2fd861fa3f9c08623`  
		Last Modified: Tue, 13 Oct 2026 00:32:12 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json
