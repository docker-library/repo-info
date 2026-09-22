## `eclipse-temurin:21-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:700eaf93d46835681e291bac5dc98e3bfd614e19bdda26e8e158d54c2feaa49f
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

### `eclipse-temurin:21-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:a3c36907fd77953f7324bc32d37e97c802bef498fda6d8971132053d91c1f2ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226504368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678f7c064070de2dde6477aa462b79b78d3d25e8b4e9ae802d9349140ae184e6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:53:59 GMT
ENV container oci
# Tue, 22 Sep 2026 10:53:59 GMT
COPY dir:14bfe291e51cfd3471e9b85d5e9d491fe06b3ecf4d74ad9ed060eeed665412ea in /      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:54:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /root/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:53:29Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:53:29Z" "architecture"="x86_64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:53:29Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:47:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:47:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:47:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:47:52 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:47:52 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Tue, 22 Sep 2026 18:48:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 22 Sep 2026 18:48:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:48:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:48:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 22 Sep 2026 18:48:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f54a0fb19efce07c95685474b80ea80c4eb2ed40ae83a65e0624d0d8543a9b7f`  
		Last Modified: Tue, 22 Sep 2026 11:51:29 GMT  
		Size: 40.7 MB (40734776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c45ef031bd6599d9a5db9deafb39eba64fc867fc7ad443fad1c0a715161a8fb1`  
		Last Modified: Tue, 22 Sep 2026 18:48:16 GMT  
		Size: 27.6 MB (27640665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c5e4468c19ffef1c21b1343ef516c328a483198ad2e7fb306f96a3dc10322f`  
		Last Modified: Tue, 22 Sep 2026 18:48:53 GMT  
		Size: 158.1 MB (158126329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c802f7ac17e3510a242c9e22e2569ba7a9e47d4bd9517f7c1be2c83edb25d5f7`  
		Last Modified: Tue, 22 Sep 2026 18:48:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f99ef1fa147ba9482821b44454ffc0cca2c406875b6cea89cf42113252e63f0`  
		Last Modified: Tue, 22 Sep 2026 18:48:39 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:118c74995abcd50b9a6d5cd676aab7de45977549b770cd32f5f78a0cb70a6e0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2518742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e0f8a240d7241892e4f43a7666f20b8703ab3ed838d54b362715a022bb17a0`

```dockerfile
```

-	Layers:
	-	`sha256:fcdc95bdc04fedf9509cc3cf75f40d17d7d8eca78913f8a650a66d51abd51e02`  
		Last Modified: Tue, 22 Sep 2026 18:48:49 GMT  
		Size: 2.5 MB (2497598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22e274d66774c39da237adc2b4d027c7813c02c074141efc492d38e2675d1670`  
		Last Modified: Tue, 22 Sep 2026 18:48:49 GMT  
		Size: 21.1 KB (21144 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:fbbc9f2eff21bd564cac055418035c5b8d47215920507d7becd8edd7316d6ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.3 MB (223289304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf1bf5dea7779aa879e78cbb25ce11a73210265677acf3b5d8d1c7c4040ad96`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:37 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:f1b1d9f069c6fd519132b1abb0a3eadbb548b4c2598519d645212ad8182e3e90 in /      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:38 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:39 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:55:15Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:55:15Z" "architecture"="aarch64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:55:15Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:46:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:46:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:46:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:46:08 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:46:08 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Tue, 22 Sep 2026 18:47:45 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 22 Sep 2026 18:47:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:47:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:47:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 22 Sep 2026 18:47:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dea0c826e8cdc58b1ff5a08680eb69ae64129bfee1b07b773c9c5e1d9ffb1e86`  
		Last Modified: Tue, 22 Sep 2026 11:49:08 GMT  
		Size: 38.8 MB (38803467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdcd75db409daefe5622c9ec9f6ec313fe15c5780f5fef7260352f46cd0c9910`  
		Last Modified: Tue, 22 Sep 2026 18:46:23 GMT  
		Size: 28.1 MB (28077455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541d0a77d5bdbcfc965a800944b90d8fc31215726509f309a780ef8bad4f540c`  
		Last Modified: Tue, 22 Sep 2026 18:48:06 GMT  
		Size: 156.4 MB (156405781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdc296e959bb7509d7182c97e4f697578014b25e0f7f3d692965fa5b1b9bc92`  
		Last Modified: Tue, 22 Sep 2026 18:48:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b44f2c6be7331a0361c15f581aacd53d6bbcf890d9b64bcfba259646558392`  
		Last Modified: Tue, 22 Sep 2026 18:48:03 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:59d889ec7bda05b8a725d24490b39eca01ef2e00795fb38da338717bc1c18d98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2516446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f142824c1b9ce191106b6d589269a37695b2dd7f8c24fa6c30c984a3a8b481e0`

```dockerfile
```

-	Layers:
	-	`sha256:8a2732f0176fd30ecac2d51e33dbb49c2713dd8bb8a02e757be2885edc1d0892`  
		Last Modified: Tue, 22 Sep 2026 18:48:03 GMT  
		Size: 2.5 MB (2495186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cd33683e58abe5ae6aec3899bd4a4e3290631e9e47977bfb5587fc81394869b`  
		Last Modified: Tue, 22 Sep 2026 18:48:03 GMT  
		Size: 21.3 KB (21260 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:f40c8ce27f013ccacc2c20dcdeb40875beafb2a58c6b7c2a425bc9b3a0bb8544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233467139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeef2fdeeeaf3b3cb2358c2c627c0f5ea9fbb97e3f01032b62dd3a23e70614ef`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:12 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:12 GMT
COPY dir:e4eb2c1671c9cf1f18e1acc99df1bdd89a609545254164422bc0f58d6e119a4e in /      
# Tue, 22 Sep 2026 10:55:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:12 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:12 GMT
COPY dir:2873fc57f881f500990993deeec8e7b40faee6af06ac82631fee3dfabf7d7ad5 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:12 GMT
COPY dir:2873fc57f881f500990993deeec8e7b40faee6af06ac82631fee3dfabf7d7ad5 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:13 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:54:50Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:54:50Z" "architecture"="ppc64le" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:54:50Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:44:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:44:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:44:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Tue, 22 Sep 2026 18:51:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 22 Sep 2026 18:51:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:51:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:51:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 22 Sep 2026 18:51:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4108cbe7aded7eca3bde90732e30405ccf46a54516e043a2af89a1be17eafd2c`  
		Last Modified: Tue, 22 Sep 2026 12:17:19 GMT  
		Size: 45.1 MB (45122832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0795e3a65708847d5bcf3d61080098eba5e49f58c02cdb68701041b0df5eaba`  
		Last Modified: Tue, 22 Sep 2026 18:45:08 GMT  
		Size: 30.1 MB (30060798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9deadfea11f31c5327bf16f89b816dcb0413bd87d88d9e665b443fa43605ed5d`  
		Last Modified: Tue, 22 Sep 2026 18:52:26 GMT  
		Size: 158.3 MB (158280910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe064427e2ab9691ae4fd7a4770f1d2fd7e27ef63b24fcba744026b5c49ef6a`  
		Last Modified: Tue, 22 Sep 2026 18:52:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b32d595a3fc6b99cc3142775bc1a4d781f8a034d650a91026cd08d4433f1a209`  
		Last Modified: Tue, 22 Sep 2026 18:52:22 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:765b0fc8caec31607b4a6592435f96163823f4fef5cdc0aedc53635219398fe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2515126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f58b30beabe3500294d78a79986356393eef19a99d23236f7d02dcebb283e59`

```dockerfile
```

-	Layers:
	-	`sha256:ff6b106eca4dbcf508d0ca5556f52beed7ed0348127faa71e1f6fa82b3b5b083`  
		Last Modified: Tue, 22 Sep 2026 18:52:23 GMT  
		Size: 2.5 MB (2493946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af966dd8cda2f7913b23d4bf9428d4a7fa31ad356a3e5c55a73e4fd588856c3b`  
		Last Modified: Tue, 22 Sep 2026 18:52:22 GMT  
		Size: 21.2 KB (21180 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:4a0e5017ac241b750bffb336c9bb974f5769cdbb6bd89300c1962917136eeca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.8 MB (213782636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e772d13f40e3e66c548f00d26297caaaa6bee8490f92d0345ac0141ce761e99`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 22 Sep 2026 11:01:56 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:01:56 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:01:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:01:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:01:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 11:01:57 GMT
ENV container oci
# Tue, 22 Sep 2026 11:01:58 GMT
COPY dir:5e5db29b133c9bb0e55b3ae64b8b62b14f967a8dc1bbef81350da62fd44b3fae in /      
# Tue, 22 Sep 2026 11:01:58 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:01:58 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:01:58 GMT
COPY dir:9e0fe23796361f041930ca9ebd2fa2d1d7f99df97c5f2fabb85b9c7d36a2b88e in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:01:59 GMT
COPY dir:9e0fe23796361f041930ca9ebd2fa2d1d7f99df97c5f2fabb85b9c7d36a2b88e in /root/buildinfo/      
# Tue, 22 Sep 2026 11:02:00 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:00:47Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T11:00:47Z" "architecture"="s390x" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T11:00:47Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:47:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:47:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:47:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:47:41 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:47:41 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Tue, 22 Sep 2026 18:49:34 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 22 Sep 2026 18:49:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:49:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cd0f92464f2cc33ea96f92a301f56613d6c2cd86307c532c3c8f805174507a71`  
		Last Modified: Tue, 22 Sep 2026 12:16:56 GMT  
		Size: 38.8 MB (38761576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f4659a5b663d144126bb4d7fea160523a48330d9384a1e144bec27843a7095`  
		Last Modified: Tue, 22 Sep 2026 18:48:50 GMT  
		Size: 27.7 MB (27672035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6974fc8e7fef5316c2e826c51c2ccd239956d2c7bb1e4a7f5d09d2a947bca1e`  
		Last Modified: Tue, 22 Sep 2026 18:50:29 GMT  
		Size: 147.3 MB (147346423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef5b636313d6a22aab859c81635cf573a5db988ab174fbec42c4d6a139033df`  
		Last Modified: Tue, 22 Sep 2026 18:50:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c916cc870188036c98c020c408ddc6287c48208cfbff5589d67a2676da6fba8`  
		Last Modified: Tue, 22 Sep 2026 18:50:22 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2035c75d51784ff6c31994ac7309b90d20217e05df3596e89e7880806e6d31be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2504351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08722eee36523adf6250f73f36c45e863df499a83bfa3694cabd80ab76b1675e`

```dockerfile
```

-	Layers:
	-	`sha256:5d6c5f0cb8ee086dba417f003e06474b5900f70fc423964df802fdce90793ba4`  
		Last Modified: Tue, 22 Sep 2026 18:50:22 GMT  
		Size: 2.5 MB (2483208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8a9abc1b5d35759c608ae4f9ec7d56052d9066ecc14635071ef8e7dd7be0629`  
		Last Modified: Tue, 22 Sep 2026 18:50:21 GMT  
		Size: 21.1 KB (21143 bytes)  
		MIME: application/vnd.in-toto+json
