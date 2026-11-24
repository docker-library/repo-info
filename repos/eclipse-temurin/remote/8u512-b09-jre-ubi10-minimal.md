## `eclipse-temurin:8u512-b09-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:0161efae0656b555ea7f9f9c04a0e866935aa6008d3d0dd84831b97e20ec2b54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u512-b09-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:00a1ec2b2949801779e978f756c99d9a680e93bf9ccf843c0d4d412fa1ebbae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115346372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ece69771a75de1d0ea151281d9982120b0ce9a84f0d8e6115d7a124e091b92d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 20 Nov 2026 17:51:16 GMT
ENV container oci
# Fri, 20 Nov 2026 17:51:17 GMT
COPY dir:fb43f9b318d9eb1385df7a36cdfa57b8acbd84afb7b61664d2e25101a312d55a in /      
# Fri, 20 Nov 2026 17:51:17 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 17:51:17 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:51:17 GMT
COPY dir:9facee0b5cdcedad16ad4e0b1c536c91a058e00f974062e8ebf605fae2363b30 in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 17:51:17 GMT
COPY dir:9facee0b5cdcedad16ad4e0b1c536c91a058e00f974062e8ebf605fae2363b30 in /root/buildinfo/      
# Fri, 20 Nov 2026 17:51:18 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T17:50:47Z" "org.opencontainers.image.revision"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "build-date"="2026-11-20T17:50:47Z" "architecture"="x86_64" "vcs-ref"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "vcs-type"="git" "release"="1795196920"org.opencontainers.image.created=2026-11-20T17:50:47Z,org.opencontainers.image.revision=0b769d32f2673a0a3230de4ecb28b42ea251c690
# Mon, 23 Nov 2026 22:07:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:07:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:07:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:07:31 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:07:31 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 23 Nov 2026 22:07:34 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 23 Nov 2026 22:07:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:07:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:07:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:69350ad525f7b897d7ee64aead074bc110259aa291005b87b0609cc9f54f5aac`  
		Last Modified: Fri, 20 Nov 2026 19:50:01 GMT  
		Size: 35.0 MB (34957031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7127aaedf6305b6f310f9d9ed9c796166197990eba3782b52bb9b86691aa60fc`  
		Last Modified: Mon, 23 Nov 2026 22:07:48 GMT  
		Size: 38.0 MB (38038254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad45b41375abb2164489d5e1b9b1a54a48953e05be77b7c41eceaa69ab39722`  
		Last Modified: Mon, 23 Nov 2026 22:07:48 GMT  
		Size: 42.3 MB (42348488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4db30ea3c0993f589aa0382e2521e2c21e593c0f06698c54b02dda7a8521bac`  
		Last Modified: Mon, 23 Nov 2026 22:07:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57565ed9f95693004db9d4a5c9a95849895a4d9f2507f648695614affc1d4e0a`  
		Last Modified: Mon, 23 Nov 2026 22:07:45 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cc8d5b85f5b20cd0cfe474d2a3cad2a8df1ddf8dc383370139d9419fd45e7e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166a5a229f6e03d087a2bccdd29e74e481b1f674a73a732395369df6cce31a37`

```dockerfile
```

-	Layers:
	-	`sha256:61328876d9451db486d8e5ba147be3f3ce2e5fb517b46cc43c26ccc1929e0b1b`  
		Last Modified: Mon, 23 Nov 2026 22:07:46 GMT  
		Size: 3.7 MB (3723153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4af4f61042c34cda67ad8100dbf99d6867753aba15077a6e414afac36d309b23`  
		Last Modified: Mon, 23 Nov 2026 22:07:46 GMT  
		Size: 19.5 KB (19511 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u512-b09-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:b059a24c5776b683620086942cd50a03b830a49165180ef045c8acce4d7adb1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112320561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0134fda440a2ffbd69d096c1a1e0dfd3c06d212590c26fc7782971ba44d3cb7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:53:39 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 20 Nov 2026 17:53:39 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 17:53:39 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 20 Nov 2026 17:53:39 GMT
ENV container oci
# Fri, 20 Nov 2026 17:53:40 GMT
COPY dir:3393e986fa09bafe58a0c8dda4610ca6bdfcdf4191fc82a2323e5c063224307b in /      
# Fri, 20 Nov 2026 17:53:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 17:53:40 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:53:41 GMT
COPY dir:49c56089b2ac1702df93cb0b5cda1a4916a11c8c990bbba3f067ed09e9f3883f in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 17:53:41 GMT
COPY dir:49c56089b2ac1702df93cb0b5cda1a4916a11c8c990bbba3f067ed09e9f3883f in /root/buildinfo/      
# Fri, 20 Nov 2026 17:53:41 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T17:53:10Z" "org.opencontainers.image.revision"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "build-date"="2026-11-20T17:53:10Z" "architecture"="aarch64" "vcs-ref"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "vcs-type"="git" "release"="1795196920"org.opencontainers.image.created=2026-11-20T17:53:10Z,org.opencontainers.image.revision=0b769d32f2673a0a3230de4ecb28b42ea251c690
# Mon, 23 Nov 2026 22:06:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:06:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:06:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:06:58 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:06:58 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 23 Nov 2026 22:07:01 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 23 Nov 2026 22:07:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:07:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:07:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16a7622b10038f372ff7d46da684e3e1ab3565f4760320adfafdae2b1af5e869`  
		Last Modified: Sat, 21 Nov 2026 00:28:05 GMT  
		Size: 33.0 MB (33048313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9a52a1ea68eaec4f27a9d6bbd98716c356d10418b8a7a4562f9f55d264a3dc2`  
		Last Modified: Mon, 23 Nov 2026 22:07:15 GMT  
		Size: 38.0 MB (37960484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a2f4aff14f591d064c367608c7be3eea4fde7d37ae93c8a5c3c95eb4348d1c`  
		Last Modified: Mon, 23 Nov 2026 22:07:16 GMT  
		Size: 41.3 MB (41309165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0405f8eb27d8b5093d4b28f4a65a50d7898bf126c01187e64cd5c820352cc6`  
		Last Modified: Mon, 23 Nov 2026 22:07:14 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc96f31598dc8df9a4bb2f100fafe5fcb7701547a6787b89ddd77962fdd2a87`  
		Last Modified: Mon, 23 Nov 2026 22:07:14 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:20f4d63832f6ed73c180ba52912f340d64372599eb141d8167482532a0542973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c615fe279a46e6a843c758d52c4dba115f2e4d2a64a87f2ce2a45cb82d86d9`

```dockerfile
```

-	Layers:
	-	`sha256:06b791d851ab5f2442042864855bd306de0aa62ba4a23fae63f72a12ce723a75`  
		Last Modified: Mon, 23 Nov 2026 22:07:14 GMT  
		Size: 3.7 MB (3723259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4000e454cb11ebe7bc44407e3cb8503652eb05996ffa8a6b6907972ac3ebb2d`  
		Last Modified: Mon, 23 Nov 2026 22:07:14 GMT  
		Size: 19.6 KB (19615 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u512-b09-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:52fad0c9045e4fad926319420a39baafaf1c880c6020fd2976661cc0dca88ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120706981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1046b38647e62c6405f35fc0e5d3664962f2e95c3d5e404577dd20306c492d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 20 Nov 2026 17:55:46 GMT
ENV container oci
# Fri, 20 Nov 2026 17:55:47 GMT
COPY dir:69c4a5f44760f72f6770da9de6633494a9c5e65a69bf4d66269d9de7615fed50 in /      
# Fri, 20 Nov 2026 17:55:47 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 17:55:47 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:55:48 GMT
COPY dir:54af12dbebd09324eb9be769431d0a769e8becf92c0e9ef5a409e55f2686f435 in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 17:55:48 GMT
COPY dir:54af12dbebd09324eb9be769431d0a769e8becf92c0e9ef5a409e55f2686f435 in /root/buildinfo/      
# Fri, 20 Nov 2026 17:55:48 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T17:55:25Z" "org.opencontainers.image.revision"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "build-date"="2026-11-20T17:55:25Z" "architecture"="ppc64le" "vcs-ref"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "vcs-type"="git" "release"="1795196920"org.opencontainers.image.created=2026-11-20T17:55:25Z,org.opencontainers.image.revision=0b769d32f2673a0a3230de4ecb28b42ea251c690
# Mon, 23 Nov 2026 22:05:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:05:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:05:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:05:57 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 23 Nov 2026 22:07:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 23 Nov 2026 22:07:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:07:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:07:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:121f50aaab5447d4df4cfa143b5a88ea3d5b5b6c0115df8351485bd08d79e26a`  
		Last Modified: Sat, 21 Nov 2026 00:28:33 GMT  
		Size: 39.1 MB (39139587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcfa6add2a4091ddf1bd23fd26e972f51e89affa7c7cf602a1120dde37fe1f8f`  
		Last Modified: Mon, 23 Nov 2026 22:06:47 GMT  
		Size: 39.8 MB (39804383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad633939ccdb0a65438b89f1e015f6895e22e760468d690f37fe14a3b9d07bd`  
		Last Modified: Mon, 23 Nov 2026 22:07:27 GMT  
		Size: 41.8 MB (41760412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684dc5aeb0b44a203122341abfb621cb7e22fb716780f41b150a68b90192df26`  
		Last Modified: Mon, 23 Nov 2026 22:07:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f74453ba711cd16640c5c8add932886354338aeaa64741a9c92d4e2fe42d7a9`  
		Last Modified: Mon, 23 Nov 2026 22:07:25 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fed3d9f60335ff9aa62edcedd22bdb4cd5c488e31255bf08f09ab86203cffdf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3732131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf89e954fe052f6fb147257e406d068119b588ad0600d31f1ee0635b8b38c0c`

```dockerfile
```

-	Layers:
	-	`sha256:c132c5dc475781da0c393ec15a63358658803df6cdbd10a261057e155781fec1`  
		Last Modified: Mon, 23 Nov 2026 22:07:25 GMT  
		Size: 3.7 MB (3712590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5c4a0bacf2f1bd6f48da035394e1b23ea36367d572f008c0a1f0605964a4c21`  
		Last Modified: Mon, 23 Nov 2026 22:07:25 GMT  
		Size: 19.5 KB (19541 bytes)  
		MIME: application/vnd.in-toto+json
