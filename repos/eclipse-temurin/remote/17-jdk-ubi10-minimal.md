## `eclipse-temurin:17-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:fc7caf8012aa84747afd6011b078a80812151058695eeb3b9d83948081d06339
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

### `eclipse-temurin:17-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:890481f3962ddc87dbdc838531ce1d72737002e98ee6d3f856fe68dfa9e8e7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209789870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9550d3ea7fa1db4ab84244a76f4afcfcf9f4f773ecafe76f2bda48980a344838`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Wed, 11 Nov 2026 22:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:35:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:35:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:35:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:35:59 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 22:36:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 22:36:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:36:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:36:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 22:36:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b678bad408ae33518fc2717ea9f3a0b3756774b7413325a1b7450af23c75bef9`  
		Last Modified: Wed, 11 Nov 2026 05:41:47 GMT  
		Size: 35.0 MB (34986613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbcc4a9436b915cf5ff8ba6c46edbb63eaeafdc4616d73cf1b5f0c1144afa943`  
		Last Modified: Wed, 11 Nov 2026 22:36:24 GMT  
		Size: 28.7 MB (28704595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38ac99457bda76844621dbc83047a0d194c0dc3f46bdd35480cfaf481dc3516`  
		Last Modified: Wed, 11 Nov 2026 22:36:27 GMT  
		Size: 146.1 MB (146096063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e9a367d9b2b6be5e05a4f9861c237f660f1d6306875c4b6cf71e2473b589f6`  
		Last Modified: Wed, 11 Nov 2026 22:36:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c81de63fe93abc6cf16b1eec9e776f5b0e226dc4a7cd53b03d9845d922d2dbb`  
		Last Modified: Wed, 11 Nov 2026 22:36:23 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:38ec9f5e1e74002c0e5fc00d3c6e9de6b94d71b9be6e1fcb0cb7dbed819c8415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55da2b7dea6607f403ecb2070bf3be7f26d0fda3c9fc5f2e9d4d2b4eace7c31`

```dockerfile
```

-	Layers:
	-	`sha256:18c2c85bd1e45abd3e8460553222c514cc49fa0f6db1def017b00656fc0ab095`  
		Last Modified: Wed, 11 Nov 2026 22:36:23 GMT  
		Size: 3.0 MB (3035398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a766c5b716697659ae423a6eaa60a339c0eb84dbee9d802e02ffbc4661f50369`  
		Last Modified: Wed, 11 Nov 2026 22:36:23 GMT  
		Size: 21.3 KB (21316 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:ce98322326bae688e9ccc31e55ec4fbdac527d1819f859415560fed04426e032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206139789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b6aa3134baaa0682f3ca1c5ce1898512c4cd279c5ec9068fd9f0249b8d753f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Wed, 11 Nov 2026 22:07:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:07:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:07:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:07:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:07:35 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 22:07:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 22:07:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:07:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:07:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 22:07:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:be0565b917b07cbdde393c02afeb603fae99c9ecaaabb5caf02a1f90e2f13b13`  
		Last Modified: Wed, 11 Nov 2026 06:31:36 GMT  
		Size: 33.0 MB (33046604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e76ea9e6fbf7d64ae06c92d3a997ce0533a779e1d2f9441f15cad96294927f3`  
		Last Modified: Wed, 11 Nov 2026 22:08:01 GMT  
		Size: 28.1 MB (28124212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80bb1dcec03503dab6d2ae17ce72e5640b87a2c10889075458133af6ab6b359`  
		Last Modified: Wed, 11 Nov 2026 22:08:03 GMT  
		Size: 145.0 MB (144966372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:540c9b03b311c5a01c68564364a68b45c73944a2b44e228617156d7c70a4d0ce`  
		Last Modified: Wed, 11 Nov 2026 22:08:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24001e133e4738f9ada94cbfa41c7b9c1dae0255961f000164f6ed4d584c3c9`  
		Last Modified: Wed, 11 Nov 2026 22:08:00 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b302b674e2e99fb365440dea230aed4f0214c1070f10ed903e036b6cfaf55bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eaf3338bd53d7a0ff476d4c512aed165b9b5c2acfa804dfffd067a04ab5561e`

```dockerfile
```

-	Layers:
	-	`sha256:5768012e997e5dab37fadc7844ebaf52ebb3b1aa097e8476364ff2023d9f9808`  
		Last Modified: Wed, 11 Nov 2026 22:08:00 GMT  
		Size: 3.0 MB (3034824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a050709b49a676a2f419de59d2816dcc9b1947d0df306cfa65de449422eb0a34`  
		Last Modified: Wed, 11 Nov 2026 22:08:00 GMT  
		Size: 21.4 KB (21432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:1596c0b2a0027978165bdb05eb583470be7cef57fc80cab266a6dd75df2eb9b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215641521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c840ad8a988ada931822bd535073b555848d8978e119f0f2f5c247ac7f0d4804`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 23:33:02 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 23:33:02 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 23:33:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 23:33:02 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 23:33:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 23:33:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 23:33:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:33:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:33:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 04 Nov 2026 23:33:02 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 23:33:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 04 Nov 2026 23:33:02 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 23:33:02 GMT
ENV container oci
# Wed, 04 Nov 2026 23:33:03 GMT
COPY dir:38714b94f3beca74104811bd0d55a266a598e2ff7d33845085d4667850bd9317 in /      
# Wed, 04 Nov 2026 23:33:04 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 23:33:04 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 23:33:04 GMT
COPY dir:449e08097eeb38bb5e1267b2073edfc19e2cfe6c972be6ed20f3217cee0c9481 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 23:33:04 GMT
COPY dir:449e08097eeb38bb5e1267b2073edfc19e2cfe6c972be6ed20f3217cee0c9481 in /root/buildinfo/      
# Wed, 04 Nov 2026 23:33:05 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T23:32:32Z" "org.opencontainers.image.revision"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "build-date"="2026-11-04T23:32:32Z" "architecture"="ppc64le" "vcs-ref"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "vcs-type"="git" "release"="1793834883"org.opencontainers.image.created=2026-11-04T23:32:32Z,org.opencontainers.image.revision=b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6
# Wed, 11 Nov 2026 23:19:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:19:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:19:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:19:50 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 23:19:50 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:31:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 23:32:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:32:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:caf2bfdfe81aaeccf52aa4aafa43bdad52b5f857cdf993bfff0c2e791774b677`  
		Last Modified: Wed, 11 Nov 2026 06:32:19 GMT  
		Size: 39.1 MB (39098605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f8fdd904bd5108b5f252a43bdb2856ffc83f5e61ccfefa62ac14d21efaa365`  
		Last Modified: Wed, 11 Nov 2026 23:21:21 GMT  
		Size: 31.7 MB (31661360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a6a6c947ffe6c8a36bb8e297142f98cab25d847b9143f0361cff9ab01a25d1`  
		Last Modified: Wed, 11 Nov 2026 23:34:50 GMT  
		Size: 144.9 MB (144878955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf94b52ee1173f0be3e4428a8accb1afeef219122376205def5e12feaea1780a`  
		Last Modified: Wed, 11 Nov 2026 23:34:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb5baa5c20459b221cd9f417a288613576b143c0f267bccf38b11534530611e`  
		Last Modified: Wed, 11 Nov 2026 23:34:47 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:02789ba982bc41e4edf26247625cc1c03766b6382ac960bc2715a3b2165d3469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3049259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573b0c84e522d5d69ddded64051d5fae10dcb44bb5194c5f146b3f856230b067`

```dockerfile
```

-	Layers:
	-	`sha256:575766e9f2c67e637e2639a14533235410f1b5bbb13f5c061d8e5e625299b2af`  
		Last Modified: Wed, 11 Nov 2026 23:34:47 GMT  
		Size: 3.0 MB (3027908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b879c151c885082ac22c51b8b887cf9ef2aa94c78cf603d9ecbc5317d018544`  
		Last Modified: Wed, 11 Nov 2026 23:34:47 GMT  
		Size: 21.4 KB (21351 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:1aaee0c2f7d55ca6521558c3be7bb44888913ff9c1dc4a760f61679f8d5fa3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198511775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b637f60f94bd60af6d47d2606bb083fc32dbce7a9dfa5015ec3e1b9e3786fc2c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Wed, 11 Nov 2026 22:06:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:06:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:06:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:06:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:06:03 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 22:07:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 22:07:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:07:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:07:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 22:07:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:64602be39c30ba4b6fc71c0d4cb6a6f38368d784d4735696f044d24b7c2453f8`  
		Last Modified: Wed, 11 Nov 2026 06:31:41 GMT  
		Size: 34.8 MB (34825852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb536e47aad736d85f01132eb667999c9ae3f27a8cd1c9d240907381c266408b`  
		Last Modified: Wed, 11 Nov 2026 22:06:34 GMT  
		Size: 28.3 MB (28292484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd933b1c6446428dcf8e6ea1825902555567bd596de5421d6942b9a08585023`  
		Last Modified: Wed, 11 Nov 2026 22:08:04 GMT  
		Size: 135.4 MB (135390840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2596e811f65f9381113ba391486f07c043b26f93c926b756eef46182d15517e7`  
		Last Modified: Wed, 11 Nov 2026 22:08:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee188749a8484081875b78a43c76661f2d8a01d771b55978aecbcda8becb2d5`  
		Last Modified: Wed, 11 Nov 2026 22:08:01 GMT  
		Size: 2.5 KB (2468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:603ea612bc8418cef95418e579bc03877aea2f816f8d9a172bc1b0291201ae18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3047981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c679500b21a2d6087969af553cdd1ba78b67aa91c0f9482b9a494ca6105ca4aa`

```dockerfile
```

-	Layers:
	-	`sha256:e5e21ea70d814531e77a8eb15239757dce9e016a17e7018a6fdef3e8c80aa82a`  
		Last Modified: Wed, 11 Nov 2026 22:08:01 GMT  
		Size: 3.0 MB (3026666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c9826e094b29f18a0c9bfc639c3334d59fccfc3b15fbe66b5adf4443d621ac9`  
		Last Modified: Wed, 11 Nov 2026 22:08:01 GMT  
		Size: 21.3 KB (21315 bytes)  
		MIME: application/vnd.in-toto+json
