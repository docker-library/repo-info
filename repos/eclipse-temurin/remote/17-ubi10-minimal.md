## `eclipse-temurin:17-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:b9bb5ff9be7f14ad3168049f4af6e6a60ddd3ff16e62f71fbcfa154f52a18567
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
$ docker pull eclipse-temurin@sha256:dfd2eb77895b4c89e76ecddfb71fdd246f387c67d3a1756f90c656a6960cbaa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218627858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beba215b3b40104aade75d7d4210b5d5c93a50bb867f2edfea4db246243079b2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Fri, 23 Oct 2026 16:49:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:49:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:49:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:49:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:49:32 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 23 Oct 2026 16:50:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 23 Oct 2026 16:50:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:50:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:50:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 23 Oct 2026 16:50:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edca3061e3f8cfe5f00501af75c579244a887baf7f8fd85a71875d83824f8676`  
		Last Modified: Fri, 23 Oct 2026 09:57:09 GMT  
		Size: 34.9 MB (34900902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc90d314cbe49cdfc151906f187f7e4b2a50185d97cff83c0f99933cc20c06da`  
		Last Modified: Fri, 23 Oct 2026 16:49:50 GMT  
		Size: 37.9 MB (37891653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b8e9d9c95126b2d5611cf005f604b7810bbed3c34f554d63f625b906f32906`  
		Last Modified: Fri, 23 Oct 2026 16:50:23 GMT  
		Size: 145.8 MB (145832705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2d78c5145d13fcbb2adabd7f95443410782a9ebff0af0fa33ba6aa570319d05`  
		Last Modified: Fri, 23 Oct 2026 16:50:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1650e8078ea18981595dde9afb21b50d2b4b213aca84180ed193121d45e075`  
		Last Modified: Fri, 23 Oct 2026 16:50:20 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:170c70f8d9c531d028ee13f52169f44a6aedc0634acfb1031d57d3874ee8a108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a282ed2e568a3a1f493cb6270f2acf5b73e06008c1733bee0758de86744974`

```dockerfile
```

-	Layers:
	-	`sha256:7966f6977ca057f909711ce192fa6f9882bc9093c4ad8ed7b78171d7389ddd25`  
		Last Modified: Fri, 23 Oct 2026 16:50:20 GMT  
		Size: 3.8 MB (3773985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7be18ca418ea661fc78965b83414ed5c7c58384a2cbeb6f44be7e94854d44067`  
		Last Modified: Fri, 23 Oct 2026 16:50:20 GMT  
		Size: 21.4 KB (21364 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:b96f4d1cba876f6423205fd2e1768b4cd6ea2ba06a2a17b38573b438565638c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215570148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029ae0bb9c595eeef6446e2d192ab781b291fa513febfaad58ea6aa8566b4d2a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Fri, 23 Oct 2026 16:50:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:50:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:50:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:50:21 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:50:21 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 23 Oct 2026 16:50:27 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 23 Oct 2026 16:50:29 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:50:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:50:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 23 Oct 2026 16:50:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e1ecea44eec3674f31a32de1c39243e72839956e709ab2cbf88e40dd2f0ed92b`  
		Last Modified: Fri, 23 Oct 2026 09:57:12 GMT  
		Size: 33.1 MB (33087679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb2ae54f2a469c79f196c06eef8e1570e2041d5bc72cfaaf9d5080b20d1acdb`  
		Last Modified: Fri, 23 Oct 2026 16:50:48 GMT  
		Size: 37.8 MB (37827857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71a64bd55bb22e0e68c7996aa26eb5560b8224e49c6ac3ac9f45a5adaf84c43`  
		Last Modified: Fri, 23 Oct 2026 16:50:50 GMT  
		Size: 144.7 MB (144652013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19305947a22e2a8cde46c8f6f736a7b5765c5c3418e8fb1b8b0faa838f4bf65a`  
		Last Modified: Fri, 23 Oct 2026 16:50:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893dbd7757f2c2f6972a4f63c7ddf592796bc76db743344a012aa898d636f3b4`  
		Last Modified: Fri, 23 Oct 2026 16:50:46 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b01de55de997c8acd322f8e6f364ec8e32f2d0daac662372125c000356193448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3794891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd94ca7e69e88d32a6f7dfe19bb543a0ff28bc539d0c75cbc3c4cb8203c6dfb`

```dockerfile
```

-	Layers:
	-	`sha256:b9e80a0d31fbe4236b5faf4817d7fac0e8b2d302657050d231647202d82643d7`  
		Last Modified: Fri, 23 Oct 2026 16:50:47 GMT  
		Size: 3.8 MB (3773411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d8dfe60c539916cd5cd8acd29cc4cc232c6ccda4d8feb0d01e77e65c883dd50`  
		Last Modified: Fri, 23 Oct 2026 16:50:47 GMT  
		Size: 21.5 KB (21480 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:38013ad0bc59880d58209006c69589080d170ddce54abd94fe645d4980df6152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224433932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1625707d68961c569253fdbd9933b39a0a1658e2e8541bd4b84075de36f29eb9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 23 Oct 2026 17:33:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 23 Oct 2026 17:33:22 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 17:33:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 17:33:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 23 Oct 2026 17:33:26 GMT
CMD ["jshell"]
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
	-	`sha256:c35f1f91b771ff13df0aae9f7f681aea8aa2c18fb9f938cdfe4f0043e85deb71`  
		Last Modified: Fri, 23 Oct 2026 17:34:08 GMT  
		Size: 145.7 MB (145687549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74092c110315651a0ea56dddd1b897e6b2a6a22cfae1c369deda898ae3746352`  
		Last Modified: Fri, 23 Oct 2026 17:34:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4a4ec8f2cc8ee2cd623550a71dee3b85b9c227e4037c2e255783aaf54a20be`  
		Last Modified: Fri, 23 Oct 2026 17:34:05 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f5f0f9b15d13511f6f6fed7b076004d0441148dea7116f95e6e6d3689432eba3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3782217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a044627c21b13b0b84ead32c505a2422653e7b443b7cb3477d055b67fd95058`

```dockerfile
```

-	Layers:
	-	`sha256:bc468187161a5fe48f3f4b1dbad02f5a412ca4e9c3fd7fcb0160d6767f0240fe`  
		Last Modified: Fri, 23 Oct 2026 17:34:05 GMT  
		Size: 3.8 MB (3760817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:678444cbdfb8b04c1d50903f9660b526ec574077c55f48938f027a588bd1ad33`  
		Last Modified: Fri, 23 Oct 2026 17:34:05 GMT  
		Size: 21.4 KB (21400 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:f7e9826b8e177c5abd3146eb9e96a8fa88523fe6dc89df81ad17375546dbc42e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208905103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b4f9220e57de6610b5f74c37fa0dcfab15509787f71081ede6af1ea27be7a3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:15:41 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:15:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 23 Oct 2026 08:15:41 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:15:41 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 23 Oct 2026 08:15:41 GMT
ENV container oci
# Fri, 23 Oct 2026 08:15:44 GMT
COPY dir:83ca23c900e74c48f911f17df6964c8db7f1d1d173c7ee325446aa5ea16de38a in /      
# Fri, 23 Oct 2026 08:15:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:15:45 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:15:46 GMT
COPY dir:0c5d7a9af49e28b6ac193f2aa63c70ac079c7d77e50827d97d8eaaf3cd83e91b in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:15:46 GMT
COPY dir:0c5d7a9af49e28b6ac193f2aa63c70ac079c7d77e50827d97d8eaaf3cd83e91b in /root/buildinfo/      
# Fri, 23 Oct 2026 08:15:47 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:13:02Z" "org.opencontainers.image.revision"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "build-date"="2026-10-23T08:13:02Z" "architecture"="s390x" "vcs-ref"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "vcs-type"="git" "release"="1792742351"org.opencontainers.image.created=2026-10-23T08:13:02Z,org.opencontainers.image.revision=c29332dc58c1d049841f2bd7506b3249dc37ea6a
# Fri, 23 Oct 2026 16:57:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:57:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:57:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:57:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:57:37 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 23 Oct 2026 16:58:20 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 23 Oct 2026 16:58:22 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:58:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:58:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 23 Oct 2026 16:58:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:51a9c44503b0d69d15181c68a4bd60279649613f78dbe34b58f969720280bda2`  
		Last Modified: Fri, 23 Oct 2026 12:28:18 GMT  
		Size: 34.8 MB (34752836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79130c9a874cac64c904113074979230bab51eff923a70ebcacf56bd6602fe7`  
		Last Modified: Fri, 23 Oct 2026 16:58:08 GMT  
		Size: 38.3 MB (38270845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8153b18dae20aabfdac9305481802763285e3df1b13cd86492f9483ecf9df0b8`  
		Last Modified: Fri, 23 Oct 2026 16:58:45 GMT  
		Size: 135.9 MB (135878821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf39578cb338683860644230db2057cbc62b63e2059f3105b1b8b6455998a2b`  
		Last Modified: Fri, 23 Oct 2026 16:58:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:580cb7c4ad8a9ebb92fb24db4e43b0ae1f3f83c57ec95c33f2512a06544a637c`  
		Last Modified: Fri, 23 Oct 2026 16:58:43 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f5e9243086ecfc08f55ec997d691513d5b6979c22e6b74f500eb1508253ecf6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3780938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14d455d3bfef5fb6d8cc8a3d19a851c385fe5284b333d38293a7483069070ab5`

```dockerfile
```

-	Layers:
	-	`sha256:6414a9395bbeb07afb54fe23e8078e35a31eda3e6d4480701a7496b3cffd13ec`  
		Last Modified: Fri, 23 Oct 2026 16:58:43 GMT  
		Size: 3.8 MB (3759575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48a6e54f13e07115b016600d07aa89eec76a68053f6a9562e22c34dd5e12bc3b`  
		Last Modified: Fri, 23 Oct 2026 16:58:43 GMT  
		Size: 21.4 KB (21363 bytes)  
		MIME: application/vnd.in-toto+json
