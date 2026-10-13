## `eclipse-temurin:27-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:899b336f7618687c18c8804750f1af269ed296575cfc0540fac0f942645ea6c6
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

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:0a1567bfa1808e2d619bcb68fecebbaa6bda63f5fe33d346f19faff9c4a96de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136178429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:623920ffa0fb5fb1c55934f835356b2e41f18235cbfc5d64c7e190bf87689419`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Tue, 13 Oct 2026 00:34:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:34:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:34:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:34:09 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:34:09 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 13 Oct 2026 00:35:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:35:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:35:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:35:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a1611a4fd41ee882f5745fd873c8693214050b6032a4e61339549ed17953e7d4`  
		Last Modified: Mon, 12 Oct 2026 06:46:04 GMT  
		Size: 34.9 MB (34932576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd76c9a13f9fa65efdbf18a4b37f3e6bb0ec3d16273b0d1c1d1ace69ff0cb22c`  
		Last Modified: Tue, 13 Oct 2026 00:34:28 GMT  
		Size: 37.9 MB (37875159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db62991b503d75d0ca92cbe65dcd8ef653afcad9ff515bafaa2c49376c26ab18`  
		Last Modified: Tue, 13 Oct 2026 00:35:52 GMT  
		Size: 63.4 MB (63368097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e2e7e5650be54472069566f08e525605a35446fa8a8415fdd55c7f01c36aaac`  
		Last Modified: Tue, 13 Oct 2026 00:35:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49ed05a23f993081799c957b6fffc245e7bc34144f22fc514fa612cce83c2ec`  
		Last Modified: Tue, 13 Oct 2026 00:35:50 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cf5ddbc045e3614fc8fbdd2503044403ffde907ab05d073c5f8a8f94b5adb9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3733351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddbbc0680d89dce1334717a84533fd15abdbc55e7871fc72305a5d2a71939cb1`

```dockerfile
```

-	Layers:
	-	`sha256:147fd3494025bbecd397e488ab4b1620952b3404a3dad017eb422c466688a21e`  
		Last Modified: Tue, 13 Oct 2026 00:35:50 GMT  
		Size: 3.7 MB (3713095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49e610beab7ea85d037fd95a40ed51cca7a37b66760285c5a35a4888aca7a536`  
		Last Modified: Tue, 13 Oct 2026 00:35:50 GMT  
		Size: 20.3 KB (20256 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:1434de75efb8b4e21d7d776224d8c7f3830b0b635fb7384b46a237c75feeca13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133274459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535db6c2e190ec8bc86c34dd2c83cd79c2b4a7abfc04b83b5e5b25084a589352`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Tue, 13 Oct 2026 00:32:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:32:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:32:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:32:41 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:32:41 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 13 Oct 2026 00:33:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:33:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:33:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:33:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6bb0cea67a57d2a977aceca249e6de2824aa79518f87729063f5b1d476030b0f`  
		Last Modified: Mon, 12 Oct 2026 06:46:01 GMT  
		Size: 33.1 MB (33147526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55bd7cd6313b7dd008d9d5e801f3b39c8344b32fffddfb853836febf28d61e6`  
		Last Modified: Tue, 13 Oct 2026 00:32:59 GMT  
		Size: 37.8 MB (37823146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adec16c534b5a95daf61b2ab65908b1e00db75d062a611d0dc1ae7e88ffef98c`  
		Last Modified: Tue, 13 Oct 2026 00:34:03 GMT  
		Size: 62.3 MB (62301187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6058643f66cc36ed43c2b7d87f8f6c02f4dac97dde06ba8a185e0cc1c16b8afb`  
		Last Modified: Tue, 13 Oct 2026 00:34:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79545fbf5e2e190842ce6b7632df25ff2166236d8e960afd9c10a8dbc74bca7`  
		Last Modified: Tue, 13 Oct 2026 00:34:01 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5ef606d06b3911e31a91b6d64ad38490c7ebfb9d9a6011efe58cff0d188c591b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3732868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac89aa71a517a406d98268cc72e07688669357ed92a695878b5b2d0d16787c3`

```dockerfile
```

-	Layers:
	-	`sha256:9826a7068c2670a0a50abfa05bf2583574fbbe53dd631f44a7a142a54360aade`  
		Last Modified: Tue, 13 Oct 2026 00:34:01 GMT  
		Size: 3.7 MB (3712506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2da680ede1ff0492dc481fe7e7e9390cd2a69338eaa720dcac6ee3fee083821`  
		Last Modified: Tue, 13 Oct 2026 00:34:01 GMT  
		Size: 20.4 KB (20362 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:037754009bb3670f0d6f1c5b716ecde8bc51c72d570fc5d36676a68849a595e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141028292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13239adc90d0fdaa44b7132db56ffe8ce0bc325e8ae2434ebacc71421a42e10d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk-27+35
# Thu, 08 Oct 2026 22:02:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 08 Oct 2026 22:02:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 08 Oct 2026 22:02:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 08 Oct 2026 22:02:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:cbc94ce6b212600d4a80b027de337d3e8ad5a9230d3b730a62473d419473158a`  
		Last Modified: Thu, 08 Oct 2026 22:03:54 GMT  
		Size: 62.3 MB (62264305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5205a389559f29eea53da05f2b646f22156575dcf9d34e3ccb6e5107fbfb6a3`  
		Last Modified: Thu, 08 Oct 2026 22:03:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7a28272c5ab2e0b5ebf22bf31b0ecf1293521f086cb9231597bce9aac3d57f`  
		Last Modified: Thu, 08 Oct 2026 22:03:52 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:047c4deacaa04d3136955ee886423d22e444d8cdcfe131002429cc355daba694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3721506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b114ca7f51e2c5e3c810f2c3884866605a0e5ec0018dacbfab3f8b4e974c295`

```dockerfile
```

-	Layers:
	-	`sha256:3327c6435854e8ad8f04c08d0102fe0219b59ce295494eec22e7aa5849a4ca03`  
		Last Modified: Thu, 08 Oct 2026 22:03:52 GMT  
		Size: 3.7 MB (3701219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cc7972c7382f8250947c4606c2127f8e5716c243be41534853a3bf646dac589`  
		Last Modified: Thu, 08 Oct 2026 22:03:52 GMT  
		Size: 20.3 KB (20287 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:829892eda2f0defeba7a3109d4313bd2811379ab6b2aeac80c37ba3d0b86a0ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134734158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b1f82f7ce3267654a7224fdeeb02512d1096035eb2b665c60dec3b374abb23`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Tue, 13 Oct 2026 00:31:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:31:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:31:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:31:51 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:31:51 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 13 Oct 2026 00:34:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:34:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:34:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:34:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8a2084faf73dd02eee4a91504c8641d976b2ea7a34d44da41565f5c24a375c51`  
		Last Modified: Mon, 12 Oct 2026 11:37:18 GMT  
		Size: 34.8 MB (34821002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c30088a0b3db88d531b537a431b79eb168520c945386f329ef71eea9bba822`  
		Last Modified: Tue, 13 Oct 2026 00:32:13 GMT  
		Size: 38.3 MB (38262096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333a2e048d7ebf0154aeb45129f258baa22ed2412513f9437d1f22e60e32062f`  
		Last Modified: Tue, 13 Oct 2026 00:35:16 GMT  
		Size: 61.6 MB (61648461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65476f705379da7f135f402bf76c32554069496ff6f07961ee85cdfaedfe2721`  
		Last Modified: Tue, 13 Oct 2026 00:35:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9c52c037cd2576ee22337c479009a14388563091d67d66368510f91fca978b`  
		Last Modified: Tue, 13 Oct 2026 00:35:15 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:106cc2e5091b1a40e6d77c9d179144110b75091166b995ec8b118aa52a80344f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3722722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd46409e42f2add6f9110e1cd52e5c815b154640ee100a18b0278ba55dbb42e3`

```dockerfile
```

-	Layers:
	-	`sha256:e7273f34972d4560eb4f52d1355d924dc7c12cc0fe18519439130f010b089330`  
		Last Modified: Tue, 13 Oct 2026 00:35:15 GMT  
		Size: 3.7 MB (3702464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a6bfd3f970743392e6ed187afc3fe8b7e6db00a2a599af8e4a52e64ed0e1ae2`  
		Last Modified: Tue, 13 Oct 2026 00:35:15 GMT  
		Size: 20.3 KB (20258 bytes)  
		MIME: application/vnd.in-toto+json
