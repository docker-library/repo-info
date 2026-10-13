## `eclipse-temurin:25-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:23cf377573858a7b6ecd6f4b7210a5d0daeebe3fbfca2fd5da21ec6ef8f0a32b
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

### `eclipse-temurin:25-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:4d5a4c402ed39237c78c6f6de7682e943d5771a1a35862964d169d9aeb8d651b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165429326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d509778d8fa198fdcfebaecca4208b498a13f7db2a7cdc4eecd278a14855fd53`
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
# Tue, 13 Oct 2026 00:35:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:35:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:35:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:35:19 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:35:19 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 13 Oct 2026 00:35:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 00:35:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:35:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:35:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 00:35:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a1611a4fd41ee882f5745fd873c8693214050b6032a4e61339549ed17953e7d4`  
		Last Modified: Mon, 12 Oct 2026 06:46:04 GMT  
		Size: 34.9 MB (34932576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ca6e186d67e50b9daa6bf89e3aed112783520bb6310b89976cc8f1566c0e95`  
		Last Modified: Tue, 13 Oct 2026 00:35:43 GMT  
		Size: 37.9 MB (37875199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ffc67c3ee7e1488d6150ed7d95f9d94ca92147d52dfbed07f960b6bbbdf771`  
		Last Modified: Tue, 13 Oct 2026 00:35:44 GMT  
		Size: 92.6 MB (92618951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86652a2559b49102fb4b3d01fb71de1be79df066b49b7e95275ebbfa839045f5`  
		Last Modified: Tue, 13 Oct 2026 00:35:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc7483a75322b9041ffc1b005f257e3bf6750664fb93a8fbbdf84d230a3c457`  
		Last Modified: Tue, 13 Oct 2026 00:35:42 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6852c83748941e970ca01e8a469543daa60d65e4c65724dc295b87d043d8b41e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3781263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ded9f4c3e7087063fe0683c50b08b5a726abaf769c7101267cfb35ce26d6a07`

```dockerfile
```

-	Layers:
	-	`sha256:e68defa77380248bb4af1cbfcc2aeec2858feb3548f3fbb9f59069fed5bba850`  
		Last Modified: Tue, 13 Oct 2026 00:35:42 GMT  
		Size: 3.8 MB (3759926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69f896e10295fef1c7b7714813d795df25e62a56fe250c259c4365bb1c6cf43a`  
		Last Modified: Tue, 13 Oct 2026 00:35:42 GMT  
		Size: 21.3 KB (21337 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:3d10248b6e2be7d6127f9f3b6c6f8d3195409252b9d3c19005282a43ae43167c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.5 MB (162502800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48ee8b62e569e62bb563c3c10ffbe87fd4ea8abf57d9d6edfb6421327c9b692`
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
# Tue, 13 Oct 2026 00:32:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:32:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:32:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:32:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:32:49 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 13 Oct 2026 00:33:29 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 00:33:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:33:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:33:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 00:33:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6bb0cea67a57d2a977aceca249e6de2824aa79518f87729063f5b1d476030b0f`  
		Last Modified: Mon, 12 Oct 2026 06:46:01 GMT  
		Size: 33.1 MB (33147526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf023d6fb1a24db1749a91735515265615207b60fc550890bd90c522925ee6a7`  
		Last Modified: Tue, 13 Oct 2026 00:33:15 GMT  
		Size: 37.8 MB (37823112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a155c9d867095f79208c180367add50f177fe6515b15b733d24e9fe5048c511`  
		Last Modified: Tue, 13 Oct 2026 00:33:49 GMT  
		Size: 91.5 MB (91529562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7545861c8d62d5d37624e25f7962e1acab29e9f2bc0cca8877c482e01f23173`  
		Last Modified: Tue, 13 Oct 2026 00:33:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5c393ae0b6f0e4f1db77e12c4aef967446b055988565bf2b1c09e032023b37`  
		Last Modified: Tue, 13 Oct 2026 00:33:47 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c61b309570c5653477cf0f17085a9b2ae9745af572ffa071b7ed19ddeaf998de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3780802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40687b966fe822b07295dde2a67ba7eb18167e84cb535b502917746b73518356`

```dockerfile
```

-	Layers:
	-	`sha256:3f8dfe95903d8f8af135e64164ca951c5cf8e1f7948869ee04005211b9643b28`  
		Last Modified: Tue, 13 Oct 2026 00:33:48 GMT  
		Size: 3.8 MB (3759349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:256d7e2c896d3f64de6b6e14b1b51be5cfd669386a550bbb525aa221a699bf7c`  
		Last Modified: Tue, 13 Oct 2026 00:33:47 GMT  
		Size: 21.5 KB (21453 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:0d2b372f4b74e535232e485bc15fefaee5bb17f5c6ffe480e2e027cceccee2d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170029926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1bef0d2d93c4d773fa5b0889537c1943fa6457c2c872edd3d2c191661377e9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 06:07:16 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:07:16 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:07:17 GMT
ENV container oci
# Mon, 12 Oct 2026 06:07:18 GMT
COPY dir:6692fc3e66bbf0913b2d152014d3b0e34bbd923bc55d13e178d365aac806e220 in /      
# Mon, 12 Oct 2026 06:07:18 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:07:18 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:07:18 GMT
COPY dir:39461ef2f88a895d3655798d126e96b7b231101a07bff7389995c2e8e741ee23 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:07:19 GMT
COPY dir:39461ef2f88a895d3655798d126e96b7b231101a07bff7389995c2e8e741ee23 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:07:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:06:54Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:06:54Z" "architecture"="ppc64le" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:06:54Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 02:14:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 02:14:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 02:14:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 02:14:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 02:14:02 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 13 Oct 2026 02:23:31 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 02:23:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 02:23:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 02:23:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 02:23:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a05cfbffa86171447875ba9950514b237a53b4f2fba7ac663609dcb504587364`  
		Last Modified: Mon, 12 Oct 2026 11:37:08 GMT  
		Size: 39.1 MB (39115195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6af5f3f2e6337c522ced566c86f9580c3d36ea3228b09072ff572272d3010e`  
		Last Modified: Tue, 13 Oct 2026 02:14:54 GMT  
		Size: 39.7 MB (39654589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27861988d5782ee5c7b63cd13a96ff1dec441bb22766a829f57fa741f45d3060`  
		Last Modified: Tue, 13 Oct 2026 02:24:21 GMT  
		Size: 91.3 MB (91257540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b930239d05a48c023fcc0a4260975111bf563440a1b0fcf873219982b177b91a`  
		Last Modified: Tue, 13 Oct 2026 02:24:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7be80630614134ef8384ff1170e513de8fb0acf555df6504c5b221bfc2d7415`  
		Last Modified: Tue, 13 Oct 2026 02:24:19 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4fd1dc1624c87051236fa765b1e103c4e333bb6aaeb7173c42a56e2880399fbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fc50a6fa73fe0ccd439394b26cefe7676385c6530b70bbc0656b00696933bc`

```dockerfile
```

-	Layers:
	-	`sha256:bcfa531d1c22c4771c7c4bf50942c4ffaab42dcb5adf45f7edaf90cd4b3f9172`  
		Last Modified: Tue, 13 Oct 2026 02:24:19 GMT  
		Size: 3.7 MB (3730070 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:908bc0af589bc1ec0d03de753dc2edbdc13e1d2a24ef5f92cba9501c0e5973ba`  
		Last Modified: Tue, 13 Oct 2026 02:24:19 GMT  
		Size: 21.4 KB (21373 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:a20f8950a946de37f9bf91b04d5e46c55c4ae82e6254b43a59b853650d53a624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161509145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d385754af9e1ba875b2890182f95e4fc48c851d5fc895e73fe47cd8dacada`
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
# Tue, 13 Oct 2026 00:31:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:31:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:31:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:31:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:31:45 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 13 Oct 2026 00:34:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 00:34:11 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:34:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:34:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 00:34:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a2084faf73dd02eee4a91504c8641d976b2ea7a34d44da41565f5c24a375c51`  
		Last Modified: Mon, 12 Oct 2026 11:37:18 GMT  
		Size: 34.8 MB (34821002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a5fc845160d437b67536fc9f49260f26e3ab318734d0852f22f358419b5042`  
		Last Modified: Tue, 13 Oct 2026 00:32:16 GMT  
		Size: 38.3 MB (38261988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2edbdcaefd4955f8c19c47cf38b07cc05db4549a5ae562ac55ef49a9e5526a39`  
		Last Modified: Tue, 13 Oct 2026 00:34:36 GMT  
		Size: 88.4 MB (88423555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e02d407e5a0f337ae6f912a2e1c75ac0892ccebd356c8dd5b50fd46e5cdb048`  
		Last Modified: Tue, 13 Oct 2026 00:34:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e5a65f087d651676dad55e43e832d09ed3d67d3d7287d47f631b8ba41b0cfa`  
		Last Modified: Tue, 13 Oct 2026 00:34:34 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5f914fab1cc43aa73ea726e926bb31d7ad363cf5d4f4bc0958f5e181f2ad796e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac2b4f810f31279086298b7f29ab29424e758d7f4df41531fc15d1a2ac6fa57`

```dockerfile
```

-	Layers:
	-	`sha256:804e39e72cfe96d081b72977e6983062d1aab3db0af236e0b0de8c4d8537303d`  
		Last Modified: Tue, 13 Oct 2026 00:34:34 GMT  
		Size: 3.7 MB (3730078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855bc9eb740f133b6bde5a8170a2257ff7fa102d866f15ebf1037be2337671a5`  
		Last Modified: Tue, 13 Oct 2026 00:34:34 GMT  
		Size: 21.3 KB (21337 bytes)  
		MIME: application/vnd.in-toto+json
