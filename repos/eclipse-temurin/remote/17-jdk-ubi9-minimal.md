## `eclipse-temurin:17-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:dec88ca81f58dd9aee74cd7befe093db13375692a55a42fa90359a52117e9602
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

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:257a3855fe492e51bdf0d8389b56bf526f78864da01839cec7dc3a163731b1c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214209465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8584d0da99c7487c9889b4edb5451613c7c922c03de2d16c6a5312662ea4ce1e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:49 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:50 GMT
COPY dir:e45266e494b9752d347f82bff660e367c92279dd3110ea5b3aba7f7174fdf656 in /      
# Mon, 12 Oct 2026 12:37:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:50 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:05Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:05Z" "architecture"="x86_64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:05Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:34:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:34:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:34:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:34:53 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:34:53 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 00:35:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 00:35:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:35:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:35:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 00:35:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c8fb2f748d0518200c41845a3bbb526397078028e42feaddaf7208534fc575b4`  
		Last Modified: Mon, 12 Oct 2026 14:31:54 GMT  
		Size: 40.7 MB (40731722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e2e9450b10010184273997814271f9aebd5ace4a1c74eed6f3f664ccc2bac9`  
		Last Modified: Tue, 13 Oct 2026 00:35:18 GMT  
		Size: 27.6 MB (27642479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef3b8b7c72927223ad4038840e49f016ec4a99cd89780e54c611034c8af8f75`  
		Last Modified: Tue, 13 Oct 2026 00:35:21 GMT  
		Size: 145.8 MB (145832661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77036ac26dbe4d2bf6c2a174258ebc5e2a6096e639e1da5b27f1a7cbe814695e`  
		Last Modified: Tue, 13 Oct 2026 00:35:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a1a565f593fe545af58d3ddd9971040978ea54e8796bbff8a1a7d850f1e807`  
		Last Modified: Tue, 13 Oct 2026 00:35:17 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5a77618c7745dd96ff1664546bc378cd1ff58ef2c2d875d4a4f6c299b3879c15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2516962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc8f4f095e23b636dad2e54c2af32bd8f2a8d46c5afc407a4aadd88884ee7bce`

```dockerfile
```

-	Layers:
	-	`sha256:24cdca6605b7f705c19576df667b0d7cd4f43586db96d8fa530a18345eebae65`  
		Last Modified: Tue, 13 Oct 2026 00:35:17 GMT  
		Size: 2.5 MB (2495770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:634b061b7d3f592f593bf39f58ad58acbffd3b96712d585915f3bcca46779913`  
		Last Modified: Tue, 13 Oct 2026 00:35:17 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:fd5ac1325ba08850d249ac1d833f8cba3edb8b37cc7d2515aff30374ec1b56a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211532972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fbdce0cf75fdd8e11aa4caedda6d19a709a78d011911454706b8ffae7ed6013`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:20 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:21 GMT
COPY dir:123af182f2411d6301e92c5816a09ad572a38ac45c6a006a2a67fe12bba24337 in /      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:22 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:49Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:49Z" "architecture"="aarch64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:49Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:33:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:33:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:33:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:33:05 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:33:05 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 00:33:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 00:33:14 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:33:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:33:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 00:33:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e9b14607c5b59da407fa1d8ceb91765c821f6a3e5637af082c822b0741fd9481`  
		Last Modified: Mon, 12 Oct 2026 14:30:43 GMT  
		Size: 38.8 MB (38798784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a142df687e163a40fdcd8634130531f2fb4b52bba66aa6ea2fd420d2a21c732c`  
		Last Modified: Tue, 13 Oct 2026 00:33:31 GMT  
		Size: 28.1 MB (28079611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e66774e7e732aecfb6edf514b575739ed241165e46f3fc436708c2cee58b4ab`  
		Last Modified: Tue, 13 Oct 2026 00:33:33 GMT  
		Size: 144.7 MB (144651978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cf990557e6ae997f643a2354d878a22aa85918b311046b245ab647bfa9a521`  
		Last Modified: Tue, 13 Oct 2026 00:33:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d1ca7644fd3443faf4e82c9077fc9e5dbf3247cba498f7417061afb5c55346`  
		Last Modified: Tue, 13 Oct 2026 00:33:30 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5f766990cc1a69426e0cbfb5273ad0c4411be18e891f21e7ad70c20669f503cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2514665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161027d38f1abbd0fce5f2b82af5ab959d720a475d3522cdd9f9f196fb0d407b`

```dockerfile
```

-	Layers:
	-	`sha256:b97e34aa90d487c322b76ca58ba634b6663809a6bd500ceaf2745e2cbad8f567`  
		Last Modified: Tue, 13 Oct 2026 00:33:30 GMT  
		Size: 2.5 MB (2493358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:749d9f968c6adcbccb29054e4d56130317fc4f5bd752cd883f21fd19ddfec6c7`  
		Last Modified: Tue, 13 Oct 2026 00:33:30 GMT  
		Size: 21.3 KB (21307 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:25ead31b373a662ff1b0e485d589d99a0222d36ba3381a06fc231c4b582a7e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.9 MB (220899979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4091a388ae12f29a9aad0b0fbef010607a1c43b3ff7709c1a55a67b01f32107e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 12:38:57 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:38:57 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:38:58 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:38:59 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:38:59 GMT
ENV container oci
# Mon, 12 Oct 2026 12:39:01 GMT
COPY dir:f91604359155bae65c51b513080a57d72f422ee80611bdd6488bd7bae5486c33 in /      
# Mon, 12 Oct 2026 12:39:02 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:39:02 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:39:03 GMT
COPY dir:f95f3b4bd2e8cd2721797fe0d1fe50e97212c524c13d0340ec33dc5e4cb48672 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:39:04 GMT
COPY dir:f95f3b4bd2e8cd2721797fe0d1fe50e97212c524c13d0340ec33dc5e4cb48672 in /root/buildinfo/      
# Mon, 12 Oct 2026 12:39:04 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:38:02Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:38:02Z" "architecture"="ppc64le" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:38:02Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 02:13:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 02:13:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 02:13:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 02:13:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 02:13:40 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 02:18:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 02:18:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 02:18:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 02:18:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 02:18:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f313650b4a6b13fa960049c43fe994b1813f0d0c5fb7bf8945cc3c5b76480503`  
		Last Modified: Mon, 12 Oct 2026 18:22:07 GMT  
		Size: 45.1 MB (45145374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba59775918b17142006cef3946ac77daa9dbb710db62825fa66f8ea07299e873`  
		Last Modified: Tue, 13 Oct 2026 02:14:46 GMT  
		Size: 30.1 MB (30064522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed36792c2faab481816d8be5974b6e76733ff8dd1d817ee7d39ad2a250a641b`  
		Last Modified: Tue, 13 Oct 2026 02:19:26 GMT  
		Size: 145.7 MB (145687481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f465c4d6a487c8a13f6e081b526993c01d762f285404e47c7e691b5598828261`  
		Last Modified: Tue, 13 Oct 2026 02:19:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabd3a15b5e3baba90cda82b22135abf6ad6afdd5d081fb8e9f0c3f5200c8370`  
		Last Modified: Tue, 13 Oct 2026 02:19:23 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b2d41c99585e69e7840519476c67348e6c513f92127180a5b6b9ea293e6985af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2513346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeda5d0c2ddf74a71b29f5b5ef6bd174528dc58b0c84fb2d7436013b4c3e51d1`

```dockerfile
```

-	Layers:
	-	`sha256:2f2ad13a3aff92da8ee18a4762843bb009ff2cd818e7b822fe75dbfb9c9aa7d3`  
		Last Modified: Tue, 13 Oct 2026 02:19:23 GMT  
		Size: 2.5 MB (2492118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a34ff1e29022912b3b554850f9c947412ac8bbb696f495ff05d790ded546eb0e`  
		Last Modified: Tue, 13 Oct 2026 02:19:22 GMT  
		Size: 21.2 KB (21228 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:2ac00ed24a8fb163e00dea9553fd2096f5dddabcb8c1c395f5820a2bef484b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 MB (202286635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2d32c28840f2f05ada6253379a86acc819ca81c8519ec81a1536ac2c098442`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:42:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:42:07 GMT
ENV container oci
# Mon, 12 Oct 2026 12:42:08 GMT
COPY dir:6f1116765a73e636b531aceee59b3afd2387bf60f4811b2155738722ff24b367 in /      
# Mon, 12 Oct 2026 12:42:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:42:09 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:42:09 GMT
COPY dir:9b4d4567e3bd8bcb6d3d24e04abeaa33d97946ff2aad0228ba02dfd302751a7a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:42:09 GMT
COPY dir:9b4d4567e3bd8bcb6d3d24e04abeaa33d97946ff2aad0228ba02dfd302751a7a in /root/buildinfo/      
# Mon, 12 Oct 2026 12:42:10 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:41:16Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:41:16Z" "architecture"="s390x" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:41:16Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:31:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:31:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:31:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:31:48 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:31:48 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 00:32:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 00:32:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:32:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:32:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 00:32:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6232659d65a3a453185f4ad06e0c75a5f43379de64cd56fa58b7919476e12135`  
		Last Modified: Mon, 12 Oct 2026 15:10:01 GMT  
		Size: 38.7 MB (38734529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b766dfc2887d8e42af021e7765060d92245db1049ba5caa7e8eff94d1f0c6b1b`  
		Last Modified: Tue, 13 Oct 2026 00:32:18 GMT  
		Size: 27.7 MB (27670694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566e6242103a329fd61b1fab4c23777c20e0402863839208a1d4a467873f4128`  
		Last Modified: Tue, 13 Oct 2026 00:33:01 GMT  
		Size: 135.9 MB (135878812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b0022bd6701a463475a608680ccd19094848e5c0b000eec8d5efe3a014d51e`  
		Last Modified: Tue, 13 Oct 2026 00:32:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8875c9a761d9a4f4f7afaccad81de9a9081c446d8cfc9fd99f9d47a43f071758`  
		Last Modified: Tue, 13 Oct 2026 00:32:58 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ac55eb315b9ea031005a3b0047e6d793d12826ebfa921c366ccd7cf021ef9703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2502572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cacbdb46e0bb0b96e5633076ed0b8af121da848bf56b03a1e61944f58a072baa`

```dockerfile
```

-	Layers:
	-	`sha256:0f2dd2445941fb28c90e29ab7e4e93ef168113d0ad0d20e16dff28c9fe6af4cd`  
		Last Modified: Tue, 13 Oct 2026 00:32:58 GMT  
		Size: 2.5 MB (2481380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62e90e45c32f01bdcb7ca5d7eb17c77f54d2685c5a54b72843d2f80733453f31`  
		Last Modified: Tue, 13 Oct 2026 00:32:58 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.in-toto+json
