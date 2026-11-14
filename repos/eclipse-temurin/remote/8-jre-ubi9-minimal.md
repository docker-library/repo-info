## `eclipse-temurin:8-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:585680d2f3edbea817df486c970a6c261fa489d7c9b37eea6ba180686fe5c6ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:be47023436928559275313d12e017aaa66a95a6902115ac9012718a332c7ea5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110673260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877dfdb615c308db2c880751c77cd966797943ea9e864ac3337f33781b6e8b05`
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
# Fri, 13 Nov 2026 21:45:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:45:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:45:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:45:48 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:45:48 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 13 Nov 2026 21:45:51 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:45:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:45:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:45:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11eb56acbaaa08d1ebef4d4e4338dbdc790d9cbee53c0d908c91ae7aac45215a`  
		Last Modified: Fri, 13 Nov 2026 21:46:03 GMT  
		Size: 27.7 MB (27652793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24980462191c82f6958e032af97063874230b47070604b3f5f41853c253793a3`  
		Last Modified: Fri, 13 Nov 2026 21:46:03 GMT  
		Size: 42.3 MB (42348455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40676aaffc8d1b1d9447eb972ef443ba0356571374f4d871b71ac29bbb71c13c`  
		Last Modified: Fri, 13 Nov 2026 21:46:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63bd5a9f9cc0cc29d5d7586a1d7f2dab2ecac544681eb1460136fc8c8c031f3a`  
		Last Modified: Fri, 13 Nov 2026 21:46:02 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6234f24b7388e0f01e2fab3bf2682a27005a5fde9ca295b0e0730d6d77a957f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2441634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3104bf36e450b33c75756b3e08296a6224ea1cd67187e4f917703b913c4c9836`

```dockerfile
```

-	Layers:
	-	`sha256:484983aee8c942596f79bb1e1f37b7acae3a3358726d1a18471dc967acb5f82d`  
		Last Modified: Fri, 13 Nov 2026 21:46:02 GMT  
		Size: 2.4 MB (2422288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56627afc777432da6ba817f25667048a64bc9a96fbfc936a2d1a66670d1610c0`  
		Last Modified: Fri, 13 Nov 2026 21:46:02 GMT  
		Size: 19.3 KB (19346 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:458c6d3358fb45dd9a56bdb82a4ad619161428b170a31a43fdd5643019fb71d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108070533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50ce25da68fd6862a59a31982d2e0b268064d9f24934b4cef499e8144aa768e`
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
# Fri, 13 Nov 2026 21:41:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:55 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:55 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 13 Nov 2026 21:41:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:41:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:41:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:41:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d3fe075a76b1285aa041b2e11e27b50e9193a929b1d8a84c06e18764d60bddbc`  
		Last Modified: Thu, 12 Nov 2026 09:56:13 GMT  
		Size: 38.7 MB (38679109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f23e10b682233f5ab9a1e1baf6c0dc75f9d9e819df68b1a450cf4c91e3010e`  
		Last Modified: Fri, 13 Nov 2026 21:42:11 GMT  
		Size: 28.1 MB (28079698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8774c5ca0b3d6d142d512b1e184c1ae8451ab4d6606e9f40a5d87309f988bd`  
		Last Modified: Fri, 13 Nov 2026 21:42:11 GMT  
		Size: 41.3 MB (41309131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310b98473f7b4c58c075f1f63227fe2f57a319df3b20af19178ecafa69bfd5db`  
		Last Modified: Fri, 13 Nov 2026 21:42:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a7af85b6c3187d2930fd6f7025103b8b46e5d25a47eccfd69b7f68499d4aa8`  
		Last Modified: Fri, 13 Nov 2026 21:42:10 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4788f0167e04aa6cce8aa6e37626526f8bc0038e24e21d59bacd004c07fc4d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2440007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d77f6dcb238fbac0a24765d6d4ce0bcd829521bd3efe457ccd454c135a7f3f58`

```dockerfile
```

-	Layers:
	-	`sha256:2969b23ae38d1f211c132c886fc74f73ed675d527abcde849d2368822931bf8d`  
		Last Modified: Fri, 13 Nov 2026 21:42:10 GMT  
		Size: 2.4 MB (2420556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38e2d5182eb98db9a8a377520d15406b494127c0f0787fe73b4526f8984e16fa`  
		Last Modified: Fri, 13 Nov 2026 21:42:10 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:b225b997b038797040973763d8c3a50feb2eea8f780db4e258180b29cab37cd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116859677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2b0e3c8576fcfbfaa065a6a8c04d0573aae828e74d630d9235bf19d7d78744`
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
# Fri, 13 Nov 2026 21:42:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:42:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:42:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:42:14 GMT
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
	-	`sha256:2454028880ebc6f43b2eaf8177777e2326535be3bf1ba6ebbeae55f8275010f2`  
		Last Modified: Fri, 13 Nov 2026 21:42:45 GMT  
		Size: 41.8 MB (41760353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2158fedd72dc40203e737e82d05f538968e714ef27400f2deb0dcdcfdd49ec`  
		Last Modified: Fri, 13 Nov 2026 21:42:44 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30f5e68a1c0a538f86472e5681477fd111be8a97992e6b60e414ae6d934d55af`  
		Last Modified: Fri, 13 Nov 2026 21:42:44 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d8940a09ad7d4bedbbdcd36de9b23b857a2387bba09d33880746e07ea607ff15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2440618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ffe5b7115e89ea42b5c3d89599c86c584af834af3c8cea8bc684fd0ee970ce`

```dockerfile
```

-	Layers:
	-	`sha256:141f1ea3935d8bffe8d0cc66be5f8df07541579caaa01b730b07425b9be1c00c`  
		Last Modified: Fri, 13 Nov 2026 21:42:44 GMT  
		Size: 2.4 MB (2421241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cffda073c443b772fd3c5b79f9c2356276eb448402b57644167174febc9f557c`  
		Last Modified: Fri, 13 Nov 2026 21:42:44 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json
