## `eclipse-temurin:21-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:fc795334b8572b3d37d995cbd9c4c09a43be0862c7e8914d06b3f5cba220495a
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

### `eclipse-temurin:21-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:df7e2e6b9473e6e5c6b5fabecc3e5e738dfa2745e0234cf48834029297d1ec76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.8 MB (230806721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e1fe8b0192fc5e52ac60272e31b9c785a1517946380f4ffcdcb554c47f4208`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 05:43:08 GMT
ENV container oci
# Thu, 20 Aug 2026 05:43:09 GMT
COPY dir:9f021fb13f2371556f5330777fa50b285029910699c8db1352c33ddbfc4aa6e0 in /      
# Thu, 20 Aug 2026 05:43:09 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 05:43:09 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 05:43:09 GMT
COPY dir:bf294f09ff82d16384bebbac392bb5b44f58ff0fde6056277f77e6dc82df16e4 in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 05:43:09 GMT
COPY dir:bf294f09ff82d16384bebbac392bb5b44f58ff0fde6056277f77e6dc82df16e4 in /root/buildinfo/      
# Thu, 20 Aug 2026 05:43:09 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T05:42:51Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T05:42:51Z" "architecture"="x86_64" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T05:42:51Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Fri, 21 Aug 2026 17:47:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 17:47:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:47:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 17:47:22 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:47:22 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:25:03 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:25:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:25:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d61293fa3d3593fa639f5bfdc418af2cbb4e25ccdf20c6ff76fc342b18e72883`  
		Last Modified: Thu, 20 Aug 2026 06:41:10 GMT  
		Size: 34.9 MB (34881705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbca6b68f39b39fcbe889088077e10d8abcbd8f45c89df71031b9f08028847d6`  
		Last Modified: Fri, 21 Aug 2026 17:47:39 GMT  
		Size: 37.8 MB (37796038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3aaaebdbfb661be37a8e83ca2bb0a692a3d272215273f46615ffc3c22abf04`  
		Last Modified: Fri, 21 Aug 2026 18:25:23 GMT  
		Size: 158.1 MB (158126381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de204967dfd8dd05548baa7517f63290a4fd89808097070d4d5ec9ed7bb11b70`  
		Last Modified: Fri, 21 Aug 2026 18:25:19 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5f82aea57fe59de42c5ed0bd2a6a4a4f80054f78b0175d6461ebd25e7807fe`  
		Last Modified: Fri, 21 Aug 2026 18:25:19 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cb034d6640afe29f9231e999b21d5be915085697dc3c5984bb19c7d9fb7dc625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e47040384ff40a3ebeffcf1886188ba1f9363ab8623fac236355c01ef7a619`

```dockerfile
```

-	Layers:
	-	`sha256:258677253899fb75c14966ff50f3291aeb14d9b6e586d8828a9f8647096f065f`  
		Last Modified: Fri, 21 Aug 2026 18:25:20 GMT  
		Size: 3.8 MB (3794290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70509110ccb2228f6db92890bf88467f77869cfd335e2dec9d68bf95c476fbae`  
		Last Modified: Fri, 21 Aug 2026 18:25:19 GMT  
		Size: 21.3 KB (21316 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:5f44d1a782f8c53000295122114c667bbae8e2e177899c5310445a5cac7cd095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227243266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:963910399c95cc1673fc99d5ed7719c586f625f05be0fd952f73bc54e42b10da`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:45:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 05:45:25 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 05:45:25 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 05:45:25 GMT
ENV container oci
# Thu, 20 Aug 2026 05:45:25 GMT
COPY dir:e44f9197bfd72bc658385b5b15ab7462e17e7efd592f16da1d8b4e59c9a00dc2 in /      
# Thu, 20 Aug 2026 05:45:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 05:45:25 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 05:45:25 GMT
COPY dir:7954bbfaabcb4f9d29560c7d7cdb21c9cca4ba55a953c5ccc5d80e9881cc587c in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 05:45:26 GMT
COPY dir:7954bbfaabcb4f9d29560c7d7cdb21c9cca4ba55a953c5ccc5d80e9881cc587c in /root/buildinfo/      
# Thu, 20 Aug 2026 05:45:26 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T05:45:03Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T05:45:03Z" "architecture"="aarch64" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T05:45:03Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Fri, 21 Aug 2026 18:26:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 18:26:17 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:27:48 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:27:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:27:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:27:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:27:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:68774b1c806af71a34a179e2397bd0a4568f97681106fab710192c96e498f363`  
		Last Modified: Thu, 20 Aug 2026 06:41:06 GMT  
		Size: 33.1 MB (33110773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe256e3a8d3de4d6f0e0776579405235d87fd6973b685a02824a5e2fd9e313e`  
		Last Modified: Fri, 21 Aug 2026 18:26:42 GMT  
		Size: 37.7 MB (37724096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8fd0c990677427186de81eb76e8f2bf1b3a9141a4d6e56759afc5c3ebda9345`  
		Last Modified: Fri, 21 Aug 2026 18:28:10 GMT  
		Size: 156.4 MB (156405795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3684cec52c4db48e9945de6847f6d31f4dd86eb783956e66fe5d2dbb14935`  
		Last Modified: Fri, 21 Aug 2026 18:28:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9cde3cbfaa654e8880434eb1d16ed8166e487273f87fd7c02eff0fed2e71a8`  
		Last Modified: Fri, 21 Aug 2026 18:28:07 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:721a33ade0aeb1620a9bdec9def0a1c4a47adecdd6eb51ad84c03e6be92cc31d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6558b108659ff68623fe4bcad011905651353c01e0121318258cc2083891e88`

```dockerfile
```

-	Layers:
	-	`sha256:e5ecee1fcaf60a7251d48730d57fc91a1b3185e01d1147b751c5cf748bf25363`  
		Last Modified: Fri, 21 Aug 2026 18:28:07 GMT  
		Size: 3.8 MB (3793716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa1d0f15f1ededbed0c3d3016d1c1448dc5604ca13199caad80251a970bcb7be`  
		Last Modified: Fri, 21 Aug 2026 18:28:07 GMT  
		Size: 21.4 KB (21432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:60c4faaa0eb18ecc8a856196ca29352ba8e99bb93e8e510b2d7d59af46bc6801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.9 MB (236887403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b66e3fd41ec8d5c9eaf3c6506306739c5e9c4176e0e9b8168631a161f22d18d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 05:46:50 GMT
ENV container oci
# Thu, 20 Aug 2026 05:46:51 GMT
COPY dir:2a8249143d8cd7d8ebdfee6463c48e23365f201df5582d40605373a68f16d359 in /      
# Thu, 20 Aug 2026 05:46:51 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 05:46:51 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 05:46:51 GMT
COPY dir:dcf909e21a05f38ab87d2f9c934d32a06cab5c1bc0293add6794503c862ed395 in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 05:46:51 GMT
COPY dir:dcf909e21a05f38ab87d2f9c934d32a06cab5c1bc0293add6794503c862ed395 in /root/buildinfo/      
# Thu, 20 Aug 2026 05:46:51 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T05:46:34Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T05:46:34Z" "architecture"="ppc64le" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T05:46:34Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Fri, 21 Aug 2026 17:54:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 17:54:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:54:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 17:54:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:54:40 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 20:40:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 20:40:13 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:40:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:40:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:40:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4bb5a8f1015bf2945048edabe211d1710021017f522c212f4562ed8a4fe7f37b`  
		Last Modified: Thu, 20 Aug 2026 12:16:42 GMT  
		Size: 39.0 MB (39047835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:864ef3c63d9d6537f5cc2daf3f15246d7138cf5c2b2b31da7edf3fc44e1e6e03`  
		Last Modified: Fri, 21 Aug 2026 17:55:30 GMT  
		Size: 39.6 MB (39556036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e491c16ed8e25ef7c37fdbc8628c62bb4fc93cabc3d354ec4d485b687d53fbf`  
		Last Modified: Fri, 21 Aug 2026 20:40:53 GMT  
		Size: 158.3 MB (158280931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9170b0abd38613d9962eb82e9bed94b9c6a0c7b32e1a8b2dbc7dc275029e3f5e`  
		Last Modified: Fri, 21 Aug 2026 20:40:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a457cd09e484f513a422b178969669269998a3ed3a2c3855aae53197fa20d0`  
		Last Modified: Fri, 21 Aug 2026 20:40:49 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c35b9e9009ebc1ea6980545fe64284273db04250574a47190bd78eb15a7af58f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3802474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e456605690f40f4542f9b9dde25fa0dfa4cd99db81bc645a38bdb197ff3dbb13`

```dockerfile
```

-	Layers:
	-	`sha256:6a56e865bc34b87f3e4c8237249d6216eeab7a1d78c56ca10a68438d6def19d1`  
		Last Modified: Fri, 21 Aug 2026 20:40:49 GMT  
		Size: 3.8 MB (3781122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88cab5daa661d09456773ed561f258cd31a3b26fcb5e27085f4ad30e0998d901`  
		Last Modified: Fri, 21 Aug 2026 20:40:49 GMT  
		Size: 21.4 KB (21352 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:855094ea81e42322468e853657cb8b5623acc604e4e0fd771b55f5828c3f8ceb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.3 MB (220281727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf3199697abff3fa71ccaf7926775ff3474e6f6bdfe89b0b902c44c67c2257bf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 06:03:17 GMT
ENV container oci
# Thu, 20 Aug 2026 06:03:17 GMT
COPY dir:eb18fd88295490f3f96fdde5a853a45643aef05924fb21e2cc03135e89cc179a in /      
# Thu, 20 Aug 2026 06:03:17 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 06:03:17 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 06:03:17 GMT
COPY dir:b4a8f7f96c926329ee4146bbe412375c58d085296683d1ba2080891348b92698 in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 06:03:17 GMT
COPY dir:b4a8f7f96c926329ee4146bbe412375c58d085296683d1ba2080891348b92698 in /root/buildinfo/      
# Thu, 20 Aug 2026 06:03:18 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T06:02:11Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T06:02:11Z" "architecture"="s390x" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T06:02:11Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Fri, 21 Aug 2026 17:46:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 17:46:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:46:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 17:46:27 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:46:27 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:30:43 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:30:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:30:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:30:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:30:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b046321c2e480498ac362a67b448add00a021c25fec4bcba6fd7a58d411dc197`  
		Last Modified: Thu, 20 Aug 2026 12:16:34 GMT  
		Size: 34.8 MB (34761940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddb87076a5ab9009889fcfce1485d30640da13853a0d57772521606befae416`  
		Last Modified: Fri, 21 Aug 2026 17:46:49 GMT  
		Size: 38.2 MB (38170739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45587b38bda84dce40645570569a0d00617d8b5d95f6c66291770da0024c9e0c`  
		Last Modified: Fri, 21 Aug 2026 18:31:10 GMT  
		Size: 147.3 MB (147346448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35cd4b51a1ae51b8f73e99b1844662d6842af06d3dc1456f9e8f8a050da0acbf`  
		Last Modified: Fri, 21 Aug 2026 18:31:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39859a920865b422d60728f0358d101d61e451da3e85021e29a08307cb6d4bb9`  
		Last Modified: Fri, 21 Aug 2026 18:31:08 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:198709b4773936dabe84425c1ca54b12461116c61ef01e703aa852befff52bc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3801196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ebc14dcc589c5ab15e2c9630c2dc211a9ec5dcb753f02b64740728dd2ab89f`

```dockerfile
```

-	Layers:
	-	`sha256:9e2b73d53dea55aba481c4209651fa2cf00243beb943752e1da83388764028ae`  
		Last Modified: Fri, 21 Aug 2026 18:31:08 GMT  
		Size: 3.8 MB (3779880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c994a223c405b0e4044d5f906a693d6f9dc0384e1e43aeaaff24d8bfddd38c`  
		Last Modified: Fri, 21 Aug 2026 18:31:08 GMT  
		Size: 21.3 KB (21316 bytes)  
		MIME: application/vnd.in-toto+json
