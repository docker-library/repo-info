## `eclipse-temurin:25-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:d6bf15d915983cf3e610af4a6ceab959d83d9e0a548041be69345a252a0cf334
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

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d40dde5525f0c43b5db3ee4cb91162b380e78a9fe818db711a3a2b62de0b7976
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165405113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee2c8ad38f5581b4a3cf09e06a4aca223439c67ddb79b4eda33394832787283`
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
# Fri, 25 Sep 2026 22:38:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:46 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 25 Sep 2026 22:38:46 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:38:51 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:38:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:38:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:01d8a742a2822eedcad9d714a1e8d0f7174ee4f37d8b4fa28531e8c05efbbd7f`  
		Last Modified: Tue, 22 Sep 2026 12:25:46 GMT  
		Size: 34.9 MB (34931822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f9d96c6ef3380ec797b510b370289f1bae713994347edeeb5a2570f32746903`  
		Last Modified: Fri, 25 Sep 2026 22:39:10 GMT  
		Size: 37.9 MB (37851727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543a4ebe9e439e74b0bd4ec05051230a971600015d8f90a7afd3954295d6dd09`  
		Last Modified: Fri, 25 Sep 2026 22:39:11 GMT  
		Size: 92.6 MB (92618964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576a7e900c54f1233db7f77bff48936d63b275b3bc7583c31d55aa65bd7c4777`  
		Last Modified: Fri, 25 Sep 2026 22:39:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfaade7d2716365a8973e81fc8bde5fd6baad38362d5b9f3cfd30827ac56c74d`  
		Last Modified: Fri, 25 Sep 2026 22:39:04 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cc5118d6a5b52f5e42645a8f7687ade829115fe1a6e558a8c8498ace54d96665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3781247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16806e2657be03f11e4bb2f3d6792e55f0d0199d9a813725cfa591b00050c4b9`

```dockerfile
```

-	Layers:
	-	`sha256:4d1994b197129a9f9cadf209f5ddd1224048e826ded5ee007c05937dcb757ddb`  
		Last Modified: Fri, 25 Sep 2026 22:39:09 GMT  
		Size: 3.8 MB (3759910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c24395d2ae25f04dfadd39ea9debb0d04844eec87d17e3331252177b50ae5889`  
		Last Modified: Fri, 25 Sep 2026 22:39:08 GMT  
		Size: 21.3 KB (21337 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:4a468b3ddf6d640147e5c00a0aa8a01d231845037bb30b6858f660532f54724d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.5 MB (162457866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b00f71619e6e91c72db72f959be193bca98623e2f949a5c89fe16896f87f224`
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
# Fri, 25 Sep 2026 22:34:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:44 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:37:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:37:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6054095ef70d48af21070fc65f15c09b2a4dd4d0577e771afe99d5df88e632be`  
		Last Modified: Tue, 22 Sep 2026 12:26:19 GMT  
		Size: 33.1 MB (33137023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a88d88096456bc38416a151d261728baf95a9c93e2608bd6e08348f26f3f8a`  
		Last Modified: Fri, 25 Sep 2026 22:35:00 GMT  
		Size: 37.8 MB (37788685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e2d158b45d610ef9ebe432ba1479f3437e9ba5060126b8de71045e6a2df540`  
		Last Modified: Fri, 25 Sep 2026 22:38:06 GMT  
		Size: 91.5 MB (91529557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fb28159db92576a4cef2c1f15937ea6c032a34a6c01d5aa5708050e037e384`  
		Last Modified: Fri, 25 Sep 2026 22:38:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:291d2c478f402a5c08221d477f3652e4c3ac4107d6f773a0a4c2c56785b115ee`  
		Last Modified: Fri, 25 Sep 2026 22:38:04 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5d90143df7652abe069fe146117df517b34408a0f3f5ed7e548f481c1d4498a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3780785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7e023ca1a068987a4bea103148fe4c873f67875a16413d8b24cafd416d5f7c`

```dockerfile
```

-	Layers:
	-	`sha256:cf6a8d87ac461a8f24f9180b0cbd9c0ae29fe48dd79b21625aae7fe0aac20c12`  
		Last Modified: Fri, 25 Sep 2026 22:38:04 GMT  
		Size: 3.8 MB (3759333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58d23c470417b64337bf93687d280e8e2dec1d486d087b4a328283116be1f8ad`  
		Last Modified: Fri, 25 Sep 2026 22:38:04 GMT  
		Size: 21.5 KB (21452 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:a323d37ccc3f380cb59b31ebabf70db1151930083043dbc1826b903b8e83e072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (169963818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ccf7d0a3ffc6adaaa560653dc477f0646e2037cd147fd66244816bd95e674e`
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
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 23:02:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 23:02:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 23:02:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 23:02:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:02:17 GMT
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
	-	`sha256:f4224a4b4c0c0e355db2cb9c4330d56aeddfe53083478e56444d3082b77da3b1`  
		Last Modified: Fri, 25 Sep 2026 23:02:55 GMT  
		Size: 91.3 MB (91257491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429869bcd179050ef6fc005315395e736e0fc45af7a755ba9e8c7d2776aa2adf`  
		Last Modified: Fri, 25 Sep 2026 23:02:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf89dc5e4c3b90ab4e6d6d4ce236b32502d9f5e082171362f54488417caba50`  
		Last Modified: Fri, 25 Sep 2026 23:02:52 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e58b8a2093df0f153e4cdd327b59cdd2c46b360674e6cfe38a299d2b8d37f1a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5265104f792bcd3e22ee475a68fca7706c89a4888599bad864f0d264c44e49be`

```dockerfile
```

-	Layers:
	-	`sha256:4ccd72c83d8801ccd932ad5bf4a0327c3b2144e5db36f5b8a17b42a28239854b`  
		Last Modified: Fri, 25 Sep 2026 23:02:52 GMT  
		Size: 3.7 MB (3730054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0da3be9297ff90b3c35c4507e66852f96a3bb16a6167a08e8f991067956ee288`  
		Last Modified: Fri, 25 Sep 2026 23:02:52 GMT  
		Size: 21.4 KB (21373 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:7567d1426517abbfbd206e72e2154d46792b9f6a4c9716ae4df1b62f3a61c187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161457711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4069de77a7279067c523ff7a4d619dd0d0a0a103b0799082652da279d1fd5737`
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
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:39:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:39:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:39:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:39:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:39:23 GMT
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
	-	`sha256:3fbaab5a7480bd639552ecde442b8d268f51dfc016cbff0d0d49335b2bc24f44`  
		Last Modified: Fri, 25 Sep 2026 22:39:46 GMT  
		Size: 88.4 MB (88423566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e01792ffb1405389d12278c6b414dc7c982e8a5fc83306e763bc4f3a6383548`  
		Last Modified: Fri, 25 Sep 2026 22:39:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172be697db6cc69ea15e0dd63b38c785c4d7ff622273cea83c642335c6ddebf5`  
		Last Modified: Fri, 25 Sep 2026 22:39:45 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:65e0aad1fb4ff862446130139f84aacd133cb90ac0772dbb3b25555daad0d0c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acd53fb20b87a7a1244386f745b3c85e7e812b2637492b17d0dbfb56fcad0455`

```dockerfile
```

-	Layers:
	-	`sha256:e2bc1403e2e4dabb6d675ee7bf47d7d3f8e8a999d11d437c9ba044b54ccfebc6`  
		Last Modified: Fri, 25 Sep 2026 22:39:45 GMT  
		Size: 3.7 MB (3730062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba237716a059e854a9dc1d682cef715396d5da8928951d520d2fbe09bb394eb3`  
		Last Modified: Fri, 25 Sep 2026 22:39:45 GMT  
		Size: 21.3 KB (21337 bytes)  
		MIME: application/vnd.in-toto+json
