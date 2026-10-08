## `eclipse-temurin:27-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:d2829360db04dd7d65541bd93f29474f2e14b67b99f876d97c7542e0dc0d3c6b
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

### `eclipse-temurin:27-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:5260cd092c44c245c74e03ebe0c2e25bcb35f36bae05f88365ca308881c78529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169308945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f0a66ac558a74ace5608883883f65ee1696983e98a5080686ffcdedba3e448f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:15:04 GMT
ENV container oci
# Wed, 07 Oct 2026 04:15:04 GMT
COPY dir:7c2bbbb7f5210f15511c07d2c4001d7fe8f4d068648bb2a4ad6d3eda0100bdce in /      
# Wed, 07 Oct 2026 04:15:04 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:15:04 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:15:05 GMT
COPY dir:407ad97fdfee3ba60490bbe869c7329b5a73e055c7aead0683d992350fef8781 in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:15:05 GMT
COPY dir:407ad97fdfee3ba60490bbe869c7329b5a73e055c7aead0683d992350fef8781 in /root/buildinfo/      
# Wed, 07 Oct 2026 04:15:05 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:14:06Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:14:06Z" "architecture"="x86_64" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:14:06Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:08:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:08:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:08:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:08:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:08:00 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 07 Oct 2026 22:08:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 07 Oct 2026 22:08:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:08:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:08:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 07 Oct 2026 22:08:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7622e8b6ee5965126c68b18861709ea82ce88ca92ffc0ce29f05c5a215e20b96`  
		Last Modified: Wed, 07 Oct 2026 06:14:48 GMT  
		Size: 35.0 MB (34950412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8e1cf68c1f830ada9184d8afddc658ee8abebeed398c8c73aa306f2f1fd458`  
		Last Modified: Wed, 07 Oct 2026 22:08:18 GMT  
		Size: 40.7 MB (40732319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b9bc2a796c73cccffd6ca29918d78bebf00ad27be84563947fdffec7ad0a18`  
		Last Modified: Wed, 07 Oct 2026 22:08:48 GMT  
		Size: 93.6 MB (93623614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c418de04dd5bcbe9e0ff60498b63c0c445d0270718668f4b7b167dc58ba93f`  
		Last Modified: Wed, 07 Oct 2026 22:08:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11f8f0af15871d29f0bc21e59c093942e77bd7d1a944eafd4c16334628b5769d`  
		Last Modified: Wed, 07 Oct 2026 22:08:46 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fb92d3ffdb7101f29f5b66e6a29f8eb2a3f31ab603970a13fac23e8cf702d9c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3777361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba83da281703b44f8105aeae04a75219b2a3b8fe883e2521e050ac13801260d`

```dockerfile
```

-	Layers:
	-	`sha256:783e10a799590d935e9f1486a074e4f51e16ed7e8adef80f2ab3a28b6b147e2d`  
		Last Modified: Wed, 07 Oct 2026 22:08:46 GMT  
		Size: 3.8 MB (3756144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d92c7941f47a4c8e0185f24be8cafc9a7b77ae79b791e405efe81e62c4172e4d`  
		Last Modified: Wed, 07 Oct 2026 22:08:46 GMT  
		Size: 21.2 KB (21217 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:b53143eb9a5a0c09a8a65fff3a462d22b564bdcf13e1600333f0565a8ad5ce6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166301514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cac7d2d66a3b3de5fadee65f612a48490f8efec2067a0caa93df27f837c8f59`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:15:40 GMT
ENV container oci
# Wed, 07 Oct 2026 04:15:40 GMT
COPY dir:2ef2e4e2a6b41f232e640f18c3dc5f15c442e4e4c8f84bc19a7a6f7ec341c008 in /      
# Wed, 07 Oct 2026 04:15:41 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:15:41 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:15:41 GMT
COPY dir:7d8ee866f219e38f99beeeb1052b5481e3231b5660350d1710f9a43847d257bd in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:15:41 GMT
COPY dir:7d8ee866f219e38f99beeeb1052b5481e3231b5660350d1710f9a43847d257bd in /root/buildinfo/      
# Wed, 07 Oct 2026 04:15:41 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:15:20Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:15:20Z" "architecture"="aarch64" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:15:20Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:07:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:07:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:07:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:07:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:07:43 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 07 Oct 2026 22:08:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 07 Oct 2026 22:08:19 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:08:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:08:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 07 Oct 2026 22:08:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a74897f26d06e9dd89c15728fca5ccd6144a0eb4a8a988677b35be5ef16025a2`  
		Last Modified: Wed, 07 Oct 2026 06:15:00 GMT  
		Size: 33.2 MB (33194468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c47c93f2da7d511b9e3d100670bde2e277fcc75c38118d48a57df604983be76`  
		Last Modified: Wed, 07 Oct 2026 22:08:03 GMT  
		Size: 40.5 MB (40470691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978c15cdb79ef7b6a13585663eb6554e6c21292ca8a71cbf360a4c72cfaf2943`  
		Last Modified: Wed, 07 Oct 2026 22:08:37 GMT  
		Size: 92.6 MB (92633754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2156ac2a5215e8ea7d1a35a51164314db00c1c2f9a0753fb2536de88eb602f30`  
		Last Modified: Wed, 07 Oct 2026 22:08:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92df2377dc1d8d27d572831b02e629dc00c9ab17110377d58c495b6797825111`  
		Last Modified: Wed, 07 Oct 2026 22:08:35 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:61a99f2869e1bc046f42942874b98532b38c2953c8c8cab4ca78a06ca263ea3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3776900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e59314695784fb4c6bf3648f002e679f6e5c29c7ca0ec67afe8a7eb23771511a`

```dockerfile
```

-	Layers:
	-	`sha256:8ebe42aa7de1e3a7526e981d24739f6d677033abdb279431de60e5e450d917ff`  
		Last Modified: Wed, 07 Oct 2026 22:08:35 GMT  
		Size: 3.8 MB (3755567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0e1d65484f8d201f5e8c92ada1022d1ba09ca9f781728e34f1d75f9c657dc59`  
		Last Modified: Wed, 07 Oct 2026 22:08:35 GMT  
		Size: 21.3 KB (21333 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:bf5177ab7aea78324cce4ba3939a9da43f97c9798f27767d1d859f9b22e2e165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.0 MB (174007616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a725a9b7ada6a064f21579539f9a3477ebacf00c9c3e35be9eeaf3247e6fec0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:21:21 GMT
ENV container oci
# Wed, 07 Oct 2026 04:21:22 GMT
COPY dir:2487f3d5e203d3216a55dc379085a4d7d5554d8e2f02df41000fbb0e3e09aa93 in /      
# Wed, 07 Oct 2026 04:21:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:21:22 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:21:22 GMT
COPY dir:f1aa898926061f8db7d6cba7b85a7dfe413a7429132b3c5ede46914750ecf0ff in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:21:22 GMT
COPY dir:f1aa898926061f8db7d6cba7b85a7dfe413a7429132b3c5ede46914750ecf0ff in /root/buildinfo/      
# Wed, 07 Oct 2026 04:21:22 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:21:04Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:21:04Z" "architecture"="ppc64le" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:21:04Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:21:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:21:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:21:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:21:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:21:20 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 07 Oct 2026 22:28:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 07 Oct 2026 22:29:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:29:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:29:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 07 Oct 2026 22:29:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b5d9c969c5baa30f03fe96495c747916f02c7eeeb53fe9ad61b3f919d3b4317c`  
		Last Modified: Wed, 07 Oct 2026 06:15:42 GMT  
		Size: 39.1 MB (39091436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a1e8879bdb28e6db16e53f2e5fb958bd30c0c8fd918d85338639b348a71392`  
		Last Modified: Wed, 07 Oct 2026 22:22:08 GMT  
		Size: 42.7 MB (42656404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90289d3a2819037a76fabb62de71597e3a8c469eb555cf38abe74bbd062f8a88`  
		Last Modified: Wed, 07 Oct 2026 22:29:52 GMT  
		Size: 92.3 MB (92257175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27be3b14478114714a5fe9b441640f050b957a1d9bf751a65f6b5c6de41b864`  
		Last Modified: Wed, 07 Oct 2026 22:29:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dea436b283cb96501505dfdf9550374e359d638d9fc474d5508d1b9338e8a859`  
		Last Modified: Wed, 07 Oct 2026 22:29:50 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ca1d0e1f6fba8a82e0ce8efd96adfaf74f5420f0a03243e48e1d4acaa8f547aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3748164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250de80679b7b1220f1394ea07bac58bc287a089cab0f55c373ff422fbaf0344`

```dockerfile
```

-	Layers:
	-	`sha256:dc6c3ecb414fee05fe680d26afc99302e7ff67293bc6b27a2c17252b7f7f247f`  
		Last Modified: Wed, 07 Oct 2026 22:29:50 GMT  
		Size: 3.7 MB (3726912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43efd3bebe3fc6b09dd6f604a42cc12eef3f29ac0d0c6e513924c1eeb9d6adae`  
		Last Modified: Wed, 07 Oct 2026 22:29:50 GMT  
		Size: 21.3 KB (21252 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:b888dba39acd177a39c76cccb15823f1317e348feabdcfbe18654493f2452f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166054986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa7f71821e4e5fe778e9dfd611066a39a40264150fcf62c800a827f53b54a7a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:42:03 GMT
ENV container oci
# Wed, 07 Oct 2026 04:42:04 GMT
COPY dir:edc9a871e1b15cc4e528c324e484e27c0b6ed38df4b3279d07fad9c148deb885 in /      
# Wed, 07 Oct 2026 04:42:04 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:42:04 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:42:04 GMT
COPY dir:6544090d2515d740e9e7cc3578cccbf97a74265317faa8f8a6a85f6321178ee8 in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:42:04 GMT
COPY dir:6544090d2515d740e9e7cc3578cccbf97a74265317faa8f8a6a85f6321178ee8 in /root/buildinfo/      
# Wed, 07 Oct 2026 04:42:05 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:40:47Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:40:47Z" "architecture"="s390x" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:40:47Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:06:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:06:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:06:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:06:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:06:20 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 07 Oct 2026 22:07:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 07 Oct 2026 22:07:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:07:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:07:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 07 Oct 2026 22:07:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f73b18af918eb1ad6c5813aab1506f4f41ebde8362c5bdcc4221d961cc288f38`  
		Last Modified: Wed, 07 Oct 2026 06:15:28 GMT  
		Size: 34.8 MB (34844684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b099d87e10bc10ad113dbfc93ae657536bc2605d3fbb570b9c5a67ed0f172559`  
		Last Modified: Wed, 07 Oct 2026 22:06:43 GMT  
		Size: 40.9 MB (40881969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8446669f1b3bfee2e7c284a731d7dbed213ecc8d1f2ad9c3921be1cfc3c05a4`  
		Last Modified: Wed, 07 Oct 2026 22:08:20 GMT  
		Size: 90.3 MB (90325733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a84f94d2744a953f1b2c4daae3d2aa46aa52de8c7fd25792b53992d456ed6a6`  
		Last Modified: Wed, 07 Oct 2026 22:08:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d6c91266339c32aab132d3d55440737ec5ea8f137d628ff3de05d88b470a5f`  
		Last Modified: Wed, 07 Oct 2026 22:08:19 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3ee69d1f33961eb04a666b073efafe77db6d1fd8bc10f4edbad75540c6ba8dad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3748135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95382acae4f5be8eeeeb677a6fabb1db2037c832994a21097391bd0a47322c2a`

```dockerfile
```

-	Layers:
	-	`sha256:52d75303e0325f00919e46be10eb1e406dfbcbe9c71c59f2f893f08287adb932`  
		Last Modified: Wed, 07 Oct 2026 22:08:19 GMT  
		Size: 3.7 MB (3726920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6901db7220444e4f0d01ee1413a432e2303d08d8d7bf86b0456edbf92e6210b`  
		Last Modified: Wed, 07 Oct 2026 22:08:19 GMT  
		Size: 21.2 KB (21215 bytes)  
		MIME: application/vnd.in-toto+json
