## `eclipse-temurin:17-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:85fa32b9575e759ed207215422bc5126e7115cc52b033b3b35203b4b55223508
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
$ docker pull eclipse-temurin@sha256:0fba5f505db726afe02d4ed70db7fca8f2ad080ae9468dfb36b3fb07bdef442a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120360448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3439a80e442fa3d328ec9bb37577b54ce25ad5fc4bae1c451caf2851904a85`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 13 Oct 2026 11:36:12 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:36:13 GMT
ENV container oci
# Tue, 13 Oct 2026 11:36:14 GMT
COPY dir:fe09ff3a49379305e1cb0e89f971424ce678aa73614343ecd1a31bb5cd5ba27f in /      
# Tue, 13 Oct 2026 11:36:14 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:36:14 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:36:14 GMT
COPY dir:5689adc5d5ec6bee467687c030512630f4ca86263fb7d693a9dce1bae6b0a2d9 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:36:14 GMT
COPY dir:5689adc5d5ec6bee467687c030512630f4ca86263fb7d693a9dce1bae6b0a2d9 in /root/buildinfo/      
# Tue, 13 Oct 2026 11:36:15 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:35:38Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:35:38Z" "architecture"="x86_64" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:35:38Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:58:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:58:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:58:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:58:14 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:58:14 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 22:58:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 22:58:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:58:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:58:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:96e018865a7455542a612b44ed5f5973fa5ce3706b35273d9256f2da3960156c`  
		Last Modified: Tue, 13 Oct 2026 13:00:37 GMT  
		Size: 35.0 MB (34952271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c7843015590886eec7174cb8d57360a9fb7526195d1e6e60fc8caa23edfebe`  
		Last Modified: Tue, 13 Oct 2026 22:58:31 GMT  
		Size: 37.9 MB (37888137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a55601c471b892fbafed9d1c48a26195d42b38cd3363cf4e5852e18b2a0158`  
		Last Modified: Tue, 13 Oct 2026 22:58:31 GMT  
		Size: 47.5 MB (47517441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbf28af2a0f8785a1bc888c2577cd452cf81a9795dc888214c34a87f1c1a41f`  
		Last Modified: Tue, 13 Oct 2026 22:58:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a5db9e6ed5cbcdb01532c64b032dc74920db207c8258d3e363fbbb366eb63ff`  
		Last Modified: Tue, 13 Oct 2026 22:58:29 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1a014fcd54721ef0bea2f7afa3fec475d5afa9b18be0d23d90e863d0dd618940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3728459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f5eb827e3a7859a4487c6a2ab22c705a18be5dcce48d5efdf4e527ee5f12ba`

```dockerfile
```

-	Layers:
	-	`sha256:8c242c8cca2497a1680afb084b25cf6e885476a21c9dc5b3090971a524ec8d5a`  
		Last Modified: Tue, 13 Oct 2026 22:58:30 GMT  
		Size: 3.7 MB (3708057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dc6cf7022ddb7f0427734d8c79e270763fed6fdf51c29b1ce39aa85fb0c3a41`  
		Last Modified: Tue, 13 Oct 2026 22:58:29 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:ae4af70867f500a8a77191d1f1bdc49a43f06cc0ea6bb6258bde4d87195973da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (117967879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660bcf36133fcfcc5816f18afea5e405ecf06987c0b9913db4d86a13d213efa0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 13 Oct 2026 11:38:11 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:38:11 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:38:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:38:12 GMT
ENV container oci
# Tue, 13 Oct 2026 11:38:13 GMT
COPY dir:afba438e6c8fbafbf237be0da7ee4d78bf11b0c3e7cc19222cf85ac1fb700d8b in /      
# Tue, 13 Oct 2026 11:38:14 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:38:14 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:38:14 GMT
COPY dir:fe33b4e5c0b1e5a254838c04b2eae09c265227f5dbb605d1129c98df0746a610 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:38:14 GMT
COPY dir:fe33b4e5c0b1e5a254838c04b2eae09c265227f5dbb605d1129c98df0746a610 in /root/buildinfo/      
# Tue, 13 Oct 2026 11:38:15 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:37:42Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:37:42Z" "architecture"="aarch64" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:37:42Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:57:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:57:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:57:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:57:05 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:57:05 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 22:57:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 22:57:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:57:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:57:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:be085d7a47c11404cbba8ea172a330ab100dad42557617444fa11a7b10a1bcfd`  
		Last Modified: Tue, 13 Oct 2026 13:00:34 GMT  
		Size: 33.1 MB (33127982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc3cf3e425f2eca311dbbbe7f6a3e6a3bbb0713d0787a8061ade708dccbab03`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 37.8 MB (37834551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e695c5dcb6e0af7746ea610819c8b1d8fb4959608798493086d15e74d982ce4a`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 47.0 MB (47002749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02709f9a0622d303222bb5de4733147a0e3baafb446eff8857dd131617260ebd`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50deef073f40ea0b32cf25bb66d699cf4df16586698de33925e304e0ce6be2dd`  
		Last Modified: Tue, 13 Oct 2026 22:57:10 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:af2e1087647368f4727cdb9fa1065c382264aae4420591c944d2c998472bf10e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3727977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35dc49ffe61582b2094de879d3aa65c203b3a84394ed52cbba33cf087e030644`

```dockerfile
```

-	Layers:
	-	`sha256:532af943ead401f8b8fe30f07b0bf134f99c4021bba9bf681da091b1a7c541f5`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 3.7 MB (3707471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a6a79d70da120bd4218c53160e4349f2315f0f6a76b3776dedc44bfe4ab59b2`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 20.5 KB (20506 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:d172b40e9c67c3cfd0c8e2b4ad40d47fa779cd159288e1e469ff2023f16abc00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126229205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0aba50cad66bbe67c0842bbbb95e6cdaa74a09b528cfea479b02fff29ab44fd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 13 Oct 2026 11:40:11 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:40:11 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:40:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:40:12 GMT
ENV container oci
# Tue, 13 Oct 2026 11:40:13 GMT
COPY dir:6eb3f609bc4e564b1e0f3615d9e0a50a15d83aa1392f9c11e0ce78b56c6d1f52 in /      
# Tue, 13 Oct 2026 11:40:13 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:40:13 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:40:14 GMT
COPY dir:5fe1f91fc0fc0351209cf5804013b88c8fe2990db4fa63780198492ee6928ab8 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:40:14 GMT
COPY dir:5fe1f91fc0fc0351209cf5804013b88c8fe2990db4fa63780198492ee6928ab8 in /root/buildinfo/      
# Tue, 13 Oct 2026 11:40:14 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:39:48Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:39:48Z" "architecture"="ppc64le" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:39:48Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:55:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:40 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 23:02:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 23:02:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 23:02:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 23:02:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cae3e061a7afa15909e77da897ec7c0aded380e79c5df5ed8870cb712d112de9`  
		Last Modified: Tue, 13 Oct 2026 16:45:35 GMT  
		Size: 39.1 MB (39113979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817884d4fc6351ec75c0b22c811b098c1f63bd0504a857ff68b68f04ecaa39c5`  
		Last Modified: Tue, 13 Oct 2026 22:56:39 GMT  
		Size: 39.7 MB (39670359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a39f479e7fefd36cf060aeaf2ec028c55409b65fe69b5efc7b74f71fb325859`  
		Last Modified: Tue, 13 Oct 2026 23:02:44 GMT  
		Size: 47.4 MB (47442268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf76426fad89a46741522f64b4b624c707031a9af6c18010149bf91dd2e1a1a2`  
		Last Modified: Tue, 13 Oct 2026 23:02:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0acd4cb9409c2feaac03fd5251d6bd6babd217ae44354116ac985a09ebbbbb4c`  
		Last Modified: Tue, 13 Oct 2026 23:02:43 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1969509d2823d8624dcf4e479468a8ea9f1e4f6972377ac93fbc9fcd867bd466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3717234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485dcbc6867328129f99c4c062a48f6515bbed4180a0839feb9cc5cc74a8338c`

```dockerfile
```

-	Layers:
	-	`sha256:d15dcef30a1fbf629471140f3a36eb0c60c2efaf28cd7742b5fb1c8d0b7a7115`  
		Last Modified: Tue, 13 Oct 2026 23:02:43 GMT  
		Size: 3.7 MB (3696802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5f2da7cd9fbbc9da3423d5103bd45e8776706943ea34c0f363aceda98a93d3e`  
		Last Modified: Tue, 13 Oct 2026 23:02:42 GMT  
		Size: 20.4 KB (20432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:fe46058c8e3300fc9c4d55a8358a82095caf56c6431a1904d11e28028ba0b3c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117604261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d28b89d9372e2623daa01142f0794dffe4c2d90226459983cdba28de5dd7e9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 13 Oct 2026 11:50:19 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:50:19 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:50:21 GMT
ENV container oci
# Tue, 13 Oct 2026 11:50:23 GMT
COPY dir:1e6e97c7b08276d6fc241657760d66b7afc6a0634288bfec812f60856399bac6 in /      
# Tue, 13 Oct 2026 11:50:24 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:50:24 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:50:24 GMT
COPY dir:a1971d62b01fb53b8823b9e3a25eadc4645703c309044f9cff0e33ddbf4d511d in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:50:25 GMT
COPY dir:a1971d62b01fb53b8823b9e3a25eadc4645703c309044f9cff0e33ddbf4d511d in /root/buildinfo/      
# Tue, 13 Oct 2026 11:50:26 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:48:36Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:48:36Z" "architecture"="s390x" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:48:36Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:55:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:20 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 22:56:12 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 22:56:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:56:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:56:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9a74cc32d0c11450cc3df28e940e72b0fc246b2ea4419b55b451e71c6cb0957e`  
		Last Modified: Tue, 13 Oct 2026 16:45:48 GMT  
		Size: 34.8 MB (34822258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc2d5469008367995ef18871cb5f5b07ae88a3a055de2094e4110fcdfe97586`  
		Last Modified: Tue, 13 Oct 2026 22:55:45 GMT  
		Size: 38.3 MB (38273455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73560cc8d738452a5a28e575423963a6639411ffb8dbae395f7d6251bdca9160`  
		Last Modified: Tue, 13 Oct 2026 22:56:31 GMT  
		Size: 44.5 MB (44505948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866ccc90ea130054a26c0b41d5af0c5e2ee55a7793248936b9f36fcecb67a4f7`  
		Last Modified: Tue, 13 Oct 2026 22:56:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd67a3579b3e868885001a2bbade8e3084c75aa432da4d4c5a9aef76569abd2d`  
		Last Modified: Tue, 13 Oct 2026 22:56:30 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1904b5ddc92aedf9f5c0b8f6238277d1ea1b124e9e0f5c845c228bbdf88fd3b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71112879abcf92c9e72fa7c4b11fff62b49841abba7c8731b74e79534d71f678`

```dockerfile
```

-	Layers:
	-	`sha256:4871efe9e1c00f9b3e156fa787fbca22e47479f91c84583847ce1112b75a38da`  
		Last Modified: Tue, 13 Oct 2026 22:56:30 GMT  
		Size: 3.7 MB (3698047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:664b4e661585026ef8e96a92670b1d0c724d262ba9f88a05c29282543660bba3`  
		Last Modified: Tue, 13 Oct 2026 22:56:30 GMT  
		Size: 20.4 KB (20401 bytes)  
		MIME: application/vnd.in-toto+json
