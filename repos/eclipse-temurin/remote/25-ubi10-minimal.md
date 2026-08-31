## `eclipse-temurin:25-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:ebbd775dc01365c859a1b36e1b37deb205b8f650470ec79f868339fbae6bc2d7
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
$ docker pull eclipse-temurin@sha256:ad2f6e095280db4e3428d70f32534d4d0b482157f7778ab7a2d7f7c55bb2b76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165348743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cb49495baab26b887b11403961205a435ada3efff613f6e271d861b7a7441dc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Wed, 26 Aug 2026 18:29:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 26 Aug 2026 18:29:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Aug 2026 18:29:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 26 Aug 2026 18:29:54 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:29:54 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Wed, 26 Aug 2026 18:30:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 26 Aug 2026 18:30:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 26 Aug 2026 18:30:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 26 Aug 2026 18:30:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 26 Aug 2026 18:30:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:86240237f31dfd7a745de734105e773d38e7ed79b6d73eddcb5554e8e7a96a76`  
		Last Modified: Tue, 25 Aug 2026 21:24:43 GMT  
		Size: 34.9 MB (34915243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:707370c7ab0065476c25200fd9d0b26e257f0f1d8b7e42bebe4c571d29e45291`  
		Last Modified: Wed, 26 Aug 2026 18:30:20 GMT  
		Size: 37.8 MB (37814553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb65fbc08e5832a85aeb1ba03c576974a6fa86831e2b264ef9b3e1a950db2283`  
		Last Modified: Wed, 26 Aug 2026 18:30:21 GMT  
		Size: 92.6 MB (92616347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99e4d1e615bf79eea1c88ff5d93cfc1c32cc88c5d8022216ff1b2c662efee3e`  
		Last Modified: Wed, 26 Aug 2026 18:30:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5834c321611bb9ae659b293971ec7b15831986740d6f8d89276d276a3f82951`  
		Last Modified: Wed, 26 Aug 2026 18:30:19 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8def003017b75eb0be20b5df4f879e40752264b92a79f092c5ad252247665beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3781153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdaf940b316cf4a348cfd9b34bba1747b801ae42b9409ce72473d8c958b1e59`

```dockerfile
```

-	Layers:
	-	`sha256:5976785f6e1a188acf7faad0fd6dc1c7a96dab93cdeccacb04e4b5e976dc572a`  
		Last Modified: Wed, 26 Aug 2026 18:30:19 GMT  
		Size: 3.8 MB (3759864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8308061a029c616581f7b0157d31c6db76af572792717535a61b54e2f7064265`  
		Last Modified: Wed, 26 Aug 2026 18:30:18 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:667a29c89dd9a2cc177f2d2ea64670ceae607163117229179c9f827d000080c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162392282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13760121d082dab4d0c72a409510f790aa7b0b8c30110cd7dac94a69bc818c4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
ENV JAVA_VERSION=jdk-25.0.4+7
# Wed, 26 Aug 2026 18:29:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 26 Aug 2026 18:29:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 26 Aug 2026 18:29:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 26 Aug 2026 18:29:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 26 Aug 2026 18:29:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:90204bffd8557d6ddc1fe3a7ace7c88713e398b48b9939f3ee4cdfe0070edb6a`  
		Last Modified: Tue, 25 Aug 2026 21:24:43 GMT  
		Size: 33.1 MB (33114682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3606b0a1d3132ea39b27629329c811f5d22b2cd248358d6c8ad777a72fd46c0c`  
		Last Modified: Wed, 26 Aug 2026 18:30:02 GMT  
		Size: 37.7 MB (37742056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b200d4e88db0ffa480f954b364ead65bf013d9aeb46e3bd8c59bd3a2a1f95c4`  
		Last Modified: Wed, 26 Aug 2026 18:30:03 GMT  
		Size: 91.5 MB (91532943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0edae9b372e7dcd06938a5622e57ddf7f679ce3298026160aa7aa366bf76cf3`  
		Last Modified: Wed, 26 Aug 2026 18:29:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd54cd5dd997e19903aafe82d245a7e889aabf7896666ae18e767226c7dca3b`  
		Last Modified: Wed, 26 Aug 2026 18:29:51 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3f0efe676e532a7c3178846480d3e390f1f8657b027a9839454aac64834e4044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3780692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4e3b4d1a37ce321f784ce62ff45fd4be24f9bb56f1388ae10e0238cb47e877`

```dockerfile
```

-	Layers:
	-	`sha256:17e0cda9627bb126ccc7ea88a2914f363171211055583d5025c6cc38e17fabfa`  
		Last Modified: Wed, 26 Aug 2026 18:30:00 GMT  
		Size: 3.8 MB (3759287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:255e016cb02b3f5f9318204bc56e1751b2e3defa2f8c7c1b6e9beb77f2507927`  
		Last Modified: Wed, 26 Aug 2026 18:30:00 GMT  
		Size: 21.4 KB (21405 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:025f279f8ac748fc4d42b28cc63c21417988244db125b065cfbba28961fe4ec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.9 MB (169911012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf622bfdef385eff8bed2c7bd9a9b1facc178782eaf50196f7be9c36e660efbe`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 00:58:57 GMT
ENV container oci
# Mon, 31 Aug 2026 00:58:58 GMT
COPY dir:c6698b30bc4613bb5c731dfe85b9f0b6f175062b68301d046396d7b130d9f1e9 in /      
# Mon, 31 Aug 2026 00:58:58 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 00:58:58 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 00:58:58 GMT
COPY dir:fc70cb278a18b9e01906c23db2ebc4b16dbe24dae1cf884a16eba92125f805ab in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 00:58:58 GMT
COPY dir:fc70cb278a18b9e01906c23db2ebc4b16dbe24dae1cf884a16eba92125f805ab in /root/buildinfo/      
# Mon, 31 Aug 2026 00:58:58 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T00:58:33Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T00:58:33Z" "architecture"="ppc64le" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T00:58:33Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:55:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:55:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:55:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:55:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:55:59 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Mon, 31 Aug 2026 20:03:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 20:03:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 20:03:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:03:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 20:03:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d030c9a6b8d1eae81256166dca814ef7b7aefa89f72c9955e620439c07b6b16b`  
		Last Modified: Mon, 31 Aug 2026 06:16:21 GMT  
		Size: 39.1 MB (39080206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa8dcf3c07e25b50889f9a461403092890829375d0f1248be3d65145272f984`  
		Last Modified: Mon, 31 Aug 2026 19:56:40 GMT  
		Size: 39.6 MB (39571819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5357cb97cabe812bacffa5bbfcc92bb60108b59aa08f2cf202f22d4d422ed378`  
		Last Modified: Mon, 31 Aug 2026 20:03:41 GMT  
		Size: 91.3 MB (91256385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83549bb62052fe76129eb899b5f3f649f0d46610b6534bf8e2e2a3d926dbb503`  
		Last Modified: Mon, 31 Aug 2026 20:03:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555f47cba91f48796ca52a4d6dd86af9820633b816da6fcce5be22919f8de5e7`  
		Last Modified: Mon, 31 Aug 2026 20:03:38 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5faae4edb806a0a95546f07591629cb4729e6c264360030425bf09c360935263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c02c6e61e6f123c924102529e5a1ee445e506db283b2e5efa399ab12448b13`

```dockerfile
```

-	Layers:
	-	`sha256:d345055b993b6c26a693f9401aec5fe78fa21e76ac5c0a135ca60ae25e0a7ff8`  
		Last Modified: Mon, 31 Aug 2026 20:03:39 GMT  
		Size: 3.7 MB (3730012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:090ae7d7647ae919508d80e64a04341bee4fa58c8802cc920fee7592387c28bc`  
		Last Modified: Mon, 31 Aug 2026 20:03:38 GMT  
		Size: 21.3 KB (21325 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:2cd26be0d084db618036bde1849bf91bd2b667b2662ff6559845f44a5b069108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161401577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313f1b1d981a0c70358845da7353b2c1d9c22777f7f68e3ae110a8fed17cb04a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
ENV JAVA_VERSION=jdk-25.0.4+7
# Mon, 31 Aug 2026 19:04:44 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:04:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:04:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:04:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:04:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6a32169b134863613ca74b2a88a364995d45d3ced3576f8ec16b59a99b1445d8`  
		Last Modified: Mon, 31 Aug 2026 06:16:03 GMT  
		Size: 34.8 MB (34778899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772305ea4fb57a3591fb3ab7d2221b6969ceb13294c6f4bbb59b68e80c44a226`  
		Last Modified: Mon, 31 Aug 2026 19:02:43 GMT  
		Size: 38.2 MB (38197740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f8a180c7f96a120b302d5c2437090dc3851b622e396cfc56b7052c5620d3b22`  
		Last Modified: Mon, 31 Aug 2026 19:05:14 GMT  
		Size: 88.4 MB (88422337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb6ef71ce8d3dc9020950b4531832156ec2d8f7156f425e1e04f258ed11f699`  
		Last Modified: Mon, 31 Aug 2026 19:05:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7045ce1f7f4cbe4c85f068cff2fa84ed76a5fb78d515b13e5c98bced9f892ffe`  
		Last Modified: Mon, 31 Aug 2026 19:05:12 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:044190208c20168676cc0d7ccae02b759799aa673908a23340df1f4a46e7aa31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a42e0b561bd0556955d15afcd092ece298743380c905d4b3eccc52f3b5ba762`

```dockerfile
```

-	Layers:
	-	`sha256:ec5814eedc4978d706bd8ad39fc85e39dd9e3c04746ef76a4a48f62cd178d886`  
		Last Modified: Mon, 31 Aug 2026 19:05:12 GMT  
		Size: 3.7 MB (3730028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70f837cfca149f1b6feea97f535fbe1bbf2ab70987980a38464b8e96a32f2386`  
		Last Modified: Mon, 31 Aug 2026 19:05:12 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json
