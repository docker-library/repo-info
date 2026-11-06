## `eclipse-temurin:8-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:450fb48f6a7260a956bc6b1dabf5bc49b3eaad23f032820acb7e22a5f48cc5d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:4554a5f38b299cf0cb06e75d2f595261c45a3490bbbc565191c3a3c2b8d93bcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128018122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7ffa22d76c7e6211b51f970e1f01537572dc6f2d85585a4f142124e1818318`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:34:34 GMT
ENV container oci
# Thu, 05 Nov 2026 07:34:35 GMT
COPY dir:3fc2149cba1aae646de340c6940fc0331b4ca2629dd609c7c1400ec115ce9c6e in /      
# Thu, 05 Nov 2026 07:34:35 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:34:35 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:34:35 GMT
COPY dir:4e6d61acac5151d768954527c7c38c6ff552deec8d1877e12657822d3387682c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:34:36 GMT
COPY dir:4e6d61acac5151d768954527c7c38c6ff552deec8d1877e12657822d3387682c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:34:36 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:34:13Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:34:13Z" "architecture"="x86_64" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:34:13Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Thu, 05 Nov 2026 22:50:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:50:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:50:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:50:52 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:50:52 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 05 Nov 2026 22:50:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 05 Nov 2026 22:50:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 22:50:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:50:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b0218091bf1acf0117c078cab67cd8be28c27f65609cc1af616ea6886997ebab`  
		Last Modified: Thu, 05 Nov 2026 09:20:39 GMT  
		Size: 34.9 MB (34932248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e08ea0c4f416657044c4867d518baeaf68fda66af5ef43a037748513c51396`  
		Last Modified: Thu, 05 Nov 2026 22:51:12 GMT  
		Size: 37.9 MB (37890478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d799b91bf141747458b1956141ae37abca3a364ba97aa4c9010774b425d1aa0`  
		Last Modified: Thu, 05 Nov 2026 22:51:12 GMT  
		Size: 55.2 MB (55192779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c457839221cef3922e4e2e4eee71494651428d21bac338526e86974a1c5147d4`  
		Last Modified: Thu, 05 Nov 2026 22:51:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90fa0c80052b3f13d95e455a30f8d775a3e8bbe2f25ab2f3f91f0f68fcffefb9`  
		Last Modified: Thu, 05 Nov 2026 22:51:10 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ca7305ce31d02cc1d45957e972744aee17fee2c8cc764e7ac86fd98aeb047ec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3914453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd06af88e51dd778912c1f6f7e5dc50207c006f09dfc1fa2f07ae94cc1f2f5f0`

```dockerfile
```

-	Layers:
	-	`sha256:494ea4184bf2c57cc7f6f12ec9542160edf09c02a4e9bfded0e8756b0049ff01`  
		Last Modified: Thu, 05 Nov 2026 22:51:10 GMT  
		Size: 3.9 MB (3894415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:512de2add7b825395954f0fce32d384469229859adbc71d6de248f527cbb0c13`  
		Last Modified: Thu, 05 Nov 2026 22:51:10 GMT  
		Size: 20.0 KB (20038 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:1b601d56927a30075bcaaa8a9edb2c255c39b59354b979974769eda973d4ebbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125163413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8f92b15ac4d91518adc38445a64d0565188864a48505c666d5a32ef345a4c2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 07:38:12 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:38:12 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:38:13 GMT
ENV container oci
# Thu, 05 Nov 2026 07:38:14 GMT
COPY dir:089f13b60ac5a6f3bf2df00bfd8d6b35f10e4772d781538a85ad7aaebf293498 in /      
# Thu, 05 Nov 2026 07:38:15 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:38:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:38:15 GMT
COPY dir:699a403b7779230891a676ebf5796e52df215eef6e8dd13c3f34836659e0116f in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:38:15 GMT
COPY dir:699a403b7779230891a676ebf5796e52df215eef6e8dd13c3f34836659e0116f in /root/buildinfo/      
# Thu, 05 Nov 2026 07:38:16 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:37:45Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:37:45Z" "architecture"="aarch64" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:37:45Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Thu, 05 Nov 2026 23:26:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 23:26:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:26:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 23:26:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 23:26:45 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 05 Nov 2026 23:26:49 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 05 Nov 2026 23:26:49 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 23:26:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 23:26:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7aee463747d818b9fbc2248922298e0ccf21bdb30d3990b9ca3eec1000343059`  
		Last Modified: Thu, 05 Nov 2026 09:38:32 GMT  
		Size: 33.1 MB (33070630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85976c970094f29a2c2b9d47be29bdbd19e8307fdc3a4e825d75789e258c48eb`  
		Last Modified: Thu, 05 Nov 2026 23:27:05 GMT  
		Size: 37.8 MB (37835313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a5f8c41ef71c17da9cac410db052f89e841221a50352c2de2d0b463d4781ed`  
		Last Modified: Thu, 05 Nov 2026 23:27:05 GMT  
		Size: 54.3 MB (54254853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba1bf0645c2d1c901d90b5555d6bbde8d8300129454297efb5194cfa0345ce4f`  
		Last Modified: Thu, 05 Nov 2026 23:27:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c0767ec79a5946855779da1b4e5b4e5ccdd9d7f625911947784abd9eb4c70c`  
		Last Modified: Thu, 05 Nov 2026 23:27:04 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7113e3e3c02f1668d04843b8b5f37669074ede9213b7b9dea1fcd2f8f5bb64a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3914695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f618e6866e79379c602b5a5aa6579717185860d4e3ad7e258081cf36dc23b746`

```dockerfile
```

-	Layers:
	-	`sha256:8e0547a62d650193384a7f309e3e28fe3c1e08fed0a55f026771fd4344a8f8b7`  
		Last Modified: Thu, 05 Nov 2026 23:27:03 GMT  
		Size: 3.9 MB (3894541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2935633edef68dfe2787b8847b3ca5f87538536eb26c7d45f4a83a917e493c4c`  
		Last Modified: Thu, 05 Nov 2026 23:27:03 GMT  
		Size: 20.2 KB (20154 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:938772f18bfe88db7c9b549064862c58a5be2c74b0a51e3c3770598d4d80759c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131416377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e07c2c9fa06e556f8a2446a92f6b43ee56bc41b08acf9732f2a912ba4480fe`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:40:30 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:40:30 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:40:30 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:40:30 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:40:30 GMT
ENV container oci
# Thu, 05 Nov 2026 07:40:30 GMT
COPY dir:ef0a5b3221286bc5da7ded1d6d73993149619ebbfa1eff48bd10630e811a62f3 in /      
# Thu, 05 Nov 2026 07:40:31 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:40:31 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:40:31 GMT
COPY dir:bc858c1c076be826efb9489bf63488f5dbdd270173dcfb63b9afab32a68c8beb in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:40:31 GMT
COPY dir:bc858c1c076be826efb9489bf63488f5dbdd270173dcfb63b9afab32a68c8beb in /root/buildinfo/      
# Thu, 05 Nov 2026 07:40:32 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:40:01Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:40:01Z" "architecture"="ppc64le" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:40:01Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Fri, 06 Nov 2026 10:15:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 06 Nov 2026 10:15:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:15:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 06 Nov 2026 10:15:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 06 Nov 2026 10:15:49 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 06 Nov 2026 10:16:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 06 Nov 2026 10:16:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 06 Nov 2026 10:16:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 06 Nov 2026 10:16:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e2df2a13f2a2146cbf4edd81ddf04fddc43c45871b3c10eea6e38c08cdc09fc0`  
		Last Modified: Thu, 05 Nov 2026 12:26:21 GMT  
		Size: 39.1 MB (39077253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae5ca79aa4bfeebb6e95239c5d4e9200e790e213dcca34bd1a5b5d65159f996`  
		Last Modified: Fri, 06 Nov 2026 10:16:40 GMT  
		Size: 39.7 MB (39668802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97263f8d9a2f83497f075a0c0e9bff850702f35a4ecc0eefd98601bdcf5f51ed`  
		Last Modified: Fri, 06 Nov 2026 10:16:40 GMT  
		Size: 52.7 MB (52667703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:072426872be3a2410a124afad6421d647c802454f96a6eca14d7c7bb102bf780`  
		Last Modified: Fri, 06 Nov 2026 10:16:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898b9505a0adbcb8570f6868d310f20895454d1d6f8fd77b5798e2bab4616c93`  
		Last Modified: Fri, 06 Nov 2026 10:16:34 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7af063eeaf693ad12d5c55c8718cf2546484d4823448a33136df02edc3ecf2eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3901917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bcd10e1e82ef6f17fb0a2ce8edbdfdb9f27eb9fab7dab80745484a031e853ff`

```dockerfile
```

-	Layers:
	-	`sha256:d95157c4a00972c287f24cd22bcf11218818d29b0a5c23a02ccf89874f32b7f9`  
		Last Modified: Fri, 06 Nov 2026 10:16:37 GMT  
		Size: 3.9 MB (3881842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46ee52bde1d594cea8e7ad85a88c251818e2f07a9bec7401f8ce4380e58a968e`  
		Last Modified: Fri, 06 Nov 2026 10:16:37 GMT  
		Size: 20.1 KB (20075 bytes)  
		MIME: application/vnd.in-toto+json
