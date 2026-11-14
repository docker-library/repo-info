## `eclipse-temurin:8-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:5e3a2fc926c13d5f5a6e2267443f026b34d0ffccfe3791503acfcb263e2ebbda
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:750453b251c4dadb1b92553a5736cf5bdf2d4ecaba63cd0c3d4956bd00cc35b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123533323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55dc6adffc2edcdafa7d3cc3dbd1f3074385a5f1973a2f92a2ebd15c525991d8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:10:03 GMT
ENV container oci
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:4925913982ee23b93a5459c6c94a48de8c0673c106763b3fd70dc3eefa0ce90f in /      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:10:04 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:10:05 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:09:34Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:09:34Z" "architecture"="x86_64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:09:34Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:46:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:46:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:46:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:46:22 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:46:22 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 13 Nov 2026 21:46:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 13 Nov 2026 21:46:26 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:46:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:46:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9911cbb9a6453becfd76fb6f1d54504bf2576ad3edeffde638ae2d367d8ef674`  
		Last Modified: Fri, 13 Nov 2026 21:46:40 GMT  
		Size: 27.7 MB (27652876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c4d660d1e9afd6ee776ee6af0b2a0caf1285d3a22333a797404d3956cfa1ba`  
		Last Modified: Fri, 13 Nov 2026 21:46:41 GMT  
		Size: 55.2 MB (55208416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a67a2bc9955ea8475873431ba627e6a569ded36a9c2c4a8c195487d271da6d4`  
		Last Modified: Fri, 13 Nov 2026 21:46:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa883ab02a52972fb4b51246592d49eca8833743a813ffce7b6bc3dfb675044`  
		Last Modified: Fri, 13 Nov 2026 21:46:39 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1a41eea2869a07a257be41e94544b169fd5c6a61e4a726443e4f1eeda51a095d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2618146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca111969a0e81c03a9d3bac61f32ef6dc51376b7669bea40a2e05bddf01f0d6`

```dockerfile
```

-	Layers:
	-	`sha256:fbcabc18851d3093956c56223e2f9a560a78610194dc3aaa79097b31871f1c1d`  
		Last Modified: Fri, 13 Nov 2026 21:46:39 GMT  
		Size: 2.6 MB (2598274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:464774dbfa526f8bd524dab73b33d0866a8502db6ee35f92b4b9dc03188e68f1`  
		Last Modified: Fri, 13 Nov 2026 21:46:39 GMT  
		Size: 19.9 KB (19872 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:03179a772d9cf87f1c9bb8385c676333ea31d6df4ba085ae0a8a45d58e16404e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121032293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f4e7b22ff2f96d54afb20fcd13ce92ab4243991bf9fb8bfacb40aad58291566`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:12:46 GMT
ENV container oci
# Thu, 12 Nov 2026 07:12:47 GMT
COPY dir:4d87526a7738e67f2849dec8cc7456d51f10cd8903f2b487983c9a8e8cf85454 in /      
# Thu, 12 Nov 2026 07:12:47 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:12:48 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:12:49 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:12:16Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:12:16Z" "architecture"="aarch64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:12:16Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:41:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:05 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:05 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 13 Nov 2026 21:41:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 13 Nov 2026 21:41:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:41:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:41:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d3fe075a76b1285aa041b2e11e27b50e9193a929b1d8a84c06e18764d60bddbc`  
		Last Modified: Thu, 12 Nov 2026 09:56:13 GMT  
		Size: 38.7 MB (38679109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c5258a84d51e529082f8d9af339c01f17a40992616eeebcf200cd0562abcb8`  
		Last Modified: Fri, 13 Nov 2026 21:41:24 GMT  
		Size: 28.1 MB (28079685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22edb2f3486f57414b039c901f94675736dd87ac34ae042b5cf4298102f41ccb`  
		Last Modified: Fri, 13 Nov 2026 21:41:25 GMT  
		Size: 54.3 MB (54270882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baf9357ed8b3b3d474e091c942faffb30599d27471cf406b6d398bb7c0223fb`  
		Last Modified: Fri, 13 Nov 2026 21:41:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24933955f1c02e542e3a4bca2545b0bba59f49bef720df9849c2b4252a5b311f`  
		Last Modified: Fri, 13 Nov 2026 21:41:24 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3d1b6211103eb2ec0d7ac1684ad5d9dd1be58b5415eacc5184527b52e5a6fba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2616551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2edfdca4ce80d91882bb6e953bed34847a6f48ca793f753b576bad2a973cb2e3`

```dockerfile
```

-	Layers:
	-	`sha256:5171bd6ffabc6ef8608551287ffd77d12cf7d6e4eaf8d550d9a591b0208b8e99`  
		Last Modified: Fri, 13 Nov 2026 21:41:22 GMT  
		Size: 2.6 MB (2596562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:858fe8fd88e9fa7f98c5ad7541f5435d9f57304ba42f53118c5f17ebc2be26b9`  
		Last Modified: Fri, 13 Nov 2026 21:41:22 GMT  
		Size: 20.0 KB (19989 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:5a519600fb91790a9098ad3e67644d2cc0451bc401fb9c709113be8f5f613555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127789023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6cc33f426d8d8c64cb231629c13975e8af508c574eef1617f74a9a9144c36d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 12 Nov 2026 07:12:01 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:01 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:12:01 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:12:01 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:12:01 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:12:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:12:02 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:12:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:12:02 GMT
ENV container oci
# Thu, 12 Nov 2026 07:12:03 GMT
COPY dir:2a49bf68a121b63c415fa592b90c1fb40bd61415db86f53aa421c5e33bf0ea9a in /      
# Thu, 12 Nov 2026 07:12:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:12:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:12:03 GMT
COPY dir:9788ad40f011299b830b58f7c769203089bfc88c53f81fc115bf5477f22dc862 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:12:03 GMT
COPY dir:9788ad40f011299b830b58f7c769203089bfc88c53f81fc115bf5477f22dc862 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:12:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:11:38Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:11:38Z" "architecture"="ppc64le" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:11:38Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:41:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:03 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 13 Nov 2026 21:41:11 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 13 Nov 2026 21:41:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:41:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:41:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4903de0b165f40a4c317a54e1ad667fea94fe3aaccbbdd962839abb30f0fddf`  
		Last Modified: Thu, 12 Nov 2026 12:14:31 GMT  
		Size: 45.0 MB (45022348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc83e2b52f859bf93c5a0bc4e51f2819eb480cbad4ab2e80e4158c4d7d5e5121`  
		Last Modified: Fri, 13 Nov 2026 21:41:41 GMT  
		Size: 30.1 MB (30074379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb0e39dd8a65dc29faffcbdf7bc9bef1117f3768bfbd9dba78f7fe2def57456`  
		Last Modified: Fri, 13 Nov 2026 21:41:42 GMT  
		Size: 52.7 MB (52689676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fec2c045671d0b9fa507934aa12ed4985df0e50c8e76b9be5716dab8379ccc4`  
		Last Modified: Fri, 13 Nov 2026 21:41:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77968d0d02c2f6d9c8c0c8c869421bda00029e0df11cddf2d584431a7aad1902`  
		Last Modified: Fri, 13 Nov 2026 21:41:40 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1ae77fe34cc5ea57fdaaed7ec420494b4ef07e8d751e663ccca1b2290dbb474b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2615126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be6f93bb9f59925c75c8f990128d9e68f40f17e381629b0101e2acc2874f528d`

```dockerfile
```

-	Layers:
	-	`sha256:3bd5d1ac6fc60e030e0daaab28669adbadc9fb6b6d0ca063c6ee004d5181ec23`  
		Last Modified: Fri, 13 Nov 2026 21:41:39 GMT  
		Size: 2.6 MB (2595217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2a681c8b5d2f3448843c43d8ef90137ca6e10bf5ccff5f7ca9755d55dc8c3e5`  
		Last Modified: Fri, 13 Nov 2026 21:41:39 GMT  
		Size: 19.9 KB (19909 bytes)  
		MIME: application/vnd.in-toto+json
