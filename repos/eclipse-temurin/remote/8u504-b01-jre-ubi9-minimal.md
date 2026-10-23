## `eclipse-temurin:8u504-b01-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:7ff313077333f251be4123d791b0a2c0e579fb5a196a59d78f26b24dae8a37ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:69800d36929d107b698b7f45a3ddd9fdff134b80dd750a3d874cdb51d9c8ec8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110575214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e68a694a9c532d43ea884ca35ae8c3531056d575e14742a41111f5bd14d24ba`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:55:55 GMT
ENV container oci
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:2fc4551098c6ebd5c0304b2f61efdc67d6aebcbff8032750054f600bbeec82fc in /      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:55:56 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /root/buildinfo/      
# Fri, 23 Oct 2026 07:55:57 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:55:29Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:55:29Z" "architecture"="x86_64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:55:29Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:49:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:49:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:49:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:49:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:49:32 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 23 Oct 2026 16:49:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 16:49:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:49:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:49:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:74b09d47403b6e0522a8cc3fd6a898259e54bbaae0be6c397399bd41ee27d9c1`  
		Last Modified: Fri, 23 Oct 2026 09:52:32 GMT  
		Size: 40.6 MB (40609256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac3b8b92c59767a42c0eb9f8e2b72716367632ca79d8c5978764e3465f825b1`  
		Last Modified: Fri, 23 Oct 2026 16:49:48 GMT  
		Size: 27.6 MB (27634899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44bd9f457bbe7549ac038cd4f1562add243b8df0b185ef29616bda684d5c1537`  
		Last Modified: Fri, 23 Oct 2026 16:49:49 GMT  
		Size: 42.3 MB (42328464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dac5806401fbae26985c69b111e8dd95f561746b747f2a74e758bae57088b7c`  
		Last Modified: Fri, 23 Oct 2026 16:49:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a1bf6c70cce55ebae6eadd5794f0f6e6d79e3877464163d101b5e59708f874`  
		Last Modified: Fri, 23 Oct 2026 16:49:48 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f543038ae12aa7fd1451604e1cb35ff9d7688178a0f1c245b2d2169deb7506d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2440940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da10259e6bbff0ea578b24ab114c2b027c4b8691da64a0e1405cf0949f95e8b`

```dockerfile
```

-	Layers:
	-	`sha256:2a25b546f23f053697f9d7d47bbda01e42becde41e5c7b05c0d774eda0f66ccb`  
		Last Modified: Fri, 23 Oct 2026 16:49:47 GMT  
		Size: 2.4 MB (2421593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d14fd7c869b02d4e0e0f06b613c601a60321c5eff5a36700c2895564583676c`  
		Last Modified: Fri, 23 Oct 2026 16:49:46 GMT  
		Size: 19.3 KB (19347 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:3a5c76dbd497ef108a36e1b9f9432369115f392a11864f6a91ec9c7fb4251806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108079671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9123727ebc03bf495f8a62308a7183dc19b09502275caacad0a4c8a6d2c13bc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:17 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:18 GMT
COPY dir:5dfa310507da27398f8076c2456ffd2197b043828a75f962db7044d875161543 in /      
# Fri, 23 Oct 2026 07:58:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:18 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:45Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:45Z" "architecture"="aarch64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:45Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:50:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:50:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:50:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:50:11 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:50:11 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 23 Oct 2026 16:50:15 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 16:50:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:50:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:50:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6cb90586f16ba5f631bc69ed4b10258b9b651fbb54718f47b878a4abd17252cb`  
		Last Modified: Fri, 23 Oct 2026 09:53:00 GMT  
		Size: 38.7 MB (38714705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61602e9bb36e10a3673e5157de0a32aece4d3b8f7939b2764e19f9ac6f05df1`  
		Last Modified: Fri, 23 Oct 2026 16:50:28 GMT  
		Size: 28.1 MB (28069364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08fe0fd90c1f45f240e9953288300658d9e9237e772842292f96f73dccaa4fa`  
		Last Modified: Fri, 23 Oct 2026 16:50:28 GMT  
		Size: 41.3 MB (41293006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd555ebce9a0ecf93c91f78073c07716a71bc1aff5ea917c05148bf3c44a45a8`  
		Last Modified: Fri, 23 Oct 2026 16:50:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14be8d31479f0b3e9b046252e89495342c1a32766efcae20ff66546e546ca4f3`  
		Last Modified: Fri, 23 Oct 2026 16:50:27 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:408fa5c9d22cb0158c949eca536ed5262252e721953ac32614c05f42f86488f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2439312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4076d5ff23392f20cfdaf7c33444e2d9f6209889b4d85087df9b90dbe1e7c64`

```dockerfile
```

-	Layers:
	-	`sha256:27d3074280873d1b164128ebe4a3f4e84d6b6b890331d2c948176cc4e7e5e005`  
		Last Modified: Fri, 23 Oct 2026 16:50:26 GMT  
		Size: 2.4 MB (2419861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd70cb7c3adfc2df0d901bc1fa3db2ebce907d3490010371b7f26623a444bfe4`  
		Last Modified: Fri, 23 Oct 2026 16:50:26 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:319953e4be0f5f583088aa55f4596195f9b2871775bcee45e448021cf2227ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116852624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52f27261adfdfb976f54bef9cf5033a1e1a0abf19dc4cdcdcf038dd046759c7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:18 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:20 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:20 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:22 GMT
COPY dir:be29e417dbef72628a967183b8b7ae7e922e6bdd49b1170f0357574ceddc0063 in /      
# Fri, 23 Oct 2026 07:58:23 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:23 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:24 GMT
COPY dir:f6840b105933cf6e1dea85d65fe324fc36d97841d50c0cc737f9d0bd85087e6e in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:24 GMT
COPY dir:f6840b105933cf6e1dea85d65fe324fc36d97841d50c0cc737f9d0bd85087e6e in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:25 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:24Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:24Z" "architecture"="ppc64le" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:24Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 17:28:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 17:28:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 17:28:04 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 23 Oct 2026 17:29:48 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 17:29:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 17:29:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 17:29:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8600d58bbb8bb01636d59485bcdcbec2b5f7bed900f808d2f3873025a1c10f51`  
		Last Modified: Fri, 23 Oct 2026 12:17:14 GMT  
		Size: 45.1 MB (45056999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52173a77234d725955af0360e83880a1f64675cf3b0d0ef520415a9ac8a3b48`  
		Last Modified: Fri, 23 Oct 2026 17:28:53 GMT  
		Size: 30.1 MB (30055408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8373c2f41d3d32ce814c34c7a49756944d93c4d250c40ed74421190dd632eb`  
		Last Modified: Fri, 23 Oct 2026 17:30:33 GMT  
		Size: 41.7 MB (41737618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1324f18f123fb8bfe6ad4c1fbee54697b6452dd413555bde57c312da6caaa98`  
		Last Modified: Fri, 23 Oct 2026 17:30:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c0e1c7f01d1e570855f7ab54a97d56f09e793da5f532b14b9f88ebd04c3056`  
		Last Modified: Fri, 23 Oct 2026 17:30:32 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8f0a6f6fbfab13d197a4a0e03c8917dcf0b2ba797f44486f63a681acdb242a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2439922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4999c6bd8112f9bdd720a9e86f76d52598e265cb3882a7dbcc81e7e9a192f4fc`

```dockerfile
```

-	Layers:
	-	`sha256:743428b84e119deb3cf08fc86d1660224be499ee920f6703156442acb7b6c4d4`  
		Last Modified: Fri, 23 Oct 2026 17:30:32 GMT  
		Size: 2.4 MB (2420546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b970a2d6b671ceef067d6fff6a60f67ca14c8a942e8e9f93873aa0c2fce733a`  
		Last Modified: Fri, 23 Oct 2026 17:30:32 GMT  
		Size: 19.4 KB (19376 bytes)  
		MIME: application/vnd.in-toto+json
