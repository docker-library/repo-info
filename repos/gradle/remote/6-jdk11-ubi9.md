## `gradle:6-jdk11-ubi9`

```console
$ docker pull gradle@sha256:d54a6719ff3205679765b53370e7dd82760f7739d8f927892bc00a67f4e3e2bd
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

### `gradle:6-jdk11-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:ff5865a5c0a2de480b1027057aa8003eca7afe8138d49b0ec5cb990a7b8ce644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.8 MB (356764037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f62353438cb91891d0c828c34f89fb4f6776f2ead00b0aca0c1d5e9b19e6ae02`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:26:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:26:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:26:58 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:26:58 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 29 Jul 2026 18:27:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 29 Jul 2026 18:27:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:27:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:06 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:41:31 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:41:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:41:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:41:31 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:41:31 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:41:34 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:41:34 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 29 Jul 2026 18:41:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 29 Jul 2026 18:41:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:41:36 GMT
USER gradle
# Wed, 29 Jul 2026 18:41:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 29 Jul 2026 18:41:37 GMT
USER root
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e0b99e819da3f75f5849e53aa3a33650d9df5e570b04760ae1842f2a73c6da7`  
		Last Modified: Wed, 29 Jul 2026 18:27:23 GMT  
		Size: 27.7 MB (27662661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75868d44cb669726542ef7f6f63b98f6685b93daf9e55b3c3f1a7ca4e1b483f6`  
		Last Modified: Wed, 29 Jul 2026 18:27:25 GMT  
		Size: 142.3 MB (142348808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732f87170eb78b82b6fcfdd135aade094bb0faad52262a8fc9d1222a94fe2d4c`  
		Last Modified: Wed, 29 Jul 2026 18:27:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f080b8e2b8e6f7337ae9458693ba49ab313b4aacc74882484aa72d2a2a1e9e`  
		Last Modified: Wed, 29 Jul 2026 18:27:21 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bc404f15feb56c59426ad485671b6e5810f8a040aa03103470c5d055a646cf`  
		Last Modified: Wed, 29 Jul 2026 18:41:52 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9928e96f2ba792327849bc13ffaab040257d4d8672d24f9ae071630d1ce20bf3`  
		Last Modified: Wed, 29 Jul 2026 18:41:53 GMT  
		Size: 37.9 MB (37919897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a3c1b835a65add55c521c49f5a2df8ec63850ae3905a8587897143b221a9ef`  
		Last Modified: Wed, 29 Jul 2026 18:41:55 GMT  
		Size: 107.7 MB (107696668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d965f58043fe0be815ab6267a327a48c5a1d467d19b46ec1a1f5e2f933920f`  
		Last Modified: Wed, 29 Jul 2026 18:41:52 GMT  
		Size: 431.3 KB (431272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:c66a2054ff22d033dc424d0eb7852c08733d2db6842f14e88f9c59d0bb14ff5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5342336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a063297bd6d6566b19320469f115bb130d5b3192b00da6419aeb28da8fc8f830`

```dockerfile
```

-	Layers:
	-	`sha256:e3bdb30143b6cb30be16d282f4da8ae7dab14680603e554fa3357cd24cb9a617`  
		Last Modified: Wed, 29 Jul 2026 18:41:52 GMT  
		Size: 5.3 MB (5318752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dc3f314ad1eaccfb51ac1b4528d8c4f48caad6f8c506b7264f55fca45ce8a3e`  
		Last Modified: Wed, 29 Jul 2026 18:41:52 GMT  
		Size: 23.6 KB (23584 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:228b0d320000580b35ed35546fd288f7d1bd07a5503cacd4d7dda2963f296b6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.3 MB (351315948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7593a3ab40949fba14920733773f8f1c5a3a6843246b643b871679e6b68140`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:54:32 GMT
ENV container oci
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:769b2354bc8edc7a99743746593875a88e8e231193bec804f059f55be2297f6b in /      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:54:33 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:54:11Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:54:11Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:54:11Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:26:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:26:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:26:38 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:26:38 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 29 Jul 2026 18:26:45 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 29 Jul 2026 18:26:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:26:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:26:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:26:47 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:40:16 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:40:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:40:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:40:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:40:16 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:40:20 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:40:20 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 29 Jul 2026 18:40:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 29 Jul 2026 18:40:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:40:22 GMT
USER gradle
# Wed, 29 Jul 2026 18:40:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 29 Jul 2026 18:40:23 GMT
USER root
```

-	Layers:
	-	`sha256:4431e8a4eff3b814ee9a578afed4f42f29096b2d18c83f5206d2321ac4cb1a54`  
		Last Modified: Tue, 28 Jul 2026 05:41:47 GMT  
		Size: 38.8 MB (38838081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a8d12ee27760728dae54a8510db0292e05a75a21c5e1d1d0e5f1dd0fd80367`  
		Last Modified: Wed, 29 Jul 2026 18:27:03 GMT  
		Size: 28.1 MB (28105602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282b8a2bde7a9d62d27832092a7125f01f7eea064396d29a2325e600417609b9`  
		Last Modified: Wed, 29 Jul 2026 18:27:06 GMT  
		Size: 139.0 MB (139040655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d636c8bb7fbf37fd659a1c1800f159fa8aa5030a476d77fd398cf3d9fb3bf1e`  
		Last Modified: Wed, 29 Jul 2026 18:27:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942f7efde1cebcb78cffb57df6ded415159b27f0a5fd17f01d7b4366248f6075`  
		Last Modified: Wed, 29 Jul 2026 18:27:02 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de1bc172da9e61cc15657759d5914972eba1d70b30fdbf792e1a961342eb9903`  
		Last Modified: Wed, 29 Jul 2026 18:40:38 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c27fa10906c5efc1251569897aa3d38662249b6736e6cc4883b606a93d1b665`  
		Last Modified: Wed, 29 Jul 2026 18:40:40 GMT  
		Size: 37.2 MB (37205759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee835b94a83e18ccf4a70d6b52617ba36774183a93881b9e43b2f080c3d1c592`  
		Last Modified: Wed, 29 Jul 2026 18:40:41 GMT  
		Size: 107.7 MB (107696667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3c21a55df7fb0df954a2bd29805092efb23fd657fe6ea2996ce643ccdfc22f`  
		Last Modified: Wed, 29 Jul 2026 18:40:38 GMT  
		Size: 425.0 KB (425027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:bce19b73568dcf044666a0912df5157f53b8940ce1cce13e067f7ed1e903b122
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5340750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c54e83e852e44c713374a334bff12392a6a5d42fbebdd63c7c851b01602e68`

```dockerfile
```

-	Layers:
	-	`sha256:e0187411cca22c6eaad05cefb0d6113549f628bcf6a66328f01f961a9200743a`  
		Last Modified: Wed, 29 Jul 2026 18:40:38 GMT  
		Size: 5.3 MB (5316994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f58f12a562631b96c92ec0da15897b7833ef9d0a73968f208ea08aed7b32644`  
		Last Modified: Wed, 29 Jul 2026 18:40:38 GMT  
		Size: 23.8 KB (23756 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:84885cf1c9db7fbb443a8fa56b87f8a20bc35b91ce68ce8e0d1e71041a20e7ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.8 MB (351767211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485216a4841ec781c0b929b351e3d8631f19c93a75e2d68351bd82b451fe1913`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:54:52 GMT
ENV container oci
# Tue, 28 Jul 2026 04:54:53 GMT
COPY dir:ead6dfd8daa4b9b6629c7f724c3a065a0434fea5b65b40a4701f8bbf68896feb in /      
# Tue, 28 Jul 2026 04:54:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:54:53 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:54:53 GMT
COPY dir:f7741ef708ecae2cf1ad4483f82e5acf389a99b77a6b6a9425eb9e5251e43acc in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:54:53 GMT
COPY dir:f7741ef708ecae2cf1ad4483f82e5acf389a99b77a6b6a9425eb9e5251e43acc in /root/buildinfo/      
# Tue, 28 Jul 2026 04:54:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:54:37Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:54:37Z" "architecture"="ppc64le" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:54:37Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:26:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:26:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:26:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:26:35 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 29 Jul 2026 18:28:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 29 Jul 2026 18:28:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:28:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:28:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:28:27 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:55:26 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:55:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:55:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:55:26 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:55:26 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:57:10 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:57:10 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 29 Jul 2026 18:57:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 29 Jul 2026 18:58:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:58:32 GMT
USER gradle
# Wed, 29 Jul 2026 18:58:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 29 Jul 2026 18:58:34 GMT
USER root
```

-	Layers:
	-	`sha256:8e2eeec0dafab99e35933cc122057a2e272a9accfff00ea41c91c8054ae0ac21`  
		Last Modified: Tue, 28 Jul 2026 06:11:54 GMT  
		Size: 45.1 MB (45134930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568347f481894d15447f5d2bcb61e7ae1c30fe1d301ead3a68f31b269f7bce35`  
		Last Modified: Wed, 29 Jul 2026 18:27:13 GMT  
		Size: 30.1 MB (30088614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b2c2627efad4ff5f6751a2432832999ad48ea287e356f83d07c21e414c798c`  
		Last Modified: Wed, 29 Jul 2026 18:29:00 GMT  
		Size: 129.6 MB (129614143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81c3d8b897e90fa3d58393f7e41dd697ef817fda9079aade90110ac409a353f`  
		Last Modified: Wed, 29 Jul 2026 18:28:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4e9623a05a12748155ca9ebc5581a46ecf8d4412f3b839f2ac857809c3640f`  
		Last Modified: Wed, 29 Jul 2026 18:28:33 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3decc4f4f2b42ea0e2074e1f05c755f4f19c105a46b4a3dfc84a82fccbfec220`  
		Last Modified: Wed, 29 Jul 2026 18:56:39 GMT  
		Size: 1.7 KB (1704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06bf13bb5a8231426cad2a950ab76f418f4fd1112dc141b24d7f6185a5a06c4c`  
		Last Modified: Wed, 29 Jul 2026 18:58:01 GMT  
		Size: 39.2 MB (39193731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee2639118e05fe4fdb0e8733e2bb13ca258ec1fa6f83912b0f356572525a4e12`  
		Last Modified: Wed, 29 Jul 2026 18:59:11 GMT  
		Size: 107.7 MB (107696651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a39777e6248ece5d437c1b003cd183bc022a356d6e65e255ea888cfa7153cc7`  
		Last Modified: Wed, 29 Jul 2026 18:59:08 GMT  
		Size: 35.0 KB (34985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:2dd52e90f791f1902734f64b1b3e2379d7d157fa7c2e325f810d9c8bea015fb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5337361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47f99cac6fe2524e82c2b167259e8e9d6c6464f880155eb1ec755b2b6765caf`

```dockerfile
```

-	Layers:
	-	`sha256:28befba516f46344fe9116b0e6ec2585a7887de0f3dbdc5e09823f9e87394c1b`  
		Last Modified: Wed, 29 Jul 2026 18:59:09 GMT  
		Size: 5.3 MB (5313716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02d605220a35f32a01c3ef4797d11499d3d567c2972cfddfa169d34050ce4351`  
		Last Modified: Wed, 29 Jul 2026 18:59:08 GMT  
		Size: 23.6 KB (23645 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:54737e9d2b937aaede31b513293ce2458fe15383c2b0ab0ef8f351b1cb0e8ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334764436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4528eb042e47cb6e14d8465ec401cf920733027058719e9055b9cb2c4098ae22`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:58:50 GMT
ENV container oci
# Tue, 28 Jul 2026 04:58:51 GMT
COPY dir:8635b291411015261e7e7d7c3eb67c5088d16ac1d27e1131774fe915d54adfdd in /      
# Tue, 28 Jul 2026 04:58:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:58:51 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:58:51 GMT
COPY dir:67cce7aa9d1677605a5b3b328cc6cfffa89c6ae79ef74d406ed0528607c612d3 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:58:51 GMT
COPY dir:67cce7aa9d1677605a5b3b328cc6cfffa89c6ae79ef74d406ed0528607c612d3 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:58:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:58:03Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:58:03Z" "architecture"="s390x" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:58:03Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:27:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:27:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:27:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:27:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:27:13 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 29 Jul 2026 18:27:19 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 29 Jul 2026 18:27:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:27:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:21 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:41:15 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:41:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:41:15 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:41:15 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:41:15 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:41:34 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:41:34 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 29 Jul 2026 18:41:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 29 Jul 2026 18:41:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:41:37 GMT
USER gradle
# Wed, 29 Jul 2026 18:41:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 29 Jul 2026 18:41:38 GMT
USER root
```

-	Layers:
	-	`sha256:c066d4e23a6e854f37804aa39b7607aa099c1a3eb2af36c7833277288db4b7cd`  
		Last Modified: Tue, 28 Jul 2026 06:11:46 GMT  
		Size: 38.8 MB (38773394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d83ae868ac5dd12bec0da0befd87a076776bc71d3da3664ec6ddec0b32ba586`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 27.7 MB (27684954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec28529f2459d50d15c30345352840c92ff43ac8dde7eb3b146977d7375db66f`  
		Last Modified: Wed, 29 Jul 2026 18:27:50 GMT  
		Size: 123.1 MB (123061383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea10246ca36e30bc830099e4486f5c11234534f0d421358aab2f22e45d428e1`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d7d86bed79bf14c4ee8c4995df7f74bedce31b0e3716dd3bab54b2e426b4b8`  
		Last Modified: Wed, 29 Jul 2026 18:27:25 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2fa8b678104776fb3bf2f330a8944ef6c234712d42d892e23bf3ccda978470`  
		Last Modified: Wed, 29 Jul 2026 18:41:49 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fe6aa966312bc84b87830dbb3adec3c04a02dad06ef6503a2114e9e9b5e02b`  
		Last Modified: Wed, 29 Jul 2026 18:42:02 GMT  
		Size: 37.5 MB (37508890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50881532cf334dd4976487629ce2a8c8c8787cacbc5f0bdc1c8a52cda96c2647`  
		Last Modified: Wed, 29 Jul 2026 18:42:04 GMT  
		Size: 107.7 MB (107696668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8fb9453ef60ad3fe942bbbed42024fce81c82448253a08a6601f092733537cd`  
		Last Modified: Wed, 29 Jul 2026 18:42:01 GMT  
		Size: 35.0 KB (34982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:1386772e7015c6a3ea51f8f22dde1eafc8047fb6f8db3ef25825162b05b65761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5327162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a33a0247e55c981d196e9bb5eb06903c9b933f19ab2573acac7a13ee942427c`

```dockerfile
```

-	Layers:
	-	`sha256:dc82139bc31bb2fca229a717df5d2cc458b25b7afa75deb05a28167a6df66ccd`  
		Last Modified: Wed, 29 Jul 2026 18:42:01 GMT  
		Size: 5.3 MB (5303579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e74e41aaf9f0bbaa3f7932f19544d7e4a16566ae8ea2fed52340f4120989114d`  
		Last Modified: Wed, 29 Jul 2026 18:42:01 GMT  
		Size: 23.6 KB (23583 bytes)  
		MIME: application/vnd.in-toto+json
