## `eclipse-temurin:25-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:91cc55329ba7f6bf9cab36856d8b223e5ebf4a04263c03e44df15c45701f8e18
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

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:bec62c85f7e2e611461a330474cd689cf89f65ae53369ceb15df655a6542da36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126657527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eb3832aa8929313d223efe418eaf39bcea5c8b3fc1fb6ea763d349b3baa07a0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 23:30:29 GMT
ENV container oci
# Wed, 04 Nov 2026 23:30:30 GMT
COPY dir:4d560116149d68c45acaa63b56ff293dcae47fabcda8ad6571764b0825e47e6e in /      
# Wed, 04 Nov 2026 23:30:30 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 23:30:30 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 23:30:31 GMT
COPY dir:bbba34ab9bdf461e4067b9dfcb1aad81c9c3962e23b001e64947a0a66c8f0a05 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 23:30:31 GMT
COPY dir:bbba34ab9bdf461e4067b9dfcb1aad81c9c3962e23b001e64947a0a66c8f0a05 in /root/buildinfo/      
# Wed, 04 Nov 2026 23:30:31 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T23:30:06Z" "org.opencontainers.image.revision"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "build-date"="2026-11-04T23:30:06Z" "architecture"="x86_64" "vcs-ref"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "vcs-type"="git" "release"="1793834883"org.opencontainers.image.created=2026-11-04T23:30:06Z,org.opencontainers.image.revision=b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6
# Wed, 11 Nov 2026 22:35:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:35:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:35:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:35:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:35:32 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 22:38:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 22:38:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:38:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:38:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b678bad408ae33518fc2717ea9f3a0b3756774b7413325a1b7450af23c75bef9`  
		Last Modified: Wed, 11 Nov 2026 05:41:47 GMT  
		Size: 35.0 MB (34986613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9ecb2e0780d99ae3790c4fe02af12511d006255d99ccd586e2b4944f17e066`  
		Last Modified: Wed, 11 Nov 2026 22:35:49 GMT  
		Size: 28.7 MB (28704525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61e3a25f3083f272ece1e9c8f1b0050b0518926f6dec8d6be6fc5decb6ad84a`  
		Last Modified: Wed, 11 Nov 2026 22:38:43 GMT  
		Size: 63.0 MB (62963791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a519050fd12f164f20751b385491bcfef7f289f67470f94f2ed5a8d89539140a`  
		Last Modified: Wed, 11 Nov 2026 22:38:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb340c59f44c07c45e0e38343f9c7e93e2121b3470aa13e5ecf82e9c031d3dac`  
		Last Modified: Wed, 11 Nov 2026 22:38:42 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:701cc20d17d81514d00ef3e3875e175dad6de7d06692b6bbd97dcf6c2b9819a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2978813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f654ee644fa98b07e10e60a74f429668b4dafe6b4f66ba7cec7b65194be69726`

```dockerfile
```

-	Layers:
	-	`sha256:889faa0b069923477e9144a2c519fc4c57d6d6224f8f0f0f3db6bbca3121c25b`  
		Last Modified: Wed, 11 Nov 2026 22:38:42 GMT  
		Size: 3.0 MB (2958485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ae4ba8a641cba6d1e276b96c336f6cfc0e48962d6a996eafe2e2bff69a8f960`  
		Last Modified: Wed, 11 Nov 2026 22:38:42 GMT  
		Size: 20.3 KB (20328 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:fcc46f37a41fcfd92654e266000cc7c81497d80e4ca1c958b9819aad16fc511c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123012573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210666f710d219c3a877b65a7273f18601f5f447fc2658559b45e1021be22e18`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 04 Nov 2026 23:32:59 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 23:33:00 GMT
ENV container oci
# Wed, 04 Nov 2026 23:33:01 GMT
COPY dir:00dfc6e48ac5d871b75ee77968140e118f5bfdd254e76e400fe5bc8327903cc7 in /      
# Wed, 04 Nov 2026 23:33:02 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 23:33:02 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 23:33:02 GMT
COPY dir:09d1c8b8d9e999b3fc5ed6d1285e597b23e8ff69aefeac9bd5c5c8826b05d8df in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 23:33:03 GMT
COPY dir:09d1c8b8d9e999b3fc5ed6d1285e597b23e8ff69aefeac9bd5c5c8826b05d8df in /root/buildinfo/      
# Wed, 04 Nov 2026 23:33:03 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T23:32:32Z" "org.opencontainers.image.revision"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "build-date"="2026-11-04T23:32:32Z" "architecture"="aarch64" "vcs-ref"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "vcs-type"="git" "release"="1793834883"org.opencontainers.image.created=2026-11-04T23:32:32Z,org.opencontainers.image.revision=b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6
# Wed, 11 Nov 2026 22:07:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:07:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:07:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:07:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:07:49 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 22:08:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 22:08:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:08:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:08:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:be0565b917b07cbdde393c02afeb603fae99c9ecaaabb5caf02a1f90e2f13b13`  
		Last Modified: Wed, 11 Nov 2026 06:31:36 GMT  
		Size: 33.0 MB (33046604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bf9646ab2ca47886fdd42e2ea3c3534d4f048f575d3741904f42b216386d60`  
		Last Modified: Wed, 11 Nov 2026 22:08:06 GMT  
		Size: 28.1 MB (28124181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04c4789d1e1934dbe4ad73f68c8a180030be5bc4ac49e18cadb5685c7eabca0`  
		Last Modified: Wed, 11 Nov 2026 22:08:40 GMT  
		Size: 61.8 MB (61839191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb6f9f804a752c7acc4011d1ca9052c80a6cb075d7832a43e97c672b7d47f57`  
		Last Modified: Wed, 11 Nov 2026 22:08:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833446674feb50e31392f429ac268625bd74b4f130b4ed54316f72047ec71200`  
		Last Modified: Wed, 11 Nov 2026 22:08:38 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:632aed0315aa1e6c790cc8c3c4b27fb5d7f993d54c10e03f20ae1a8afd4e948f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2978330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4030db799c7ef86dfb7048959f4f52d342d72c9ba70babd716b4a46ba4be2d`

```dockerfile
```

-	Layers:
	-	`sha256:29c4832e1aaf2926af7503fbd3c6baa60d81782b630abd23fee9225a598f3dd1`  
		Last Modified: Wed, 11 Nov 2026 22:08:38 GMT  
		Size: 3.0 MB (2957896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c316df5eb9eb91ec71feca31903a19e20f90cbe38b3ff97b8bc287136cd0524`  
		Last Modified: Wed, 11 Nov 2026 22:08:38 GMT  
		Size: 20.4 KB (20434 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:8768a6210cde81abb78c8802e710b242b8a5b9f881f4025473f5c64f11abeb52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.5 MB (139498325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d86bbf550bd5662de1959562de2ac97a252b151e672ba3d17c73bceb2073774`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:29:05 GMT
ENV container oci
# Mon, 09 Nov 2026 12:29:06 GMT
COPY dir:0142191d7882bfcd1a642f157feb9fe0f606d143d9c1d9a77ef434e357ac4cf5 in /      
# Mon, 09 Nov 2026 12:29:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:29:06 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:29:06 GMT
COPY dir:eb3e47531baf4fb6578dff0b54a6c80c07b067beb496e68f478fd566ca4500c9 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:29:07 GMT
COPY dir:eb3e47531baf4fb6578dff0b54a6c80c07b067beb496e68f478fd566ca4500c9 in /root/buildinfo/      
# Mon, 09 Nov 2026 12:29:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:28:37Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:28:37Z" "architecture"="ppc64le" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:28:37Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 23:52:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 23:52:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 23:52:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 23:52:23 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 23:52:23 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 00:02:45 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 00:02:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 00:02:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 00:02:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ed28db74a3ef4dc59de6b526427c8c3a556936eb057f0923cc4be84bca6817bb`  
		Last Modified: Mon, 09 Nov 2026 18:22:05 GMT  
		Size: 39.1 MB (39069438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4082f8f249a65d1ca6e2dff783e599cebda5fb8051de428b448ce5c2cf783a1b`  
		Last Modified: Tue, 10 Nov 2026 23:53:10 GMT  
		Size: 39.7 MB (39671657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35581afe9f90365643b88c81645677902609c260d6a52e6c12812de16e0e0432`  
		Last Modified: Wed, 11 Nov 2026 00:03:19 GMT  
		Size: 60.8 MB (60754630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d8e505991b68b6769e32b49c98bf48da544176ad75bc16633cfa2a9ecf3e0`  
		Last Modified: Wed, 11 Nov 2026 00:03:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91fbadbafe14eca069aaed9bbd7ebeabee1dd97e03d0cad8e483f3cbd63b8f6`  
		Last Modified: Wed, 11 Nov 2026 00:03:17 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:46b2899d2aa39d8aaeac78c31d07796791f2a173d9d3443bbfe0a220dadd7b33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3704376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a616588e419d9ef3c057321bfcadf2d10ac1410496ea6a9a718dbf2a4f73b595`

```dockerfile
```

-	Layers:
	-	`sha256:5d28a1ed52377bb470fb35f400ba48cb2ad0531aefdbf3f35dbc33982133230b`  
		Last Modified: Wed, 11 Nov 2026 00:03:18 GMT  
		Size: 3.7 MB (3684016 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25e6e69fd5ca7840014349c6199478003d13c78e040bba863826eb3d72e32d60`  
		Last Modified: Wed, 11 Nov 2026 00:03:17 GMT  
		Size: 20.4 KB (20360 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:022d648d924febb9c5d808bc88f4bab0b81cbb119561c79fb4390d7b4977ea13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123182299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ce005eef4c4556327e2a5346c9d449a7dea049079e80f10138bf70e9f714f4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 23:50:00 GMT
ENV container oci
# Wed, 04 Nov 2026 23:50:01 GMT
COPY dir:41abef77eb7d97eab361d6702f401bd5cabc610a431fcfa74f91581ed0526b5d in /      
# Wed, 04 Nov 2026 23:50:01 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 23:50:01 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 23:50:02 GMT
COPY dir:d343be6a52b8557eb861538e14970a879c5cc4665db0ebe3128e0898b89043c6 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 23:50:02 GMT
COPY dir:d343be6a52b8557eb861538e14970a879c5cc4665db0ebe3128e0898b89043c6 in /root/buildinfo/      
# Wed, 04 Nov 2026 23:50:02 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T23:48:44Z" "org.opencontainers.image.revision"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "build-date"="2026-11-04T23:48:44Z" "architecture"="s390x" "vcs-ref"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "vcs-type"="git" "release"="1793834883"org.opencontainers.image.created=2026-11-04T23:48:44Z,org.opencontainers.image.revision=b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6
# Wed, 11 Nov 2026 22:06:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:06:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:06:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:06:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:06:02 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 22:09:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 22:09:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:09:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:09:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:64602be39c30ba4b6fc71c0d4cb6a6f38368d784d4735696f044d24b7c2453f8`  
		Last Modified: Wed, 11 Nov 2026 06:31:41 GMT  
		Size: 34.8 MB (34825852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16490594eec9e7e1d04d2180aa0fcadbc4e41d0dea94521010e445b9106ee8a2`  
		Last Modified: Wed, 11 Nov 2026 22:06:44 GMT  
		Size: 28.3 MB (28292395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787fddca7f20e25b51499c75a7b9d903441d31cea1596bc44886b5b50add8061`  
		Last Modified: Wed, 11 Nov 2026 22:10:26 GMT  
		Size: 60.1 MB (60061453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9a12eb523643ad09fa0e1568d365d1d73bbf1c8fc8eeb503fe06c50e268c0e`  
		Last Modified: Wed, 11 Nov 2026 22:10:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74d1a7383123076418464cf72cb2f45e1f27795b5c3b972a67a1ca4555dfe2f`  
		Last Modified: Wed, 11 Nov 2026 22:10:23 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1a579a915c0935065f3fa6a3c78ef79252580a8da0cb2c5b81e34d1c46289f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2973862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:677872ef9b38567394ca88d6b309797c220bddf56638397c3ae2de2992979de7`

```dockerfile
```

-	Layers:
	-	`sha256:c94b5c55fa9fffd019de561a82022793f9aa41594db70f794dcfb507af270177`  
		Last Modified: Wed, 11 Nov 2026 22:10:24 GMT  
		Size: 3.0 MB (2953532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93e184ac5ec3a9aa3da58658a19dbd47f5aea660e1a884703061d05606f43d6b`  
		Last Modified: Wed, 11 Nov 2026 22:10:23 GMT  
		Size: 20.3 KB (20330 bytes)  
		MIME: application/vnd.in-toto+json
