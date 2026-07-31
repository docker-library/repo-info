## `eclipse-temurin:25-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:76b0acc643468684ee8d967795f0d6e1a195f166b1239c8223cff0ac74dfb2cd
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

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:450652e3bd820b7196deb860ffbd458e489dc6058299a1553e99593a302028c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165254060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20f98a02644c7580a9a4755d79ecbbe70032e4b5480d652dd18e19d8eb05bf41`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Fri, 31 Jul 2026 00:13:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 00:13:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:13:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 00:13:50 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:13:50 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Fri, 31 Jul 2026 00:13:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 31 Jul 2026 00:13:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 00:13:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:13:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 31 Jul 2026 00:13:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddfe294a9804613156d3672398df770ff04349398a4be9dea00a32464465ed11`  
		Last Modified: Wed, 29 Jul 2026 14:40:41 GMT  
		Size: 34.9 MB (34900220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22468ec75058a12df729e226367821079b7117befc3f1b048e36c5762a43d8c`  
		Last Modified: Fri, 31 Jul 2026 00:14:16 GMT  
		Size: 37.8 MB (37772072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36dbe546f42437ee681cbe4e2641027d1d9e15fbb253236c72384999bae98c85`  
		Last Modified: Fri, 31 Jul 2026 00:14:17 GMT  
		Size: 92.6 MB (92579347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad30dbc3b0fbf09a6c71f16e03e334a26ec816bdc16dd54052768dc4feb9b5e7`  
		Last Modified: Fri, 31 Jul 2026 00:14:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebcbd54000331b2a5bd790c4e5efa16a3ae82f26831ef1ed86d137b40f419c2f`  
		Last Modified: Fri, 31 Jul 2026 00:14:14 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1da0e36e9d4f23357904bafc73fe7fb80e4012f4427964d642931de6f732cac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3781086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb101fb4adc3d8aa3c3eb1bc8275837f7c907a742776e90c62669b4616b91b9`

```dockerfile
```

-	Layers:
	-	`sha256:29b29ef276c7ca1e938e20bcac4be32ed5bc43eda88372c1502b3e5e640fa352`  
		Last Modified: Fri, 31 Jul 2026 00:14:15 GMT  
		Size: 3.8 MB (3759797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d1dcb9b8ad3974bf536d6b941e80ea3532d505c1541eabbf31ca9eb937c210c`  
		Last Modified: Fri, 31 Jul 2026 00:14:14 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:74bfa08ed8ef15be86f3d079e192057f385bd557651dacf14ef03a530b0fc65f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162327086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a75324845ddd5276bc846b5525a13e687020887d8039c3f09d298a344c727e8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Fri, 31 Jul 2026 00:16:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 00:16:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:16:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 00:16:06 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:16:06 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Fri, 31 Jul 2026 00:16:48 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 31 Jul 2026 00:16:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 00:16:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:16:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 31 Jul 2026 00:16:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4993068ac9f96458b90955f8347fdb41bb56d5cdbecf98080b50a406705a5ad7`  
		Last Modified: Wed, 29 Jul 2026 14:40:40 GMT  
		Size: 33.1 MB (33059937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a906d4ed343a4a8b2fa2499867a6c37e0d1aabcaee389079e6c98e95756939de`  
		Last Modified: Fri, 31 Jul 2026 00:16:34 GMT  
		Size: 37.7 MB (37715841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2ebdaaca46caad42760e3aa4cbb727b6190a961e38609217673e7ff9629ca4`  
		Last Modified: Fri, 31 Jul 2026 00:17:08 GMT  
		Size: 91.5 MB (91548888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9a6666a29a62437930201f26f880858587d02a082c903a569e2c4fc52a75d71`  
		Last Modified: Fri, 31 Jul 2026 00:17:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03de44e0fdb9493d1ac50b50c2789eb35b5ec4078961b319659d22d09bf4355`  
		Last Modified: Fri, 31 Jul 2026 00:17:06 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c8e0aeed97bc04e51d09a5dad4c64ed3c322cb153dce2c3fdb730da467d83bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3780625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320e8921ab0676e9829f9992b736e82866142593bfda0604ee19b21da6ad6800`

```dockerfile
```

-	Layers:
	-	`sha256:98857c5ff295cb788855814aa1b17a6334470798b6e6759647c74840b0c753f7`  
		Last Modified: Fri, 31 Jul 2026 00:17:06 GMT  
		Size: 3.8 MB (3759220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2b7d9d78a71e43251d7fe93791f6668847a85494a74347dfcee5ea3cfc2d051`  
		Last Modified: Fri, 31 Jul 2026 00:17:06 GMT  
		Size: 21.4 KB (21405 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:30ec86518e202176492f9eb5962bdd27d7a63fd8ca7403655cab25ec3049fcf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170478560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5d3ba41081b3ba2a0854b465648cf1496236555541dd0f1bce6bbb808d331d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
ENV JAVA_VERSION=jdk-25.0.3+9
# Fri, 31 Jul 2026 02:18:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 31 Jul 2026 02:18:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 02:18:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 02:18:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 31 Jul 2026 02:18:45 GMT
CMD ["jshell"]
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
	-	`sha256:176d048049046b311be5b9714c9e93cfd20038fc7297f1501a8cbf435e2984de`  
		Last Modified: Fri, 31 Jul 2026 02:19:19 GMT  
		Size: 91.9 MB (91912885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3e59da162fc0d7d9c7fed5b0673a16bab04bf4e9081dbee58c440b8b9d60e`  
		Last Modified: Fri, 31 Jul 2026 02:19:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2abf2221054dc0787fdbf75e1b671aa150688d13819e9d56d858a70c865f504f`  
		Last Modified: Fri, 31 Jul 2026 02:19:17 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ea190c085ff71e7f05d902aad4c97c40cc699058ba425854b9cf4d875ec0971f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19929554eb182796f6539a45cf0631af8ab629d8c1d48a1d32bc7cbf47908b85`

```dockerfile
```

-	Layers:
	-	`sha256:5836a4ba9d39c7be64ce8d4f823686087de964ad586ef878e9a53a66f930acfc`  
		Last Modified: Fri, 31 Jul 2026 02:19:17 GMT  
		Size: 3.7 MB (3729941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6264d8954c556ddaa7a6e61f2073e5b372e6772e73c3de136b0265769b5011f3`  
		Last Modified: Fri, 31 Jul 2026 02:19:17 GMT  
		Size: 21.3 KB (21321 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:de04d77c89cc28cfa61bad3d32934571d241bdaba8505fd68780271b5b57e22f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161340422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f1e8f2c3357fe799f109ff6473cf87b9d627a0e5c7a743a97a551589e02fb2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
ENV JAVA_VERSION=jdk-25.0.3+9
# Fri, 31 Jul 2026 00:39:49 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 31 Jul 2026 00:39:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 00:39:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:39:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 31 Jul 2026 00:39:51 GMT
CMD ["jshell"]
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
	-	`sha256:272964d6cf957616e62281b2dde3b95614dd472af51e904df1105168addbab9b`  
		Last Modified: Fri, 31 Jul 2026 00:40:21 GMT  
		Size: 88.4 MB (88421669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a20270c3213e799292cf8def9e9d75ef820b7c5dc6d76089c0659e0db788fc`  
		Last Modified: Fri, 31 Jul 2026 00:40:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660e138db3412cbce3a0838ab1bdb875d5c27fc3aa2a038ba55572cf76ef766f`  
		Last Modified: Fri, 31 Jul 2026 00:40:19 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6924e8b655a11fd76ce54ff2a0d4f23de48a41335b9d452c8087a3111c6bacb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b46e0e839b994987404868d0c838347b1413e5f443f9c8e0d6cad863bd2161e`

```dockerfile
```

-	Layers:
	-	`sha256:30206f9900ad982797fb8ce830e4d2f1e3ed9602f0d1f42b542f2d9c20619891`  
		Last Modified: Fri, 31 Jul 2026 00:40:19 GMT  
		Size: 3.7 MB (3729949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d8877bbc8a5e1a3dbf8f9cfe40a118ca5b77be1ac8bfa8fe21bedf175760300`  
		Last Modified: Fri, 31 Jul 2026 00:40:19 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json
