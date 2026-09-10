## `eclipse-temurin:17-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:dd24b5c75adb3aac727a50018aec97171e65a430efd4424cdfb7e3fd9866e3bd
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

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:c4e41804f1c8c80d5e1ef81f3f0482d6d61ad4c7b690af3ec700c032cb27e12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120279159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e8b328302dea029146c52a8129690ab9d6383808d243a107fcc9526953f45f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:04:44 GMT
ENV container oci
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:876d55a6afad3c650d61c0b66072339064fd4222217a3606856925173e6b4f5d in /      
# Wed, 09 Sep 2026 08:04:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:04:45 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:f690a7926d4d1793e3444aefd940484afd5d12be6d84f392fc895c8a06b3b693 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:f690a7926d4d1793e3444aefd940484afd5d12be6d84f392fc895c8a06b3b693 in /root/buildinfo/      
# Wed, 09 Sep 2026 08:04:45 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:04:26Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:04:26Z" "architecture"="x86_64" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:04:26Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Wed, 09 Sep 2026 22:37:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:37:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:37:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:37:55 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:37:55 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 22:37:57 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 22:37:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:37:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:37:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:1abc6d29de37a94354a7ff1ac7ec241d10a16dabadf22aaa8ea915e748300f18`  
		Last Modified: Wed, 09 Sep 2026 09:16:41 GMT  
		Size: 34.9 MB (34908248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22de64012c39ac7ffbfbd35e120393ca2fb38d509a786b88d66d2496f413aad2`  
		Last Modified: Wed, 09 Sep 2026 22:38:12 GMT  
		Size: 37.9 MB (37851266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb4e8ae0845f5336308552c2811de84bb8bac80873bc6f8da5f85b0934f80a0`  
		Last Modified: Wed, 09 Sep 2026 22:38:12 GMT  
		Size: 47.5 MB (47517048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0153fc14a771d0a80def336f8070a1c182ec73ddaaccfa324b25f2629bc6b5`  
		Last Modified: Wed, 09 Sep 2026 22:38:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e43fec3956e5cd5602108dde0aefe23955dc451b9ff2cb8467e03d309299f0`  
		Last Modified: Wed, 09 Sep 2026 22:38:10 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:64625a886f9d753acd4afed643697f391c3e70b4c163a00d3d06cd89467551e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3728365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a216aa3021f356eaa0ec7662bf9e5a321c33a08ab26806370fe29d2027994ee0`

```dockerfile
```

-	Layers:
	-	`sha256:2447e1beca6c2688a2e93519602f38dc59b47398a8f2b523b047f00416f18440`  
		Last Modified: Wed, 09 Sep 2026 22:38:10 GMT  
		Size: 3.7 MB (3708011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b53de7ab9cfbe090f6147705e22aa0bc237659daceab556105b58f1462154c36`  
		Last Modified: Wed, 09 Sep 2026 22:38:10 GMT  
		Size: 20.4 KB (20354 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:d9f2c0c804ba41b8cbaf9f4355c16cbb4ff8e35ef0b24d9588ffca89d0a44a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117903580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a33f49467b3344dd76ea5f0942f942a7ea5fcec9b48f3286228108a288e2d8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:06:49 GMT
ENV container oci
# Wed, 09 Sep 2026 08:06:50 GMT
COPY dir:57d486e1a6b8b6e97fc97c129774bb79b4e36c15fecc3af363e179377116c60e in /      
# Wed, 09 Sep 2026 08:06:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:06:50 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:06:51 GMT
COPY dir:6ee5715f8cb3dbeb466566f7a46f579cfcaf91ec3ea74ce59c0412cc9823eb1e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:06:51 GMT
COPY dir:6ee5715f8cb3dbeb466566f7a46f579cfcaf91ec3ea74ce59c0412cc9823eb1e in /root/buildinfo/      
# Wed, 09 Sep 2026 08:06:51 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:06:27Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:06:27Z" "architecture"="aarch64" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:06:27Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Wed, 09 Sep 2026 22:36:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:36:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:36:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:36:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:36:45 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 22:36:48 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 22:36:48 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:36:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:36:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8fd75ffc9e9e12cc305a8d45a9be20f6f7f4be59d1a88a8ba04e45d5fe6b4e10`  
		Last Modified: Wed, 09 Sep 2026 09:16:40 GMT  
		Size: 33.1 MB (33117333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a69824f35e281d738b7aa7559c4bf34429d969e5f2de0678f81cbbc108d3547`  
		Last Modified: Wed, 09 Sep 2026 22:37:03 GMT  
		Size: 37.8 MB (37780797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae747d4407339082118deb2a641632f5a979d1d761cea3ac85ceeb33346cbba3`  
		Last Modified: Wed, 09 Sep 2026 22:37:05 GMT  
		Size: 47.0 MB (47002854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d06e52bfcf2fc64ea93836f73dbdbd3e3cd54640f9412780ac80be436b5e77`  
		Last Modified: Wed, 09 Sep 2026 22:37:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e536ffcc448f52de353c3f3b33ea93e090974cfccb448f9e3e3c845fd741107`  
		Last Modified: Wed, 09 Sep 2026 22:37:01 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1d7fab519fc084ce29cd3b46ec107981d544f4d92610a0096009ff18f52dbfd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3727882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce99edfc5f25d2e9e6503410671516f7be6ba05c55b1ece81014726a6b85478`

```dockerfile
```

-	Layers:
	-	`sha256:d7a50ccc0e6def8f47cafb256ed21d9b0769428f01e6a4ba4235dcde96e393d7`  
		Last Modified: Wed, 09 Sep 2026 22:37:01 GMT  
		Size: 3.7 MB (3707425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:066f71a883dbf7ac2c17fc47df48cc194181499552f4b2a9c60f4ec066a983bb`  
		Last Modified: Wed, 09 Sep 2026 22:37:01 GMT  
		Size: 20.5 KB (20457 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:77d5ec053258ba5670645a612b77b489095d771f6f9a9a689603cca0f4451d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126148200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:952722c72f2a812a9b463e4154fcbd3258fb73f2c2fe02357c106ffb80b55c31`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:06:39 GMT
ENV container oci
# Wed, 09 Sep 2026 08:06:40 GMT
COPY dir:0685b6397104b9765a1a0dd63be7b48ac903f486ac996e6e23bbb9b17d69003c in /      
# Wed, 09 Sep 2026 08:06:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:06:40 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:06:40 GMT
COPY dir:fac2abf7d1bd3e81b31254757fb843349b91fa6f1a92b7b768e949e6a469dae3 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:06:40 GMT
COPY dir:fac2abf7d1bd3e81b31254757fb843349b91fa6f1a92b7b768e949e6a469dae3 in /root/buildinfo/      
# Wed, 09 Sep 2026 08:06:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:06:18Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:06:18Z" "architecture"="ppc64le" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:06:18Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Wed, 09 Sep 2026 22:35:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:35:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:35:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:35:53 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:35:53 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 22:41:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 22:41:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:41:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:41:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:245a2e93cd72e73a8f90ed5ced2a97c07c6fd0958f8e2194fab3139abf47eb5f`  
		Last Modified: Wed, 09 Sep 2026 12:24:36 GMT  
		Size: 39.1 MB (39102809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10c8fc955d4331db7d08e6c6c4453b5eb830f6e137362380c3076b86f9d85b6`  
		Last Modified: Wed, 09 Sep 2026 22:36:57 GMT  
		Size: 39.6 MB (39600709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97792ec473affaabaa8d1daf0d9c6f2267d109265877483e19bdb11f5fd2b7e7`  
		Last Modified: Wed, 09 Sep 2026 22:42:09 GMT  
		Size: 47.4 MB (47442081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4c1a1dd52c73dd8d2c9a4c1799dccf7224e2e1c9a4142409178b164af50015`  
		Last Modified: Wed, 09 Sep 2026 22:42:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b9971d4b6db30880611daac10363981f10605d2740cb29175bacd95d6cd1d8`  
		Last Modified: Wed, 09 Sep 2026 22:42:07 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fefedd362cd3d871ba70592f020a3f6dfb961d888efe921c251868570f0b8c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3717140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ec354f56ecec84b8fc3c298dea53b99bd7bbe1ff4a4392a14b1797b8d56f0d4`

```dockerfile
```

-	Layers:
	-	`sha256:b50090d264652685afcf6e0ee29cd614e3b267f8fd522face395ef783d96ff4e`  
		Last Modified: Wed, 09 Sep 2026 22:42:08 GMT  
		Size: 3.7 MB (3696756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d05b09bb6304125e2acef577957ab029eb9ea92fb7021b27610e82863db41dbd`  
		Last Modified: Wed, 09 Sep 2026 22:42:07 GMT  
		Size: 20.4 KB (20384 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:49edbbd39edaccc31bccddbc62635c06adb56245e3ffb3698f2255d079de7407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117484836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:380db1afdef990bb739ba9bd5753e028933d38c8c27d1da8ae94d4f60ebabf70`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 01:03:51 GMT
ENV container oci
# Mon, 31 Aug 2026 01:03:51 GMT
COPY dir:e0b55156afc48595f50283f3b5ca4e244773f3f5a271f2cd3ceb460190953ed1 in /      
# Mon, 31 Aug 2026 01:03:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 01:03:52 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 01:03:52 GMT
COPY dir:621390827405d8042b06b62cd80e2a658b5a7b3772c696e3082635466ca2f168 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 01:03:52 GMT
COPY dir:621390827405d8042b06b62cd80e2a658b5a7b3772c696e3082635466ca2f168 in /root/buildinfo/      
# Mon, 31 Aug 2026 01:03:52 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T01:02:39Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T01:02:39Z" "architecture"="s390x" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T01:02:39Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:02:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:02:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:02:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:02:10 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:02:10 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Mon, 31 Aug 2026 19:03:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:03:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:03:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:03:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6a32169b134863613ca74b2a88a364995d45d3ced3576f8ec16b59a99b1445d8`  
		Last Modified: Mon, 31 Aug 2026 06:16:03 GMT  
		Size: 34.8 MB (34778899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc5e46553ed13425a4c1b15af28878b3ad87e14e0112cb7a6bf5d15204bd602`  
		Last Modified: Mon, 31 Aug 2026 19:02:37 GMT  
		Size: 38.2 MB (38197774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5140c7390fa6bc0af890d70a1e799a1ff23c2021b26f68a2ba3576df114a6f81`  
		Last Modified: Mon, 31 Aug 2026 19:03:30 GMT  
		Size: 44.5 MB (44505564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecebf3ca9ce1f60a20cc26d5a1133165f8215d3dd16607ce4016f08001c80fcf`  
		Last Modified: Mon, 31 Aug 2026 19:03:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a83400775d319bf7db82280b528d96ceabb0758896e16896669111ba2ab6423`  
		Last Modified: Mon, 31 Aug 2026 19:03:29 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0668550d028b35923379a02690abf61a22e1ef494faac9d7a1961898967e86c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c8910ea396a066698a3fdca93ea4abfa4cb40903c76991ae1dc85bc576015d`

```dockerfile
```

-	Layers:
	-	`sha256:f74cdbf25444e6bb0615d587675d7f69ae696b56579841f30ac3b792052f993e`  
		Last Modified: Mon, 31 Aug 2026 19:03:29 GMT  
		Size: 3.7 MB (3697989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:529aef0bdb046adc8acd9806d0e97f9870df286a8fd8d362088d13c72cf374c3`  
		Last Modified: Mon, 31 Aug 2026 19:03:28 GMT  
		Size: 20.4 KB (20354 bytes)  
		MIME: application/vnd.in-toto+json
