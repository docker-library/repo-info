## `eclipse-temurin:11-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:821b14374b7dca738160b2c6d364371c74a7a5ee6b30b0a05d061c0631a7d741
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
$ docker pull eclipse-temurin@sha256:fd1169113221497f2021551073068c611071ef006d42977b6e5a019204876566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117123037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da15f1734ea3496091de1ccb68515754a391b0b5537e7ade5589f21e7e0ab1f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 11:16:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:16:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 22 Sep 2026 11:17:00 GMT
ENV container oci
# Tue, 22 Sep 2026 11:17:00 GMT
COPY dir:69bd69d248b8c7058b85ed6a92d01815998798ce69195b9202e90e0cb3ccbbc2 in /      
# Tue, 22 Sep 2026 11:17:00 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:17:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:17:00 GMT
COPY dir:f77af0b759fc748fb90b4a7a7a507b46ebd8ed6b3427231a07df0a82562ab5b7 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:17:00 GMT
COPY dir:f77af0b759fc748fb90b4a7a7a507b46ebd8ed6b3427231a07df0a82562ab5b7 in /root/buildinfo/      
# Tue, 22 Sep 2026 11:17:01 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:16:40Z" "org.opencontainers.image.revision"="496f022c586de3cdc994d6097f91f0776122c30e" "build-date"="2026-09-22T11:16:40Z" "architecture"="x86_64" "vcs-ref"="496f022c586de3cdc994d6097f91f0776122c30e" "vcs-type"="git" "release"="1790075626"org.opencontainers.image.created=2026-09-22T11:16:40Z,org.opencontainers.image.revision=496f022c586de3cdc994d6097f91f0776122c30e
# Fri, 25 Sep 2026 22:36:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:21 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 25 Sep 2026 22:36:21 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:36:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:36:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:01d8a742a2822eedcad9d714a1e8d0f7174ee4f37d8b4fa28531e8c05efbbd7f`  
		Last Modified: Tue, 22 Sep 2026 12:25:46 GMT  
		Size: 34.9 MB (34931822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473d763df3cdb5b19b9dbd8a0b827887c579f1b91ff22a4b57c658a0659c1ac1`  
		Last Modified: Fri, 25 Sep 2026 22:36:38 GMT  
		Size: 37.9 MB (37851672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490d8bd20ac1dd9870aec290295ec7a27c61119f79264da7b50a77f55abc56d0`  
		Last Modified: Fri, 25 Sep 2026 22:36:38 GMT  
		Size: 44.3 MB (44336944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e39f48aef7c875374ebe0326679dafa36da9cf5951a53f2b67df1a1d91d1cd5`  
		Last Modified: Fri, 25 Sep 2026 22:36:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b515096a6c2a7df3ced71ed734ae67bc61b6083cdef8ae6427489427d9cbc931`  
		Last Modified: Fri, 25 Sep 2026 22:36:36 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e4ac880ac28d37640ba0a65e64960cf5c9cf9c5caa5fc394680529a1f7363c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c201164698d1e2e00f9ad7544abbb2573bb908b2b1b8eaaf78f7b51e3c0d58ae`

```dockerfile
```

-	Layers:
	-	`sha256:aef8268ff355efc4258501ba45c0093bcfe00e5ca865acac3e54a68ec1685f10`  
		Last Modified: Fri, 25 Sep 2026 22:36:37 GMT  
		Size: 3.7 MB (3719897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c0e3f96bf6c9bbaca5c5f06a05deca985a802e38a1aed701591c64658b562ba`  
		Last Modified: Fri, 25 Sep 2026 22:36:37 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:0ded75bd159fcb679611823173908370ecba1840692b4da584d1c293bf84727e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113578036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245f9f3e382e714e1d4099241a451a393206e2ede6f385a802cb55b50a2c5f21`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 22 Sep 2026 11:20:02 GMT
ENV container oci
# Tue, 22 Sep 2026 11:20:03 GMT
COPY dir:943b6e34b0263a091be729bb054a96ae31b9973a4e5bdbcadf3e7d646ebafb83 in /      
# Tue, 22 Sep 2026 11:20:03 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:20:03 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:20:03 GMT
COPY dir:a40e0488440102eb869bb73d71e58694adcc2a99dfb84f58a84982e79507f212 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:20:03 GMT
COPY dir:a40e0488440102eb869bb73d71e58694adcc2a99dfb84f58a84982e79507f212 in /root/buildinfo/      
# Tue, 22 Sep 2026 11:20:03 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:19:41Z" "org.opencontainers.image.revision"="496f022c586de3cdc994d6097f91f0776122c30e" "build-date"="2026-09-22T11:19:41Z" "architecture"="aarch64" "vcs-ref"="496f022c586de3cdc994d6097f91f0776122c30e" "vcs-type"="git" "release"="1790075626"org.opencontainers.image.created=2026-09-22T11:19:41Z,org.opencontainers.image.revision=496f022c586de3cdc994d6097f91f0776122c30e
# Fri, 25 Sep 2026 22:34:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:44 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:34:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:34:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6054095ef70d48af21070fc65f15c09b2a4dd4d0577e771afe99d5df88e632be`  
		Last Modified: Tue, 22 Sep 2026 12:26:19 GMT  
		Size: 33.1 MB (33137023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a88d88096456bc38416a151d261728baf95a9c93e2608bd6e08348f26f3f8a`  
		Last Modified: Fri, 25 Sep 2026 22:35:00 GMT  
		Size: 37.8 MB (37788685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a02354f3be71467146b9225e2283848b276377eecf25720095fe438f488716e5`  
		Last Modified: Fri, 25 Sep 2026 22:35:01 GMT  
		Size: 42.6 MB (42649728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f3ecc3b105424dafadbe501595c613e6e5eab8c99564fe0ae132cc55b781fb`  
		Last Modified: Fri, 25 Sep 2026 22:34:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8099166b43f7262effdf242340b657fab8deef95a82e2ece73812ddaf8cd19be`  
		Last Modified: Fri, 25 Sep 2026 22:34:59 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c6e2e11b441b6e077959d99fdf5d6a70f72de4a90c0eb4f0a5b486da9609a659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97e979b832dd18a038b6154295d5672c9493f79fa6f015b294a666012ccb1b6`

```dockerfile
```

-	Layers:
	-	`sha256:9f9401a81bc41c474d51eac2e3018cba2d55d0b4a81bac57641311ca0b1d1102`  
		Last Modified: Fri, 25 Sep 2026 22:34:59 GMT  
		Size: 3.7 MB (3719929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f31b5d1a6370c0c14d3f07a43c78540705be4f317f14ec31ce10c9088ddc979`  
		Last Modified: Fri, 25 Sep 2026 22:34:59 GMT  
		Size: 20.5 KB (20506 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:8991c8967762da6f75634b8f81572dd0af29a2215fb48cac50534d1fe648a725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118554699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c87e90d7d1ff326a3c9f3254904319cd5e4f8f1b42794cf3883546dede66661f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 22 Sep 2026 11:23:29 GMT
ENV container oci
# Tue, 22 Sep 2026 11:23:31 GMT
COPY dir:bcbef1ea327c08d43fe5d07e4411cf28f68eaec007603bfc77c4ddae5b7e4a6a in /      
# Tue, 22 Sep 2026 11:23:31 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:23:31 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:23:32 GMT
COPY dir:d134a2581f6a9d019c9284db716254e62476cfecd0b6e0f96306f5f69ccfe9cb in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:23:32 GMT
COPY dir:d134a2581f6a9d019c9284db716254e62476cfecd0b6e0f96306f5f69ccfe9cb in /root/buildinfo/      
# Tue, 22 Sep 2026 11:23:33 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:23:13Z" "org.opencontainers.image.revision"="496f022c586de3cdc994d6097f91f0776122c30e" "build-date"="2026-09-22T11:23:13Z" "architecture"="ppc64le" "vcs-ref"="496f022c586de3cdc994d6097f91f0776122c30e" "vcs-type"="git" "release"="1790075626"org.opencontainers.image.created=2026-09-22T11:23:13Z,org.opencontainers.image.revision=496f022c586de3cdc994d6097f91f0776122c30e
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:44:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:44:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:44:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:43:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:43:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:43:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:43:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:80132afeb18bcab70432eaae28eab8f86e66df015b20334e777c6f7f4f3c1be6`  
		Last Modified: Tue, 22 Sep 2026 12:27:02 GMT  
		Size: 39.1 MB (39091557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e08e157d48c9630b6a358c50f44ec99a975ff76685960247748c6dee396324`  
		Last Modified: Tue, 22 Sep 2026 18:45:13 GMT  
		Size: 39.6 MB (39612171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7202609cc0ed6403916d7c37976156703597568a2d6a96bcb7acb18a2f43047`  
		Last Modified: Fri, 25 Sep 2026 22:44:28 GMT  
		Size: 39.8 MB (39848373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c146ed771961c83430c7b79accfed6ed31be0337c24d0201a03d5126fc3daa23`  
		Last Modified: Fri, 25 Sep 2026 22:44:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2029786093fa28ca089dd83b4306f4b42e8426e45d0a53089a9c7ca282aa6dbd`  
		Last Modified: Fri, 25 Sep 2026 22:44:26 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:17fcc8949254ac5244d540768d65fe09f77227c19050e509671d2f139f34c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3729080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d8f58f9c36fea42dca6e7f6e78a38ce7caf4d40ce64c33b6ce3b37d1a75363`

```dockerfile
```

-	Layers:
	-	`sha256:62f7c8f90c2b4c53749939f909fd123a335bf92272383da2c7fb3f8212760228`  
		Last Modified: Fri, 25 Sep 2026 22:44:27 GMT  
		Size: 3.7 MB (3708648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b2adfa2700b97ff81735bf3254416383c71cd8db2ecacf625c57c18800c29d0`  
		Last Modified: Fri, 25 Sep 2026 22:44:26 GMT  
		Size: 20.4 KB (20432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:d4dfef8826f2c35858bd41b1bf3d9e5abedcbae8fb45879b83ffca9976b83a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111346510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b832b84150d36612afc23e3b4aa7a9a7cf5a4be9c0e29947916a0c3d234493b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 22 Sep 2026 11:42:56 GMT
ENV container oci
# Tue, 22 Sep 2026 11:42:57 GMT
COPY dir:c3af120dfb67976e1c90008bf85e7ba5f67a6339222d18645cc7ddd92789604f in /      
# Tue, 22 Sep 2026 11:42:57 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:42:57 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:42:57 GMT
COPY dir:ab4184071b23b635b2a64ccf95077081297fe83f98609e1ff860f82be9cceb7a in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:42:57 GMT
COPY dir:ab4184071b23b635b2a64ccf95077081297fe83f98609e1ff860f82be9cceb7a in /root/buildinfo/      
# Tue, 22 Sep 2026 11:42:57 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:41:22Z" "org.opencontainers.image.revision"="496f022c586de3cdc994d6097f91f0776122c30e" "build-date"="2026-09-22T11:41:22Z" "architecture"="s390x" "vcs-ref"="496f022c586de3cdc994d6097f91f0776122c30e" "vcs-type"="git" "release"="1790075626"org.opencontainers.image.created=2026-09-22T11:41:22Z,org.opencontainers.image.revision=496f022c586de3cdc994d6097f91f0776122c30e
# Tue, 22 Sep 2026 18:46:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:46:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:46:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:46:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:46:00 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:34:27 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:34:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f2f7507714016123f6a629892c99b0956acac81f1de397395626f22acd3f6b12`  
		Last Modified: Tue, 22 Sep 2026 12:26:46 GMT  
		Size: 34.8 MB (34805444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4cf9c68425e8f1ccd84b1c2c4887b35816ea4e8f7abc45408338e47a8491f5`  
		Last Modified: Tue, 22 Sep 2026 18:47:00 GMT  
		Size: 38.2 MB (38226103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73addddb100cefddb03fca7c6d450548df5d0c632a0bcec2a2840f94c7e1c46e`  
		Last Modified: Fri, 25 Sep 2026 22:34:43 GMT  
		Size: 38.3 MB (38312366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5fb7f20244bbf02a3b52a9f01da4cb744e0ddbfc048b425950375ef7a738d9`  
		Last Modified: Fri, 25 Sep 2026 22:34:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f640353008d334baff8fe864d06058ea0cfa09bb8c207f7a4dbd02a58848cab`  
		Last Modified: Fri, 25 Sep 2026 22:34:42 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:335657b2725f87119f37dfb6d554cc3fe94942398e2e3bc50a71f2f07a0aca53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3730295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d4ff5f33b20ea71d6b4c139a876763ba2ad797a699dc4ebc4c729dabd2f38a`

```dockerfile
```

-	Layers:
	-	`sha256:bf8c8589586ae3522841f9d9f45b3102a110cb46d6dc324d1e983e3af71d23ce`  
		Last Modified: Fri, 25 Sep 2026 22:34:42 GMT  
		Size: 3.7 MB (3709893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c288a3e2b3da7145f3bc0871a8bd5c24bb5468c2943f4cc547eb756b5cf1e486`  
		Last Modified: Fri, 25 Sep 2026 22:34:42 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json
