## `eclipse-temurin:11-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:fbf9421948a1ffbab202e7effdbece1fdc5fa319aecdee7c88ca6298ed10c3a4
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

### `eclipse-temurin:11-jdk-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:84580d2744dc271a01df426a09081186bdb4a1d2aa41c2621a4a48d97fd1a29a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210702595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96993e19f2bc78dd4f5ed43107a0afafb7b3d0ef8eab345ad7be680f551e8eec`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Fri, 13 Nov 2026 21:46:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:46:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:46:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:46:25 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:46:25 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 13 Nov 2026 21:46:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:46:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:46:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:46:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:46:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b73e552e480d25ffc1c5d6fe68fdc266b4dfc6643a055f2a37632f304fe6f8`  
		Last Modified: Fri, 13 Nov 2026 21:46:50 GMT  
		Size: 27.7 MB (27652678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:946252f96901d41c0adcdc352a98d9e76e175dde7b60bb7c5a81320eed17bd9e`  
		Last Modified: Fri, 13 Nov 2026 21:46:53 GMT  
		Size: 142.4 MB (142377905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3780981bd2d81b1882b3073eeec787995ee0ab196d28a14f7a4c63e512daed`  
		Last Modified: Fri, 13 Nov 2026 21:46:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1506f98bcf7c75b9db0fb9181ca9d51c799a8363037cb340181cc0a5034ab375`  
		Last Modified: Fri, 13 Nov 2026 21:46:24 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2b4fd05f89000a2fc9f4437d596c9f31003f0ddeb6b8b1870a0fdc82aef34612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2517972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6864c0eb07fe88e552c36ff00668e0e847dd0763688fb9c4b143398ebeac24fc`

```dockerfile
```

-	Layers:
	-	`sha256:bc06b38b06017a33104b6dd025de357cfd66cedc9e2241e97b3f923b34735a2a`  
		Last Modified: Fri, 13 Nov 2026 21:46:48 GMT  
		Size: 2.5 MB (2496805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7f7275489044f9b6a7deb76033777e1316ae4687fe9d343a02ee875362b855f`  
		Last Modified: Fri, 13 Nov 2026 21:46:48 GMT  
		Size: 21.2 KB (21167 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:f4d9c9348be46e06bd7fc5cfb48ed17fc11eddea965170e9a12c290effe0f9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.8 MB (205842133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e35ddc66c326a9e1d4c92180a8724f7b75e9f9db19619f66b31f1ebc1134394`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 13 Nov 2026 21:42:25 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:42:27 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:42:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:42:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:42:27 GMT
CMD ["jshell"]
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
	-	`sha256:4f157b1e2b04ddf1b51c24df13499a139e3ebed720fc1cdbd4d16bc0e06eef55`  
		Last Modified: Fri, 13 Nov 2026 21:42:45 GMT  
		Size: 139.1 MB (139080729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8334a3e2db4c530b7412adb4d0495295565aa5626cd4a67a975b145131d82e3a`  
		Last Modified: Fri, 13 Nov 2026 21:42:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b2688a4216468070dd8f2e5d1665a0d135a5eb847e5096beae369e088597cc`  
		Last Modified: Fri, 13 Nov 2026 21:42:42 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c54bc5d66cfb2acf4b2b4728bdbb2391317756c6a9c01de0651545863e8c37a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2516295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa731491d27f8e9df1491b14fa953b6e23e5bf495ed87b5715f16e5f29083eb0`

```dockerfile
```

-	Layers:
	-	`sha256:d765de2817dfe4b038a06174a4f32c7769575c1ab8a4f824a3b335fc074bbe1d`  
		Last Modified: Fri, 13 Nov 2026 21:42:42 GMT  
		Size: 2.5 MB (2495011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0465242a9845744c894b22d29e41fedd2ba8e31cbae9f37d30c0e28d6295dd13`  
		Last Modified: Fri, 13 Nov 2026 21:42:42 GMT  
		Size: 21.3 KB (21284 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:7ff28b4a11d58efd4e146998ee5bd17c4c6d76e7ee15496ea467a7a6a01e22e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.9 MB (203873138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c66a56eb183c2369fe8e6be981f6e28757eee85619467822302a0bbfe6d77e9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 13 Nov 2026 21:43:20 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:43:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:43:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:43:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:43:25 GMT
CMD ["jshell"]
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
	-	`sha256:4ea15304c5fd8c4108b3fb9dd95db1f7ac6e3ddbaeb49307c0083faef6723f69`  
		Last Modified: Fri, 13 Nov 2026 21:44:05 GMT  
		Size: 128.8 MB (128773812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770a9a93dd33a650a5ee185a3bb2cc263ccd04bbfc8c1679a8230ecab584b8c4`  
		Last Modified: Fri, 13 Nov 2026 21:44:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2711d9a6b1421aac313ff90b44b23ec44627bafbbb1d90ee130d4112f6b93c`  
		Last Modified: Fri, 13 Nov 2026 21:43:19 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:81d3fd9f53ee8b452f541ae429ca267690366119161f27df1a7bd92cfc1f49e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2512496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5f883f09b6abb93ff6af0e1f8043060c1ac38fde582fd05bff151fe84233c2`

```dockerfile
```

-	Layers:
	-	`sha256:7b66a31f4b5deb479d5e91805e95911228fc57ed4f9ef63c30d73802d96ed756`  
		Last Modified: Fri, 13 Nov 2026 21:44:02 GMT  
		Size: 2.5 MB (2491292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea7d9b2b224d2a68d09a887336cedef7791e1e7110a7beabd59a6aedf5743e8`  
		Last Modified: Fri, 13 Nov 2026 21:44:02 GMT  
		Size: 21.2 KB (21204 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:f096c5b46354608d39c7d469b678d7275f78a31ba4d894ff27718fa6e0e3d2d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.8 MB (188775162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ea37a0ada2905821e330cf35b7b4b43110bf4ae8060cfa1a8cd4dd8e637847`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 07:30:01 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:30:01 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:30:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:30:01 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:30:02 GMT
ENV container oci
# Thu, 12 Nov 2026 07:30:03 GMT
COPY dir:c8ed80dff16c95ce6077027d2fc3365befe31b4729b954c3a0cbf26829ae3850 in /      
# Thu, 12 Nov 2026 07:30:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:30:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:30:04 GMT
COPY dir:9314dc0e20240911706add410982cababe46c4e8418b7980964c10762c68e77a in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:30:04 GMT
COPY dir:9314dc0e20240911706add410982cababe46c4e8418b7980964c10762c68e77a in /root/buildinfo/      
# Thu, 12 Nov 2026 07:30:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:28:47Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:28:47Z" "architecture"="s390x" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:28:47Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:40:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:40:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:40:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:40:50 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:40:50 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 13 Nov 2026 21:40:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:40:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:40:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:40:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:40:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0d224b541fe765b6e930698bb25582c2fdbd20f2349cb622c6e50e5e9e592327`  
		Last Modified: Thu, 12 Nov 2026 10:58:41 GMT  
		Size: 38.7 MB (38654710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87eb9cdbe43e2045f1f3d4cd4a9f511273e840519740496921068984dc7232d8`  
		Last Modified: Fri, 13 Nov 2026 21:41:18 GMT  
		Size: 27.7 MB (27685411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f516219c9a51483b2402c3bfe5bcc92c98d6f429138eb02ba432e82a733ac8`  
		Last Modified: Fri, 13 Nov 2026 21:41:20 GMT  
		Size: 122.4 MB (122432441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963ca4caca9675f4b2cf5019153f27a73f43a0960c28311b6b5ed46b2db45a12`  
		Last Modified: Fri, 13 Nov 2026 21:41:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f9fa96791621e27fbab2b2f052601c5ce737ec5b9dc94c05e77797d286771d1`  
		Last Modified: Fri, 13 Nov 2026 21:41:18 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:dc7490724a4fe1ea46f82e0727e2263fa078709964a1cd6abe89c7e5c20ce0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2502340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab7911a1f876d9a43c67bedea12b8b91d1e5f641707c1a4c5695f653984a75f`

```dockerfile
```

-	Layers:
	-	`sha256:6ef442da8e5db51e19a0d0b6b3bbfae6f34d540c99c42e8681a2c17be1d90f35`  
		Last Modified: Fri, 13 Nov 2026 21:41:18 GMT  
		Size: 2.5 MB (2481173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bbd6e4cb7b99054ba855cd73867b722d71b95481f163fbd37a4e31dfad13ac7`  
		Last Modified: Fri, 13 Nov 2026 21:41:18 GMT  
		Size: 21.2 KB (21167 bytes)  
		MIME: application/vnd.in-toto+json
