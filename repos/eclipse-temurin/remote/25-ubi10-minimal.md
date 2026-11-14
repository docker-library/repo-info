## `eclipse-temurin:25-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:c3a89475eca4b7de8ad883fe9b1b2846da8841459965c4237a29bddc8de1bf83
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
$ docker pull eclipse-temurin@sha256:86a6379fc967746a5cf6d4f50277211382b3cc1cddee6766e03659bb89a34027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.0 MB (149975146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7db61a691b8234c44c85e6c0e192c8ef4a172a8c04cee7df21503e724403cf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:03:35 GMT
ENV container oci
# Thu, 12 Nov 2026 16:03:36 GMT
COPY dir:abaeaccaa183ac0f937690d9c3d971f171eee110eb25e55bb2014a260848d444 in /      
# Thu, 12 Nov 2026 16:03:36 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:03:36 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:03:36 GMT
COPY dir:4907c31dd7720cc331953cb8cbe73d698387e1a9bb6e1ff53fe2e44570a4e195 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:03:37 GMT
COPY dir:4907c31dd7720cc331953cb8cbe73d698387e1a9bb6e1ff53fe2e44570a4e195 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:03:37 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:02:48Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:02:48Z" "architecture"="x86_64" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:02:48Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:46:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:46:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:46:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:46:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:46:49 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Fri, 13 Nov 2026 21:46:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:46:56 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:46:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:46:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:46:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cfd5e1005a32b7225818bfd0eb2156a15f6be2100d285589a641ff98bd55281`  
		Last Modified: Thu, 12 Nov 2026 18:03:34 GMT  
		Size: 35.0 MB (34989854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dc9bb440538005c872539a4e8eaa48719beab30cb279e03c53963b31e62d832`  
		Last Modified: Fri, 13 Nov 2026 21:47:13 GMT  
		Size: 22.4 MB (22383496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8017dc089c0b1c7c6b3ff32bc860a8cbbeab6c623f77f6eca11ad6cedbc6f83`  
		Last Modified: Fri, 13 Nov 2026 21:47:15 GMT  
		Size: 92.6 MB (92599195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e0940bacbfa99843cb28b8c368782c1c90d7c469b8633c550842fc3dbcf694`  
		Last Modified: Fri, 13 Nov 2026 21:47:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b83a98b5b6aac95dff8d0a722a97aef5608470eada6e4a64d140be18918867d1`  
		Last Modified: Fri, 13 Nov 2026 21:47:12 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3d2e5c1be0bac311325cb7b16a855837cd9869cd2cf3f15c105d2fed0a64e1eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b006aa1adb065df32bde4504200e6ef873da6b9ad4660e2cf825021ba4ed44fe`

```dockerfile
```

-	Layers:
	-	`sha256:3a77b683f9729b7053c678ebac1e82d1fb50bf06060274722c34cbc6f58a3a76`  
		Last Modified: Fri, 13 Nov 2026 21:47:12 GMT  
		Size: 3.0 MB (3002856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5831411de0f27f64c9bdbd318fb7285597caf61874e6c12dc65ff98bdc459208`  
		Last Modified: Fri, 13 Nov 2026 21:47:12 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c0ce2dedc8ec1c8459204b6d78232bd90098e9c1f50275de971484b478ce45c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.2 MB (147211431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df50fc96bb76851ef4d3c049f416cc5b90d02f84281e9555271d1c86f1c61989`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:05:37 GMT
ENV container oci
# Thu, 12 Nov 2026 16:05:39 GMT
COPY dir:fe8420d32862f0115fa228720b49066fadc1b8d1092b0d3d3cb9962c75e35cc6 in /      
# Thu, 12 Nov 2026 16:05:39 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:05:39 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:05:39 GMT
COPY dir:fc47a3f30ae4d6e4c8b5cebf7d8469dad63931bae6197b61a549f3789f2ea498 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:05:40 GMT
COPY dir:fc47a3f30ae4d6e4c8b5cebf7d8469dad63931bae6197b61a549f3789f2ea498 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:05:40 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:05:09Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:05:09Z" "architecture"="aarch64" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:05:09Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:41:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:37 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Fri, 13 Nov 2026 21:44:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:44:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:44:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:44:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:44:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:92b92fb6cc01fdbff60386e24bb888d8cbdc5d4af6a26214b7a8c5549a2ed08a`  
		Last Modified: Thu, 12 Nov 2026 18:03:29 GMT  
		Size: 33.1 MB (33057880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100918ea78ea51df29f21098024433ab4fe2e36832415b3c2cc0eae1aef6ca6e`  
		Last Modified: Fri, 13 Nov 2026 21:41:53 GMT  
		Size: 22.6 MB (22624592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f381ef69c4eed436191e09ee903a22e3c2bf9154bc5531b64bca5f1f4327a5a`  
		Last Modified: Fri, 13 Nov 2026 21:45:16 GMT  
		Size: 91.5 MB (91526359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa57fb1a79f0dd70a56f826290ab794908a545eea8bab613a0c2890f245f55c`  
		Last Modified: Fri, 13 Nov 2026 21:45:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb64f4fb8adb84bf2baafbed6a41fd3d469c541506c6d8edde006f9d2b34ea5`  
		Last Modified: Fri, 13 Nov 2026 21:45:14 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:42adbbe3c1c6972d69775a6c8cafc1ec9a72c530647768b586a34094b0b9aee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3023684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a83e312fcb8755ab375252ac6e439dc6877a574fd5bc95aff1b1faa54960b6a6`

```dockerfile
```

-	Layers:
	-	`sha256:0f90c1582c83024d5b8f010363668da09a7ac46b9d66545e3a294cfed5db086c`  
		Last Modified: Fri, 13 Nov 2026 21:45:14 GMT  
		Size: 3.0 MB (3002279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46c6e4d4f723e507c5244eefde2c594b6d8114a132de875f056d72436ce47eb2`  
		Last Modified: Fri, 13 Nov 2026 21:45:14 GMT  
		Size: 21.4 KB (21405 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:fcc899f608c330bc0e0ff1d847f0f2dbfe1082d7a85118daa9560fc99bc451c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168971926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bb8df2217ce2b2003ceb059db6a7685bca736246f6ed6ef3e8cb17781ab51bb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 16:09:58 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:09:59 GMT
ENV container oci
# Thu, 12 Nov 2026 16:10:00 GMT
COPY dir:ad66467f60bb0a64961b37b18c45eabc5da9768db94a9506ecae7a8434041e56 in /      
# Thu, 12 Nov 2026 16:10:00 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:10:00 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:10:00 GMT
COPY dir:004ff3a132bc9072133b960572269ccc9d243198026dfe8e2c063dd7a6729985 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:10:01 GMT
COPY dir:004ff3a132bc9072133b960572269ccc9d243198026dfe8e2c063dd7a6729985 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:10:01 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:09:32Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:09:32Z" "architecture"="ppc64le" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:09:32Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:41:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:03 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Fri, 13 Nov 2026 21:50:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:50:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:50:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:50:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:50:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:732e1cc5e2c16e0c0f268f77b46621ef010009a9109126d06365d7e29c2876d6`  
		Last Modified: Thu, 12 Nov 2026 18:29:10 GMT  
		Size: 39.1 MB (39060038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a091144000673e21ab164cebc0c14f91c53123f6d6f421fc75f70b68a4b4d0`  
		Last Modified: Fri, 13 Nov 2026 21:41:43 GMT  
		Size: 39.8 MB (39798191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eef58cb0f27e531abed66a49ef89a0d09f54cf682e80c459d495d495aec8a1cd`  
		Last Modified: Fri, 13 Nov 2026 21:50:46 GMT  
		Size: 90.1 MB (90111096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7a859dc2932eaef6d730b83efb0acb9f5aeae0f4e7d4edfbff90c89dd91c3b`  
		Last Modified: Fri, 13 Nov 2026 21:50:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7fcf460038541ac473d1e9af9b80f68d2cf8e14332e5cd075339a3e29cae73`  
		Last Modified: Fri, 13 Nov 2026 21:50:43 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ec3a2029ab4995f100a08313818f7c18708b536bbac12efd1ec1b2cbe40aeb3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae16c697dc33029604b321b908da92674109fb11c450eab9bf646a017d19fad`

```dockerfile
```

-	Layers:
	-	`sha256:e51bf4cd94039e0329b8f7449c042f9a56a4bcf972668df8bd4459a3b7f86c8c`  
		Last Modified: Fri, 13 Nov 2026 21:50:44 GMT  
		Size: 3.7 MB (3714418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7350d6fc64b65dda01778a38ae432f7147bfde150ca2c927ec5e7d0397475333`  
		Last Modified: Fri, 13 Nov 2026 21:50:43 GMT  
		Size: 21.3 KB (21325 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:892998a182692048abb7f68572709cb34927a56ad3fc7382d652a0c395a0bbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145612628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15c4ccfc15204b481ee0a6ad8ecd30687d75358e4e28ff8bc6d8d235007e6630`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 16:37:23 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:37:23 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:37:23 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:37:23 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:37:24 GMT
ENV container oci
# Thu, 12 Nov 2026 16:37:25 GMT
COPY dir:566a5022316ff560512005a088367d2853859f574e9087ef74ae030a0a6af5df in /      
# Thu, 12 Nov 2026 16:37:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:37:25 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:37:25 GMT
COPY dir:ec55cb9b5c6900c8ca824e865d9eb8d5a48c85e1c2ebfcf28d8cfa0a5d4ab260 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:37:26 GMT
COPY dir:ec55cb9b5c6900c8ca824e865d9eb8d5a48c85e1c2ebfcf28d8cfa0a5d4ab260 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:37:26 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:35:59Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:35:59Z" "architecture"="s390x" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:35:59Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:40:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:40:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:40:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:40:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:40:45 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Fri, 13 Nov 2026 21:42:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:43:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:43:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:43:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:43:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e71dc9438b94c2c137e529ef670ef1400ab2d4cdcaa57af35b766fe14f8fa33d`  
		Last Modified: Thu, 12 Nov 2026 18:28:59 GMT  
		Size: 34.8 MB (34831835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b66052a239beefeeb1c907453fc5f93f351b25d6997ad25ed1a7b921796b33`  
		Last Modified: Fri, 13 Nov 2026 21:41:15 GMT  
		Size: 22.7 MB (22723782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3458a1bdef443f1998136f1a2062eba10bbec4e90369c424fce5d1b976e7e314`  
		Last Modified: Fri, 13 Nov 2026 21:43:25 GMT  
		Size: 88.1 MB (88054413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee8992cf74e82d588c4b0b8b22906f37b408e5471b1e41fd6983cc49f01a098c`  
		Last Modified: Fri, 13 Nov 2026 21:43:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb180face98f3fa859889f2129fbae965aa102f94d57a3baed8e70b6c464730`  
		Last Modified: Fri, 13 Nov 2026 21:43:23 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:439f143de155ff09ff263f534449a722c77070e98fb810d1c47ff07d921a8720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2999360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535729e52f8ec22e765d788ab904645f59ba6a0ed76552a0d3e4385bbcbfa2b4`

```dockerfile
```

-	Layers:
	-	`sha256:fefb5c58c6ddb94ca437abe6186fc2ac73401662aa52437e0566f51082d8fa87`  
		Last Modified: Fri, 13 Nov 2026 21:43:23 GMT  
		Size: 3.0 MB (2978071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4c6b61a4fd1c5c68d033f231b58ad96123b88232b6937b54eafd82dbd51f632`  
		Last Modified: Fri, 13 Nov 2026 21:43:23 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json
