## `eclipse-temurin:17-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:154eac1ede9f06bb2908758b952752af76dec85ae8943eb894f2b66c39d57ef4
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

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:1e3e8ed3ac6f215dd373ebdc202c6e762ba2b67c20abae88f994abb734ca77b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120253747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d913fc2698b4ef20151f65eaf96c632f0b50dc38f89bbc96907bc7fb3d28d7e1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:41:36 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 03 Aug 2026 17:41:36 GMT
ENV container oci
# Mon, 03 Aug 2026 17:41:36 GMT
COPY dir:ed77bb373e14ffa6b3783b4ca84874dcd05c0d6bea35c76071d4ccb41ebeef18 in /      
# Mon, 03 Aug 2026 17:41:36 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:41:36 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:41:36 GMT
COPY dir:7e4a63454f39409c213733c178806885b5a316509bc6872a23eca6721c2a73bc in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:41:36 GMT
COPY dir:7e4a63454f39409c213733c178806885b5a316509bc6872a23eca6721c2a73bc in /root/buildinfo/      
# Mon, 03 Aug 2026 17:41:36 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:40:34Z" "org.opencontainers.image.revision"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "build-date"="2026-08-03T17:40:34Z" "architecture"="x86_64" "vcs-ref"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "vcs-type"="git" "release"="1785778687"org.opencontainers.image.created=2026-08-03T17:40:34Z,org.opencontainers.image.revision=b9fdece4d2c962654c1c4a6f9578551c79e4c4c6
# Tue, 04 Aug 2026 21:04:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:04:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:04:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:04:11 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:04:11 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 21:04:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 21:04:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:04:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:04:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ac98f959ddf9baac24d46ce09bc63e26a45b74b502da97c83be3cdfcd2b5bad0`  
		Last Modified: Mon, 03 Aug 2026 18:50:26 GMT  
		Size: 34.9 MB (34906609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd912b783c7df0f75483d2a0ba97f15ba9de0ace512203aac981e74b196e7b83`  
		Last Modified: Tue, 04 Aug 2026 21:04:27 GMT  
		Size: 37.8 MB (37781192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b254af73ede1bb9989041b7236504198991c5be694a0c1ccedbec65ec2c619`  
		Last Modified: Tue, 04 Aug 2026 21:04:28 GMT  
		Size: 47.6 MB (47563526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c907150fcb47f44e253f4eb77d17991984f0e05542bc10b6de6487c779f7d70d`  
		Last Modified: Tue, 04 Aug 2026 21:04:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8fa2b7e9af526d5d359feee5fb0c36b636284a9f2d71ae9745e142cf96476f`  
		Last Modified: Tue, 04 Aug 2026 21:04:25 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ca68079a77cdab98a83258f71a54ef108f5f86de276da982f49c185692b53bc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3728315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36093060b7305ac91b10eca2e5867450822c28eed974f0aa16d7a55a86e49e35`

```dockerfile
```

-	Layers:
	-	`sha256:fb69213de2baa9e973bb0c6c475225907bb0d881214e23223227192ab0ade2ab`  
		Last Modified: Tue, 04 Aug 2026 21:04:26 GMT  
		Size: 3.7 MB (3707937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfc8beeba32a7f847a8418d9430d7471db3272fad698ad53c96ae20da4fb048d`  
		Last Modified: Tue, 04 Aug 2026 21:04:25 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:d747b87eed1c8a6f47882e41379f8ada1d5fa9ba3dc671c76fbc7a56de560da2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117811060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e62c472fd54659080ca87be1f73e2b18c37c6b70c0c79d761906f61e4d1f31a1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 03 Aug 2026 17:42:25 GMT
ENV container oci
# Mon, 03 Aug 2026 17:42:26 GMT
COPY dir:26fa351aba4d56b41677f6e2b1ab88063d4c9bbfc6176232f37e77eaf773115e in /      
# Mon, 03 Aug 2026 17:42:26 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:42:26 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:42:26 GMT
COPY dir:866ddf8cef7c479ff27d941240740a59788ad28338ae4d90f502ab418f7eb118 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:42:26 GMT
COPY dir:866ddf8cef7c479ff27d941240740a59788ad28338ae4d90f502ab418f7eb118 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:42:26 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:42:02Z" "org.opencontainers.image.revision"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "build-date"="2026-08-03T17:42:02Z" "architecture"="aarch64" "vcs-ref"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "vcs-type"="git" "release"="1785778687"org.opencontainers.image.created=2026-08-03T17:42:02Z,org.opencontainers.image.revision=b9fdece4d2c962654c1c4a6f9578551c79e4c4c6
# Tue, 04 Aug 2026 21:03:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:03:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:03:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:03:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:03:39 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 21:04:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 21:04:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:04:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:04:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:37c5f70fcd6cd766028ac1d94a4780f9f0b7d6d0cef13f7218ef89620df991eb`  
		Last Modified: Mon, 03 Aug 2026 18:50:21 GMT  
		Size: 33.0 MB (33046883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e175715431e9124aa8e20cc8b2e35c20f92028cfc2c96fb7d6a124263734da0a`  
		Last Modified: Tue, 04 Aug 2026 21:04:05 GMT  
		Size: 37.7 MB (37712065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5ec6ea206c1ff9b2a7ffd8a36987c2cf96b6aa01682c1861709d73fb27f6b5f`  
		Last Modified: Tue, 04 Aug 2026 21:04:30 GMT  
		Size: 47.0 MB (47049694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9b4fe52025771de609bbc12bef1ff5265b66863a29d607758663e1a02941f5`  
		Last Modified: Tue, 04 Aug 2026 21:04:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4c42a1ef3731e576bbaeab5a371dfc6d4b442bd212b9cf3c2c75dc6072e460a`  
		Last Modified: Tue, 04 Aug 2026 21:04:29 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5c48a90a4671402694cf18bfa70f712f0d790f8975273b0133e2c8f0ebf0ea21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3727833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ce2f7f5e822ed48abb3745422bef6849be70e3d47d265e49584d18b7f7942b`

```dockerfile
```

-	Layers:
	-	`sha256:f1cbbdf6abc5315da47da2af9249bb3b2f2970c7a7fe98bb45418b4354b0a9e8`  
		Last Modified: Tue, 04 Aug 2026 21:04:29 GMT  
		Size: 3.7 MB (3707351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed1a6c87e2471b633bb7416e6b7a6c60ef91381e20d211b8f8cf004684717a6`  
		Last Modified: Tue, 04 Aug 2026 21:04:29 GMT  
		Size: 20.5 KB (20482 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:3550e0818603b9a47026963133313de4f1ad2dc1be5995dc7a0917c01bec2b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.0 MB (126030717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f41be6e3f29a1e27d201eb1af76dd7f660b1cb3d73caeded931cff1370d3c2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 03 Aug 2026 17:50:45 GMT
ENV container oci
# Mon, 03 Aug 2026 17:50:45 GMT
COPY dir:59842d43bb5f3afddc1c28e5e18da7b985b05428a00d20ae001285b8f505c302 in /      
# Mon, 03 Aug 2026 17:50:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:50:45 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:50:45 GMT
COPY dir:ae8dd099b872415c3b83342ad84051e92399936f8a2b6d52f98c685368d33413 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:50:46 GMT
COPY dir:ae8dd099b872415c3b83342ad84051e92399936f8a2b6d52f98c685368d33413 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:50:46 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:50:29Z" "org.opencontainers.image.revision"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "build-date"="2026-08-03T17:50:29Z" "architecture"="ppc64le" "vcs-ref"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "vcs-type"="git" "release"="1785778687"org.opencontainers.image.created=2026-08-03T17:50:29Z,org.opencontainers.image.revision=b9fdece4d2c962654c1c4a6f9578551c79e4c4c6
# Tue, 04 Aug 2026 20:54:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 20:54:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:54:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 20:54:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 20:54:03 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 20:58:43 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 20:58:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 20:58:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:58:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:116623ca973258787b24d7b3d292610e22b2ae0e9f57a15bcf49eb44e18b11f0`  
		Last Modified: Tue, 04 Aug 2026 00:20:16 GMT  
		Size: 39.0 MB (38982890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c460c8e9859a18331fc86452678494f5f123066c74d20d535927b4675cce27`  
		Last Modified: Tue, 04 Aug 2026 20:54:45 GMT  
		Size: 39.5 MB (39545720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc9302b5e624b2e76efb32b6ce293d8386eb2c378c38fef067f47430b0ad8cc`  
		Last Modified: Tue, 04 Aug 2026 20:59:10 GMT  
		Size: 47.5 MB (47499687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca7b0a45e1270cb57442f437e00e48717f7253b163f3863e1a6a836bd7fff5e`  
		Last Modified: Tue, 04 Aug 2026 20:59:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b4eac232031e4f40d39adc89cb7f1b00be9e739d7055683174e0d9e75a4e67`  
		Last Modified: Tue, 04 Aug 2026 20:59:08 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e67ff8a26fbdb608f9dc0401a11d4ce3cdb97c32d449732333c175ffb6fb9cd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3717090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ba7f21200117f4911e65ff6d37fdd1010127e17bf289fb89dd087b9c1055d3`

```dockerfile
```

-	Layers:
	-	`sha256:92fe5aaaf6b3df1e20baca2054f2cf41847c09751388753510061dae7effbb60`  
		Last Modified: Tue, 04 Aug 2026 20:59:09 GMT  
		Size: 3.7 MB (3696682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e5a1db42efc26fc08941c249bd4862b2f5e1b4b8c90b12829424a341daf7a09`  
		Last Modified: Tue, 04 Aug 2026 20:59:08 GMT  
		Size: 20.4 KB (20408 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:8b2f0c8d334893b18cedfb586f703fc6408f27248fa587fa3fea5d788194d1ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117445320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d9b655e1f71ca11099f0fcd1f35c7dc998fb9ed7730e95198ec6aecb164aab`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 03 Aug 2026 18:12:05 GMT
ENV container oci
# Mon, 03 Aug 2026 18:12:06 GMT
COPY dir:51e8171b5ba6fdcffcaf306e0483673805078abd0611781794d0e9cc8454b335 in /      
# Mon, 03 Aug 2026 18:12:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 18:12:06 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 18:12:06 GMT
COPY dir:068e69fcb19fb0c4dfc44317e39e7fc0c3da9f5a9f05c92ad77178c611595f1f in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 18:12:06 GMT
COPY dir:068e69fcb19fb0c4dfc44317e39e7fc0c3da9f5a9f05c92ad77178c611595f1f in /root/buildinfo/      
# Mon, 03 Aug 2026 18:12:06 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T18:10:43Z" "org.opencontainers.image.revision"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "build-date"="2026-08-03T18:10:43Z" "architecture"="s390x" "vcs-ref"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "vcs-type"="git" "release"="1785778687"org.opencontainers.image.created=2026-08-03T18:10:43Z,org.opencontainers.image.revision=b9fdece4d2c962654c1c4a6f9578551c79e4c4c6
# Tue, 04 Aug 2026 21:35:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:35:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:35:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:35:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:35:17 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 21:37:34 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 21:37:37 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:37:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:37:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:494b827256e87615f911ef7073926aa15b60f47cb8e358a0ad0c291bde51c235`  
		Last Modified: Tue, 04 Aug 2026 00:19:38 GMT  
		Size: 34.8 MB (34756245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de20083552ad1e438f487653ca0f694365ef3ca00471146893853ae850f0eb83`  
		Last Modified: Tue, 04 Aug 2026 21:36:55 GMT  
		Size: 38.2 MB (38155618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c47d513e8080903be385020033ea2fa8747f014ed637b8b05a6dcc8ae370e1`  
		Last Modified: Tue, 04 Aug 2026 21:38:36 GMT  
		Size: 44.5 MB (44531037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878222c2d5edd57c37c85c6c090f2a1b8c39d8e02561e1ab7a000b5ac2466a21`  
		Last Modified: Tue, 04 Aug 2026 21:38:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a97371ac435a0091e5eda1b25ececc99dde9ac1829a99c4012f2eb2c51389e78`  
		Last Modified: Tue, 04 Aug 2026 21:38:34 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c9a0dc17ecd3219426fa6bd9d5740acb086107138e84fa7ab5d385fad7daaf13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bfd9479aa934fd80003a8f92a0da3bd7b5226a1d3b48fbe74402343aee2fa76`

```dockerfile
```

-	Layers:
	-	`sha256:3126b897fb4b1bfbbbed14ddf7ba600d08912cd057251bdba327903c41b79bbf`  
		Last Modified: Tue, 04 Aug 2026 21:38:34 GMT  
		Size: 3.7 MB (3697927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:038841feb64e687e7d9989fbda9b10d4a0620a23a09d42992763bb29e1f65e19`  
		Last Modified: Tue, 04 Aug 2026 21:38:33 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json
