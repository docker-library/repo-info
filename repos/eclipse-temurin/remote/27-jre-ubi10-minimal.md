## `eclipse-temurin:27-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:744c9e2901272df24897c90cd1e40fc7877e18efac2aa9fa8a0e34eb861be8af
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

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:176a11f080bfea531ba3453fc7b9ada5f17e411bb41f0b78e94d2ebc79074d9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136201525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74e3159380de72e6e3a8a3e479994ffd895871dfbee8d15c3160421d9196cc9b`
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
# Mon, 09 Nov 2026 23:35:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:35:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:35:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:35:54 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 09 Nov 2026 23:35:54 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:59:44 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d77286f01dc2482e483a20c9c80591e3d4c38b27a6e035268a4f213a8e8bd1e8';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='3024a37374f4f73da17560907cb24e42e89148e10c47f423d26b0d70dc1ba254';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='7d50814d945ad726824329658b58e032f003b3faa13c69ad1d0308a6743d60c6';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='104b5d204314aa33dff4a9a5b925e2c58790e9d8cd7097b678e8e4d8cf86ced0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:59:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:59:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:59:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b0218091bf1acf0117c078cab67cd8be28c27f65609cc1af616ea6886997ebab`  
		Last Modified: Thu, 05 Nov 2026 09:20:39 GMT  
		Size: 34.9 MB (34932248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeeede9747b7f9f63c026f42082419a39ea3db600cf2f6a7629d47cdb45080a4`  
		Last Modified: Mon, 09 Nov 2026 23:36:09 GMT  
		Size: 37.9 MB (37890547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fac5c5cdbfdaae85ca0f23d366be3875d12d1127602c40b78ee895c5bf45247`  
		Last Modified: Tue, 10 Nov 2026 00:00:02 GMT  
		Size: 63.4 MB (63376130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09066ca380e1002eaa038501d9769a4d8d7ce87339ebdfffcd1b8eff0a219a64`  
		Last Modified: Tue, 10 Nov 2026 00:00:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96caa719926fae54e338b82e9a6316f3150a9eec9942120f53d46d6cf835d228`  
		Last Modified: Tue, 10 Nov 2026 00:00:00 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3bee992d8ed756294086832bf9db2014a08346a4938e585a742b9b8888de8eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3715064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7f137339258f743e9340dfe5004855ba4c370969a5c35f161dae00cf6530df`

```dockerfile
```

-	Layers:
	-	`sha256:1627d5402a8b2517791ba4a211cb616eb2ffe64c4e4ca8acfdc7429debccdc95`  
		Last Modified: Tue, 10 Nov 2026 00:00:00 GMT  
		Size: 3.7 MB (3694662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd11c7a472258bb14cf043f14eac04fd142c262dd9810394465f95f3c074b389`  
		Last Modified: Tue, 10 Nov 2026 00:00:00 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:3ee885b3a61691adb9d492c807357cb57bff070e657a7729c83ff11208190c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133227547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87cb5fa052bc5cf058fe7f19ae2229e92c0138cfc36f04f08fc087a71bd78084`
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
# Mon, 09 Nov 2026 23:35:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:35:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:35:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:35:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 09 Nov 2026 23:35:17 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:59:01 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d77286f01dc2482e483a20c9c80591e3d4c38b27a6e035268a4f213a8e8bd1e8';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='3024a37374f4f73da17560907cb24e42e89148e10c47f423d26b0d70dc1ba254';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='7d50814d945ad726824329658b58e032f003b3faa13c69ad1d0308a6743d60c6';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='104b5d204314aa33dff4a9a5b925e2c58790e9d8cd7097b678e8e4d8cf86ced0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:59:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:59:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:59:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7aee463747d818b9fbc2248922298e0ccf21bdb30d3990b9ca3eec1000343059`  
		Last Modified: Thu, 05 Nov 2026 09:38:32 GMT  
		Size: 33.1 MB (33070630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd7b49c407a01a09ae452f32a3bea25d0a8940e356aaec67c2c502303160316`  
		Last Modified: Mon, 09 Nov 2026 23:35:34 GMT  
		Size: 37.8 MB (37835304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d08aafce038e969172b64bf188b0acb99842eeec73f82ebe98d1724ba26468`  
		Last Modified: Mon, 09 Nov 2026 23:59:18 GMT  
		Size: 62.3 MB (62319016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b338de44f7a0241ab92103f7891d459590c179e5c9512dcec7286db395dde6`  
		Last Modified: Mon, 09 Nov 2026 23:59:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0b703d481308808a41bc76100ab43e386497617936b9cbf27ab6deb906fcf2`  
		Last Modified: Mon, 09 Nov 2026 23:59:16 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:457637a65d79a52c7da0a7c0f9c841f0bebc4475b54bbe139a6bab48798e5bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91764be11e63314cb4747f629d449d2a43e4b7e7e51841e1f011bc49f6baee41`

```dockerfile
```

-	Layers:
	-	`sha256:9b7248609237e302e94c3c1941855530d75c3b732adfefaa6993a323041b7160`  
		Last Modified: Mon, 09 Nov 2026 23:59:16 GMT  
		Size: 3.7 MB (3694073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f337540ba070c8bb2f0a09a158edf81ed89a5104b10e73d78dca65c80a3356f`  
		Last Modified: Mon, 09 Nov 2026 23:59:16 GMT  
		Size: 20.5 KB (20506 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:5e27e0c6295fdfdaedf6fb271bb81a25492c15a0f6c553eb8004251a09c2b16d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.7 MB (140669254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c598d015761080db761d214548f0af7853ec3712f52a4d3d3e4297670970dfd`
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
ENV JAVA_VERSION=jdk-27.0.1.0
# Tue, 10 Nov 2026 00:21:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d77286f01dc2482e483a20c9c80591e3d4c38b27a6e035268a4f213a8e8bd1e8';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='3024a37374f4f73da17560907cb24e42e89148e10c47f423d26b0d70dc1ba254';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='7d50814d945ad726824329658b58e032f003b3faa13c69ad1d0308a6743d60c6';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='104b5d204314aa33dff4a9a5b925e2c58790e9d8cd7097b678e8e4d8cf86ced0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 00:21:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 00:21:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 00:21:07 GMT
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
	-	`sha256:ab27699c1cbbb9364a8ec1e4df0ab4dd0c04841af947e6058cf326fbe1cfe32f`  
		Last Modified: Tue, 10 Nov 2026 00:21:38 GMT  
		Size: 61.9 MB (61920600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1750dcbf2551c48446407b67c510b01e7d749c72f2e4e9759fe74e21944eb30f`  
		Last Modified: Tue, 10 Nov 2026 00:21:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b836fc1ed0dbff2af59ec066b000f53687a355a73c5686ac6dc52c4968ffcba4`  
		Last Modified: Tue, 10 Nov 2026 00:21:36 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7116ddbd26d0547fbebad8fc4b87b67f79cde7f27f9d4ca4438e7adbd29fbc7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3701971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9a3c7edd51bff548f62ae3d3274ba14a9c91424341640f3cf506c11ea6a9636`

```dockerfile
```

-	Layers:
	-	`sha256:059900edaa5bbc697252667abb21376ddff033c818aecce085dca661e077a8fe`  
		Last Modified: Tue, 10 Nov 2026 00:21:36 GMT  
		Size: 3.7 MB (3681540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71c10cfae024b8e70018a7ae285db7ca3555aa31e5ba94710fd64afd6e8055ff`  
		Last Modified: Tue, 10 Nov 2026 00:21:36 GMT  
		Size: 20.4 KB (20431 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:df8455a5a0b90e39a1a71a10bba9141e5369a259b11134dd7b9cdd90289d5b0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.5 MB (134466680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5816ce0cb51736c4d5abd6db2b209870023eefe940a8b975a5c25a5a21fcbc57`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 08:48:01 GMT
ENV container oci
# Thu, 05 Nov 2026 08:48:01 GMT
COPY dir:58e5cbdf987899e4e343a163bb22217cbde7bf746a590beffe7a2cdc589f8192 in /      
# Thu, 05 Nov 2026 08:48:02 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 08:48:02 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 08:48:02 GMT
COPY dir:ff22a7eb7b8af6dbfdfe7086cf3f72f26e5740e5b5b8980b18d7a78ef06f8b34 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 08:48:02 GMT
COPY dir:ff22a7eb7b8af6dbfdfe7086cf3f72f26e5740e5b5b8980b18d7a78ef06f8b34 in /root/buildinfo/      
# Thu, 05 Nov 2026 08:48:03 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T08:46:47Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T08:46:47Z" "architecture"="s390x" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T08:46:47Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Thu, 05 Nov 2026 22:56:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:56:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:56:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:56:51 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:56:51 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:51:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d77286f01dc2482e483a20c9c80591e3d4c38b27a6e035268a4f213a8e8bd1e8';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='3024a37374f4f73da17560907cb24e42e89148e10c47f423d26b0d70dc1ba254';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='7d50814d945ad726824329658b58e032f003b3faa13c69ad1d0308a6743d60c6';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='104b5d204314aa33dff4a9a5b925e2c58790e9d8cd7097b678e8e4d8cf86ced0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:51:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:51:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:51:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cbab0f587f3ad64e48f0d9219263296257c575311ec58a5c6ef9006d5af91813`  
		Last Modified: Thu, 05 Nov 2026 12:26:16 GMT  
		Size: 34.8 MB (34788872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0f45054c0b871aa268255c4291d32fbce303015133e6a2dc2aa22747baa48e`  
		Last Modified: Thu, 05 Nov 2026 22:57:14 GMT  
		Size: 38.3 MB (38271964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03972f84750fffa75824db8025b219ba8c7b3022ec6b9580815948f5104ea6a4`  
		Last Modified: Mon, 09 Nov 2026 23:51:43 GMT  
		Size: 61.4 MB (61403244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca62ffcef6b56fa6823d4f2f2ff494673846d559817cbefcaadb1f8c77950089`  
		Last Modified: Mon, 09 Nov 2026 23:51:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d612812db692db23906891ce6a1fbade2f8de84ff5c4355349cc1dddb579a88b`  
		Last Modified: Mon, 09 Nov 2026 23:51:42 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:80c35ab1da5fd96b9caeedd185e4be5bce4c48066803944c199c3bb760b2fc99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3703186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adc0075300d4f709c25d01f6fa67c2f653c57b3881a584462c95bea36912b26`

```dockerfile
```

-	Layers:
	-	`sha256:8f888957a8aaa9a6c2bdd6b8104c37b07c9901430e0d35c2edb29ff0079449b1`  
		Last Modified: Mon, 09 Nov 2026 23:51:42 GMT  
		Size: 3.7 MB (3682785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46503b3c8446fcd3d4daf6c76eaf4ac318384bab439ef61c9dca7f851a154830`  
		Last Modified: Mon, 09 Nov 2026 23:51:42 GMT  
		Size: 20.4 KB (20401 bytes)  
		MIME: application/vnd.in-toto+json
