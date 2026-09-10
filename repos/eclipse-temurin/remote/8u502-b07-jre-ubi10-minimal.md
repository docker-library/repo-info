## `eclipse-temurin:8u502-b07-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:75cec3d82ffc05f01ca45d23a8ecf32915381fd0e61944e8acb8f1ad23b17d7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u502-b07-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:1902522a80208ef632787a04daa365e57553b3fbe0af0c2aaf3701e51e0185f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115088415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ca3d56b696ade4cca6e82b9fea19fdb872adafc5186b4ef1b13bd0e3eefdd6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:04:44 GMT
ENV container oci
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:876d55a6afad3c650d61c0b66072339064fd4222217a3606856925173e6b4f5d in /      
# Wed, 09 Sep 2026 08:04:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:04:45 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:f690a7926d4d1793e3444aefd940484afd5d12be6d84f392fc895c8a06b3b693 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:f690a7926d4d1793e3444aefd940484afd5d12be6d84f392fc895c8a06b3b693 in /root/buildinfo/      
# Wed, 09 Sep 2026 08:04:45 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:04:26Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:04:26Z" "architecture"="x86_64" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:04:26Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Wed, 09 Sep 2026 22:36:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:36:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:36:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:36:46 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:36:46 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 22:36:49 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 22:36:49 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:36:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:36:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:1abc6d29de37a94354a7ff1ac7ec241d10a16dabadf22aaa8ea915e748300f18`  
		Last Modified: Wed, 09 Sep 2026 09:16:41 GMT  
		Size: 34.9 MB (34908248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b94b77a7c1805db298474db598403d0f71671a4a5a4a71099bbdf50615d389d`  
		Last Modified: Wed, 09 Sep 2026 22:37:05 GMT  
		Size: 37.9 MB (37851185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549f7543e0d6077a2b37f179b80cd6cf7012a38e020809bc4f78a3a334e00500`  
		Last Modified: Wed, 09 Sep 2026 22:37:05 GMT  
		Size: 42.3 MB (42326383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b4f8c31ff49595004079ce11a72d8f96e41083d70e979ca6e7d0ad43589224`  
		Last Modified: Wed, 09 Sep 2026 22:37:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b17a1f4cbb80347133d24b56d6a05c68ba083c102d21430ddab8c309a656ca`  
		Last Modified: Wed, 09 Sep 2026 22:37:06 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:899a1a782e74262e3714e9335bc5448ace0fe7b97e588aeb037f51f0b20e3e52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508f0dd29a15e6e6f70c05d81d721772c608f0a0e718f0902071abf6ff4658a2`

```dockerfile
```

-	Layers:
	-	`sha256:14cce829c5e9a1585ee40c3b4d71c688a14ed75f81d38a7d25a4f2f574070380`  
		Last Modified: Wed, 09 Sep 2026 22:37:03 GMT  
		Size: 3.7 MB (3736870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b2e56fbd4b613a30b89f137f993a5b73152d91c647066e89b832b71c35feaf7`  
		Last Modified: Wed, 09 Sep 2026 22:37:02 GMT  
		Size: 19.5 KB (19511 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u502-b07-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:953e1d2ee516121750ed82c3dbde55e988e23266c38e8879771081d7344ce0e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112197758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdd03e1e2d6f73b9a543413cc5d26c2ee172d4850272235761224205e0cef5fa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:06:49 GMT
ENV container oci
# Wed, 09 Sep 2026 08:06:50 GMT
COPY dir:57d486e1a6b8b6e97fc97c129774bb79b4e36c15fecc3af363e179377116c60e in /      
# Wed, 09 Sep 2026 08:06:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:06:50 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:06:51 GMT
COPY dir:6ee5715f8cb3dbeb466566f7a46f579cfcaf91ec3ea74ce59c0412cc9823eb1e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:06:51 GMT
COPY dir:6ee5715f8cb3dbeb466566f7a46f579cfcaf91ec3ea74ce59c0412cc9823eb1e in /root/buildinfo/      
# Wed, 09 Sep 2026 08:06:51 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:06:27Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:06:27Z" "architecture"="aarch64" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:06:27Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Wed, 09 Sep 2026 22:36:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:36:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:36:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:36:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:36:39 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 22:36:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 22:36:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:36:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:36:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8fd75ffc9e9e12cc305a8d45a9be20f6f7f4be59d1a88a8ba04e45d5fe6b4e10`  
		Last Modified: Wed, 09 Sep 2026 09:16:40 GMT  
		Size: 33.1 MB (33117333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4836dea4f9b83929216bac0d39d80200524b8710e63b1fbc25508696c29343b3`  
		Last Modified: Wed, 09 Sep 2026 22:36:57 GMT  
		Size: 37.8 MB (37780802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1a93a06e2091932901a95d5328541b9266be742f4159778566b6f5b6f32d5a`  
		Last Modified: Wed, 09 Sep 2026 22:36:57 GMT  
		Size: 41.3 MB (41297023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9689073a497222429cddb228e197a5ad6afc0d4d5ef6dd14f07e26bd2228cf0e`  
		Last Modified: Wed, 09 Sep 2026 22:36:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64275d3f620f52c4093eb0281b626cc4d4e9379e5377c38434db9e0d39291aca`  
		Last Modified: Wed, 09 Sep 2026 22:36:55 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ca0098b9f3485ffdb575c3cadf49644e10e1d9b4c9717979270056d23dc6092c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080759f4ccabf9b87712fd09c43ab60ffb27302384ccca24fa8059fcf3459607`

```dockerfile
```

-	Layers:
	-	`sha256:f02f706b131bacdfa497c068536dc7ec2c05a27a9a2aa8432a8f1342dc065510`  
		Last Modified: Wed, 09 Sep 2026 22:36:56 GMT  
		Size: 3.7 MB (3736976 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02c17cc70f88658840f0c8a4e7ea816489ec481f8c455cd446fc03b62cfa01ce`  
		Last Modified: Wed, 09 Sep 2026 22:36:55 GMT  
		Size: 19.6 KB (19615 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u502-b07-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:54691949931a843de47a9e9859f837aa678a592943252177e55bc6021af509ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120449584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b1284e84e1696ba5cb70f408315b8dd77c4341287acb8f67a135a1ca7a7b7d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:06:39 GMT
ENV container oci
# Wed, 09 Sep 2026 08:06:40 GMT
COPY dir:0685b6397104b9765a1a0dd63be7b48ac903f486ac996e6e23bbb9b17d69003c in /      
# Wed, 09 Sep 2026 08:06:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:06:40 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:06:40 GMT
COPY dir:fac2abf7d1bd3e81b31254757fb843349b91fa6f1a92b7b768e949e6a469dae3 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:06:40 GMT
COPY dir:fac2abf7d1bd3e81b31254757fb843349b91fa6f1a92b7b768e949e6a469dae3 in /root/buildinfo/      
# Wed, 09 Sep 2026 08:06:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:06:18Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:06:18Z" "architecture"="ppc64le" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:06:18Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Wed, 09 Sep 2026 22:35:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:35:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:35:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:35:53 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:35:53 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 22:37:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 22:37:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:37:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:37:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:245a2e93cd72e73a8f90ed5ced2a97c07c6fd0958f8e2194fab3139abf47eb5f`  
		Last Modified: Wed, 09 Sep 2026 12:24:36 GMT  
		Size: 39.1 MB (39102809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10c8fc955d4331db7d08e6c6c4453b5eb830f6e137362380c3076b86f9d85b6`  
		Last Modified: Wed, 09 Sep 2026 22:36:57 GMT  
		Size: 39.6 MB (39600709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc2eecdad145ebde274684040688cf135297ee3e1bfea7072024e2d074d88ec`  
		Last Modified: Wed, 09 Sep 2026 22:37:59 GMT  
		Size: 41.7 MB (41743467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b53922b94260d04cbb3de597296526e91761c53d4ae2247e7ed2c82291db50b`  
		Last Modified: Wed, 09 Sep 2026 22:37:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e913d547f468eca36eaf0ca104f48cfca0ed561c895f8b206325aa125473d1`  
		Last Modified: Wed, 09 Sep 2026 22:37:31 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:38187ecc35e238a7499653bcefbfc2892d4040b69e0b3f923061d7004b98487b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9a79fa0f5e8fa754feb9c8e633a2b26e9eb75e8fb0441650b2a2f5fc6a857f`

```dockerfile
```

-	Layers:
	-	`sha256:39f2ed404cccab1c176a2460cd49d3ea10ae721fbf1c804f0448535ab3fd2f5b`  
		Last Modified: Wed, 09 Sep 2026 22:37:58 GMT  
		Size: 3.7 MB (3726307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6be99372d534bdfbe39f5d8feabcf088a77f4915fb5640497bf900e9f77089a9`  
		Last Modified: Wed, 09 Sep 2026 22:37:58 GMT  
		Size: 19.5 KB (19541 bytes)  
		MIME: application/vnd.in-toto+json
