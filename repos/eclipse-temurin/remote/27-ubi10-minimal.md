## `eclipse-temurin:27-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:87f142cb428e5995e189dc6aa7882f2dc904a24942373b77de33413c5315ef4a
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
$ docker pull eclipse-temurin@sha256:6bb6b01e1289ed350496f7b1708d44cf0027c3769d776f0dbf43f721fe6b9cda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166434074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac8f83cf7b580400563281bd12fec2ecda1ae2c7bc12d4c1182c171de3a13b7b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:02:36 GMT
ENV container oci
# Mon, 12 Oct 2026 06:02:37 GMT
COPY dir:662455959852c430acd151a5481507682dd939cb3325ebea7aac09cc24e390f9 in /      
# Mon, 12 Oct 2026 06:02:37 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:02:37 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:02:37 GMT
COPY dir:016729f945913aceb7571e77a6d9ea831075e4386b1a556c4ed3e50ecfb271e9 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:02:37 GMT
COPY dir:016729f945913aceb7571e77a6d9ea831075e4386b1a556c4ed3e50ecfb271e9 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:02:38 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:02:13Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:02:13Z" "architecture"="x86_64" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:02:13Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 00:35:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:35:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:35:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:35:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:35:37 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 13 Oct 2026 00:35:43 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 00:35:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:35:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:35:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 00:35:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a1611a4fd41ee882f5745fd873c8693214050b6032a4e61339549ed17953e7d4`  
		Last Modified: Mon, 12 Oct 2026 06:46:04 GMT  
		Size: 34.9 MB (34932576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ec679d6efdb38e38dd83c3e2345adb14e920377a12029cc683385589eece81`  
		Last Modified: Tue, 13 Oct 2026 00:36:02 GMT  
		Size: 37.9 MB (37875299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8c9854506284b8618fec27e4ec6e0e5e5cd98bb4aafdb1346d39654d6fd884`  
		Last Modified: Tue, 13 Oct 2026 00:36:03 GMT  
		Size: 93.6 MB (93623597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552903f044c1505d28b1c5829e1f5b6be53bb87f31b658b400987f3b2ade2177`  
		Last Modified: Tue, 13 Oct 2026 00:36:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49ed05a23f993081799c957b6fffc245e7bc34144f22fc514fa612cce83c2ec`  
		Last Modified: Tue, 13 Oct 2026 00:35:50 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f07491960c6b129f7af99b5f0216e79ae8a151d8a29891e17a8dc29e2b86acc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3777361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d024fcb58cdb9e3f1544a634aab7821b702e468e5175f56fcc6ae61fcff2fecf`

```dockerfile
```

-	Layers:
	-	`sha256:a35a63676df514412cf31efe84e3887e0180a437c47b5bbcf3b7cb350d666f72`  
		Last Modified: Tue, 13 Oct 2026 00:36:01 GMT  
		Size: 3.8 MB (3756144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6205f27f4efd6ffaa96eab82f19b295a5ab8d9837b560511d879087e066b52bc`  
		Last Modified: Tue, 13 Oct 2026 00:36:00 GMT  
		Size: 21.2 KB (21217 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:d2aedcd3d52b61e7cc3417d74e28cd38ab03434e7d33e3d2a13f525597ecf5ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163606961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec9822d8580a03d3a7104f8e7bb135975b4aaf49b69b3116da17ce579b7e232`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 06:05:54 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:05:55 GMT
ENV container oci
# Mon, 12 Oct 2026 06:05:56 GMT
COPY dir:9a18f15373f3f6870de0ed60f1e7a72b1623f7ec9ce1a8aed46a7e94ccc7a645 in /      
# Mon, 12 Oct 2026 06:05:57 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:05:57 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:05:57 GMT
COPY dir:a0efbfbbb701c1098b615c13945a40436016435d065496628534f0f16c07f828 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:05:57 GMT
COPY dir:a0efbfbbb701c1098b615c13945a40436016435d065496628534f0f16c07f828 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:05:58 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:05:27Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:05:27Z" "architecture"="aarch64" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:05:27Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 00:32:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:32:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:32:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:32:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:32:32 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 13 Oct 2026 00:33:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 00:33:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:33:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:33:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 00:33:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6bb0cea67a57d2a977aceca249e6de2824aa79518f87729063f5b1d476030b0f`  
		Last Modified: Mon, 12 Oct 2026 06:46:01 GMT  
		Size: 33.1 MB (33147526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71d40824b973cb626eeb53dc732fb3a6935f54ba2823a39d062ad7e3880b6c0`  
		Last Modified: Tue, 13 Oct 2026 00:32:52 GMT  
		Size: 37.8 MB (37823069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a0ea73c81b64add48a0b79151d7b8a351d30ba8c6288ef214e986fa66ebff8`  
		Last Modified: Tue, 13 Oct 2026 00:34:06 GMT  
		Size: 92.6 MB (92633765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c72251c7b27e28c0bfe1e6210ef47ea66b3df30fb107126e36c0f965df014e`  
		Last Modified: Tue, 13 Oct 2026 00:34:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2dd460db039b86f409372212e0955b859280ff6c67b1438328df96a155926f`  
		Last Modified: Tue, 13 Oct 2026 00:34:04 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:632aa41407a50f2f6c4514377b5b711141f7734c80dd229307ea4c873d219f1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3776899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5673fd93ba6bce85bacfa38a35d904e3f1554070b29d2bf66b5cefaac07d0653`

```dockerfile
```

-	Layers:
	-	`sha256:4c7686b20ab19dfb3fa3da02777698a3ea113116dcd42006e966158b77cb0d21`  
		Last Modified: Tue, 13 Oct 2026 00:34:04 GMT  
		Size: 3.8 MB (3755567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b05fbc96fdde38f21df486a548875171fd35de5852e1c1039efcd85d8ca85a90`  
		Last Modified: Tue, 13 Oct 2026 00:34:04 GMT  
		Size: 21.3 KB (21332 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:e30d1ed4af81c7508e8a6b72bbbc9c051c4656cb1f8715d010c91e0758668f38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171021129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e030d263a4982ed11d1049755d1744cdb5ea4bfc7f19284d5ece2ea0f89d1455`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 08 Oct 2026 07:36:40 GMT
ENV container oci
# Thu, 08 Oct 2026 07:36:40 GMT
COPY dir:388f591eac105a4440fdce238f0ad736ed3b491450d48baf032edf518479d515 in /      
# Thu, 08 Oct 2026 07:36:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:36:40 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:36:40 GMT
COPY dir:5ad892eb87479bd4b3c99be2ca7f61e3602e21f09d90f472444a46d544881207 in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:36:40 GMT
COPY dir:5ad892eb87479bd4b3c99be2ca7f61e3602e21f09d90f472444a46d544881207 in /root/buildinfo/      
# Thu, 08 Oct 2026 07:36:41 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:36:23Z" "org.opencontainers.image.revision"="15b051dbd9dfffc387e455857eb5a01665969eb9" "build-date"="2026-10-08T07:36:23Z" "architecture"="ppc64le" "vcs-ref"="15b051dbd9dfffc387e455857eb5a01665969eb9" "vcs-type"="git" "release"="1791444377"org.opencontainers.image.created=2026-10-08T07:36:23Z,org.opencontainers.image.revision=15b051dbd9dfffc387e455857eb5a01665969eb9
# Thu, 08 Oct 2026 21:54:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 08 Oct 2026 21:54:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 21:54:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 08 Oct 2026 21:54:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 08 Oct 2026 21:54:13 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 08 Oct 2026 22:02:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 08 Oct 2026 22:02:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 08 Oct 2026 22:02:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 08 Oct 2026 22:02:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 08 Oct 2026 22:02:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:64c368eb978920b7af84152d3940ec25758b46a3457852eccedf5de2484cd15f`  
		Last Modified: Thu, 08 Oct 2026 12:22:44 GMT  
		Size: 39.1 MB (39110445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb83c38091915b22657b2f2847166260cc37cfb4c40a0f8997adc9a1bd699ae2`  
		Last Modified: Thu, 08 Oct 2026 21:55:01 GMT  
		Size: 39.7 MB (39650943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea716212cfb8fdd0f17b9ea93a9d926b72418c4bc1ffe7687948a35f2d34bd0`  
		Last Modified: Thu, 08 Oct 2026 22:03:57 GMT  
		Size: 92.3 MB (92257139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d7bfd0c4da5e8f466276a09a5abb134adec1939e5a8cc490a886b96c9028ad0`  
		Last Modified: Thu, 08 Oct 2026 22:03:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0556629dd1530e73453823aa14b8c787bcf61c53e02aabda21eb7553f692f41f`  
		Last Modified: Thu, 08 Oct 2026 22:03:55 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:699667581c103b8b19e0f7d5572a139eca640352a1569192c5d3624ac70638de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3748165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca8977ed8946374ebac319465a519766b78422545e54df0763c61bcf1f8af48`

```dockerfile
```

-	Layers:
	-	`sha256:206696b88a404ca730e93181f4e8d2b6723500da10582fc53a4d2602795d05e0`  
		Last Modified: Thu, 08 Oct 2026 22:03:55 GMT  
		Size: 3.7 MB (3726912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84fc0b6727b69043b2343cd9ddf517a70aa9c4336ca4318b84a99ff6decc82ee`  
		Last Modified: Thu, 08 Oct 2026 22:03:54 GMT  
		Size: 21.3 KB (21253 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:c1f193ea6850aa67da4306d5eb36cf81eaba476765662c543a6faa36bb2279db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163411461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d6bf439b8ee6d6cc3641bf1e6e30df0b76d8d7dd1d6e700260874e5aee1f70`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 06:17:06 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:17:06 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:17:06 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:17:07 GMT
ENV container oci
# Mon, 12 Oct 2026 06:17:08 GMT
COPY dir:893be50f2bde617bab5db42627335bd90926b299a738ab8303d64db7a35f19f4 in /      
# Mon, 12 Oct 2026 06:17:08 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:17:08 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:17:09 GMT
COPY dir:ee139889734b4c4aac9a2aa2c8fbe722845bb8a72a1576a27597931723d46e30 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:17:09 GMT
COPY dir:ee139889734b4c4aac9a2aa2c8fbe722845bb8a72a1576a27597931723d46e30 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:17:09 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:15:23Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:15:23Z" "architecture"="s390x" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:15:23Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 00:31:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:31:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:31:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:31:51 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:31:51 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 13 Oct 2026 00:34:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 00:34:56 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:34:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:34:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 00:34:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a2084faf73dd02eee4a91504c8641d976b2ea7a34d44da41565f5c24a375c51`  
		Last Modified: Mon, 12 Oct 2026 11:37:18 GMT  
		Size: 34.8 MB (34821002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c30088a0b3db88d531b537a431b79eb168520c945386f329ef71eea9bba822`  
		Last Modified: Tue, 13 Oct 2026 00:32:13 GMT  
		Size: 38.3 MB (38262096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09c46e633bb15eaed2cecea1bc02c937f6e66cd947f2ba9fbec828fe17b60a4`  
		Last Modified: Tue, 13 Oct 2026 00:35:21 GMT  
		Size: 90.3 MB (90325763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe116857412b33a935a9af06d530a82c0dd0a2df3c48e0ec1ab43ec570b912f`  
		Last Modified: Tue, 13 Oct 2026 00:35:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b3ec6e3bc7051219e6317b384329fb064ba659cc00ac2435d969cb8c156fb6c`  
		Last Modified: Tue, 13 Oct 2026 00:35:20 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9bdc0d02c63c5c8b82ab42f4a847ff363c30e6ec7329dc6663ae308835bead9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3748136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d2b744b23ae708b2fd97747f399c370c2775a595f9bb637325da17c2e1d521c`

```dockerfile
```

-	Layers:
	-	`sha256:7f356b1ab7c6e2382de319e5636109adf299aeba84a8c5ea63269bff1880f844`  
		Last Modified: Tue, 13 Oct 2026 00:35:20 GMT  
		Size: 3.7 MB (3726920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20fc77ee16427f81cfdea41724d83807a8336404a4eca638ebd66c429b9be468`  
		Last Modified: Tue, 13 Oct 2026 00:35:19 GMT  
		Size: 21.2 KB (21216 bytes)  
		MIME: application/vnd.in-toto+json
