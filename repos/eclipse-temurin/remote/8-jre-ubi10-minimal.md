## `eclipse-temurin:8-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:bf529c982847885d6a3988c0c16c60a910cab0ed25f63580f0cf74af7f07ca84
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:15c23b3f2fb7f386c2ced6f522fffc5f66d5954ee14ff23f9fadb61a7626f61a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115048655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee3dcdae5cd75d11901754b65c75062a0e399875cfd64300fe65cd3e00bc5ec5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 00:57:31 GMT
ENV container oci
# Mon, 31 Aug 2026 00:57:32 GMT
COPY dir:458d6b12437e2fe1aea7458dedc8afbb3f3a79785ef8bf9db56b6c8e9d81c2bd in /      
# Mon, 31 Aug 2026 00:57:32 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 00:57:32 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 00:57:32 GMT
COPY dir:f5142977308c4527d6c246c51d646f592e5402b34a96136130ebe6385bd6536a in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 00:57:32 GMT
COPY dir:f5142977308c4527d6c246c51d646f592e5402b34a96136130ebe6385bd6536a in /root/buildinfo/      
# Mon, 31 Aug 2026 00:57:32 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T00:57:07Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T00:57:07Z" "architecture"="x86_64" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T00:57:07Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:16:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:16:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:16:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:16:10 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:16:10 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Mon, 31 Aug 2026 19:16:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:16:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:16:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:16:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ac2980d72cc6bdfe4cb4a8e0a91eeef134597c45af1e0dc031a54fd0560b2d74`  
		Last Modified: Mon, 31 Aug 2026 02:12:26 GMT  
		Size: 34.9 MB (34889446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587833224dc26b98e8b7f01131c2731eb4429bbc5d624da6ca4fd43398e7ff51`  
		Last Modified: Mon, 31 Aug 2026 19:16:27 GMT  
		Size: 37.8 MB (37830217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e0cd7fe5a6c8262474d45888f6f480f9ec3e0eadba83a18d0895570b9afa0a`  
		Last Modified: Mon, 31 Aug 2026 19:16:27 GMT  
		Size: 42.3 MB (42326393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa92cc226b62e203e4481a0c43d83e47b17a7e9bdcac6f924d1fed99b2d4f45`  
		Last Modified: Mon, 31 Aug 2026 19:16:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de25c671a4955460de17b61422ba5be1a686fb9f1acf107c9f67ea108af7439`  
		Last Modified: Mon, 31 Aug 2026 19:16:26 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:780fd3c17f26e610432ff84ea6227a625ff8d10d6eaeb14c199aec6a69e30a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c70524813998fad9980ba0996aabb783d825ed00ab5afd8eca604903db6c7606`

```dockerfile
```

-	Layers:
	-	`sha256:666b49b4470b61c908f7ab28d71cc774b0ed7ebd220944cc8b692a24e814b6ea`  
		Last Modified: Mon, 31 Aug 2026 19:16:26 GMT  
		Size: 3.7 MB (3736858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13c533c0ee8280370bbd4036b5d167e3540a8621925535af001ea3e65fa1a6d1`  
		Last Modified: Mon, 31 Aug 2026 19:16:25 GMT  
		Size: 19.5 KB (19510 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:3d2727f959b89d830a9312ca074824d94bd9ac90172068a7bdf189e7b1ebc4d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112162351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09fb7e10c8659b7fdeae6898a3684c1ee47040f4773a1c38edfc409bf950eb6d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 31 Aug 2026 00:59:39 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 00:59:39 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 00:59:39 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 00:59:40 GMT
ENV container oci
# Mon, 31 Aug 2026 00:59:40 GMT
COPY dir:6edc2d67ec7ce81de4d5e2e694d20368d7f98a402c5908188e9b9c3e9f626bab in /      
# Mon, 31 Aug 2026 00:59:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 00:59:40 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 00:59:41 GMT
COPY dir:3bd29e4a02a383c54782ac3cac9fc34c309a5293bb636ff3decba1a75c438d98 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 00:59:41 GMT
COPY dir:3bd29e4a02a383c54782ac3cac9fc34c309a5293bb636ff3decba1a75c438d98 in /root/buildinfo/      
# Mon, 31 Aug 2026 00:59:41 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T00:59:17Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T00:59:17Z" "architecture"="aarch64" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T00:59:17Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:33:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:33:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:33:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:33:27 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:33:27 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Mon, 31 Aug 2026 19:33:31 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:33:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:33:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:33:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:759ceaf0b34529e4230d22d353f231af30923d9ec82e0d2da5c0bebd4c37e463`  
		Last Modified: Mon, 31 Aug 2026 02:11:43 GMT  
		Size: 33.1 MB (33102863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39372758892e107719f2b123566696363cb5eab1b9dd332db894e7221180ce08`  
		Last Modified: Mon, 31 Aug 2026 19:33:45 GMT  
		Size: 37.8 MB (37759872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99108a5bbcf48a2c934a7c9d8a9c489e9534ecbe370be9b6a60088edee96b793`  
		Last Modified: Mon, 31 Aug 2026 19:33:46 GMT  
		Size: 41.3 MB (41297015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d0bdc2fcb2edda04282ecb0eaf4d0572824b9cc543d283ed62c3ab9c96c30c`  
		Last Modified: Mon, 31 Aug 2026 19:33:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdfc1ee503e10527c0c22a9468ac3f588fe62938ac158f68eaa0d2277685cec2`  
		Last Modified: Mon, 31 Aug 2026 19:33:44 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e22d8f75f6a379737dee4e458813e029ffe165660d995c6a639609e59b4a5849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de9085e16f8ddb9423e046c083c885364ef7da15c6c9ff069288680b5822e911`

```dockerfile
```

-	Layers:
	-	`sha256:6150aea039a81391a4fda08705e6f9e6176a577c178afd6f5afc08af347acec6`  
		Last Modified: Mon, 31 Aug 2026 19:33:44 GMT  
		Size: 3.7 MB (3736964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d7e760bce734ea9a66725da916a271bf3cdd1bdeb827f5d72fbee6e3a079582`  
		Last Modified: Mon, 31 Aug 2026 19:33:44 GMT  
		Size: 19.6 KB (19615 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:88b27e8d6bab882960843599eb7f8033de04ce99a19f4887cb7d82e6d6a04750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120398081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d33f3b1ae8894a6483af6b8d75be9c41716bb98ec48f61bc6aa909d42a78bcf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk8u502-b07
# Mon, 31 Aug 2026 19:56:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:56:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:56:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:56:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:14e0cc62a8a5d22a538ae653e40a89171908126d916d6e9ff593bfdd0782da33`  
		Last Modified: Mon, 31 Aug 2026 19:57:21 GMT  
		Size: 41.7 MB (41743458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4bde0bc03e0e447e3f8175c9ca00622d48447362dca38631771244012672c6`  
		Last Modified: Mon, 31 Aug 2026 19:57:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6828eb1378e3c42c9b171494d90c61cca67dde1fa1c14858c76a0470dc955e`  
		Last Modified: Mon, 31 Aug 2026 19:57:19 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e7d2e52b3e6f68977033950dafb167b79d9758fc86ac7037315479f7b2acafbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c828fbe892b86d5136f99836893e3d9bfcc2fac07495f375b03708aef1b9f260`

```dockerfile
```

-	Layers:
	-	`sha256:9538baa429e6112154e4256b88ac17eb57f0016cfcaf5192b38854886def6bc3`  
		Last Modified: Mon, 31 Aug 2026 19:57:20 GMT  
		Size: 3.7 MB (3726287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f1d98b7b997cb043737c4e0693ac0003ed8adc05465de586cca8bf8f423927f`  
		Last Modified: Mon, 31 Aug 2026 19:57:19 GMT  
		Size: 19.5 KB (19541 bytes)  
		MIME: application/vnd.in-toto+json
