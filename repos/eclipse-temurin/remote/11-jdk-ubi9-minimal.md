## `eclipse-temurin:11-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:66851df3ac1ab87f8bbd971f1e0e1760619e4104cc6ad5894b708d8d5abb321c
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
$ docker pull eclipse-temurin@sha256:4107e29a1553c925e9c3e78be8323d0d02d9e7b700f0ab79d936ef2a7f932820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210719823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c227af6756df29b99b807b9e25be8e4ac3c4e22be0aa1d7ac98137a64a97a0f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:56:02 GMT
ENV container oci
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:df00d2ddcafd5d3230e4389e976d7b8e34c276ca8e8d50edc2315b0141add52b in /      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:56:03 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:55:47Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:55:47Z" "architecture"="x86_64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:55:47Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 17:50:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 17:50:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:50:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 17:50:21 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:50:21 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 11 Aug 2026 17:50:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 17:50:29 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 17:50:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 17:50:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 17:50:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b8131e88da7bc7239bd3e4fd72821791bec3c3a93924daef20a3a2e88e4a3d3`  
		Last Modified: Mon, 10 Aug 2026 18:10:48 GMT  
		Size: 40.7 MB (40708738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078ba286cf59d3d670fd93233863303c28f211387323e592950b9f326dade0d3`  
		Last Modified: Tue, 11 Aug 2026 17:50:45 GMT  
		Size: 27.7 MB (27659764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26aa83be0417d687334fdc538af120a14a0c8f0ab8ebcf613486875fd29dadc5`  
		Last Modified: Tue, 11 Aug 2026 17:50:47 GMT  
		Size: 142.3 MB (142348900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fa269d0b8ed6cabcf3247844dd134e59b81032dea472aca077bc6ff272985f`  
		Last Modified: Tue, 11 Aug 2026 17:50:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf430774d655be6461288b9018df011c15c186be926b01e4cbfd3ae62311461`  
		Last Modified: Tue, 11 Aug 2026 17:50:44 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:14052d94ef0d40b6c983e5bb516d6376ac344550a6c87d9b623deb154d8ee517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2535230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8391180cbb4cc72875457501f63ed8e319c51f40a1b949067334124f260169`

```dockerfile
```

-	Layers:
	-	`sha256:f659363275a848c8c8292a2861ce19ff0c54a6e5b6b28a431bea74ad92ca1f5f`  
		Last Modified: Tue, 11 Aug 2026 17:50:44 GMT  
		Size: 2.5 MB (2514062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0df2dec2af8ef8d12925f7a5c93edefa0a842c0e6e9520bcb3510bc16dd9c22f`  
		Last Modified: Tue, 11 Aug 2026 17:50:44 GMT  
		Size: 21.2 KB (21168 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:10a3c1782dcb2f487009620def602e8c8feff33768c39cc5dd58202b61f5a956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.9 MB (205937642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465edfeba52fca098cc170a71a5d0e1e351bc1a90aa36faf179dfcc9a3ed3753`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:58:36 GMT
ENV container oci
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:a29571d1d7f0219756ea4cbeea7cbd2d7c70f920d886563530efb6b5f51db754 in /      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:58:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /root/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:58:14Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:58:14Z" "architecture"="aarch64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:58:14Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 19:05:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 19:05:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 19:05:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 19:05:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 19:05:00 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 11 Aug 2026 19:05:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 19:05:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 19:05:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:05:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 19:05:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e3f9ee4410f580b6aa25583df525121fb62e969983ca4535073d9018d260fec1`  
		Last Modified: Mon, 10 Aug 2026 18:10:53 GMT  
		Size: 38.8 MB (38791667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe94bebb322f26f90d10c7539262fc49fa7d2c66ef2f5c797be6e6726db7c76`  
		Last Modified: Tue, 11 Aug 2026 19:05:25 GMT  
		Size: 28.1 MB (28102900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1da1f1ff05b1a20b665a3dd7712a907691fc4718583fa6e60dfa90da04292fcf`  
		Last Modified: Tue, 11 Aug 2026 19:05:27 GMT  
		Size: 139.0 MB (139040655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f4fbd0f18d49509185483091ad895482f8cfe084d1355cee8609523a77d85f`  
		Last Modified: Tue, 11 Aug 2026 19:05:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c915790c9a4f7aec86fd4fd2533f9899c07bf21fb9fb2c1907aaabb92ccc8363`  
		Last Modified: Tue, 11 Aug 2026 19:05:24 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7907f53d24bb7cc1abcc3f972a8dcab94037dfbf851e4ac65e29edbb3b6648a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2533552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2e0250b4579c7954e9d0be6e6ab194959737b6ef9230a3ac0795a22a7ede030`

```dockerfile
```

-	Layers:
	-	`sha256:4b4296dc4136311658c7c283a3a03ada2ed5e02977dfe124db0e8f716ab72756`  
		Last Modified: Tue, 11 Aug 2026 19:05:24 GMT  
		Size: 2.5 MB (2512268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3acbffc83c76cc4fda194b3983d4df81d4aca98b1be9a029f265afe8c1adba1e`  
		Last Modified: Tue, 11 Aug 2026 19:05:23 GMT  
		Size: 21.3 KB (21284 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:d8fa2f1cf5f607ccc7ed1f673d10dc014977a4603f2834b1eceaa06837109ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204799270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1caa835c717f8cfd152eeaeb6f846e79567f4b9eb4a673ad52d8fd56d283fb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:59:29 GMT
ENV container oci
# Mon, 10 Aug 2026 16:59:30 GMT
COPY dir:85a7cc9a737af83f9f0b55b944a98b9bd0f889ce12a8553376788b64bd64c755 in /      
# Mon, 10 Aug 2026 16:59:30 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:59:30 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:59:30 GMT
COPY dir:b9addac3b82321b9a6f2a734577859fae2c7ad85bbd75c02b04992802ccf1cf8 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:59:30 GMT
COPY dir:b9addac3b82321b9a6f2a734577859fae2c7ad85bbd75c02b04992802ccf1cf8 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:59:31 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:59:14Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:59:14Z" "architecture"="ppc64le" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:59:14Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 20:19:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 20:19:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 20:19:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 20:19:30 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 20:19:30 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 11 Aug 2026 20:21:15 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 20:21:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 20:21:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 20:21:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 20:21:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fc6b62fae872622053a5ed2104e57f8406d9f00d71c0b557c6ad438326e8b9ce`  
		Last Modified: Mon, 10 Aug 2026 18:11:04 GMT  
		Size: 45.1 MB (45097272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403ea128d36a0913eb6d165e4cfbd91defb2a0eb30721dd4887f65c893225e2b`  
		Last Modified: Tue, 11 Aug 2026 20:20:11 GMT  
		Size: 30.1 MB (30085352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8ba94bb92273db558047d2cd09157dc22870d0a36c034306ee8b3e17cf7e7e`  
		Last Modified: Tue, 11 Aug 2026 20:21:52 GMT  
		Size: 129.6 MB (129614225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d03a507a9ff37bfba5ae427a6d2b99d32d739dd24c9aa3ab01d56c5788fbc3`  
		Last Modified: Tue, 11 Aug 2026 20:21:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25d07759d39d2cb3b61b15cbf496edb893df99641a68d40bd59a8174ad07ba98`  
		Last Modified: Tue, 11 Aug 2026 20:21:49 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8f9edd5bc70b5e15d1d8d0052d76c76a217dde9d2533c2638a2bf23d7c7ae267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2530999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1464cd20ec7df8074e7faf96ec6a8be96bfba126afa540f182f8a41c48e49e4`

```dockerfile
```

-	Layers:
	-	`sha256:743c444faa8e11767ab0ad8fb26610920074051f9407bccf2641d1d343985858`  
		Last Modified: Tue, 11 Aug 2026 20:21:49 GMT  
		Size: 2.5 MB (2509795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abe04e74d9f801e98a79e74f744278eec06f5d7ca28d447a8510ed509b6a7948`  
		Last Modified: Tue, 11 Aug 2026 20:21:49 GMT  
		Size: 21.2 KB (21204 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jdk-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:c42a45781cbe2a4f79a35aadd5172a44c002d973d58650b3139ccc121dd9df9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189502240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4ef6b31ba679fa827ca41ba2e76b5dd0d880507c67f9313839a662735f2f80f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 17:17:47 GMT
ENV container oci
# Mon, 10 Aug 2026 17:17:47 GMT
COPY dir:8a660edaa14a265302db24f21a2623345e34e48847b8e3f9a3f0b023bbfa731f in /      
# Mon, 10 Aug 2026 17:17:47 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 17:17:47 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 17:17:47 GMT
COPY dir:528d8b085204197bd0fe3f329af3d3ea22469dc77cc7ab43d690f26565a2ece6 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 17:17:47 GMT
COPY dir:528d8b085204197bd0fe3f329af3d3ea22469dc77cc7ab43d690f26565a2ece6 in /root/buildinfo/      
# Mon, 10 Aug 2026 17:17:48 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T17:16:58Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T17:16:58Z" "architecture"="s390x" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T17:16:58Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 17:49:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 17:49:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:49:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 17:49:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:49:57 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 11 Aug 2026 17:50:25 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 17:50:27 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 17:50:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 17:50:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 17:50:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:205cab09cf437434aa479b3fd911b4bde92bf7325ef0b1ef64cb2cb4e030a7eb`  
		Last Modified: Mon, 10 Aug 2026 18:10:58 GMT  
		Size: 38.8 MB (38750807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530f2ab6336857b2766fedaad6c9ad8f588fedb0a9dc2675648efd5270fce082`  
		Last Modified: Tue, 11 Aug 2026 17:50:58 GMT  
		Size: 27.7 MB (27687611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d668c1ced5a193af2005d54b824ba9fb5f7d105887cc596d5b5e7ab7e3242aa1`  
		Last Modified: Tue, 11 Aug 2026 17:51:01 GMT  
		Size: 123.1 MB (123061401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af48e79d7791b876b2a2aa7cb70cada2db074b7c6314bba16845ab6ff9f92a41`  
		Last Modified: Tue, 11 Aug 2026 17:50:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a5e1ec63140c3d3c76f29a161d5513a84e460046388d9c31de273318103a10`  
		Last Modified: Tue, 11 Aug 2026 17:50:56 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2e80e3ff701e89ec9e2bf9d63b947a8bd007bc79731160b21e79d01df8f4deb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2520844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7098ec5d2404926cfce0b9d1b7dcd83097333a22d93748331211aba4a1ef412b`

```dockerfile
```

-	Layers:
	-	`sha256:1b8244d3cdbf94d7be4bd043b3980f7d5d825cdafe565e33a48c230478b1c232`  
		Last Modified: Tue, 11 Aug 2026 17:50:56 GMT  
		Size: 2.5 MB (2499676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:becc8239bed553806b3c47cb8707db019968c196a1ce2580a0732d82928ccdc7`  
		Last Modified: Tue, 11 Aug 2026 17:50:56 GMT  
		Size: 21.2 KB (21168 bytes)  
		MIME: application/vnd.in-toto+json
