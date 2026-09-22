## `eclipse-temurin:17-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:99646bfb4ad1179fd5113cfbd9ba7298d997100c051c7109e20a730a4ca43c52
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

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:a651f1ae9c593f3d6c36f5a9efc39a3c9c2408422138405f9718cd0461e044d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115895626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12279f0a4ccd93fe85a0ba259b31ae0f3c23950d938a8e06a5ef8b79132b7c43`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:53:59 GMT
ENV container oci
# Tue, 22 Sep 2026 10:53:59 GMT
COPY dir:14bfe291e51cfd3471e9b85d5e9d491fe06b3ecf4d74ad9ed060eeed665412ea in /      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:54:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /root/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:53:29Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:53:29Z" "architecture"="x86_64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:53:29Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:48:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:48:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:48:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:48:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:48:00 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Tue, 22 Sep 2026 18:48:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 22 Sep 2026 18:48:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:48:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:48:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f54a0fb19efce07c95685474b80ea80c4eb2ed40ae83a65e0624d0d8543a9b7f`  
		Last Modified: Tue, 22 Sep 2026 11:51:29 GMT  
		Size: 40.7 MB (40734776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a7f7263ec2de1344bb44d4d4474874087bbaeb217a8679b4d2e17fbf4303c5`  
		Last Modified: Tue, 22 Sep 2026 18:48:18 GMT  
		Size: 27.6 MB (27641206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652702ec0a64e5c9c6b560c11916b28ce64439a7a7e7e7bc8891d9569ff3f7f2`  
		Last Modified: Tue, 22 Sep 2026 18:48:41 GMT  
		Size: 47.5 MB (47517046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef04e9275f14e933bec2b75c58437613bfc07f7925176e41673e2eb7865bcab`  
		Last Modified: Tue, 22 Sep 2026 18:48:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f99ef1fa147ba9482821b44454ffc0cca2c406875b6cea89cf42113252e63f0`  
		Last Modified: Tue, 22 Sep 2026 18:48:39 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bf12d79333d83984198aa17572cb666e1d32bcc0aee900647df23c557cbe9631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2431451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568edc80831ce660c7c3760dd7638ee84f46faff415890c9de8f6a95220e1c74`

```dockerfile
```

-	Layers:
	-	`sha256:892b84ac7b941332391ace5740d37b4b986644333fbbca31acae578ad4a9f376`  
		Last Modified: Tue, 22 Sep 2026 18:48:39 GMT  
		Size: 2.4 MB (2411265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92f1717c21e9923793bbbdd4349023197488f3970730ce570aac35161dc1e2e4`  
		Last Modified: Tue, 22 Sep 2026 18:48:39 GMT  
		Size: 20.2 KB (20186 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:a8c28d101af2ddd23b7a73b12bdda836f6064bd55358da09df6fc812710e9cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113886492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d62ee2374fa3bfa3d6e2876d5fbb4ba070264252c1196f8852a5cc650f03eb2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:37 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:f1b1d9f069c6fd519132b1abb0a3eadbb548b4c2598519d645212ad8182e3e90 in /      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:38 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:39 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:55:15Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:55:15Z" "architecture"="aarch64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:55:15Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:46:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:46:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:46:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:46:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:46:17 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Tue, 22 Sep 2026 18:47:29 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 22 Sep 2026 18:47:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:47:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:47:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:dea0c826e8cdc58b1ff5a08680eb69ae64129bfee1b07b773c9c5e1d9ffb1e86`  
		Last Modified: Tue, 22 Sep 2026 11:49:08 GMT  
		Size: 38.8 MB (38803467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40762da59090e53c2b3a231ec972a440ce8f5083668bce66f54a0c1282897b04`  
		Last Modified: Tue, 22 Sep 2026 18:46:41 GMT  
		Size: 28.1 MB (28077610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b32dc9f9e14ee3c2b58fc835a00da29d10ad3278627d24978a19568f86ddeb`  
		Last Modified: Tue, 22 Sep 2026 18:47:41 GMT  
		Size: 47.0 MB (47002815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8908c40593185157c5cf1442dd274853e47497769590fc7bd66fb0b48763fc`  
		Last Modified: Tue, 22 Sep 2026 18:47:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f52b72106cbb094282bf7f2b363b16e2c1f60637239869a429870ed9bc8bc7`  
		Last Modified: Tue, 22 Sep 2026 18:47:40 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8d7953b882ff72b8600d3d43062dcf5498ff11854232927ffbecadbcd19b7c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2429131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b784bbac8b68074aca426ef1286e4fef94b1e466e0c2f77acb987b48c7e1457`

```dockerfile
```

-	Layers:
	-	`sha256:2e2da1b378c10db26c87b085c68dc8616c63027c101c95ac512f80482a60655b`  
		Last Modified: Tue, 22 Sep 2026 18:47:40 GMT  
		Size: 2.4 MB (2408841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04aadb9427f650f7da84e909a7a8c08d363f9f79602d40c2167e15e3f3a30d21`  
		Last Modified: Tue, 22 Sep 2026 18:47:40 GMT  
		Size: 20.3 KB (20290 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:82ca68f4f40ee1f5e1d1577b75f30ef085764a463dbd70e38286d7ae28303341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.6 MB (122628272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f804174f31be2112399e9137e664c4a077256e4ff21dd65f51a632e84e1c40`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:12 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:12 GMT
COPY dir:e4eb2c1671c9cf1f18e1acc99df1bdd89a609545254164422bc0f58d6e119a4e in /      
# Tue, 22 Sep 2026 10:55:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:12 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:12 GMT
COPY dir:2873fc57f881f500990993deeec8e7b40faee6af06ac82631fee3dfabf7d7ad5 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:12 GMT
COPY dir:2873fc57f881f500990993deeec8e7b40faee6af06ac82631fee3dfabf7d7ad5 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:13 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:54:50Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:54:50Z" "architecture"="ppc64le" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:54:50Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:44:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:44:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:44:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Tue, 22 Sep 2026 18:50:25 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 22 Sep 2026 18:50:26 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:50:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:50:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:4108cbe7aded7eca3bde90732e30405ccf46a54516e043a2af89a1be17eafd2c`  
		Last Modified: Tue, 22 Sep 2026 12:17:19 GMT  
		Size: 45.1 MB (45122832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0795e3a65708847d5bcf3d61080098eba5e49f58c02cdb68701041b0df5eaba`  
		Last Modified: Tue, 22 Sep 2026 18:45:08 GMT  
		Size: 30.1 MB (30060798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83924ced41c9c7c8761d395d1d3a06068efc35c10e375f0e2e03db70adbfade8`  
		Last Modified: Tue, 22 Sep 2026 18:51:05 GMT  
		Size: 47.4 MB (47442045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b25cc7328bb3b364044134f90782e370ac055a36caf29158c204d4a89c971eaa`  
		Last Modified: Tue, 22 Sep 2026 18:51:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef3a0990519091e0cdaf3f063b8db32037b5cd214709e377e54ce390c70b19a`  
		Last Modified: Tue, 22 Sep 2026 18:51:03 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2c8c072ae2ab20efbbe0d9651b7ec72f40d3827021676e41fe8e618cce9c9290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2429742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e14a0fc9e397d8453ba0f1545ef59b22d23b8fa2d433f3b66ddcfbde458a9df8`

```dockerfile
```

-	Layers:
	-	`sha256:b46a436d04d27ba4f60970cd51177fea496b41d8e0e66e1cdd59b00a9801e5ba`  
		Last Modified: Tue, 22 Sep 2026 18:51:03 GMT  
		Size: 2.4 MB (2409526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ce69458d9f815c2894582c05c9c4635bc0122b2c71d42dfb0944024d98c4a2c`  
		Last Modified: Tue, 22 Sep 2026 18:51:03 GMT  
		Size: 20.2 KB (20216 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:1dc2fda10971bb04ed0ec8a0edde56f9d6301f51391ece40b3205f6d2cbd3f91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110941906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78fb107e93554f93316b98f5bc86f1dbc5b91f16b748b5661714a13c35da928b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 11:01:56 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:01:56 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:01:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:01:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 11:01:57 GMT
ENV container oci
# Tue, 22 Sep 2026 11:01:58 GMT
COPY dir:5e5db29b133c9bb0e55b3ae64b8b62b14f967a8dc1bbef81350da62fd44b3fae in /      
# Tue, 22 Sep 2026 11:01:58 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:01:58 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:01:58 GMT
COPY dir:9e0fe23796361f041930ca9ebd2fa2d1d7f99df97c5f2fabb85b9c7d36a2b88e in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:01:59 GMT
COPY dir:9e0fe23796361f041930ca9ebd2fa2d1d7f99df97c5f2fabb85b9c7d36a2b88e in /root/buildinfo/      
# Tue, 22 Sep 2026 11:02:00 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:00:47Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T11:00:47Z" "architecture"="s390x" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T11:00:47Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:45:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:45:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:45:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:45:55 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:45:55 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Tue, 22 Sep 2026 18:49:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 22 Sep 2026 18:49:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cd0f92464f2cc33ea96f92a301f56613d6c2cd86307c532c3c8f805174507a71`  
		Last Modified: Tue, 22 Sep 2026 12:16:56 GMT  
		Size: 38.8 MB (38761576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04015867362afab0af8457ea3e4ce3b39aed55be6e1ccc6812b306993fd6acd5`  
		Last Modified: Tue, 22 Sep 2026 18:46:39 GMT  
		Size: 27.7 MB (27672189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f1820dfd1b3ef0dd239d787dbc1fe131d706d4cb836a0f1fb9902500bb94ba`  
		Last Modified: Tue, 22 Sep 2026 18:49:55 GMT  
		Size: 44.5 MB (44505542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7907eee76d8b1ff79d1ca1344f7093f911cbaf79a80e72ab309659a4c5317a04`  
		Last Modified: Tue, 22 Sep 2026 18:49:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3203613c62d1d3c2dd8b82042db1a4e2e2d053f853d27cacb19e48ac72d198`  
		Last Modified: Tue, 22 Sep 2026 18:49:51 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ddc582c5cac856c47d07c59294d2a36de7b6594be9028f474509abc97b8061e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187b6eea4fcfe3fa15c5a0d51c916bd911901f10121e8863c8f8bf8cde9c0db6`

```dockerfile
```

-	Layers:
	-	`sha256:ca98daecdc586e89ad1557be8c03d949dfab09de79ac037ebb281476f050f4a1`  
		Last Modified: Tue, 22 Sep 2026 18:49:52 GMT  
		Size: 2.4 MB (2401275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:599a92641ca7e44a68dde12233d94e61a4582f4fe9d2567b01f64f545cfaff27`  
		Last Modified: Tue, 22 Sep 2026 18:49:52 GMT  
		Size: 20.2 KB (20186 bytes)  
		MIME: application/vnd.in-toto+json
