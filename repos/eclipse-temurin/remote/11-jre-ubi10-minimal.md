## `eclipse-temurin:11-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:b574c14a207231625eda38a813ff838d4526b2ae6078934304ec991093bcdf51
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
$ docker pull eclipse-temurin@sha256:890204ff57b01599d93a8c4e86713bc0974002c9dccd8de5d60d4521799455e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117162325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5883c7e47cb55713266103d0bf644332cce0d5f3fd2f8d4cdb87f1972a74f05`
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
# Thu, 05 Nov 2026 22:50:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:50:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:50:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:50:53 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:50:53 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 05 Nov 2026 22:50:57 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 22:50:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 22:50:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:50:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b0218091bf1acf0117c078cab67cd8be28c27f65609cc1af616ea6886997ebab`  
		Last Modified: Thu, 05 Nov 2026 09:20:39 GMT  
		Size: 34.9 MB (34932248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe746ee7a7a7e0193bff33a9098e45e402c584b9315a0562185c63bd78e8ee4`  
		Last Modified: Thu, 05 Nov 2026 22:51:13 GMT  
		Size: 37.9 MB (37890504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691416460ca879c907b8060418bd251b11c641236af0b9f10eb7596f0a2c0bac`  
		Last Modified: Thu, 05 Nov 2026 22:51:13 GMT  
		Size: 44.3 MB (44336974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86526d0a5d46b92d90a26dfab98d5a5bc45b129dcd75811def4b64687452f288`  
		Last Modified: Thu, 05 Nov 2026 22:51:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7c0286bcda193a147ba479d5fd2f2019027322b2dc1ca7705045864ebeeecd`  
		Last Modified: Thu, 05 Nov 2026 22:51:12 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:93d96764460f34df5378272943313718d36752bb56f5b208744dae10a884b22f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3721846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecf7ea585e5a0092c9948d68282766a244cd818507808b8879229cd4fac49dbf`

```dockerfile
```

-	Layers:
	-	`sha256:28467b36af070c4bf0a79ee9f45a7012bb57e4f5d4a2731c7d6af00a546499d7`  
		Last Modified: Thu, 05 Nov 2026 22:51:11 GMT  
		Size: 3.7 MB (3701444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db0ca46928ddba79dd9a7930e66838676fc1a1d317b159bea2ab17e0125d895a`  
		Last Modified: Thu, 05 Nov 2026 22:51:11 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:87c4c252de15f041d7aa94d6820958c4509a3aa5b7c44e8a4619d3d4f12386c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113558446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecf0bb8230343a811a0cdf98a411d812b3144af92171a5bfc13c34ecd2182c6f`
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
# Thu, 05 Nov 2026 23:29:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 23:29:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:29:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 23:29:06 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 23:29:06 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 05 Nov 2026 23:29:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 23:29:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 23:29:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 23:29:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7aee463747d818b9fbc2248922298e0ccf21bdb30d3990b9ca3eec1000343059`  
		Last Modified: Thu, 05 Nov 2026 09:38:32 GMT  
		Size: 33.1 MB (33070630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49217d5767224588f59afe88f0f4ce4c2fdf136794b09cad8056cfb5e24e1abf`  
		Last Modified: Thu, 05 Nov 2026 23:29:24 GMT  
		Size: 37.8 MB (37835500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0a8155d5e2470a29df95683ad91ea3d9992e67fcc4b11db4105adafcabd0f8`  
		Last Modified: Thu, 05 Nov 2026 23:29:24 GMT  
		Size: 42.6 MB (42649718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e8af73ce894e5553c78fbba2887621ca105a08d0996bdfdd8088389f38a5a1f`  
		Last Modified: Thu, 05 Nov 2026 23:29:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e796710fece7e37038b8a7e0d7e28996ff964b6c4e4459e0008ab1dbea7353a6`  
		Last Modified: Thu, 05 Nov 2026 23:29:22 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c14d2f0cf8e1cdb40c2bad290e9be14405873532baa273b1a219cbc8517ad857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3721982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f0d14e6c7680e44fcd810c9bcbc9b7eccce5952280140d8dff0bf9941ead65`

```dockerfile
```

-	Layers:
	-	`sha256:9c3062ca739c444152f965ff77845276df2c7e5997ce8a73a93cd9a823dd7b6c`  
		Last Modified: Thu, 05 Nov 2026 23:29:22 GMT  
		Size: 3.7 MB (3701476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dea2e0912f618c0fac1dad1a3d97647f7c95835785a061cb8d4fd01ad6542856`  
		Last Modified: Thu, 05 Nov 2026 23:29:22 GMT  
		Size: 20.5 KB (20506 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:6b09aad3b2f593eb7221a82063332502dd8f5533132d5b7efdb198ea8be35adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118597028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7980f64456787d9cbe4d71586352d7c985e53c91158a17568d8a8b26c985da64`
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
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 06 Nov 2026 10:19:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 06 Nov 2026 10:19:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 06 Nov 2026 10:19:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 06 Nov 2026 10:19:38 GMT
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
	-	`sha256:76ee608aa0fb10b742a7c5ff691e8ef39e214466d990d798163da860ffa57aee`  
		Last Modified: Fri, 06 Nov 2026 10:20:06 GMT  
		Size: 39.8 MB (39848376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f746114e79fd40febaef937fd31b078d727c76cb49423fe2a11326dea67a0cf`  
		Last Modified: Fri, 06 Nov 2026 10:20:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe184ad77b5df6cb94e9b1a011ef5a238473ee8ac91263ca5bf4c636dba81ae`  
		Last Modified: Fri, 06 Nov 2026 10:20:05 GMT  
		Size: 2.5 KB (2468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:33f30c752174306dfb4cf83de0b1e1641664ebdab18f7cb1571691f766cf2048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3710627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92d334a36d2902e48c4767a2e4c80bc5afb4d644b85aff1bd8e655e78574fb0`

```dockerfile
```

-	Layers:
	-	`sha256:cf1a3c30510a6eda3f0eea680d44893b947afb75dbcfe642515ec043dd5ddda6`  
		Last Modified: Fri, 06 Nov 2026 10:20:05 GMT  
		Size: 3.7 MB (3690195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbbea4a042c59e7be0abe807f9dbfbba11959dbd07c26fd95a6e3488089db9a1`  
		Last Modified: Fri, 06 Nov 2026 10:20:05 GMT  
		Size: 20.4 KB (20432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:bc0000b336e613eae72c4286769a1b9faf0a2c38db87976f60315c1fbeb5a989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111375789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6125788d628bd69eb09f83a1731f52c55027a14c527fbfdd4deac90bef805265`
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
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 05 Nov 2026 22:56:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 22:56:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 22:56:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:56:53 GMT
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
	-	`sha256:890cda424c3c20a1bc3a13aced6f3a4b8d3e987ed55be7e6561439f9afd3d9cc`  
		Last Modified: Thu, 05 Nov 2026 22:57:14 GMT  
		Size: 38.3 MB (38312358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304c13c82ddc3e40a95de1b35ff9adcf598f8c0ddaa6c29648edb0b69b5128ef`  
		Last Modified: Thu, 05 Nov 2026 22:57:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad5841d4c33ed85296bbc4e02c995586849af4057da1169affd219d9e37f37f`  
		Last Modified: Thu, 05 Nov 2026 22:57:12 GMT  
		Size: 2.5 KB (2467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2d5b3bdec4b016bf4cd0d124634f410153a7c96f1d5170daa9e7c5b5c70de366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3711842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86689869ac364b8400e32a538edb69cad92e15532e785541d2b2775be4f1e8f`

```dockerfile
```

-	Layers:
	-	`sha256:334c432de01148767640362aaaa09f3d2964c09d2c6ac9a90098812f33720d1b`  
		Last Modified: Thu, 05 Nov 2026 22:57:12 GMT  
		Size: 3.7 MB (3691440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79ecb60ab856177f1c4f827d9ff4612ef0223e517bfdeae7a5596e4c36773633`  
		Last Modified: Thu, 05 Nov 2026 22:57:12 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json
