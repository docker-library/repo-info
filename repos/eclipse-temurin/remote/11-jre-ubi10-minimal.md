## `eclipse-temurin:11-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:31e80b9a9f9797fe4130f0207d0dc8e3596d2a706d36ddd7b1b2f7b42b42cc1f
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

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:f3ee0baa2bd492e5b79acea395a6c21c9ffd7f6007b81d239f8ffe5a6a1da728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117020870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d736a558c08ba7943f4b0e3dddb6e60b41900ab747edd1dc3a14239d03a14b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:52:21 GMT
ENV container oci
# Wed, 15 Jul 2026 05:52:22 GMT
COPY dir:e80ceae0f38fed255e475d6f3c857d9cc653b611388172a20e2345e2608f2c11 in /      
# Wed, 15 Jul 2026 05:52:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:52:22 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:52:23 GMT
COPY dir:fcea21daaad748df5672e8517505782b30d2c53d6febb830378b77388dd947d6 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:52:23 GMT
COPY dir:fcea21daaad748df5672e8517505782b30d2c53d6febb830378b77388dd947d6 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:52:23 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:48:52Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:48:52Z" "architecture"="x86_64" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:48:52Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:21:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:21:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:21:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:21:48 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:21:48 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 16 Jul 2026 00:21:51 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eabe05fb80626ad24db17cf1df137855e77fbacbc83c11aaf243cedd224467de';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='11e58bf1eeae10f0dc1a98cc43bf97af270a0b516f6ff9fb3189024c5e22550a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4c311b19aa3922951be288076f0f41a831ab7af32284da9b3e21cdaa251a078a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='a6af3d61851f57eb79ef0189837522329717458bf230ee284da2d26634f1ea3a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 16 Jul 2026 00:21:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:21:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:21:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c7288023ded975bbfebf94654b2abd0529e40b52fa589ee42fa73afc0e6c0670`  
		Last Modified: Wed, 15 Jul 2026 06:55:17 GMT  
		Size: 34.9 MB (34898991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18e754ae0f28bacf5d1745fe1428f8bb08694d12a5c478ff8f7529d72db57f2`  
		Last Modified: Thu, 16 Jul 2026 00:22:06 GMT  
		Size: 37.8 MB (37772901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d5c9b64ba0187db8ac7f06553ebd7fb328f43ce07c702b13dcf88457a97ae2`  
		Last Modified: Thu, 16 Jul 2026 00:22:05 GMT  
		Size: 44.3 MB (44346562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a9166f6e1bfd2ba3ecdff054c0a39b32c84473ee24dcc96f8a1a88b2e72b38`  
		Last Modified: Thu, 16 Jul 2026 00:22:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082602da1930cbb72204c0c5315dc81aa30b21afe86b3b2037cbb82f226a417d`  
		Last Modified: Thu, 16 Jul 2026 00:22:02 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8e761d510d1372985291481141fb8ad4a91e6ec6c316229cf353e8f4150ff977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c20d32a769c074106344957300cd6def562bc0c169e47896b18cf23fc799cc`

```dockerfile
```

-	Layers:
	-	`sha256:21f3deb160e418c3ddfd80519fe4d2a9bda235fd4e0d2e866261a3829885e437`  
		Last Modified: Thu, 16 Jul 2026 00:22:04 GMT  
		Size: 3.7 MB (3719780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a2ed2612c222d8212ef00d2c56d52022619f03384c0200d2c86c5790d06a4e4`  
		Last Modified: Thu, 16 Jul 2026 00:22:03 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:01f2749b9ad08450cfc8e9885865eb2db042e8a041d0a9fca3eeeeb7f5a2e554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113417018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49c1ca253bd0d7e8c4b8f34557ed5cab3b141c6433f77cbc3b2a690b654001a4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:50:02 GMT
ENV container oci
# Wed, 15 Jul 2026 05:50:03 GMT
COPY dir:8f070411f1ee56ca3961d04e0e908caad0eb4e03104d45b7f770bb84cd3a08af in /      
# Wed, 15 Jul 2026 05:50:03 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:50:03 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:50:03 GMT
COPY dir:04f8dce71511af7de523b5498ebb5427d3946b49dd8d31c37d9494947f53788a in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:50:03 GMT
COPY dir:04f8dce71511af7de523b5498ebb5427d3946b49dd8d31c37d9494947f53788a in /root/buildinfo/      
# Wed, 15 Jul 2026 05:50:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:49:39Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:49:39Z" "architecture"="aarch64" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:49:39Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:22:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:22:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:22:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:22:12 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:22:12 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 16 Jul 2026 00:22:15 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eabe05fb80626ad24db17cf1df137855e77fbacbc83c11aaf243cedd224467de';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='11e58bf1eeae10f0dc1a98cc43bf97af270a0b516f6ff9fb3189024c5e22550a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4c311b19aa3922951be288076f0f41a831ab7af32284da9b3e21cdaa251a078a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='a6af3d61851f57eb79ef0189837522329717458bf230ee284da2d26634f1ea3a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 16 Jul 2026 00:22:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:22:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:22:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:877a7cfebba1327468a9ce7bb85f9afffbfb1c95701f76d33d81f3833987c4e2`  
		Last Modified: Wed, 15 Jul 2026 08:02:44 GMT  
		Size: 33.0 MB (33038203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8379a6b434d00ebe15b79734a83c7599bf892a49072c2f46088ab17a506a803a`  
		Last Modified: Thu, 16 Jul 2026 00:22:28 GMT  
		Size: 37.7 MB (37707785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bffac8278b4138a635d9556a405ebec8a5c656f960b24b45bad7822629a6c2`  
		Last Modified: Thu, 16 Jul 2026 00:22:29 GMT  
		Size: 42.7 MB (42668614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ff33b18837dd0ab90c6a1a0a6ed4794b775df5e8f820a521dc6d2fb164be3c`  
		Last Modified: Thu, 16 Jul 2026 00:22:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e0b6c7961154a15340f0cb0449cd182ec491300ce102bb555cd0b0145b0a139`  
		Last Modified: Thu, 16 Jul 2026 00:22:27 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:11b650577e9e99ce4d10d08640337b010838e21cb9d410492da590def1ff0bdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcbfc8ef03ebf8dcfd91b58e96e62d3dbc7eaadfe35d6e9e1d2916e04e80dbf0`

```dockerfile
```

-	Layers:
	-	`sha256:b38f9e5f834e8dd2d09d6ef33069ce6f087b5ff5b0660a3254fb2c22f03fc3f2`  
		Last Modified: Thu, 16 Jul 2026 00:22:27 GMT  
		Size: 3.7 MB (3719812 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8e0130a9e8e641a7288069dbaffc746e62f5766502690d2990587ca1c1127ae`  
		Last Modified: Thu, 16 Jul 2026 00:22:27 GMT  
		Size: 20.5 KB (20482 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:0fc25d0c798ac1461daaafee373481d5cfa21ec9a50cab871b9a134912f9b766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118396993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a589178d20a4262695776655f9c6f8c66488bbc2e659657567c9b2b80a57223c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:49:00 GMT
ENV container oci
# Wed, 15 Jul 2026 05:49:01 GMT
COPY dir:10526134b402f96b01913ff63c11090d12c71c1f3d96105fcd44fc1b9ebc9a4e in /      
# Wed, 15 Jul 2026 05:49:01 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:49:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:49:01 GMT
COPY dir:cf7642e6d55956d71e3aaebdbf758e9516171ed79668415a4710b1fdcb1ac147 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:49:01 GMT
COPY dir:cf7642e6d55956d71e3aaebdbf758e9516171ed79668415a4710b1fdcb1ac147 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:49:01 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:48:41Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:48:41Z" "architecture"="ppc64le" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:48:41Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:19:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:19:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:19:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:19:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:19:49 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 16 Jul 2026 00:22:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eabe05fb80626ad24db17cf1df137855e77fbacbc83c11aaf243cedd224467de';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='11e58bf1eeae10f0dc1a98cc43bf97af270a0b516f6ff9fb3189024c5e22550a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4c311b19aa3922951be288076f0f41a831ab7af32284da9b3e21cdaa251a078a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='a6af3d61851f57eb79ef0189837522329717458bf230ee284da2d26634f1ea3a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 16 Jul 2026 00:22:26 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:22:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:22:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b060fee38424df7cdccede0607ef847e0d227597b97b59bc32fa6707e32cfd57`  
		Last Modified: Wed, 15 Jul 2026 12:17:24 GMT  
		Size: 39.0 MB (39003367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90cf761edb0d2dff4b7a85b108a0da2334197a83aac08a67d64abddc2b6414a`  
		Last Modified: Thu, 16 Jul 2026 00:20:26 GMT  
		Size: 39.5 MB (39529262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce6b811f9a780b2ed2a37d80374be25b08e818ac00570bfc30f0e1f1780f9d8`  
		Last Modified: Thu, 16 Jul 2026 00:22:52 GMT  
		Size: 39.9 MB (39861947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7296449a7acc26789840a6fee3d77ae81a578215cdc59e15339a3cce94ad4509`  
		Last Modified: Thu, 16 Jul 2026 00:22:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61cd40f9a74417a9c782c9c74a5125a0a9a4505e2720e0e1c7add78fecf435f`  
		Last Modified: Thu, 16 Jul 2026 00:22:50 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:43b7301256001c0266a86d212a01e431210a80ab02caf6a9dbf2559baa2e576c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3728939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b66a9e632878d71c6612c8e91c5194d6cbad53f0922ea9ea538585b1709c12d`

```dockerfile
```

-	Layers:
	-	`sha256:2ea28c7182393519dc6706da7c09658d7461a2ae86e56f8973a6a3584027ab74`  
		Last Modified: Thu, 16 Jul 2026 00:22:51 GMT  
		Size: 3.7 MB (3708531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bddf9f7ee01b71dac606a47376736c5b414af63e8b25c8913e6aa36422c729d8`  
		Last Modified: Thu, 16 Jul 2026 00:22:50 GMT  
		Size: 20.4 KB (20408 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:0a28d0b562473e3d17798979c15eec470c877769d5e7608cdf5ae5e421669b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111259298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f4a90cd1486cbb4a6e9ecf4b54876eeba20e7727a332a827051ac336d0c3f6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 06:07:28 GMT
ENV container oci
# Wed, 15 Jul 2026 06:07:28 GMT
COPY dir:c139a456fb0c48548e9f88c9c78776f62ee6b4cb82d5cb148f031ebc4cd871b9 in /      
# Wed, 15 Jul 2026 06:07:28 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 06:07:28 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 06:07:29 GMT
COPY dir:7bd72475117264ee7e80797e1635130baf9553b3e299ea41ac556164e2790e11 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 06:07:29 GMT
COPY dir:7bd72475117264ee7e80797e1635130baf9553b3e299ea41ac556164e2790e11 in /root/buildinfo/      
# Wed, 15 Jul 2026 06:07:29 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T06:05:53Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T06:05:53Z" "architecture"="s390x" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T06:05:53Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:18:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:18:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:18:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:18:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:18:43 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 16 Jul 2026 00:18:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eabe05fb80626ad24db17cf1df137855e77fbacbc83c11aaf243cedd224467de';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='11e58bf1eeae10f0dc1a98cc43bf97af270a0b516f6ff9fb3189024c5e22550a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4c311b19aa3922951be288076f0f41a831ab7af32284da9b3e21cdaa251a078a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='a6af3d61851f57eb79ef0189837522329717458bf230ee284da2d26634f1ea3a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 16 Jul 2026 00:18:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:18:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:18:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d73d4f6457bcd782d3bc06902fa556ffd91db9aab85a2358b971636d93b8103c`  
		Last Modified: Wed, 15 Jul 2026 12:17:17 GMT  
		Size: 34.8 MB (34778657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99825ff0bcd8d9b4bfed5571db700e33f3e4e7c8f10f7fb0662b29c6034ff75`  
		Last Modified: Thu, 16 Jul 2026 00:19:07 GMT  
		Size: 38.1 MB (38147908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8170cbeb60e6c25ab28e7747ed154bcb46a8444cee99a62c6b2ddfe45a3db13`  
		Last Modified: Thu, 16 Jul 2026 00:19:07 GMT  
		Size: 38.3 MB (38330315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd58bf2e0962eaebdca9fa9ee8d0894248a6d78358170f8931b051d46172dc7`  
		Last Modified: Thu, 16 Jul 2026 00:19:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:008a90c9588a759f9f3580bd800d4e967a5c6c938ece022924dc54483e776633`  
		Last Modified: Thu, 16 Jul 2026 00:19:06 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:58fcc590d137b90d955035ab17e8c97a62bad1fd92db36ce086f22833b6f322c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3730154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad730306a1cfebeb69f9ea2c00048a19ab7e5f8efa2976243b199e3724ba3121`

```dockerfile
```

-	Layers:
	-	`sha256:9f2cdc3a7a78c7c1444254c44aab7511ae1cd7e23bfe4e1b661865de86096abb`  
		Last Modified: Thu, 16 Jul 2026 00:19:06 GMT  
		Size: 3.7 MB (3709776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5b559cb64e0eb62e5b0efd2190e7f56457343e1a8976f3821dd4b4fc3fa6381`  
		Last Modified: Thu, 16 Jul 2026 00:19:06 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json
