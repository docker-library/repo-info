## `eclipse-temurin:8u504-b01-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:d2435e0a9b2da631b7696096e3fff2a82b1b75ba9eb3cd548fe774e6dc58fea9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:30ebd54a57498aeea3c1ba0a88bd9f6f70a65623c989442157c5859609637a75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115138838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f513ba9a0db791c2c242c11c8a8ead51b8dd7432dec6539e7db0b9a749a0f110`
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
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 00:34:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:34:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:34:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:34:13 GMT
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
	-	`sha256:4959a00a1b82328f11de89ebc74be491963c4a3d4a39b3f51acbfce7a185b83b`  
		Last Modified: Tue, 13 Oct 2026 00:34:28 GMT  
		Size: 42.3 MB (42328505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68fb6733953d07525f40b986fe7430db1e7e9313ed3ee26d77c8bbec0468339`  
		Last Modified: Tue, 13 Oct 2026 00:34:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74320ea9ddc1f069bb3cef7b3ecce26cc288f950d6da740e80559008cd80da90`  
		Last Modified: Tue, 13 Oct 2026 00:34:27 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:018dd7aa2b0ebd0a2845131e009f7d8cae4987f28864b048601b992a749964b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21fc1b1291faa8db17ba7d33b0986cec099a49756c0adc1d2bb7332c186aba8d`

```dockerfile
```

-	Layers:
	-	`sha256:672174e86604b5c2b8e448f1c932b72f55b29bedb9bc9d99f465715959596e6e`  
		Last Modified: Tue, 13 Oct 2026 00:34:26 GMT  
		Size: 3.7 MB (3736896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7506a66c4314c401f06ffcdd92519615392a6d711eaef272aa16490785b11ecb`  
		Last Modified: Tue, 13 Oct 2026 00:34:25 GMT  
		Size: 19.5 KB (19511 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:1cff19298a3b4c3373dd7cf329d5f5ae124c48e3204511f429cff58406ed05b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112266318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039547dbbac45d36a55d5b9f397c45cc7d19583a9ad97949b99f8f8b0ddd66d5`
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
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 00:32:44 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:32:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:32:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:32:45 GMT
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
	-	`sha256:2216b4874d270925e7481446abfbd32c22a947db50ab40698a2f856211987057`  
		Last Modified: Tue, 13 Oct 2026 00:32:59 GMT  
		Size: 41.3 MB (41293046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb0d9b8fe44f47b660f8859efeb52a8c3b7632fea44c989a244d3a06160f55a`  
		Last Modified: Tue, 13 Oct 2026 00:32:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb195dc5437046d3e507b30e0095a1d7252b43fe18d00b6205e7b8c64be019ad`  
		Last Modified: Tue, 13 Oct 2026 00:32:57 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:95d1280707b1cc050c1ddfd687ac8995d6eb05d48aca941a5411d07cd71a8cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e6cd61af2a36f50882910d60580dd8082ddc5c7065a40d6c87d77b2686a4eb`

```dockerfile
```

-	Layers:
	-	`sha256:864eafe50c69ea89738a91d786891a6c49fe781b31ca91ee8a6c21da0a4de810`  
		Last Modified: Tue, 13 Oct 2026 00:32:57 GMT  
		Size: 3.7 MB (3737002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c942f8a4ab9002473dcb106cb46dd4ff06bcc78f9556999628e57ff0531ab6ab`  
		Last Modified: Tue, 13 Oct 2026 00:32:57 GMT  
		Size: 19.6 KB (19615 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:c96beb6110b8a379b0b45165b0640668dc0e8e7cc36192323d6c906e26ecf8f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120510018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b6ef116b386ba5939bfaeb8501e2443ecd7bd119101e49a849ef0aa1c39e3a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 06:07:16 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:07:16 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:07:17 GMT
ENV container oci
# Mon, 12 Oct 2026 06:07:18 GMT
COPY dir:6692fc3e66bbf0913b2d152014d3b0e34bbd923bc55d13e178d365aac806e220 in /      
# Mon, 12 Oct 2026 06:07:18 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:07:18 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:07:18 GMT
COPY dir:39461ef2f88a895d3655798d126e96b7b231101a07bff7389995c2e8e741ee23 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:07:19 GMT
COPY dir:39461ef2f88a895d3655798d126e96b7b231101a07bff7389995c2e8e741ee23 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:07:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:06:54Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:06:54Z" "architecture"="ppc64le" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:06:54Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 02:14:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 02:14:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 02:14:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 02:14:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 02:14:02 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 02:15:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 02:15:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 02:15:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 02:15:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a05cfbffa86171447875ba9950514b237a53b4f2fba7ac663609dcb504587364`  
		Last Modified: Mon, 12 Oct 2026 11:37:08 GMT  
		Size: 39.1 MB (39115195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6af5f3f2e6337c522ced566c86f9580c3d36ea3228b09072ff572272d3010e`  
		Last Modified: Tue, 13 Oct 2026 02:14:54 GMT  
		Size: 39.7 MB (39654589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f19f8a9af040cbb4141786b12f03e28c1ae16dcb879b087e39288b1ad75c41e0`  
		Last Modified: Tue, 13 Oct 2026 02:15:46 GMT  
		Size: 41.7 MB (41737634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235cbc78b4cfce376c4a89ec5a396e83a72d1856516b681ae0636c35a608c845`  
		Last Modified: Tue, 13 Oct 2026 02:15:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fd7d144240596d797810318f5c98d1689cb9945d1fd8e67ea4600d1fac3f52`  
		Last Modified: Tue, 13 Oct 2026 02:15:45 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0f33085251d22b01a7fd2d2dabb1e169691180b7867e32f22a862622b77cc9cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5f9a7c54f4644a63bffd1202e15928e3f8b9b6147086aff4485e133d28c84a`

```dockerfile
```

-	Layers:
	-	`sha256:e8f1d642003adb69370bb1d71aff129e745aab586fcbd05f2f05f1cf254a1da2`  
		Last Modified: Tue, 13 Oct 2026 02:15:45 GMT  
		Size: 3.7 MB (3726333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea99a68fa97b3e4dbc47c626535a4f95aa89e93d0e2105acc49174afc84d4f9a`  
		Last Modified: Tue, 13 Oct 2026 02:15:45 GMT  
		Size: 19.5 KB (19541 bytes)  
		MIME: application/vnd.in-toto+json
