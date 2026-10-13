## `eclipse-temurin:11-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:260b06c9445b0bf25c47eed0b996a17df17462cdbd34bf952f9f6ba1f1ce04fb
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
$ docker pull eclipse-temurin@sha256:068ecfe9a2e20e4bdeba7e22508b85f55ceeb1e42fb8ac51d989d8cd42480e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115060844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c112bd629edae4b8bf7f1b4fef29ed3f4b0d9ae7860164ffe000232e776918`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 12:38:57 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:38:57 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:38:59 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:38:59 GMT
ENV container oci
# Mon, 12 Oct 2026 12:39:01 GMT
COPY dir:f91604359155bae65c51b513080a57d72f422ee80611bdd6488bd7bae5486c33 in /      
# Mon, 12 Oct 2026 12:39:02 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:39:02 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:39:03 GMT
COPY dir:f95f3b4bd2e8cd2721797fe0d1fe50e97212c524c13d0340ec33dc5e4cb48672 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:39:04 GMT
COPY dir:f95f3b4bd2e8cd2721797fe0d1fe50e97212c524c13d0340ec33dc5e4cb48672 in /root/buildinfo/      
# Mon, 12 Oct 2026 12:39:04 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:38:02Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:38:02Z" "architecture"="ppc64le" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:38:02Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 02:13:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 02:13:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 02:13:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 02:13:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 02:13:40 GMT
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
	-	`sha256:f313650b4a6b13fa960049c43fe994b1813f0d0c5fb7bf8945cc3c5b76480503`  
		Last Modified: Mon, 12 Oct 2026 18:22:07 GMT  
		Size: 45.1 MB (45145374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba59775918b17142006cef3946ac77daa9dbb710db62825fa66f8ea07299e873`  
		Last Modified: Tue, 13 Oct 2026 02:14:46 GMT  
		Size: 30.1 MB (30064522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8fda5b26041410a2f9fb00529801d82bcafd5977322a405706072dae2c1b743`  
		Last Modified: Tue, 13 Oct 2026 02:17:59 GMT  
		Size: 39.8 MB (39848351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0810047e8c28c58ef59a207b8ba221243fd6a99d42476d7c5c3e387916fd33`  
		Last Modified: Tue, 13 Oct 2026 02:17:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff73d9834eee118657f5236eec67188bd728b34f29dc8fb42566474bec1c6fca`  
		Last Modified: Tue, 13 Oct 2026 02:17:58 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b037dae9f0db1a2d8ea74bb630d36e3b07ab2214329e1459843251fcabcaa959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2441683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e90250c3323ca3173d479c8e348a45c2fec49d4f02ac90aaa245d5342838b47`

```dockerfile
```

-	Layers:
	-	`sha256:71c575cd86ac3145ef1183de292261dcaba3b9c7d7431b783d3ade63ed004e2b`  
		Last Modified: Tue, 13 Oct 2026 02:17:58 GMT  
		Size: 2.4 MB (2421420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aab529f81412c0e0ca1ff8167f91d793266d74be00aa86659882dca37d5b5697`  
		Last Modified: Tue, 13 Oct 2026 02:17:58 GMT  
		Size: 20.3 KB (20263 bytes)  
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
