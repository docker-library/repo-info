## `eclipse-temurin:8u504-b01-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:f681206bc65c86cb61b4f0e3f8ff6f8450c9eb13ce397345d2b125ea7e8b0db6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:cd6b90f45320b9491c30211fc26b7e5a8fc21f575c0a81613e6892639e5a763c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (127987901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6794777f3d9885c0a102f957ece122bba2f887a66151415b3d083439fb410109`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 08:02:32 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:02:32 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:02:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 23 Oct 2026 08:02:33 GMT
ENV container oci
# Fri, 23 Oct 2026 08:02:33 GMT
COPY dir:4ef772c9b83bf8948ac396e6b5f660d3d02caa9066e2f4d6be0580375526780a in /      
# Fri, 23 Oct 2026 08:02:34 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:02:34 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:02:34 GMT
COPY dir:dc4324ca422503b9a7366f984c1e682523829d527bc9a78f4fc74c8527616475 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:02:34 GMT
COPY dir:dc4324ca422503b9a7366f984c1e682523829d527bc9a78f4fc74c8527616475 in /root/buildinfo/      
# Fri, 23 Oct 2026 08:02:35 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:01:58Z" "org.opencontainers.image.revision"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "build-date"="2026-10-23T08:01:58Z" "architecture"="x86_64" "vcs-ref"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "vcs-type"="git" "release"="1792742351"org.opencontainers.image.created=2026-10-23T08:01:58Z,org.opencontainers.image.revision=c29332dc58c1d049841f2bd7506b3249dc37ea6a
# Fri, 23 Oct 2026 16:49:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:49:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:49:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:49:26 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:49:26 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 23 Oct 2026 16:49:29 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 23 Oct 2026 16:49:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:49:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:49:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:edca3061e3f8cfe5f00501af75c579244a887baf7f8fd85a71875d83824f8676`  
		Last Modified: Fri, 23 Oct 2026 09:57:09 GMT  
		Size: 34.9 MB (34900902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bea71fe9dd73156a31657fa7db3a6dd21f77716c503e991720bcfb36f40f83`  
		Last Modified: Fri, 23 Oct 2026 16:49:45 GMT  
		Size: 37.9 MB (37891581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96552684a85a6a1e758c37d4550409d35d6177e5be3261438ec8a73343549b6`  
		Last Modified: Fri, 23 Oct 2026 16:49:45 GMT  
		Size: 55.2 MB (55192800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c69ca9c1b4d0223ec9cb3f07c2755c4e97ad88d5384dcfd417fe05233a13b5`  
		Last Modified: Fri, 23 Oct 2026 16:49:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7d87d2b8ee74097a2502bd03aec949784b76d493dc4bf5099a581067e3b2b2`  
		Last Modified: Fri, 23 Oct 2026 16:49:43 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:09618a52248601485d33ee8c5f76269b9c0984dfa35557e7914034d5f8abb278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3914376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f206a6f40cd9f64475502a3271eb5b82454879f3b9eaf673e863c7704783b35b`

```dockerfile
```

-	Layers:
	-	`sha256:5177f4a4f51690f851ea277c3e2e6c9a5deeb98cf8c6f3cd4725831c88309429`  
		Last Modified: Fri, 23 Oct 2026 16:49:42 GMT  
		Size: 3.9 MB (3894337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ffcaf6e6be25ca575b7f03bc241444cf44d401e3ea6176bdbb128f47e2652d2`  
		Last Modified: Fri, 23 Oct 2026 16:49:42 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c115bb893bf45c6ac0975e6b8f7c2e9be50c955ee87394f07486f69c037989e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125172862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336ae7cc59633f21cd8f3049a50d5491ce27858d38c42be6df805141af1840e0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 08:05:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:05:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:05:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 23 Oct 2026 08:05:48 GMT
ENV container oci
# Fri, 23 Oct 2026 08:05:49 GMT
COPY dir:e5dbb20dbdbbcb5b4f719f8d622d63ebf4e2d505b01fa95a911188697c8edd96 in /      
# Fri, 23 Oct 2026 08:05:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:05:50 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:05:50 GMT
COPY dir:ba33a5b875939ee2df7b46dc225238d8c473a8441cb6ddf0255eaa58260f734f in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:05:50 GMT
COPY dir:ba33a5b875939ee2df7b46dc225238d8c473a8441cb6ddf0255eaa58260f734f in /root/buildinfo/      
# Fri, 23 Oct 2026 08:05:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:05:19Z" "org.opencontainers.image.revision"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "build-date"="2026-10-23T08:05:19Z" "architecture"="aarch64" "vcs-ref"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "vcs-type"="git" "release"="1792742351"org.opencontainers.image.created=2026-10-23T08:05:19Z,org.opencontainers.image.revision=c29332dc58c1d049841f2bd7506b3249dc37ea6a
# Fri, 23 Oct 2026 16:50:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:50:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:50:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:50:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:50:03 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 23 Oct 2026 16:50:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 23 Oct 2026 16:50:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:50:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:50:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e1ecea44eec3674f31a32de1c39243e72839956e709ab2cbf88e40dd2f0ed92b`  
		Last Modified: Fri, 23 Oct 2026 09:57:12 GMT  
		Size: 33.1 MB (33087679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bccf6e250a38322fd6ac9aed3ff5c3671fd7c4f2633b45631141ceb0868ef71`  
		Last Modified: Fri, 23 Oct 2026 16:50:23 GMT  
		Size: 37.8 MB (37827707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58573ff790706419ef3574c83c350c5c9ddcfd6f3106ee1dcfab9a7c86a63857`  
		Last Modified: Fri, 23 Oct 2026 16:50:23 GMT  
		Size: 54.3 MB (54254858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e0fac8a2dcdedf23e62626ec86c0d77c4bb3583d34d4f71df4390a2073d4b5e`  
		Last Modified: Fri, 23 Oct 2026 16:50:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27aaf96174e2e7efa0db30c8c99660f4b26ac2cf544bcf33e42af7ed20854eed`  
		Last Modified: Fri, 23 Oct 2026 16:50:22 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6b744d8967de2657f9dd06d02c8316a26cc8c778aec1a804af15b7170a29b513
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3914618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a82ee30419997f8a0fd8de585ba30d5166babad33a5eb2bfabb6106d332897a`

```dockerfile
```

-	Layers:
	-	`sha256:cecf7d7d3b7473fc85f680f78a360c848511b2b0b246881a6e4280b797a86a14`  
		Last Modified: Fri, 23 Oct 2026 16:50:21 GMT  
		Size: 3.9 MB (3894463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59be8e3cfd251e85b3af42975da2f48509aa3df617772c88f54c50d5b223d3f0`  
		Last Modified: Fri, 23 Oct 2026 16:50:21 GMT  
		Size: 20.2 KB (20155 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:213456917bf0ec471ee0d1a80560fee231c11624cdc55e66a486f383ee503c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131414085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149f5733960c9225318afeaf85afbc6c471504bf49bc547a7e316f2128a30217`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:09:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:09:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 23 Oct 2026 08:09:54 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:09:54 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 23 Oct 2026 08:09:54 GMT
ENV container oci
# Fri, 23 Oct 2026 08:09:55 GMT
COPY dir:295f54453e7171fac61302211ace298d2599ac74ce7eafb2d533fab73fc69f78 in /      
# Fri, 23 Oct 2026 08:09:55 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:09:55 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:09:56 GMT
COPY dir:4b9d0f2ce0fb12a692c80fa1ba2513a2251c3bfb06c748f9bf7b7f033c1b09e1 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:09:56 GMT
COPY dir:4b9d0f2ce0fb12a692c80fa1ba2513a2251c3bfb06c748f9bf7b7f033c1b09e1 in /root/buildinfo/      
# Fri, 23 Oct 2026 08:09:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:09:19Z" "org.opencontainers.image.revision"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "build-date"="2026-10-23T08:09:19Z" "architecture"="ppc64le" "vcs-ref"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "vcs-type"="git" "release"="1792742351"org.opencontainers.image.created=2026-10-23T08:09:19Z,org.opencontainers.image.revision=c29332dc58c1d049841f2bd7506b3249dc37ea6a
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 17:28:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 17:28:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 17:28:04 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 23 Oct 2026 17:28:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 23 Oct 2026 17:28:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 17:28:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 17:28:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:042c4028d78dcc708e3f9c3f1307df9c25ca8765bc563c8dcb32b8bb0c801979`  
		Last Modified: Fri, 23 Oct 2026 12:28:33 GMT  
		Size: 39.1 MB (39073309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969ce94ed7c6e19366c1a1d59b4dc3ff007e030109167a5482ede99bab701a7`  
		Last Modified: Fri, 23 Oct 2026 17:28:58 GMT  
		Size: 39.7 MB (39670474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322fb62abccf85174b53dc154fcf94fe18ed650c536c0442ca4c6f6af36cd0a2`  
		Last Modified: Fri, 23 Oct 2026 17:28:58 GMT  
		Size: 52.7 MB (52667684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998519a38f72f64e8600f5a50f2858940e3d3cb0ba023d70f3dac6f40b247744`  
		Last Modified: Fri, 23 Oct 2026 17:28:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983d86a962c9337b38f11c7ab2c71d5f70b0a1574bd2fccf62928d53aa2fc06e`  
		Last Modified: Fri, 23 Oct 2026 17:28:55 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f7a26062224c5bd37c3ab5edf0df16d5954b56987c27ac03f85ede03c818983c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3901839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:184904a76c5af3e09d6cd116c006a8127533a00535afd4e8141feecf8c877d26`

```dockerfile
```

-	Layers:
	-	`sha256:5edee9fe93157ef3f79cf4bc4ae47e1d0f5bcbb734de615cf08fdf77426cad76`  
		Last Modified: Fri, 23 Oct 2026 17:28:55 GMT  
		Size: 3.9 MB (3881764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:785f29cc338e832f1df6dc218336750fab0de7298f436fdd75586060f9725e5f`  
		Last Modified: Fri, 23 Oct 2026 17:28:55 GMT  
		Size: 20.1 KB (20075 bytes)  
		MIME: application/vnd.in-toto+json
