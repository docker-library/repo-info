## `eclipse-temurin:11-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:00af9157fead26ab8dd7d2ed3909c6d7bea3b3d9dbc439f9bb80cce61482178b
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

### `eclipse-temurin:11-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:588fb61c62c0ee69a6be6717b65390ed572a75017eee5663cf7d2daec9d1cbd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215134387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39a71f896c62c93f3c72d51630d289bd463cd58ede2238244959d34ead7237d5`
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
# Tue, 13 Oct 2026 00:34:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:34:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:34:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:34:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:34:13 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 13 Oct 2026 00:34:19 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 00:34:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:34:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:34:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 00:34:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a1611a4fd41ee882f5745fd873c8693214050b6032a4e61339549ed17953e7d4`  
		Last Modified: Mon, 12 Oct 2026 06:46:04 GMT  
		Size: 34.9 MB (34932576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9a7df86128f1c766b637714610997445b6055849b0c49946d77d0d0d7b8ae2`  
		Last Modified: Tue, 13 Oct 2026 00:34:39 GMT  
		Size: 37.9 MB (37875010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529d9835ea270976757ec98a9c47bdba7e1f8c62133bb0251a71355db9aa9f68`  
		Last Modified: Tue, 13 Oct 2026 00:34:41 GMT  
		Size: 142.3 MB (142324200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e79adb5e3a5b44b9905c9fe5225f0981946f08fba49cc23a39e01ba919620bf`  
		Last Modified: Tue, 13 Oct 2026 00:34:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e73950be3f68b125b97b58002ff2281f96c13ecb709692a5a42c3fe2fe71f9`  
		Last Modified: Tue, 13 Oct 2026 00:34:37 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bb85b2b56977156df5604d8af6f8eb9a169d96b141e29e0cd59fb723d3f28f88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3832787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8696102a951f9894d255de588cb2c113fdd1a9250c7b8a7a55596df703cefb6`

```dockerfile
```

-	Layers:
	-	`sha256:b523bc23ae0beb7676858a0a6a0b579f8f594db0b9133554352db026e138f137`  
		Last Modified: Tue, 13 Oct 2026 00:34:37 GMT  
		Size: 3.8 MB (3811423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c44e4bb54f2679a017aa6d6e1a2f22363486257a3bab03913dc7e7a164ee807`  
		Last Modified: Tue, 13 Oct 2026 00:34:37 GMT  
		Size: 21.4 KB (21364 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:2d3c9823cd6cacfaefe0f40c6c85bba7ffe794271c0b160ce6adc32c8ed127a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.0 MB (210008542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7575bd7d9820caef0c3652787941a389504c04cf924beddebb8b5d10a25f991`
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
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 13 Oct 2026 00:32:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 00:32:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:32:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:32:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 00:32:57 GMT
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
	-	`sha256:34552784992fc918e7942e951f9f914a74de67b3241da9ef46aec083ce72c4e3`  
		Last Modified: Tue, 13 Oct 2026 00:33:17 GMT  
		Size: 139.0 MB (139035305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b4e1870122233e9f20bc843db546ca74a483d449242cd7cfa924e3a27df342`  
		Last Modified: Tue, 13 Oct 2026 00:33:13 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6711f4336f04bae96a98c62d3c6cf46b930ed77e9126b90bf84724d33798b53a`  
		Last Modified: Tue, 13 Oct 2026 00:33:13 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:db840f720576628d8dad69b4e7000a5dc83a172c2001f749e64c794c05512ff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3832947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41484fb633be39acd3085c36c540eb798983dddfe6e33643707d09a52e3d4de`

```dockerfile
```

-	Layers:
	-	`sha256:c706edac6fb71f51bb4ac521b40ea141d679e0be1ac7f62f4162dcf4e34ae0c2`  
		Last Modified: Tue, 13 Oct 2026 00:33:14 GMT  
		Size: 3.8 MB (3811467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f209af71229a7b16718e5ccd46495a4c80aaa2c70f8dab35fc47379b659df95a`  
		Last Modified: Tue, 13 Oct 2026 00:33:13 GMT  
		Size: 21.5 KB (21480 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:dadfbc28040407f5cad02f19c281925948b5645edf7210664a4636497e3d5513
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208360384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905219d96c9561c9904f2c4c8bdcf21de540f971c5d4f53b9a8e9d45050480b6`
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
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 08 Oct 2026 21:55:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 08 Oct 2026 21:55:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 08 Oct 2026 21:55:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 08 Oct 2026 21:55:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 08 Oct 2026 21:55:37 GMT
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
	-	`sha256:d61fa54d9850e44ba3218995524c1794b26eabbb39ddabef5045df2ef17a2ef7`  
		Last Modified: Thu, 08 Oct 2026 21:56:22 GMT  
		Size: 129.6 MB (129596397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da76ea13cf71c0f956b7c51298349c90d62d6bb3d2d392c930e1e3016ed389b`  
		Last Modified: Thu, 08 Oct 2026 21:56:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e835c0d245da9c0e51e03fe74f99a8a631c87d49d9eadea65ce0f70daf07b6`  
		Last Modified: Thu, 08 Oct 2026 21:56:19 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5d076d66824754ff93b6e1e86eda395eb67d6ecf2daaa7f035ec2f19a8cf818e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3819040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2587ecd0fa329c3c82aa31ff959eb4b1e777df610cb5c848a34bf21a48f52539`

```dockerfile
```

-	Layers:
	-	`sha256:8867349304dec489d428ccafaa11bf22b96bfe3abf7b9440b02c6a32a723c2b1`  
		Last Modified: Thu, 08 Oct 2026 21:56:19 GMT  
		Size: 3.8 MB (3797640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c72a1e8f72c254ab0f581588bc5ae4573653875f97c2d5a17a29a1694a7d58aa`  
		Last Modified: Thu, 08 Oct 2026 21:56:19 GMT  
		Size: 21.4 KB (21400 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:4b86b42db5630470712e1520118cba643e1388dc8b6cf08469bdbdff06adfa64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196133848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0ec503dd304d99648f629608cc5ae86e10677eb1edd16a7292934a468060e6`
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
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 13 Oct 2026 00:31:50 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 00:31:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:31:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:31:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 00:31:51 GMT
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
	-	`sha256:d3dd2adb73f10074934b4a303505d62421a6862aeec2141b342780c802255d32`  
		Last Modified: Tue, 13 Oct 2026 00:32:18 GMT  
		Size: 123.0 MB (123048256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17223bab8f54770603470c3d879525a4e3410f8b331df4ce281d0694f6df6043`  
		Last Modified: Tue, 13 Oct 2026 00:32:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84daad2a77ee0dfb92936d3268e7a3766f107671ab41e2b4a3bb29352395954b`  
		Last Modified: Tue, 13 Oct 2026 00:32:15 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9d150c4053672437961b1dfc0d7bf3a8f375fdd5808cf5220b80764c0127dd31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3818381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7b1c0922677cc9b411b05ffe0fb87b9d576f3df67e69ddc0adde09fe5c4481`

```dockerfile
```

-	Layers:
	-	`sha256:417b0d2e259ccb35dd1436722c839c664cffaccb48a161d711ae136804bbb6e8`  
		Last Modified: Tue, 13 Oct 2026 00:32:15 GMT  
		Size: 3.8 MB (3797017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0de949e444d00add1cfcf2e75d0668b195a123ad441fd0f32369d8f6b30bfb8a`  
		Last Modified: Tue, 13 Oct 2026 00:32:15 GMT  
		Size: 21.4 KB (21364 bytes)  
		MIME: application/vnd.in-toto+json
