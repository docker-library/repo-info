## `eclipse-temurin:21-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:8cc58a54f6a516e11c1ad2a50410af7554111a7fa32634b317af46dec0ee89c0
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

### `eclipse-temurin:21-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:09773925f51e3269fd6d1814169c87836e83766d98979debcd746d48967517c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226497809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2b370af3179624ff68ff218769b441d2ee4fa7e4c298eec328a254994f4fdf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:16:26 GMT
ENV container oci
# Mon, 03 Aug 2026 17:16:27 GMT
COPY dir:ee5097758909d32d2eabf40e7c041e9a840048535966e0c036a09335f4fb4e82 in /      
# Mon, 03 Aug 2026 17:16:27 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:16:27 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:16:27 GMT
COPY dir:5b627414eae6003981d38c21a607546a640c5958754981697654fcd75cbb5144 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:16:27 GMT
COPY dir:5b627414eae6003981d38c21a607546a640c5958754981697654fcd75cbb5144 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:16:27 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:14:53Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:14:53Z" "architecture"="x86_64" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:14:53Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 21:04:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:04:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:04:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:04:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:04:17 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 21:04:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 04 Aug 2026 21:04:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:04:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:04:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 21:04:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2ee0d90420c46055e8fc6fd236406f701dc6690c8f7d03e99f89a7fdf5199a81`  
		Last Modified: Mon, 03 Aug 2026 18:10:44 GMT  
		Size: 40.7 MB (40665538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e207f77b83ff31737b1a504f4d12a06c6a7b723d72b075bc204030f988add840`  
		Last Modified: Tue, 04 Aug 2026 21:04:43 GMT  
		Size: 27.7 MB (27657171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527445aa02fa85bff9e94df780a153dfe1b50c922c9ef33b644a14844baa5fa2`  
		Last Modified: Tue, 04 Aug 2026 21:04:46 GMT  
		Size: 158.2 MB (158172679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0bdfd78d4f343aba79c994136e8e7e68d4e5c50737f223cdb6838c97ec4240`  
		Last Modified: Tue, 04 Aug 2026 21:04:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e81e149eebc13699d54aba317124f364d4668d60b1cc63046c0c37c386ae859`  
		Last Modified: Tue, 04 Aug 2026 21:04:42 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3efb5b21915dc2e867ef6fa6ce57d53cb8004a352f90a4a329597281f54a7a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2518181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1640aed50b45437d78165971809b93d3b2d96833870771976dd07405d8d051d`

```dockerfile
```

-	Layers:
	-	`sha256:b08781a1ffc3884d76272c7e70406dd1127bd842a35eb59e7a774c598414d3d5`  
		Last Modified: Tue, 04 Aug 2026 21:04:43 GMT  
		Size: 2.5 MB (2497013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36ae0012f205aff9a65ac5bd52b8e0a9807f67410a51c33889a3f16cdb09e82d`  
		Last Modified: Tue, 04 Aug 2026 21:04:42 GMT  
		Size: 21.2 KB (21168 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:31d99e13935936c13b231aebbdc3c897f9e2062fbaab9cebc505b457f9c54159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.4 MB (223363142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db64538fec36dbca507ed2e07319339c80b38430e01ca7f5497279e72078607`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:17:52 GMT
ENV container oci
# Mon, 03 Aug 2026 17:17:53 GMT
COPY dir:a5c32caa9e90bbd6deec29de1e7bd55a9a024d72d910be5ebab34568acf6ce4b in /      
# Mon, 03 Aug 2026 17:17:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:17:53 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:17:53 GMT
COPY dir:31d26f3255ea00084884b79a72afff38a9084def553ed2d095494924ea714597 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:17:53 GMT
COPY dir:31d26f3255ea00084884b79a72afff38a9084def553ed2d095494924ea714597 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:17:53 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:17:29Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:17:29Z" "architecture"="aarch64" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:17:29Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 21:03:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:03:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:03:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:03:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:03:59 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 21:04:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 04 Aug 2026 21:04:41 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:04:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:04:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 21:04:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:69052a49c9c285fb83e9496b9adcbb8c227ccc15bbdcadfd23725434e572109f`  
		Last Modified: Mon, 03 Aug 2026 18:10:51 GMT  
		Size: 38.8 MB (38795066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f39313f55e3efaffc23c74e9b2c846668e25d12409e5d5f9e9257328cf37ea`  
		Last Modified: Tue, 04 Aug 2026 21:04:24 GMT  
		Size: 28.1 MB (28101324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c495bde38a5de87d8ba117eb9c2ee4531b263fba43d9c6cb491216e6dd8a22de`  
		Last Modified: Tue, 04 Aug 2026 21:05:02 GMT  
		Size: 156.5 MB (156464334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f73111fb05e9babbd3474880254fb32f63998f64b0210090a133d3214735ae9`  
		Last Modified: Tue, 04 Aug 2026 21:04:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe8d5190258d587560b43930a5d3ed648e71594b2a764d3ef790fbc3864bcad`  
		Last Modified: Tue, 04 Aug 2026 21:04:58 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f4c8942740cfbbfe5754c59ce173c2cf6e29786c8ce27a3db6dfc21edf89bf24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2515885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a00531b82bac9d1d1e9aa9270181725e7e9deacb73d92e0248aa06fd4ca6107`

```dockerfile
```

-	Layers:
	-	`sha256:bafe55f1ed447fb3e15304854df6ed2bf401fd7f4a6b3b3d559ee9a1cb46befc`  
		Last Modified: Tue, 04 Aug 2026 21:04:58 GMT  
		Size: 2.5 MB (2494601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8af9eeb5e980af3d53a70f1fbc34f2ae55a537cb93d924d28f9ba41e5c487f40`  
		Last Modified: Tue, 04 Aug 2026 21:04:58 GMT  
		Size: 21.3 KB (21284 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:6fb6a6722dab9238eac060095304480e63f9137e257b34d2c09a0c9b3e46dd3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.6 MB (233561833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dba0c25aa3622a02fb758204f4f9429374ec502e50d562022b86d34bff4cae7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:17:07 GMT
ENV container oci
# Mon, 03 Aug 2026 17:17:08 GMT
COPY dir:1ade7d4dffe44110b5720076840490f6baa7301b84541d08c0ea6a38569ff32e in /      
# Mon, 03 Aug 2026 17:17:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:17:08 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:17:08 GMT
COPY dir:c4aef7217014f798a2cbbb791d2d6bc060d5a6d90fc8cf9706d57150150b9513 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:17:08 GMT
COPY dir:c4aef7217014f798a2cbbb791d2d6bc060d5a6d90fc8cf9706d57150150b9513 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:17:08 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:16:50Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:16:50Z" "architecture"="ppc64le" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:16:50Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 20:54:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 20:54:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:54:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 20:54:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 20:54:00 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 20:59:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 04 Aug 2026 20:59:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 20:59:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:59:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 20:59:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d878f355008c362e8a970b32096625c413c4690a3b0d735cf1fb625e90c0a75d`  
		Last Modified: Mon, 03 Aug 2026 18:11:34 GMT  
		Size: 45.1 MB (45128614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550cac100c4810402c753e19231ae0aefe14a5cc8a455755ec291a1491fd764e`  
		Last Modified: Tue, 04 Aug 2026 20:54:41 GMT  
		Size: 30.1 MB (30082322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50619875f231df876a8ec82191ad7dd629e1c374a7f51dbe3bd5120029de618`  
		Last Modified: Tue, 04 Aug 2026 21:00:31 GMT  
		Size: 158.3 MB (158348476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb92902096f692f6eb2f5a79220d085cc3fbf983247f3200230f770e1775b57`  
		Last Modified: Tue, 04 Aug 2026 21:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a653f001851375b4869e1a98e3d6da92e0529ae3d0298fd10ff78902691001d`  
		Last Modified: Tue, 04 Aug 2026 21:00:27 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f36e14402fa4e0740b85e1f1a9b1cac0c13754dd7cebcbf872df4ddaaec155fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2514564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3491fc02e99518d115b2ff76d5de32e020512b0926c899d0fd668c493c4e580d`

```dockerfile
```

-	Layers:
	-	`sha256:28f7552319512c8e149e28459d8cf76621dfcf7ad91c051a632078ffd6eadaf1`  
		Last Modified: Tue, 04 Aug 2026 21:00:27 GMT  
		Size: 2.5 MB (2493361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27c9e5f897214cd7b1d576e631bf6ef7574f9d80ec1afe66ec0d8112779096e5`  
		Last Modified: Tue, 04 Aug 2026 21:00:26 GMT  
		Size: 21.2 KB (21203 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:751f765827053baf1d892afb69e3535a812d449ecd5108e17ce756f2c287decc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.8 MB (213838471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4dc2cf794e022da2a7b2c7824b0ed74cbe3d29007720a4b8c38310d19e17f85`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 17:28:09 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:28:09 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:28:09 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:28:09 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:28:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:28:09 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:28:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:28:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:28:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:28:09 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:28:09 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:28:09 GMT
ENV container oci
# Mon, 03 Aug 2026 17:28:10 GMT
COPY dir:2f061a658036424dd9ddd7663d0b695068f40569faf414d7b5b94aef5bdc61b0 in /      
# Mon, 03 Aug 2026 17:28:10 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:28:10 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:28:10 GMT
COPY dir:badc4bff1625c571505ac1e3938150f096394f5d2ad02a68d4a4739abddb0d66 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:28:10 GMT
COPY dir:badc4bff1625c571505ac1e3938150f096394f5d2ad02a68d4a4739abddb0d66 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:28:10 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:27:26Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:27:26Z" "architecture"="s390x" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:27:26Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 21:35:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:35:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:35:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:35:12 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:35:12 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 21:39:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 04 Aug 2026 21:39:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:39:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:39:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 21:39:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b266a000646b02c303d4c94b8478e15b2c404f9c85ed7d49a958217f2ffd636`  
		Last Modified: Mon, 03 Aug 2026 18:11:12 GMT  
		Size: 38.8 MB (38755786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8212dc31274f4e2c9eb79a28db1154cab034fde31f445745d25a5da3e3e275a`  
		Last Modified: Tue, 04 Aug 2026 21:36:57 GMT  
		Size: 27.7 MB (27690075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ec10fcd63baa35f61dc3dd7fdae350a17bba62cfef4d5a542df9dbc379ec80`  
		Last Modified: Tue, 04 Aug 2026 21:41:13 GMT  
		Size: 147.4 MB (147390188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea719b927daba479b6b16ac4c17824865a2b4c852f41c84360bc321e7cc698a0`  
		Last Modified: Tue, 04 Aug 2026 21:41:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2d696e209bc57469076e4db75d18668fe7dd410d05082098de4d3a78a7e52b`  
		Last Modified: Tue, 04 Aug 2026 21:41:07 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1e62f143de886a3fe2c86e26f6a305f37e7d51ed3f5165d2a7ffa3df881b0519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2503791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49a576ee0244da7751d8ae96db6614c62a82a220e5920cb46d33f493fbb290d`

```dockerfile
```

-	Layers:
	-	`sha256:e6ca3d3f955899fd510ff41c85cf56673bfb16cfb551d0db6755d7ec9f87a82e`  
		Last Modified: Tue, 04 Aug 2026 21:41:08 GMT  
		Size: 2.5 MB (2482623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf5da88eda55833e3eff434b807f50b83ee1bf4b739fc978b2fa5dd9efa757fd`  
		Last Modified: Tue, 04 Aug 2026 21:41:07 GMT  
		Size: 21.2 KB (21168 bytes)  
		MIME: application/vnd.in-toto+json
