## `eclipse-temurin:11-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:1c200ba5d44ff3d2633f7610fb4981582e174c806c6da4ff4839632fac3077b0
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

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:63620392cd537f81a9eb55ea79f90e76c2dc684245950ccab27e58573acfdd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112713546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bded4cbcf0a4a211e9180c836d08436f56c927b1d9bd2f1f04b4475b6a3899d9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:49 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:50 GMT
COPY dir:e45266e494b9752d347f82bff660e367c92279dd3110ea5b3aba7f7174fdf656 in /      
# Mon, 12 Oct 2026 12:37:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:50 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:05Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:05Z" "architecture"="x86_64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:05Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:34:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:34:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:34:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:34:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:34:39 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 13 Oct 2026 00:34:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:34:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:34:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:34:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c8fb2f748d0518200c41845a3bbb526397078028e42feaddaf7208534fc575b4`  
		Last Modified: Mon, 12 Oct 2026 14:31:54 GMT  
		Size: 40.7 MB (40731722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:becbe4d3a1f4daef612c968bc865fbbd04d5cc18710d79b2a6ef1b10943c5fc3`  
		Last Modified: Tue, 13 Oct 2026 00:34:55 GMT  
		Size: 27.6 MB (27642244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60815aed5814a2143b5ec1db20823f6216d9eba87ac749deca7bf8d4c90e8733`  
		Last Modified: Tue, 13 Oct 2026 00:34:55 GMT  
		Size: 44.3 MB (44336981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52965644ec2409a1f62ee8341ffdc4861076331a450b160558911b0e13e56f2`  
		Last Modified: Tue, 13 Oct 2026 00:34:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21f632f1bb3b7fd8968145a59858463ab70ca886a2914560acc1b0c9d13f4e5`  
		Last Modified: Tue, 13 Oct 2026 00:34:54 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5d0559d6bea882a853b5541cb67e66e0fa85ef2c6e0c9666fb6e645b79561ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2443387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0806e86f926caa3750b79b368320be7e226e859f59d16c6d8c3a63be24708c1f`

```dockerfile
```

-	Layers:
	-	`sha256:a3ab7d6881b540bbfd810ba9e8f0749e2846d776b12f448099310b01d0e8af9f`  
		Last Modified: Tue, 13 Oct 2026 00:34:54 GMT  
		Size: 2.4 MB (2423153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90c03a367118641c585c54a68818dd932b3d22a0b38edb05c2f456f7e5638886`  
		Last Modified: Tue, 13 Oct 2026 00:34:53 GMT  
		Size: 20.2 KB (20234 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:088c2b296f8de95d55f51d7ac0f15a6b20107425a3aa1d113e2f4ae0ab5515d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109530559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177b18fb2402eb9d26f109b9accf5da97613ff04577e91c1bded88f83f65b929`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:20 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:21 GMT
COPY dir:123af182f2411d6301e92c5816a09ad572a38ac45c6a006a2a67fe12bba24337 in /      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:22 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:49Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:49Z" "architecture"="aarch64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:49Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:33:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:33:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:33:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:33:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:33:00 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 13 Oct 2026 00:33:03 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:33:03 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:33:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:33:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e9b14607c5b59da407fa1d8ceb91765c821f6a3e5637af082c822b0741fd9481`  
		Last Modified: Mon, 12 Oct 2026 14:30:43 GMT  
		Size: 38.8 MB (38798784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1129ac1ca4e4a5e05b65c98a3172025ebb896ec3c6c79c25e9938b615316683f`  
		Last Modified: Tue, 13 Oct 2026 00:33:15 GMT  
		Size: 28.1 MB (28079486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441ad19423e234d0f76b3aaac316b85b469e12863bc47c832ed2a7a76c6aaee9`  
		Last Modified: Tue, 13 Oct 2026 00:33:16 GMT  
		Size: 42.6 MB (42649691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c98440c32306b71bb48e4f30d9dc8f42f5cacbfddf844d89abcd157f336545c`  
		Last Modified: Tue, 13 Oct 2026 00:33:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3e2c77c97a0ec7508b32d11c515998e06336732c2420ba50e964bcd4c64db3`  
		Last Modified: Tue, 13 Oct 2026 00:33:14 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7b95e30345898044074d158fd6369e4f890908965f6747cd851f2b1d2fcc9073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2441684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd07d6460feb09a505c81200c34e63c1c4f39b9cf95683e47c801c6ce23fb98`

```dockerfile
```

-	Layers:
	-	`sha256:d034436f439a4f373edb20dd38d00e120f8808c62859c0105c41c179f9577efd`  
		Last Modified: Tue, 13 Oct 2026 00:33:14 GMT  
		Size: 2.4 MB (2421347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58a221d4555b7a7ce60b819ec2dd79b736eced03aa754a682b1f18a5a67f258d`  
		Last Modified: Tue, 13 Oct 2026 00:33:14 GMT  
		Size: 20.3 KB (20337 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:47e9718cc2059c704e437fd3ad4cd5a55c9b5e958168c54b13ab1f0bfb886af8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115000845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f5488ea8b9e5ea6da6aac29b874d3333bf6c816df01dcc3a40b3a631eb85ff`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:44 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:d07f2b7b7fc0328aad01cfdaed182c175acb09c22d3d7ce49cc19c491698d5b0 in /      
# Tue, 06 Oct 2026 09:42:45 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:45 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:774b92356406bfee1307af385a5d45b5beda7faea39e85ca4f3d6fbc56d40b00 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:774b92356406bfee1307af385a5d45b5beda7faea39e85ca4f3d6fbc56d40b00 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:45 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:23Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:23Z" "architecture"="ppc64le" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:23Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 21:49:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:24 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 06 Oct 2026 21:52:27 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 06 Oct 2026 21:52:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:52:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:52:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9244f500f9cceb07e7669ad9bfa7c24a2ed1eed26cb416a3d032180e1d0448b2`  
		Last Modified: Tue, 06 Oct 2026 12:14:20 GMT  
		Size: 45.1 MB (45090018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19b15df0f393569d2b35ab6197ae367a01bab491b217c2f51043e833e5b92ae`  
		Last Modified: Tue, 06 Oct 2026 21:50:11 GMT  
		Size: 30.1 MB (30059845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904ce82e9c4c1d2ffe39a9ceb82ac5f4562e6d6edfa5e37d7d7fe92f47c3aa6b`  
		Last Modified: Tue, 06 Oct 2026 21:52:52 GMT  
		Size: 39.8 MB (39848382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81016bbd097fdc7e4c882734690a71d1279e018abaa1e0d7ee76cac0fafe3a4c`  
		Last Modified: Tue, 06 Oct 2026 21:52:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9bd8ad7e3db61eedac41d24745879d6dad29feb8fc4cca15ab16264ce3700f`  
		Last Modified: Tue, 06 Oct 2026 21:52:51 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:dcf7d6c8fa2167bea5f805505d74a80d90be6c2d27eacb38cfac3626c102aaf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2441684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8662f07c953d091c7991e18f60f714eb3f9b59afc748965578901814cb69224`

```dockerfile
```

-	Layers:
	-	`sha256:099ec5334a51535593b221191bced2ee8342c7e5057b6074f671dcc0d0d9b07e`  
		Last Modified: Tue, 06 Oct 2026 21:52:51 GMT  
		Size: 2.4 MB (2421420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67acc57e28eeeaab0522b5c573f5725021f13ad92e6e18b925e684c4942f59f6`  
		Last Modified: Tue, 06 Oct 2026 21:52:51 GMT  
		Size: 20.3 KB (20264 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:d88752529a53826a98f86596143b3f346423381083287cf22aedb37ab9630cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104720021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:167f0df187c5dfbd89e463c141fae50e8424c733824fabff83f8fc757936242c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:42:07 GMT
ENV container oci
# Mon, 12 Oct 2026 12:42:08 GMT
COPY dir:6f1116765a73e636b531aceee59b3afd2387bf60f4811b2155738722ff24b367 in /      
# Mon, 12 Oct 2026 12:42:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:42:09 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:42:09 GMT
COPY dir:9b4d4567e3bd8bcb6d3d24e04abeaa33d97946ff2aad0228ba02dfd302751a7a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:42:09 GMT
COPY dir:9b4d4567e3bd8bcb6d3d24e04abeaa33d97946ff2aad0228ba02dfd302751a7a in /root/buildinfo/      
# Mon, 12 Oct 2026 12:42:10 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:41:16Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:41:16Z" "architecture"="s390x" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:41:16Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:31:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:31:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:31:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:31:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:31:49 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 13 Oct 2026 00:31:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:31:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:31:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:31:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6232659d65a3a453185f4ad06e0c75a5f43379de64cd56fa58b7919476e12135`  
		Last Modified: Mon, 12 Oct 2026 15:10:01 GMT  
		Size: 38.7 MB (38734529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe0a8677cb34d0aab89845b7d46498a2210b6e5d48e06ed0f23b804afb5669b`  
		Last Modified: Tue, 13 Oct 2026 00:32:10 GMT  
		Size: 27.7 MB (27670555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb16a70b52d0481f709ef2a35175fe1456e1b182c301aa1d972d5020e18c0b3d`  
		Last Modified: Tue, 13 Oct 2026 00:32:11 GMT  
		Size: 38.3 MB (38312340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd23e891616e2baf7808341357b9d8e5e0c307bd9107a76cf90b9e11c7132c7`  
		Last Modified: Tue, 13 Oct 2026 00:32:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fc2c2c561c1cc9a90e62f733f17d2f1747d308893a74b61579f848f33e81b5`  
		Last Modified: Tue, 13 Oct 2026 00:32:10 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9a55c4b18fa9e89c446e93c065111291cf178b5a09754ec1dfd75ace5712ca10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2433403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbd8be7e1218fc36eaaf797206502e09fdec2a132970ffa31a8a7644f05ab43`

```dockerfile
```

-	Layers:
	-	`sha256:90c690ade1700532828b8296318d81f23dfaea979189f2970b57d0efa9a6c389`  
		Last Modified: Tue, 13 Oct 2026 00:32:09 GMT  
		Size: 2.4 MB (2413169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc254e6e4717832239916a0fba578384a04129878f811a45c83a0435c59be1e`  
		Last Modified: Tue, 13 Oct 2026 00:32:09 GMT  
		Size: 20.2 KB (20234 bytes)  
		MIME: application/vnd.in-toto+json
