## `eclipse-temurin:17-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:0a60592d41df2ee89086c6cddf5f27266c84b79b4c80c9aea09a63071a86a3e2
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
$ docker pull eclipse-temurin@sha256:3cce0bd76640dc9861c72c20fd6fcfa726bb68e4c455334da323339640d98f7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120249345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4da3c2f22cc9778145afcaeef7697d4e36b6ae994883a52a6d9fa26c049f599`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 25 Aug 2026 20:06:48 GMT
ENV container oci
# Tue, 25 Aug 2026 20:06:48 GMT
COPY dir:e7620ad0de168d433994ebbf7fb7f61c959a1e46f62a586e13d1420fdf828782 in /      
# Tue, 25 Aug 2026 20:06:48 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 20:06:48 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 20:06:49 GMT
COPY dir:843679555eb85e63c3d46c8573b56fcb4e641b4a9bd8ecdac5dc2ff16c34caac in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 20:06:49 GMT
COPY dir:843679555eb85e63c3d46c8573b56fcb4e641b4a9bd8ecdac5dc2ff16c34caac in /root/buildinfo/      
# Tue, 25 Aug 2026 20:06:49 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T20:06:27Z" "org.opencontainers.image.revision"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "build-date"="2026-08-25T20:06:27Z" "architecture"="x86_64" "vcs-ref"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "vcs-type"="git" "release"="1787688243"org.opencontainers.image.created=2026-08-25T20:06:27Z,org.opencontainers.image.revision=0b4cc93aa2450ac257d3e3051c62ff62306cdb95
# Wed, 26 Aug 2026 18:29:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 26 Aug 2026 18:29:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Aug 2026 18:29:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 26 Aug 2026 18:29:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:29:40 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 26 Aug 2026 18:29:43 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 26 Aug 2026 18:29:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 26 Aug 2026 18:29:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 26 Aug 2026 18:29:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:86240237f31dfd7a745de734105e773d38e7ed79b6d73eddcb5554e8e7a96a76`  
		Last Modified: Tue, 25 Aug 2026 21:24:43 GMT  
		Size: 34.9 MB (34915243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17af3838123442790a4d7db76c3e82c6d1304e3d0b85295f793c4ed112d7384`  
		Last Modified: Wed, 26 Aug 2026 18:29:57 GMT  
		Size: 37.8 MB (37814457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b1f322ca32e2aedeee29b8b37f1e62c875176204a4a9f5b2579554c8ca0a0f`  
		Last Modified: Wed, 26 Aug 2026 18:29:58 GMT  
		Size: 47.5 MB (47517046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e835cb67fb47f7ceb61c3afe259327f19c8c41b99667e0f20739fb9bbe8fc6`  
		Last Modified: Wed, 26 Aug 2026 18:29:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b6259415312cd6a796a405fc4df9daa32a9085b5ea9ec567cf6490d70d8062`  
		Last Modified: Wed, 26 Aug 2026 18:29:56 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e626050057fe58647db8efd0d158d8b686fadb30d017ec39b560b94d58b63976
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3728341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1052da0e81684aeaed0c50759ad14aefefc31741cf2e37cd0fd426e1e9d05314`

```dockerfile
```

-	Layers:
	-	`sha256:17974e94f67335e192b108e9fae332795744a1852ac73079d085bbda945ab307`  
		Last Modified: Wed, 26 Aug 2026 18:29:56 GMT  
		Size: 3.7 MB (3707987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3002622653c2318304bf6335d1192c3623a627bd0594bb46e88c91e0a350a6dc`  
		Last Modified: Wed, 26 Aug 2026 18:29:56 GMT  
		Size: 20.4 KB (20354 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:1cfe3234a5f994cadf2ad43601263e6fa4f4541e04eb950a4c89bcc8eb6905b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117862035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf764497ac44abe567a084c0e5892009ce3a7ac5fc89e4d42924f4e8d45f279`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 25 Aug 2026 20:08:40 GMT
ENV container oci
# Tue, 25 Aug 2026 20:08:41 GMT
COPY dir:e85602551ea7d4c5d143bc326f1b43b9ed8ad5fb111723cc57a2cb7efa3f9446 in /      
# Tue, 25 Aug 2026 20:08:41 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 20:08:41 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 20:08:41 GMT
COPY dir:b636c4dfbfa88e3b3b3d8395ea556d0e4ce7dfa8eccc649eb8c4efc46735c01e in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 20:08:41 GMT
COPY dir:b636c4dfbfa88e3b3b3d8395ea556d0e4ce7dfa8eccc649eb8c4efc46735c01e in /root/buildinfo/      
# Tue, 25 Aug 2026 20:08:41 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T20:08:18Z" "org.opencontainers.image.revision"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "build-date"="2026-08-25T20:08:18Z" "architecture"="aarch64" "vcs-ref"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "vcs-type"="git" "release"="1787688243"org.opencontainers.image.created=2026-08-25T20:08:18Z,org.opencontainers.image.revision=0b4cc93aa2450ac257d3e3051c62ff62306cdb95
# Wed, 26 Aug 2026 18:29:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 26 Aug 2026 18:29:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Aug 2026 18:29:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 26 Aug 2026 18:29:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:29:35 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 26 Aug 2026 18:29:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 26 Aug 2026 18:29:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 26 Aug 2026 18:29:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 26 Aug 2026 18:29:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:90204bffd8557d6ddc1fe3a7ace7c88713e398b48b9939f3ee4cdfe0070edb6a`  
		Last Modified: Tue, 25 Aug 2026 21:24:43 GMT  
		Size: 33.1 MB (33114682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e34b28ec4d868b1dfb4b2b81323294542230f3dd75e21acd974d9d989607ec8e`  
		Last Modified: Wed, 26 Aug 2026 18:29:53 GMT  
		Size: 37.7 MB (37741856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251c159c7c3659fae5638fd6908b5e056c1501bd580788cf05addd7e61ef4a96`  
		Last Modified: Wed, 26 Aug 2026 18:29:54 GMT  
		Size: 47.0 MB (47002898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596b07b969bb3e6ae57d68d9319c383111ce96e803fee37c59a8a9ef2b3e705c`  
		Last Modified: Wed, 26 Aug 2026 18:29:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd54cd5dd997e19903aafe82d245a7e889aabf7896666ae18e767226c7dca3b`  
		Last Modified: Wed, 26 Aug 2026 18:29:51 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:71083595fb196cac5ebd640386f32f8acb585b2592c8fb4febad6cb322c33e6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3727859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3906817e203b0aba637eab9f6239b90953bb587b7f1263c00e41fd0a240a22`

```dockerfile
```

-	Layers:
	-	`sha256:6eebdf64a2ded05565b9a958ffacff441ce8483c7c9d329a19c3d20bfe1fe20d`  
		Last Modified: Wed, 26 Aug 2026 18:29:52 GMT  
		Size: 3.7 MB (3707401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edc6f909be9617e2f222e67dc686e1ce0ee4c36be10e33a9e73c3da0b562439d`  
		Last Modified: Wed, 26 Aug 2026 18:29:51 GMT  
		Size: 20.5 KB (20458 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:f73c7b40ae95bb8f9801722f24b237904a0459d841fe51489ba532a7fdf49e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126154714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ec7f8a89b21bcbf9021b49b7be6d97569350501360ddc3559872cf00101c29`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 25 Aug 2026 20:10:30 GMT
ENV container oci
# Tue, 25 Aug 2026 20:10:31 GMT
COPY dir:230a97990b20c0be360c29959ecb6dbc99e054a10c2b3593307a59e20273d342 in /      
# Tue, 25 Aug 2026 20:10:31 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 20:10:31 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 20:10:31 GMT
COPY dir:c7eb7466e556528be0a1129ff790b42dc37e5994a70b90a997492a48e39689a8 in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 20:10:31 GMT
COPY dir:c7eb7466e556528be0a1129ff790b42dc37e5994a70b90a997492a48e39689a8 in /root/buildinfo/      
# Tue, 25 Aug 2026 20:10:31 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T20:10:13Z" "org.opencontainers.image.revision"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "build-date"="2026-08-25T20:10:13Z" "architecture"="ppc64le" "vcs-ref"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "vcs-type"="git" "release"="1787688243"org.opencontainers.image.created=2026-08-25T20:10:13Z,org.opencontainers.image.revision=0b4cc93aa2450ac257d3e3051c62ff62306cdb95
# Wed, 26 Aug 2026 18:27:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 26 Aug 2026 18:27:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Aug 2026 18:27:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 26 Aug 2026 18:27:47 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:27:47 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 26 Aug 2026 18:29:37 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 26 Aug 2026 18:29:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 26 Aug 2026 18:29:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 26 Aug 2026 18:29:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:58c6f82003c371a546554a5fe9af9e5362feefe32f91987ccfca2a713472f373`  
		Last Modified: Tue, 25 Aug 2026 23:51:07 GMT  
		Size: 39.1 MB (39134244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063220101819d640342dfea592627bfdc0dc9d637a3b91b85d4a3b40fd4cede1`  
		Last Modified: Wed, 26 Aug 2026 18:28:22 GMT  
		Size: 39.6 MB (39575806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd14ae386159ebd265690083ae9b6989b2d8ee0b65fbfa0c83761784173f7b6`  
		Last Modified: Wed, 26 Aug 2026 18:30:03 GMT  
		Size: 47.4 MB (47442064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596b07b969bb3e6ae57d68d9319c383111ce96e803fee37c59a8a9ef2b3e705c`  
		Last Modified: Wed, 26 Aug 2026 18:29:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6cee12381db17b6e0037bc96cd32ed9776ace6d432587203af309164c6e810`  
		Last Modified: Wed, 26 Aug 2026 18:30:02 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6b976c43fa10a318c24ecf004f36f5d3581e50ad088d2b2f3b86c0c667c50c52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3717116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14110a73421957330b7004b53d20d5ccc3d2ce4d280706cb833916b7267f6965`

```dockerfile
```

-	Layers:
	-	`sha256:4a1c7d5f2c7d2c4e38293a4e5dc58161e32133120c0dcfe8d944e3c14e221039`  
		Last Modified: Wed, 26 Aug 2026 18:30:02 GMT  
		Size: 3.7 MB (3696732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfa8fe234c4ba2545d7e73ee5eb6a30d3f867d172a9dce081acdf56f3c696290`  
		Last Modified: Wed, 26 Aug 2026 18:30:01 GMT  
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
