## `eclipse-temurin:21-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:a8041105eff071ad1efdea824d9194eacbeb42b8daed498fdb87690dfd411778
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

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:e4e39bd2550ce504fc39884adc7d263011b5902e10867ac0af2e62efdcca4fc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125796950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ea6301f312731fae7b742031d141d075cdded2ec98e91efac5a60696feb7b98`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 13:46:35 GMT
ENV container oci
# Wed, 29 Jul 2026 13:46:35 GMT
COPY dir:8b54f62a83609f7ca7db35de99b97ad887016d7d343f267970f635c2bcfb9878 in /      
# Wed, 29 Jul 2026 13:46:35 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 13:46:35 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 13:46:36 GMT
COPY dir:a2f8f5692e4a30fca4b2fd34555df94b325e49a14060efd4825b60aed3fdb4a9 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 13:46:36 GMT
COPY dir:a2f8f5692e4a30fca4b2fd34555df94b325e49a14060efd4825b60aed3fdb4a9 in /root/buildinfo/      
# Wed, 29 Jul 2026 13:46:36 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T13:46:17Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T13:46:17Z" "architecture"="x86_64" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T13:46:17Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 00:13:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 00:13:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:13:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 00:13:15 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:13:15 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Fri, 31 Jul 2026 00:13:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 31 Jul 2026 00:13:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 00:13:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:13:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ddfe294a9804613156d3672398df770ff04349398a4be9dea00a32464465ed11`  
		Last Modified: Wed, 29 Jul 2026 14:40:41 GMT  
		Size: 34.9 MB (34900220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:341b8b1c00a34747ed3a2373270197ecd0301a881574450737c4ab35c3355926`  
		Last Modified: Fri, 31 Jul 2026 00:13:32 GMT  
		Size: 37.8 MB (37772060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc6549d909ee6478289fe37ba223b04cf844695147d5e1812f3dfa1d216ff29`  
		Last Modified: Fri, 31 Jul 2026 00:13:55 GMT  
		Size: 53.1 MB (53122251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb2f634a260d21966e5508e36838e029f96cd531cddf77819c3f92f6ba9d1da`  
		Last Modified: Fri, 31 Jul 2026 00:13:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ff862819fae7e618882c088bd761684d94f96fd08c07f0315012054405381d`  
		Last Modified: Fri, 31 Jul 2026 00:13:53 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5d4b85211f2f96a5ce9913f2096006b3f3629193c949962d9c523aaaab8145e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3729549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:240a530a181b5e4948b99b0b1373f6de630d8f402f89658749fa6d1c483aac9d`

```dockerfile
```

-	Layers:
	-	`sha256:b7aa7fd394704afdef186ae462bfd79398301fa7e30c8bb18e79b31a31de613c`  
		Last Modified: Fri, 31 Jul 2026 00:13:54 GMT  
		Size: 3.7 MB (3709172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bd1f3228b8998ec35576588e93c4cf83a97f53674c0dbc2e6066badfad6d940`  
		Last Modified: Fri, 31 Jul 2026 00:13:53 GMT  
		Size: 20.4 KB (20377 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:826e4551ce623d66cb31f432262aaebbd9dde7fd87aa217a92b3619fe27b5113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123087533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdae8f3de2f172ad1d7fc548a98214a7ef4089774101e21fc3bc11e7a84a150`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 13:49:53 GMT
ENV container oci
# Wed, 29 Jul 2026 13:49:54 GMT
COPY dir:6494f0a7f26288c5d33733a2fc6cb0725994b3f7d21bbebda5c614e2d2e0b030 in /      
# Wed, 29 Jul 2026 13:49:54 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 13:49:54 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 13:49:54 GMT
COPY dir:fec0a214d0310fdf953bc240b28235ee5011fef40c975541e9dcd78832e7e9c9 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 13:49:54 GMT
COPY dir:fec0a214d0310fdf953bc240b28235ee5011fef40c975541e9dcd78832e7e9c9 in /root/buildinfo/      
# Wed, 29 Jul 2026 13:49:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T13:49:30Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T13:49:30Z" "architecture"="aarch64" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T13:49:30Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 00:16:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 00:16:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:16:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 00:16:12 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:16:12 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Fri, 31 Jul 2026 00:16:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 31 Jul 2026 00:16:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 00:16:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:16:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:4993068ac9f96458b90955f8347fdb41bb56d5cdbecf98080b50a406705a5ad7`  
		Last Modified: Wed, 29 Jul 2026 14:40:40 GMT  
		Size: 33.1 MB (33059937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e23a79d3cdf6924bd818adfcdd0369099a68ad0b888f6f6f1202c48467a03fb`  
		Last Modified: Fri, 31 Jul 2026 00:16:30 GMT  
		Size: 37.7 MB (37715856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819854b48649347c56948bb83fe2a153009935ad3817802074f001e2431afca3`  
		Last Modified: Fri, 31 Jul 2026 00:16:54 GMT  
		Size: 52.3 MB (52309320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca2b37c81cf7768414c9f83da1bdefac5d363285c6b968528f9fbe0fc87c0ce`  
		Last Modified: Fri, 31 Jul 2026 00:16:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2bf3a1a0a5a717aff047c267b67a90b32e8c651dd1a8dac08ff6ca1a1d8220`  
		Last Modified: Fri, 31 Jul 2026 00:16:53 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3875356047472e26cde15d00c98c4bef5c09afe84298dbcd6574d27623c0f50c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3729068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337ca63c1ca50319d512378ccb2f47e170e8bec110860004092789d4f77841f5`

```dockerfile
```

-	Layers:
	-	`sha256:38888eefd35d8edf3b7a3e3a9dbc0216a8c6430939227f46ded43dee86bcac67`  
		Last Modified: Fri, 31 Jul 2026 00:16:53 GMT  
		Size: 3.7 MB (3708586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f77bc12a177e313c33053bdde56ab8aa26f048d40b2a2a4d9e1bc1fd1ad26171`  
		Last Modified: Fri, 31 Jul 2026 00:16:53 GMT  
		Size: 20.5 KB (20482 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:20e5c498a57a69eca0b5b75bb4eb71ec48557a0e8257ea12c3f420f694ebce7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131704127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d900b601e29ec85cefac2bc07c87b11190f32944645d631262e8f88f6fd8230`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 13:50:05 GMT
ENV container oci
# Wed, 29 Jul 2026 13:50:06 GMT
COPY dir:32b612952f6a200e1fc2841228adfff5b5619d342a0bf5d8f4fb3394f3204d40 in /      
# Wed, 29 Jul 2026 13:50:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 13:50:06 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 13:50:06 GMT
COPY dir:6312ce2863b2ed80640bbcd1b43ae5dd174e45e7d1f30d05f89f474c8f56d870 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 13:50:06 GMT
COPY dir:6312ce2863b2ed80640bbcd1b43ae5dd174e45e7d1f30d05f89f474c8f56d870 in /root/buildinfo/      
# Wed, 29 Jul 2026 13:50:06 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T13:49:48Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T13:49:48Z" "architecture"="ppc64le" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T13:49:48Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 02:11:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 02:11:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 02:11:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 02:11:48 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 02:11:48 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Fri, 31 Jul 2026 02:17:54 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 31 Jul 2026 02:17:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 02:17:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 02:17:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:efe2e261eec9fcfe777756b6158d35446d9dd1a2f1a234aaded7f95906b10b72`  
		Last Modified: Wed, 29 Jul 2026 18:21:45 GMT  
		Size: 39.0 MB (39032105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba0a9d84008c0e73e6b7d424bd5d3c7cbcf8bc4d10b3f3d389a3e69fcafa52f`  
		Last Modified: Fri, 31 Jul 2026 02:12:32 GMT  
		Size: 39.5 MB (39531151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0e3bdf80896c3ec211a2eb90d0a4a2d8e63d14df5344302c11503d010ccb0b`  
		Last Modified: Fri, 31 Jul 2026 02:18:23 GMT  
		Size: 53.1 MB (53138454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c827b740458b05d1bba430b40d2842f6cf9d5840e68f8de02e2e2d69f4202b`  
		Last Modified: Fri, 31 Jul 2026 02:18:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d478b53bb10981dff43a3c5ba408577ea1429c2d1c8875e0ae2771ab16e0a0eb`  
		Last Modified: Fri, 31 Jul 2026 02:18:21 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:88a7f467e0fa01c13f6eb1412eb5d24954ea79e8a3ccd7b1e7dbf08f5ee8001b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bfd307c7611f1d95f6f1557b7f2458ff6729cd15a4669e8520d94264f740f0`

```dockerfile
```

-	Layers:
	-	`sha256:472d362de3b561bf6840888445d10c308a83623c5dee77def33db808551e0648`  
		Last Modified: Fri, 31 Jul 2026 02:18:21 GMT  
		Size: 3.7 MB (3697917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55e22fed1b2193f228d434ed3699c59c29375fc9027d7c078af209d9a620b52a`  
		Last Modified: Fri, 31 Jul 2026 02:18:21 GMT  
		Size: 20.4 KB (20407 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:4da0710d8cc75ccddd3732c96203139bbe2f99e79c9f033eb2cb31a053f3b551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.6 MB (122574654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d950bf7775189ac38ff3107d3ad68c9a68b63124ecd2779f17ac4dfbce0a25e6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 14:09:24 GMT
ENV container oci
# Wed, 29 Jul 2026 14:09:25 GMT
COPY dir:95cb629b59dcab1d83b18a252bac1931d0ea13f8221158f9ae691eca6c2af42e in /      
# Wed, 29 Jul 2026 14:09:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 14:09:25 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 14:09:25 GMT
COPY dir:84509ddc5ec4034e1c3fd54fce9ccc6c0300dfbba8aa67a14a2de63394571f4b in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 14:09:25 GMT
COPY dir:84509ddc5ec4034e1c3fd54fce9ccc6c0300dfbba8aa67a14a2de63394571f4b in /root/buildinfo/      
# Wed, 29 Jul 2026 14:09:25 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T14:06:40Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T14:06:40Z" "architecture"="s390x" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T14:06:40Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 00:38:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 00:38:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:38:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 00:38:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:38:20 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Fri, 31 Jul 2026 00:39:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 31 Jul 2026 00:39:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 00:39:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:39:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c9183109e6599bdbc51a1ba29d2941b9a92503ebf23d69b5d2d0432506828168`  
		Last Modified: Wed, 29 Jul 2026 18:21:35 GMT  
		Size: 34.8 MB (34762514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe131eb5f33a8bff2dee8d3414f47e446d443c4be70190e8273ab9c4b542970`  
		Last Modified: Fri, 31 Jul 2026 00:38:45 GMT  
		Size: 38.2 MB (38153819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40c4971d384628dead8f612d8d160e373732426abf660495218adeb9952b19a`  
		Last Modified: Fri, 31 Jul 2026 00:39:30 GMT  
		Size: 49.7 MB (49655902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6167f422043e7dfee70bbb86ec707aec6b049f8be2989ea7ffc121e0ca2aca`  
		Last Modified: Fri, 31 Jul 2026 00:39:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65777ebb09c8d2ba2588ed0a91c81af04a3bd7fc4afe32b1ab34d62983f43ce`  
		Last Modified: Fri, 31 Jul 2026 00:39:29 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5bc80e86504e66844c52fbc84443425408e4c808cd9cfc5963ca4d050d585f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3719540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638b11c0fe49fa186fcefeb8e59c76cd5802ab06f4bab81dee39592c4e5e5c40`

```dockerfile
```

-	Layers:
	-	`sha256:9e0b311ef6b37b0fd9d72bd067b5580ff064415928a5d52bfb9cc6ccda1c2a70`  
		Last Modified: Fri, 31 Jul 2026 00:39:29 GMT  
		Size: 3.7 MB (3699162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:737f7cfc25751a3fbd2853fd60f925c8981da6eea1e1f9335df694f0b2b13275`  
		Last Modified: Fri, 31 Jul 2026 00:39:29 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json
