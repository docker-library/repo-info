## `eclipse-temurin:8u492-b09-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:b6fcedc5b60ef3da72d059e52d7793aac7290f045d31f80238a40b296728f8c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u492-b09-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6bec9dc841d73c243d784eba8ac9d748ace5cf6a1d8b1460289669e34f9c3728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115050002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba0c24f07994826fc922f39efc760d66c436a8952c1474544999137069697c9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:26:51 GMT
ENV container oci
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:b8ce0462b23033a189e5c4dd0f5c6ccb96b3cec90716c47359623a67ff89ff8a in /      
# Tue, 21 Jul 2026 21:26:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:26:52 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:252f351b421304c992996882cb00d6f04fd6ac2c0d6c63f07b755dedc3bc9246 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:252f351b421304c992996882cb00d6f04fd6ac2c0d6c63f07b755dedc3bc9246 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:26:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:26:32Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:26:32Z" "architecture"="x86_64" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:26:32Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:27:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:27:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:27:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:27:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:27:43 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 22 Jul 2026 18:27:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 22 Jul 2026 18:27:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:27:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:27:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:1a70cbb74144ef90a6ddb34ce9ec12c795834baf78bdb1417827dff114fc5859`  
		Last Modified: Wed, 22 Jul 2026 00:25:25 GMT  
		Size: 34.9 MB (34943743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f18bbbdb4e14e4634cce605ce7aee7894b63824c32b55e3071a016442d686d7`  
		Last Modified: Wed, 22 Jul 2026 18:28:00 GMT  
		Size: 37.8 MB (37771436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ac3edd5afc4e792137d0e778fbcede380a2110c54070c5d5b1b8a3821286b8`  
		Last Modified: Wed, 22 Jul 2026 18:28:01 GMT  
		Size: 42.3 MB (42332226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01922045806c914ad0acb35952a254d5b592ba5a4bb1f30e0be0d54c5a3da565`  
		Last Modified: Wed, 22 Jul 2026 18:27:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47321e3e7d2441582d9adf058f4149aa0f55b183464ef7c18ff2720ad2050c7e`  
		Last Modified: Wed, 22 Jul 2026 18:27:59 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7e711868d29bed13b0ef44ee056d7715bdaeddbbd3dea24d747862317bdc2185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d56b97f223fe3afa48c99d3e30d7e03432835c6d77212d92791bf86f133be1`

```dockerfile
```

-	Layers:
	-	`sha256:09c5ef335f94abc309b55e47490eb2533b69ae70add023609eb5c62fa6da22be`  
		Last Modified: Wed, 22 Jul 2026 18:27:59 GMT  
		Size: 3.7 MB (3736779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad76909fbc9fdf5066197231f01ce39cc6ff6d29fdfcef6fa56db556a27d6a8`  
		Last Modified: Wed, 22 Jul 2026 18:27:59 GMT  
		Size: 19.5 KB (19511 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:5c05df86231e71b8e50ee04a0ecf1e1751fe75b40bffd597601e7ef4b36d6045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112071245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d8da6b0efae950f9089bb848955a5adc9957d94fda05875f3712cbdd6339c1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:30:05 GMT
ENV container oci
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:58c4efe09946efbac1eda4e0aca465b8b6cdac53b3c03d17070e9e7933760782 in /      
# Tue, 21 Jul 2026 21:30:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:30:06 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:a9f896a5c62d3423fff2b67473319ede4242afa9801ddb241e77920e7ee4ae16 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:a9f896a5c62d3423fff2b67473319ede4242afa9801ddb241e77920e7ee4ae16 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:30:07 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:29:44Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:29:44Z" "architecture"="aarch64" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:29:44Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:52:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:52:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:52:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:52:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:52:45 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 22 Jul 2026 18:52:48 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 22 Jul 2026 18:52:48 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:52:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:52:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:58f664164ca85fb5b417ce6f6fffea1e66eaf780a7dedb2c483cdd5286d5ee2b`  
		Last Modified: Wed, 22 Jul 2026 00:25:47 GMT  
		Size: 33.1 MB (33053422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0d872524b22ace2bdfb17f47422247a33a3e1b5e70a9045c843e51c60af241`  
		Last Modified: Wed, 22 Jul 2026 18:53:03 GMT  
		Size: 37.7 MB (37713536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b11c01c2bcf0c6a23fda61fe3a70f50072643e71c5a32e1da3ce26e0e95400`  
		Last Modified: Wed, 22 Jul 2026 18:53:03 GMT  
		Size: 41.3 MB (41301690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9776a79fbc3a92b26c4e8ed5b15d8414a13f8c64cab354aa87b85780869bb990`  
		Last Modified: Wed, 22 Jul 2026 18:53:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a0152d3afcd0ec691c93957b3ddb2a0256da4149103162de05822edf34377e`  
		Last Modified: Wed, 22 Jul 2026 18:53:01 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:79eb98915709fbe743f88c3ca847dcfcb037ae8ab8c7c8b8a0ca191e0796657b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef88dc117733ae585d4ec025b7bc491ba9dc4445b0f96bad3827ccfaf63a64c6`

```dockerfile
```

-	Layers:
	-	`sha256:fa4c2dfff07e3f6b5dd435fd290663bf3fdfde5c80da8e54f0ca9160684e7f46`  
		Last Modified: Wed, 22 Jul 2026 18:53:01 GMT  
		Size: 3.7 MB (3736885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4361f72799731f2f24a9de8b54f5bb16ff099261f1c7db0d300ea5df0f9e424`  
		Last Modified: Wed, 22 Jul 2026 18:53:00 GMT  
		Size: 19.6 KB (19615 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:d70bebcdcc1bdf69cff0a2b92565c55616bf15ace798c907ac8fbe1ad088d5ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120264456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713adae53b5d40ac9940a1bc1492396ffad6888cef07a0d53f91ea2e2f66500f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:34:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:34:53 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:34:53 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:34:53 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:34:53 GMT
ENV container oci
# Tue, 21 Jul 2026 21:34:55 GMT
COPY dir:2be7a12ce5be4d4799407145cf668d5c439ba83ced58b5070bfcdd5f320f8500 in /      
# Tue, 21 Jul 2026 21:34:55 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:34:55 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:34:56 GMT
COPY dir:5cd3487f87b37ce48164c2bf021513de7ca3b9cca1b06b6185c3eb1a7d71e341 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:34:56 GMT
COPY dir:5cd3487f87b37ce48164c2bf021513de7ca3b9cca1b06b6185c3eb1a7d71e341 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:34:57 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:34:01Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:34:01Z" "architecture"="ppc64le" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:34:01Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:44:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:44:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:44:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:44:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:44:17 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 22 Jul 2026 18:45:20 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 22 Jul 2026 18:45:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:45:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:45:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a7dff45cdbd542ff0d1554cac7bc8766b00b4f2cac3b6de5ffb196a763e728d0`  
		Last Modified: Wed, 22 Jul 2026 00:26:15 GMT  
		Size: 39.0 MB (38992813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea677b487eddcc2724d84a06466dbe287bd24402018e31b7d306276209358525`  
		Last Modified: Wed, 22 Jul 2026 18:45:02 GMT  
		Size: 39.5 MB (39528607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8815d865a203e1eed9b28c3cbe192ac94cff9928ea92ca84f540e2184c15c3`  
		Last Modified: Wed, 22 Jul 2026 18:46:06 GMT  
		Size: 41.7 MB (41740438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3a4ca5a19b655fced0fc4b72c1994e2f3d52880cad81e1ec6dd0abf774cfd7`  
		Last Modified: Wed, 22 Jul 2026 18:46:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f82ff7f517483b68ae0f70e8d16fce2bd2213edb0289eb5704a44ce4c3f5703`  
		Last Modified: Wed, 22 Jul 2026 18:46:05 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:803c0d8f58c8ac52d5e3585db7f93f444761611857b099272c332250a25d5437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290707958abf568a2ff5a912639a2c3f761da1973a3e9ddaf06d141c741e03a1`

```dockerfile
```

-	Layers:
	-	`sha256:e3988f08595d5cf62d54fd06267b670459762de48bf7dcc19cbf8eeb3510e724`  
		Last Modified: Wed, 22 Jul 2026 18:46:05 GMT  
		Size: 3.7 MB (3726216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea03c54a10efc7d2d17d26050904aaa35de2057862e53988bc8663f2c2618102`  
		Last Modified: Wed, 22 Jul 2026 18:46:05 GMT  
		Size: 19.5 KB (19541 bytes)  
		MIME: application/vnd.in-toto+json
