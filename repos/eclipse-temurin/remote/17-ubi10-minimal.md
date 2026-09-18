## `eclipse-temurin:17-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:81fff0e83de682c456b454f50fa8309980cd79ac2537f017857a4b2f3116fdcb
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

### `eclipse-temurin:17-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:a603ac614a8d415e4742e7c172cc01dcd8bec06421ba199711955b5a865173fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218630679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef2c8e834b6fdf7bb0f6de80983ebf90b95c61771ba39d72ab57645ccb2b8fac`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:21:02 GMT
ENV container oci
# Tue, 15 Sep 2026 07:21:02 GMT
COPY dir:21cef458533fac690c798cfa3b3e5958e280e4511a75d89de7a743be02a08382 in /      
# Tue, 15 Sep 2026 07:21:02 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:21:02 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:21:02 GMT
COPY dir:ef66525f31f34b461a1091c522dc4a2eae7c85b57a795b4dd467ec5654b1d180 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:21:02 GMT
COPY dir:ef66525f31f34b461a1091c522dc4a2eae7c85b57a795b4dd467ec5654b1d180 in /root/buildinfo/      
# Tue, 15 Sep 2026 07:21:03 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:20:44Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:20:44Z" "architecture"="x86_64" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:20:44Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Tue, 15 Sep 2026 22:53:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 15 Sep 2026 22:53:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:53:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 15 Sep 2026 22:53:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:53:13 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Tue, 15 Sep 2026 22:53:21 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 15 Sep 2026 22:53:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 15 Sep 2026 22:53:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:53:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 15 Sep 2026 22:53:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b2a0a2287149cc416166ed23549eb27c7c85bb290f7f72720084c62240c18942`  
		Last Modified: Tue, 15 Sep 2026 08:55:08 GMT  
		Size: 34.9 MB (34945197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be8a45dd48ecdcb6233b3d6f8c4931b579ed1f5e82734f5a1cc1276bd3a973b`  
		Last Modified: Tue, 15 Sep 2026 22:53:42 GMT  
		Size: 37.9 MB (37854347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e822404aed508f7ef5f819d5a85563d83f111801a9e59b2fe25972ab912cea`  
		Last Modified: Tue, 15 Sep 2026 22:53:44 GMT  
		Size: 145.8 MB (145828536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d681e2f7a9c130aaf2deda4a0c77f181124b72371383975072173330a5e205d2`  
		Last Modified: Tue, 15 Sep 2026 22:53:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beed3cff389c4734bc1ea01b40c75717f3c035dd40b44adeaa4f31d99ec8c064`  
		Last Modified: Tue, 15 Sep 2026 22:53:40 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0ccc50160d3ec681f2b0b52d9d9ad9004ebf44a710c683c0b9accab291025253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92875e3bc8bcf17cd5b252502012c9e8c53380f3385acbc379a8e3961fe488c`

```dockerfile
```

-	Layers:
	-	`sha256:51f7bfbdddc1be74695805289a55b1a5f5a52afeb094349379c4a95850b011db`  
		Last Modified: Tue, 15 Sep 2026 22:53:40 GMT  
		Size: 3.8 MB (3792494 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6517bda2736ae3a258f6c7f47d7b34d66250127c328da6e252871d862d9e0f33`  
		Last Modified: Tue, 15 Sep 2026 22:53:40 GMT  
		Size: 21.3 KB (21316 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:dc4577b9ecb4b7c765c0a9ecbd16f8e816faf4b33a9a5d75f663583fd3c0ba28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215578453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92919d97c02362e115a00cf089a53c11dc322845c5a12aa6cd7b4874a5314120`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:23:41 GMT
ENV container oci
# Tue, 15 Sep 2026 07:23:42 GMT
COPY dir:0845143fbed957104ab911522be3d0b6d3786a7c091384a3b77e4182364ea680 in /      
# Tue, 15 Sep 2026 07:23:42 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:23:42 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:23:42 GMT
COPY dir:6f027d514aa0d332f638ab89347dc08b3f3268364d11eb6c4c523f18d39132e3 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:23:42 GMT
COPY dir:6f027d514aa0d332f638ab89347dc08b3f3268364d11eb6c4c523f18d39132e3 in /root/buildinfo/      
# Tue, 15 Sep 2026 07:23:42 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:23:13Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:23:13Z" "architecture"="aarch64" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:23:13Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Tue, 15 Sep 2026 22:42:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 15 Sep 2026 22:42:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:42:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 15 Sep 2026 22:42:10 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:42:10 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Tue, 15 Sep 2026 22:42:16 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 15 Sep 2026 22:42:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 15 Sep 2026 22:42:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:42:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 15 Sep 2026 22:42:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bc840691d14453cf4b8d9c57d899d7ea0d7fa6dae3fcee6dbcaa685e0c31d009`  
		Last Modified: Tue, 15 Sep 2026 08:55:06 GMT  
		Size: 33.1 MB (33144625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a1d09d8afdd12ba32e50c26e11d66bfd783abdbf47617fcfb1eac0b47464f0`  
		Last Modified: Tue, 15 Sep 2026 22:42:37 GMT  
		Size: 37.8 MB (37779925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20bf1d0da3ed906dfe920e4ffa9483dfc32cd2abff45af385dbd9dec00a56f41`  
		Last Modified: Tue, 15 Sep 2026 22:42:39 GMT  
		Size: 144.7 MB (144651303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d346d2e777076b159c1dae2dac348e71e5b4014c4fa33fc826a96143afc46d3e`  
		Last Modified: Tue, 15 Sep 2026 22:42:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c39fcaa3f9ba65184ca4fe7549865632245d57d16138c49ead5e927636bddf5`  
		Last Modified: Tue, 15 Sep 2026 22:42:35 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1767b91d4756c86008435dbd8b31f57bbb4b759a49a8bb05ddd6243dff113f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c60c8f26a53c0c8d938ac80a6157ae830c35337d1c3cb75ec4d393ae4ebaa3`

```dockerfile
```

-	Layers:
	-	`sha256:fca005b7317fa4baf637c40df424c4bf4aff91a7ad3d29a2790f7bd108c26180`  
		Last Modified: Tue, 15 Sep 2026 22:42:35 GMT  
		Size: 3.8 MB (3791920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75c5957a71096c9f72ec12254b8c4951fa25e410a57f03940bc5aedc2051bd21`  
		Last Modified: Tue, 15 Sep 2026 22:42:35 GMT  
		Size: 21.4 KB (21432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:46e072b98362ee7594b6e883b9139ac3afb32f6e3a64f502e27e6da5620a6128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224392247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0493700ac56afcd37a8c96630d0687717902d8a3984e1253ce2a669c9ea3edee`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:24:47 GMT
ENV container oci
# Tue, 15 Sep 2026 07:24:47 GMT
COPY dir:74a02c466907e44b158ce4759bc510ce82dea90059cdd3111818e1216e94981e in /      
# Tue, 15 Sep 2026 07:24:47 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:24:47 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:24:48 GMT
COPY dir:d3f35ec2e3cd701d60ea9e59cc460be3f9ef6f13480ada9a8a3a859627e87d9e in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:24:48 GMT
COPY dir:d3f35ec2e3cd701d60ea9e59cc460be3f9ef6f13480ada9a8a3a859627e87d9e in /root/buildinfo/      
# Tue, 15 Sep 2026 07:24:48 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:24:30Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:24:30Z" "architecture"="ppc64le" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:24:30Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Wed, 16 Sep 2026 01:52:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 01:52:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 01:52:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 01:52:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 16 Sep 2026 01:52:03 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 16 Sep 2026 01:55:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 16 Sep 2026 01:56:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 01:56:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 01:56:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 01:56:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6853c34644bdb2f7b388f1cfefb2460bb0c83858f9ead1b21da21eea8bd737a`  
		Last Modified: Tue, 15 Sep 2026 12:25:37 GMT  
		Size: 39.1 MB (39092184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6379114af2b533684e58aa624cc4897b1150e50cdf93de63632dbb75ca065b`  
		Last Modified: Wed, 16 Sep 2026 01:52:39 GMT  
		Size: 39.6 MB (39605606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e8054cacdfbad7f4232eab10592f5918790f39038f3ff8fc83ba03283a918e`  
		Last Modified: Wed, 16 Sep 2026 01:56:44 GMT  
		Size: 145.7 MB (145691854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fe3e35e230be7420a28dd216b85a2880221752932878b8f920559124aedd53`  
		Last Modified: Wed, 16 Sep 2026 01:56:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be100b067e714e281b667d8802c27b326e628558a2374205626d7d679d6a240`  
		Last Modified: Wed, 16 Sep 2026 01:56:40 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a67cfaae02bd3d74d84fbb1c3a554c1aa9f438a99a7d98379e88e2eeec56d199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d804ef43b0f0f094cd4e6ee0f05430ac4d463478a11d4cb02bbe9626a7626fa`

```dockerfile
```

-	Layers:
	-	`sha256:455fd39cb1920f799f8f0619e9feb7d3f4d2bb91cea495b575e0d07258e53c0f`  
		Last Modified: Wed, 16 Sep 2026 01:56:40 GMT  
		Size: 3.8 MB (3779326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34db9e947175830593625ef42ac21f9df8392fbf6c3f0b6c2be55406ff27e61f`  
		Last Modified: Wed, 16 Sep 2026 01:56:40 GMT  
		Size: 21.4 KB (21352 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:bcdbbdb7acef211277922179a3343ca4aac80e3981aae2df8fa12dd30583ccf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208906735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad454fe78b56db72c4ffefa4603bf53318ead4daf9447226f40d25e6e2db9552`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:31:33 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:31:33 GMT
ENV container oci
# Tue, 15 Sep 2026 07:31:34 GMT
COPY dir:48e27affc10b861c48ae46456c0107bf65eb31343712fe3d0c44b63ae3b34e32 in /      
# Tue, 15 Sep 2026 07:31:34 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:31:34 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:31:34 GMT
COPY dir:f7862075649e7dffde76dc4e3a71678b8f8fea1664ce349c89d76fca8b3fba3a in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:31:34 GMT
COPY dir:f7862075649e7dffde76dc4e3a71678b8f8fea1664ce349c89d76fca8b3fba3a in /root/buildinfo/      
# Tue, 15 Sep 2026 07:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:30:29Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:30:29Z" "architecture"="s390x" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:30:29Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Thu, 17 Sep 2026 21:31:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:31:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:31:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:31:26 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 17 Sep 2026 21:31:26 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Thu, 17 Sep 2026 21:31:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:31:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:31:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:31:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d97d02b8db9d80fe6eec5b9573d4beca2780aed0b522d7adadbb0f3782cb55ea`  
		Last Modified: Tue, 15 Sep 2026 12:25:31 GMT  
		Size: 34.8 MB (34802850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227372e33d6888a6a28a55df0eea3ea24fb4a2868df46c7977f52754ae312020`  
		Last Modified: Thu, 17 Sep 2026 21:31:54 GMT  
		Size: 38.2 MB (38225212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb72573a5af06579aa7becd54c42841e340004a898a8e1bbb9ce780eb3a4e52`  
		Last Modified: Thu, 17 Sep 2026 21:31:59 GMT  
		Size: 135.9 MB (135876073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67345fda163f779c03b1294176df60c35c88c393d34d805e6b78f83baa395b2`  
		Last Modified: Thu, 17 Sep 2026 21:31:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129ba6b95be3a92047bd1ca232888c389832c637a7832210bc75eff72a27849c`  
		Last Modified: Thu, 17 Sep 2026 21:31:57 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e91f26d8c5fbe519b478f7191bf172de268cf2de97020e053ed3113f29539707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3799402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eba02fbe75e72db5c6f69dc0c8b488c5776df8ce2505aca45d406ed0cd7f0542`

```dockerfile
```

-	Layers:
	-	`sha256:b2c0d32ddb35e99f67139e7c22d2b48c21d5d434c590302d91670f1cb8a97b30`  
		Last Modified: Thu, 17 Sep 2026 21:31:57 GMT  
		Size: 3.8 MB (3778086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b003c4c7545a63573b5c4e28aab0f75807d01ee726975b2c24e488a624c8ee2`  
		Last Modified: Thu, 17 Sep 2026 21:31:57 GMT  
		Size: 21.3 KB (21316 bytes)  
		MIME: application/vnd.in-toto+json
