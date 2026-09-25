## `eclipse-temurin:11-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:785100b7dc2e993295ba0d8a1e7a785224401697ad64e3dca367fda4d79dc592
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

### `eclipse-temurin:11-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d0da33be48d41b79cf81bc983c47f8935e4a294ee506c69e245009fc23ffc758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215110417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e16c82670920c51d81d658df6dcab4a88ac1ef0c35cf1f549ab545c0c48224`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 22 Sep 2026 11:16:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:16:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 22 Sep 2026 11:17:00 GMT
ENV container oci
# Tue, 22 Sep 2026 11:17:00 GMT
COPY dir:69bd69d248b8c7058b85ed6a92d01815998798ce69195b9202e90e0cb3ccbbc2 in /      
# Tue, 22 Sep 2026 11:17:00 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:17:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:17:00 GMT
COPY dir:f77af0b759fc748fb90b4a7a7a507b46ebd8ed6b3427231a07df0a82562ab5b7 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:17:00 GMT
COPY dir:f77af0b759fc748fb90b4a7a7a507b46ebd8ed6b3427231a07df0a82562ab5b7 in /root/buildinfo/      
# Tue, 22 Sep 2026 11:17:01 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:16:40Z" "org.opencontainers.image.revision"="496f022c586de3cdc994d6097f91f0776122c30e" "build-date"="2026-09-22T11:16:40Z" "architecture"="x86_64" "vcs-ref"="496f022c586de3cdc994d6097f91f0776122c30e" "vcs-type"="git" "release"="1790075626"org.opencontainers.image.created=2026-09-22T11:16:40Z,org.opencontainers.image.revision=496f022c586de3cdc994d6097f91f0776122c30e
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:29 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:35:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:35:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:01d8a742a2822eedcad9d714a1e8d0f7174ee4f37d8b4fa28531e8c05efbbd7f`  
		Last Modified: Tue, 22 Sep 2026 12:25:46 GMT  
		Size: 34.9 MB (34931822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc31f42ff0163e2127280db3f1018d5c8d50a731b99eab25303ef8b1e5ac18b`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 37.9 MB (37851778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6f6d2f91452297f872c720a9f6ba2b41e0726b791a1a21677f81c0b9accd12`  
		Last Modified: Fri, 25 Sep 2026 22:36:14 GMT  
		Size: 142.3 MB (142324217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e517c38c6e5bd39f144102f045c2f44269bcfb4b203042bb0bfd94703b7e96e`  
		Last Modified: Fri, 25 Sep 2026 22:36:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040edb43b63e8c6c02033e0ae622a5d700b088dcd0db4933aef4dc77857346c0`  
		Last Modified: Fri, 25 Sep 2026 22:36:11 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d3788e8f6fe8768946a5b1fb1260761fa73b3e4ebb5372eaddd9190469b2b1a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3832771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:154f082ad70384b485be655477c02cee9bddb8cdee2371d6bb67b4990e793a8e`

```dockerfile
```

-	Layers:
	-	`sha256:bedb0ea710d9da20f8a31c93f96811564b066fc38783aefd27f2386cb7923027`  
		Last Modified: Fri, 25 Sep 2026 22:36:11 GMT  
		Size: 3.8 MB (3811407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c120db8cad9c751c2d37828542b8c4176a68a754d17a6a513b2433f31f9e6186`  
		Last Modified: Fri, 25 Sep 2026 22:36:11 GMT  
		Size: 21.4 KB (21364 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:4d63458911cc9e863fb8b52f6dac31b3048ac56fc5b2a7fdbb61066f71132fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.0 MB (209963780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6b2e7a6dbf74e970a429e1f31025a243ff34a790bbbce03f8b1095188d2919`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 22 Sep 2026 11:20:02 GMT
ENV container oci
# Tue, 22 Sep 2026 11:20:03 GMT
COPY dir:943b6e34b0263a091be729bb054a96ae31b9973a4e5bdbcadf3e7d646ebafb83 in /      
# Tue, 22 Sep 2026 11:20:03 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:20:03 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:20:03 GMT
COPY dir:a40e0488440102eb869bb73d71e58694adcc2a99dfb84f58a84982e79507f212 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:20:03 GMT
COPY dir:a40e0488440102eb869bb73d71e58694adcc2a99dfb84f58a84982e79507f212 in /root/buildinfo/      
# Tue, 22 Sep 2026 11:20:03 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:19:41Z" "org.opencontainers.image.revision"="496f022c586de3cdc994d6097f91f0776122c30e" "build-date"="2026-09-22T11:19:41Z" "architecture"="aarch64" "vcs-ref"="496f022c586de3cdc994d6097f91f0776122c30e" "vcs-type"="git" "release"="1790075626"org.opencontainers.image.created=2026-09-22T11:19:41Z,org.opencontainers.image.revision=496f022c586de3cdc994d6097f91f0776122c30e
# Fri, 25 Sep 2026 22:35:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:16 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:35:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:35:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6054095ef70d48af21070fc65f15c09b2a4dd4d0577e771afe99d5df88e632be`  
		Last Modified: Tue, 22 Sep 2026 12:26:19 GMT  
		Size: 33.1 MB (33137023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82906245d508aa6d4b50a71abc18b9b1e9dbe371207de0358115a6aff20b71af`  
		Last Modified: Fri, 25 Sep 2026 22:35:42 GMT  
		Size: 37.8 MB (37788820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e1d35bd41d9bdc75056f4e78cc059c53808b4fa55a705c96c2bc24532373bf`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 139.0 MB (139035335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce25a648cec3cf92625b9e301dd87d3228bd56e1881cf24b711f8134e16c6f9`  
		Last Modified: Fri, 25 Sep 2026 22:35:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd4a3d5c076ed080848e5e50f35d92a9b33ebaf4954d58aa731e04016f7f287`  
		Last Modified: Fri, 25 Sep 2026 22:35:41 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:880204e0d94cd9a1aab04d04263f88b26bc2ea10cfea373f075a14c4849a6060
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3832931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e609a56a630870ece0923d32e70eecb47f3897b6f1bd9f23f07dd779c7950a7c`

```dockerfile
```

-	Layers:
	-	`sha256:2e8e08093ac0eb580f342424f165f63edc0ac451355fc173a370d9e3eb60adb4`  
		Last Modified: Fri, 25 Sep 2026 22:35:41 GMT  
		Size: 3.8 MB (3811451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5b0370f35ea8ef66243a3508f5f21381e39930d8c9703fe3bcd5b692b114459`  
		Last Modified: Fri, 25 Sep 2026 22:35:41 GMT  
		Size: 21.5 KB (21480 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:8c49cf403e35ab4950eb94be606637aab812479bd548bc7919579d00b435c58d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.3 MB (208302730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be2fbd4c131c5aa2fd14a3f07b531beeafe53789711ed02ff0d1716559ffbe8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 22 Sep 2026 11:23:29 GMT
ENV container oci
# Tue, 22 Sep 2026 11:23:31 GMT
COPY dir:bcbef1ea327c08d43fe5d07e4411cf28f68eaec007603bfc77c4ddae5b7e4a6a in /      
# Tue, 22 Sep 2026 11:23:31 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:23:31 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:23:32 GMT
COPY dir:d134a2581f6a9d019c9284db716254e62476cfecd0b6e0f96306f5f69ccfe9cb in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:23:32 GMT
COPY dir:d134a2581f6a9d019c9284db716254e62476cfecd0b6e0f96306f5f69ccfe9cb in /root/buildinfo/      
# Tue, 22 Sep 2026 11:23:33 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:23:13Z" "org.opencontainers.image.revision"="496f022c586de3cdc994d6097f91f0776122c30e" "build-date"="2026-09-22T11:23:13Z" "architecture"="ppc64le" "vcs-ref"="496f022c586de3cdc994d6097f91f0776122c30e" "vcs-type"="git" "release"="1790075626"org.opencontainers.image.created=2026-09-22T11:23:13Z,org.opencontainers.image.revision=496f022c586de3cdc994d6097f91f0776122c30e
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:44:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:44:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:44:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:40:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:41:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:41:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:41:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:41:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:80132afeb18bcab70432eaae28eab8f86e66df015b20334e777c6f7f4f3c1be6`  
		Last Modified: Tue, 22 Sep 2026 12:27:02 GMT  
		Size: 39.1 MB (39091557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e08e157d48c9630b6a358c50f44ec99a975ff76685960247748c6dee396324`  
		Last Modified: Tue, 22 Sep 2026 18:45:13 GMT  
		Size: 39.6 MB (39612171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbc7d25c62f9f792f65a3f4ed9c182f7d320dba0d91d98747ef4813f66d30ea`  
		Last Modified: Fri, 25 Sep 2026 22:41:55 GMT  
		Size: 129.6 MB (129596403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b375fd52003cea0927728edec9f943b92129f0ad2bfb29d462bbad7f88c4f1a9`  
		Last Modified: Fri, 25 Sep 2026 22:41:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0e60dac9f32a19abac68db494223446bd82c4923fb07680a16c1ed40b1ea5c`  
		Last Modified: Fri, 25 Sep 2026 22:41:52 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b32a92858e94a78d0ad215e8dee9d2632bc045a2847549ae989071ff8961bef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3819024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:584237f9296be0e1c2d6c4ba794d9b0784532b6d892ff9d907c50eab0e39a4ad`

```dockerfile
```

-	Layers:
	-	`sha256:4ac84ec099f1164320fe18d083c34c7114f716e18f4db5340a08485a67611347`  
		Last Modified: Fri, 25 Sep 2026 22:41:52 GMT  
		Size: 3.8 MB (3797624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:594b68d919037b9b0cc65fc0b938f0fcd2f78e3e331b262a5f8def2f584b6979`  
		Last Modified: Fri, 25 Sep 2026 22:41:52 GMT  
		Size: 21.4 KB (21400 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:f47e58810cc3d0e6d32374d735de265374fc5fd2980ea0255261c198e45537f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196082357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7df243820abbab5ff2aa73c1845053e2d6db10e88cca921e0bbeaf164a0a06`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 22 Sep 2026 11:42:56 GMT
ENV container oci
# Tue, 22 Sep 2026 11:42:57 GMT
COPY dir:c3af120dfb67976e1c90008bf85e7ba5f67a6339222d18645cc7ddd92789604f in /      
# Tue, 22 Sep 2026 11:42:57 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:42:57 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:42:57 GMT
COPY dir:ab4184071b23b635b2a64ccf95077081297fe83f98609e1ff860f82be9cceb7a in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:42:57 GMT
COPY dir:ab4184071b23b635b2a64ccf95077081297fe83f98609e1ff860f82be9cceb7a in /root/buildinfo/      
# Tue, 22 Sep 2026 11:42:57 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:41:22Z" "org.opencontainers.image.revision"="496f022c586de3cdc994d6097f91f0776122c30e" "build-date"="2026-09-22T11:41:22Z" "architecture"="s390x" "vcs-ref"="496f022c586de3cdc994d6097f91f0776122c30e" "vcs-type"="git" "release"="1790075626"org.opencontainers.image.created=2026-09-22T11:41:22Z,org.opencontainers.image.revision=496f022c586de3cdc994d6097f91f0776122c30e
# Tue, 22 Sep 2026 18:46:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:46:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:46:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:46:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:46:00 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:32:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:33:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:33:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:33:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:33:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2f7507714016123f6a629892c99b0956acac81f1de397395626f22acd3f6b12`  
		Last Modified: Tue, 22 Sep 2026 12:26:46 GMT  
		Size: 34.8 MB (34805444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4cf9c68425e8f1ccd84b1c2c4887b35816ea4e8f7abc45408338e47a8491f5`  
		Last Modified: Tue, 22 Sep 2026 18:47:00 GMT  
		Size: 38.2 MB (38226103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cafeacde9fb8e14db86f3abcd8e8c37f0b5421ee4f09487a3bccf2aad8f6968`  
		Last Modified: Fri, 25 Sep 2026 22:33:24 GMT  
		Size: 123.0 MB (123048213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7902224c09990f443b699c3d11be144441e657d3c74770c31ac6237ac19e3235`  
		Last Modified: Fri, 25 Sep 2026 22:33:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6233120b642f01ad09b7390fd4cafddbf30a42a6884b67ec314f9454a6935d3`  
		Last Modified: Fri, 25 Sep 2026 22:33:22 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:229958b52c202a1a02bf80f98f70c87ed94ba9c4daf5fd6395734e62aa17510d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3818365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926a4ee60fc41af919b4afe350c058be2ac1899078ad43c6d6d8bcfbbb68e838`

```dockerfile
```

-	Layers:
	-	`sha256:44c2291767692971ce4fa6ea8d5993445801dff7f832cd49a09e14dd8236ed5d`  
		Last Modified: Fri, 25 Sep 2026 22:33:22 GMT  
		Size: 3.8 MB (3797001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c91416fbad9e44ece0dcd9fe598a1bda997f7ad86b45c529fb6ec10a439c313b`  
		Last Modified: Fri, 25 Sep 2026 22:33:21 GMT  
		Size: 21.4 KB (21364 bytes)  
		MIME: application/vnd.in-toto+json
