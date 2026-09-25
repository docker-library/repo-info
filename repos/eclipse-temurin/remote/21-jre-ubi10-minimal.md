## `eclipse-temurin:21-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:f651659b5d735e155141af9968ab06faa03f7b8fd0710ee50c663c104bf597aa
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

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:a4fc4c8ca2e42d8879fa17994bfe6580681fcb37b04c9175895bcbbbd7563325
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125878965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee804b2d9beeb951cf36e78795c0b221591b4726857f107cb3f2d8643c50771`
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
# Fri, 25 Sep 2026 22:37:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 25 Sep 2026 22:37:20 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:19 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:38:19 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:01d8a742a2822eedcad9d714a1e8d0f7174ee4f37d8b4fa28531e8c05efbbd7f`  
		Last Modified: Tue, 22 Sep 2026 12:25:46 GMT  
		Size: 34.9 MB (34931822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b47d2c6c40a6889824bec35e5cdc1edc03075a2bb27879ba99b79798086ebb0`  
		Last Modified: Fri, 25 Sep 2026 22:37:37 GMT  
		Size: 37.9 MB (37851730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f22156d8ca1af36c925f9be56b9a6eae2737f8af59fd33a2a1bbf7acbe9ce7`  
		Last Modified: Fri, 25 Sep 2026 22:38:33 GMT  
		Size: 53.1 MB (53092815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a50f909f8147605d1ac19a8d8307db78e5cf66a9fe7e215d645d2bb283e07d`  
		Last Modified: Fri, 25 Sep 2026 22:38:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45366d49614b7a5cf67aa31033bd3be5a2f4cfe033ae0ced4ab2c0b5f402e441`  
		Last Modified: Fri, 25 Sep 2026 22:38:31 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c2b316e839a9ef806bfdfb2b0075682d243b2c47ca9e442f5b43f454eef9ee40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3729683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f2de4453ce62f22012a187059cd4f912c54c021e431b23f39791308020b7ec5`

```dockerfile
```

-	Layers:
	-	`sha256:21a88f56c8315a9a19c4a103a6885afa9a7077f288d0e4cb89d8ddc35b4db9fa`  
		Last Modified: Fri, 25 Sep 2026 22:38:32 GMT  
		Size: 3.7 MB (3709281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42d4790400e802a179bf9de9b3174bfa1e1619737ff6509196825f661afd9b13`  
		Last Modified: Fri, 25 Sep 2026 22:38:31 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c23683825819c9083c9e34d173b1547fad3422a983e72570f21165d61ee59557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123196817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9a1ac5c93f98b1e5df70fedc4afa347478a51789eb5995973ca0b585173eac`
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
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:20 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:37:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:20 GMT
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
	-	`sha256:535820568ee8f8d2cd81b9311e4aa48eb4b7d9b5165bebf8e7266b58a04e5fbc`  
		Last Modified: Fri, 25 Sep 2026 22:37:35 GMT  
		Size: 52.3 MB (52268508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2783bf1cc97ef7ad5345b2a3f077c202d2cec88a40f3eb522daec9a6e206b160`  
		Last Modified: Fri, 25 Sep 2026 22:37:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b990df3ba56b52e74a820d03bad14f4626abe985ed9a4a20b7055201f5fb3e`  
		Last Modified: Fri, 25 Sep 2026 22:37:33 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a904b5943b16fa6349505c100fb60753d5ab6fea3f48dfb0b507808156885a32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3729201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76c31213b16de019220eb2501cf90f19956b3f8067f54e9aec89011fa0faa6d4`

```dockerfile
```

-	Layers:
	-	`sha256:fc141a0018208e0a0a979bcd7993a900b19883dedd5a679e181b6ebfb5560c7b`  
		Last Modified: Fri, 25 Sep 2026 22:37:33 GMT  
		Size: 3.7 MB (3708695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc8762c66127a6af0aafd21b4a87b836df6c69e26d3ddff550720a6e49870e80`  
		Last Modified: Fri, 25 Sep 2026 22:37:33 GMT  
		Size: 20.5 KB (20506 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:51a597dad4ff6a33a2ea4bc343e6df0a698b730c5c8805ed97506de4bfcc4833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131818197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df39a45ec5e5df65121b59344c833716c0e6e3962e11b1616d86c762aa30e6b4`
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
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:59:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:59:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:59:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:59:13 GMT
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
	-	`sha256:2df1ed05df2533cd8cd1928dccffbc085548368d1a3ca396a29d2f56c166a53e`  
		Last Modified: Fri, 25 Sep 2026 22:59:48 GMT  
		Size: 53.1 MB (53111870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c358c6964547172aab700b44f3c1384f2d8c4d3559e0d423faa29e2fd663f0ab`  
		Last Modified: Fri, 25 Sep 2026 22:59:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef41950e39ced66dfa342c2d25198f003f16475867fd95d26fbb9b0d74da2a5`  
		Last Modified: Fri, 25 Sep 2026 22:59:46 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e06be0abbe166f08f7e4912639e221f29f20aa747891c2f13df36899b380298f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8a4b7ac04ad87da75361aa58711f1809bb1ce15b5d7ce44981a13bbedb0112`

```dockerfile
```

-	Layers:
	-	`sha256:8803dbb1c2b1d4afe0884ae741c2d4d17bcc53900af4ea87938a5306601f4ba9`  
		Last Modified: Fri, 25 Sep 2026 22:59:47 GMT  
		Size: 3.7 MB (3698026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8dc6fec4d86198cfa9e3c67936712747a7691087957dfc409fc42ba51c82fe0`  
		Last Modified: Fri, 25 Sep 2026 22:59:46 GMT  
		Size: 20.4 KB (20432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:3acb09bd470b9ab5e464a051cd01ee565c08bd1c30b91f270b6870ade17e6cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122668483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057a9f4f17e05841defebf029e8d8190832e309f3a28a5871dbf8876a61f8f86`
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
# Tue, 22 Sep 2026 18:47:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:47:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:47:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:47:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:47:45 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 25 Sep 2026 22:38:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f2f7507714016123f6a629892c99b0956acac81f1de397395626f22acd3f6b12`  
		Last Modified: Tue, 22 Sep 2026 12:26:46 GMT  
		Size: 34.8 MB (34805444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3aa0ab59d8c8760b17c8a375337d2d6d34fc26528e50b4b9d2a79f105fb329`  
		Last Modified: Tue, 22 Sep 2026 18:48:39 GMT  
		Size: 38.2 MB (38225709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11f9d33e26c2342e42300da5a434fdb4c0df74b0bca9b73ad8353b5ec28cbd02`  
		Last Modified: Fri, 25 Sep 2026 22:38:51 GMT  
		Size: 49.6 MB (49634730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6048091c523b01b102b4a7e47d113c1be3756943da5cd8bde66194757106b890`  
		Last Modified: Fri, 25 Sep 2026 22:38:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:188e3318f6032334e9fb72386be75fd1b7a681e5f03cb2eba3a062b570b48705`  
		Last Modified: Fri, 25 Sep 2026 22:38:50 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f3d0ccd3bc7ab8382c74860e5cc54b6d9e035c8ab7379f31dd481ffc174087ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3719673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9219a580a22a8d1515acd09155dd499efe56145f21445bf487330ac9bb2b2bb8`

```dockerfile
```

-	Layers:
	-	`sha256:be7aa1787aff26fcf2d6f2efbc407fb0f3faf4e4a9d79f5ca8dce07ef6bfc373`  
		Last Modified: Fri, 25 Sep 2026 22:38:50 GMT  
		Size: 3.7 MB (3699271 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6869300d06088631b417ec292787615f089eeb3e06694e5ee1f6b1596fe5cc31`  
		Last Modified: Fri, 25 Sep 2026 22:38:50 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json
