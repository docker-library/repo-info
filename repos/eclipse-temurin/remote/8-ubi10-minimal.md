## `eclipse-temurin:8-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:f695dad93831b3d35bdb67835255404f278be47f6799a5c3a181ed02d20aa58c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:7ebac6e49ed474e3435a58a7fb3df5c8d08d8baef25ed3a6f39ab4fc3db0e6c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128206206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c5ad967a98eb5907329715fa6ff3fa0d629817727806935b7251e5c3433e18f`
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
# Mon, 23 Nov 2026 22:07:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:07:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:07:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:07:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:07:32 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 23 Nov 2026 22:07:36 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 23 Nov 2026 22:07:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:07:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:07:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:69350ad525f7b897d7ee64aead074bc110259aa291005b87b0609cc9f54f5aac`  
		Last Modified: Fri, 20 Nov 2026 19:50:01 GMT  
		Size: 35.0 MB (34957031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f66db893aba0359ea02798bda3c1be750c0aefa533a9dbfc08c8e9588a78ca3`  
		Last Modified: Mon, 23 Nov 2026 22:07:52 GMT  
		Size: 38.0 MB (38038099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af204488559358bba2166bd10cd4d73cb14dfa26603090cc26eaca71f488b37`  
		Last Modified: Mon, 23 Nov 2026 22:07:52 GMT  
		Size: 55.2 MB (55208458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b975c606b1523fe51272a04513e0d7227cea89b30e19237f371ae4e0cea31f63`  
		Last Modified: Mon, 23 Nov 2026 22:07:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25f5421fb7755e6a8702afada4bb9c056a822accbb52fbc32e331f77db43be5`  
		Last Modified: Mon, 23 Nov 2026 22:07:50 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f41872ff877b9f3d6efce4cbe4220f9ae5270274076cf8182f47250fe1cc86c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3919180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97b1d64e6076a9a8fda01191924f6b1de363b4b6d5a76e05e07a48e4ecb43dd`

```dockerfile
```

-	Layers:
	-	`sha256:331b9ad8ddeed363aeef27eeef0ecb5d32c3c6dae0ffca0b4239c6e4ae5f233d`  
		Last Modified: Mon, 23 Nov 2026 22:07:50 GMT  
		Size: 3.9 MB (3899141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dddd813c330ae61b1e9ff9af142cce98d442e8e53bcc40fc1eeb38ea5612328`  
		Last Modified: Mon, 23 Nov 2026 22:07:50 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:d4e4779fbddfd82a47cb64bd3430132cf2cfc8a790f00f400478ade3da89970a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.3 MB (125282238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c3ef462258a883887a7c69c5de161783f068c83f327994cc869f94ec4cf1efd`
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
# Mon, 23 Nov 2026 22:06:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:06:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:06:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:06:48 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:06:48 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 23 Nov 2026 22:06:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 23 Nov 2026 22:06:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:06:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:06:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:16a7622b10038f372ff7d46da684e3e1ab3565f4760320adfafdae2b1af5e869`  
		Last Modified: Sat, 21 Nov 2026 00:28:05 GMT  
		Size: 33.0 MB (33048313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a7fa230d8d973b506618644c3542820a96fd3626bc7042539aa7fcc8bda072`  
		Last Modified: Mon, 23 Nov 2026 22:07:07 GMT  
		Size: 38.0 MB (37960379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b761a7e58a5209279e239261f3f8caff3153cd4fe2cf0bb1330c3e974383749`  
		Last Modified: Mon, 23 Nov 2026 22:07:08 GMT  
		Size: 54.3 MB (54270927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e883aa2d992a3a7238ab9dedaf7c8b760af903fb530bfd3123cfd02048645f`  
		Last Modified: Mon, 23 Nov 2026 22:07:05 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f056e5f58743c15ade819292e37f8993a0ce8329087a7eefc11fa478ac200ac8`  
		Last Modified: Mon, 23 Nov 2026 22:07:06 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a3b304b524f0bf13fc86eb8d832f7929148d2d9c8813cbb4577cbbee651956a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3919422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6082a7dd7bc6d05a566b616d5ef176f13a4d6ac913a833aeff76d3fc2c2e99`

```dockerfile
```

-	Layers:
	-	`sha256:a41c2069f11fa9560fa22147661b2a895864144a915ccc264d7cb928ec4d3418`  
		Last Modified: Mon, 23 Nov 2026 22:07:05 GMT  
		Size: 3.9 MB (3899267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:069156ba959211c10f337238cd638f90416421a8e4f732e599c4347a57dd924c`  
		Last Modified: Mon, 23 Nov 2026 22:07:05 GMT  
		Size: 20.2 KB (20155 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:70d41e491078a866b56b48d13cadc81427f1a93b87fe3d4e7d7192bf360ece36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131636292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae5453ec6c6078d1484409e263348a570bba897580b1f32350cb0961b66bc8f5`
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
# Mon, 23 Nov 2026 22:06:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 23 Nov 2026 22:06:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:06:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:06:08 GMT
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
	-	`sha256:4a77da09bd519d19815640e6de11edfab90a22e5d10c0361e46fa9e82bad84da`  
		Last Modified: Mon, 23 Nov 2026 22:06:48 GMT  
		Size: 52.7 MB (52689703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06b7f88669f378c05977af46ec7f3ca30203eb537a2dd742c3ad8a56b0c4c1`  
		Last Modified: Mon, 23 Nov 2026 22:06:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b2221fdc72d5c4636381cc90e3446c856b2ed21368a025cf9caac5ac2e4c1c`  
		Last Modified: Mon, 23 Nov 2026 22:06:41 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a951ae1d2f10e57637cba582b47fcd947a2f45dd2614eecc78b166d415b0cce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f83644c59cabba9e3a5b51c477c5d9126b5baf8bfc5e8b5011b39aa3f99ae4`

```dockerfile
```

-	Layers:
	-	`sha256:56f6c0232c46035834b383c85e5bcf69b06ffd8408eb988be0c3ed0f668b3eda`  
		Last Modified: Mon, 23 Nov 2026 22:06:45 GMT  
		Size: 3.9 MB (3886568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8771f95fc8db9e0a6f7357f3e6f461bdb7adad00a34b51ecfe21db35f68d709`  
		Last Modified: Mon, 23 Nov 2026 22:06:45 GMT  
		Size: 20.1 KB (20075 bytes)  
		MIME: application/vnd.in-toto+json
