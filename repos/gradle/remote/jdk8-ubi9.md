## `gradle:jdk8-ubi9`

```console
$ docker pull gradle@sha256:a03e920149fab879fcb9abd34391947db3ea03b754e9d172a69a55725d486bca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `gradle:jdk8-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:85df94740cd54259bf5d74459110e057e06815b678e9ea418ffef17c1dba7b0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299613420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f73977628a7c6189f71dddc29b3d4d476b86502218634f111839ebec5cd1f1e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

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
# Tue, 11 Aug 2026 17:50:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 17:50:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:50:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 17:50:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:50:03 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 11 Aug 2026 17:50:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 11 Aug 2026 17:50:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 17:50:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 17:50:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 18:02:35 GMT
CMD ["gradle"]
# Tue, 11 Aug 2026 18:02:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 11 Aug 2026 18:02:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 11 Aug 2026 18:02:35 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 11 Aug 2026 18:02:35 GMT
WORKDIR /home/gradle
# Tue, 11 Aug 2026 18:02:40 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 11 Aug 2026 18:02:40 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 11 Aug 2026 18:02:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 11 Aug 2026 18:02:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 11 Aug 2026 18:02:43 GMT
USER gradle
# Tue, 11 Aug 2026 18:02:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 11 Aug 2026 18:02:43 GMT
USER root
```

-	Layers:
	-	`sha256:2b8131e88da7bc7239bd3e4fd72821791bec3c3a93924daef20a3a2e88e4a3d3`  
		Last Modified: Mon, 10 Aug 2026 18:10:48 GMT  
		Size: 40.7 MB (40708738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7489f543bab1faeefe0301f56de627a71a0ce6114904665901216ce713740e0`  
		Last Modified: Tue, 11 Aug 2026 17:50:22 GMT  
		Size: 27.7 MB (27659231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482d8e02fcb9ce1314a477717e9bbe7a10d4187d41b3f53ece70dc8b08972536`  
		Last Modified: Tue, 11 Aug 2026 17:50:23 GMT  
		Size: 55.2 MB (55199128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:933e43ca66f4ca1d924df08c509c3bda4e268980abfd55f81fc292e77125ddee`  
		Last Modified: Tue, 11 Aug 2026 17:50:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce22083804643e3efed8b82d255a936e8a5e3aa9488afd71a6d788b1a9328c73`  
		Last Modified: Tue, 11 Aug 2026 17:50:21 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c37b82642a069fc6587b2e41fae5313444f92050f5abf552c2d0a74ff2f68e`  
		Last Modified: Tue, 11 Aug 2026 18:02:59 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5b0a2c3b880b1c83a9c6d0ab6eed17322fa3e97148a4e32c4403dba3083d7a`  
		Last Modified: Tue, 11 Aug 2026 18:03:01 GMT  
		Size: 37.9 MB (37918521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a73b3b65086c78119ae5e33f12c125be4d9e67fb08459ad139f9c19597bd1f2e`  
		Last Modified: Tue, 11 Aug 2026 18:03:03 GMT  
		Size: 138.1 MB (138068541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23011c1c7f02e67ec364ab208929ab952749be7f24c4efc15460ee5201c4d626`  
		Last Modified: Tue, 11 Aug 2026 18:02:59 GMT  
		Size: 54.9 KB (54904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:8074a954dc55de043a85a1e276a59f5dfb37e087710a745e12144c877fec39f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5552536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a538359f47111e8def2258b857e79558f67d9a2673f5d1e258ac7282dd25e3`

```dockerfile
```

-	Layers:
	-	`sha256:96655e069078a44da65e0c552a85fae38980de77c956a6f0bf500785507d3afb`  
		Last Modified: Tue, 11 Aug 2026 18:02:59 GMT  
		Size: 5.5 MB (5528083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94a03a411677377c85eed6b8791afa0ad6f79f1b94f867d670badd27b1a8472e`  
		Last Modified: Tue, 11 Aug 2026 18:02:59 GMT  
		Size: 24.5 KB (24453 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk8-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9a14cd4ee8743a079c5f0d70cd829e3946b717b436f8e5b7253e82147f5d3748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296501052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccf30cd5b59a8ca8a50afbf4491739e8d2073fd4cd032efbf5b39c0776a2f75c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

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
# Tue, 11 Aug 2026 19:04:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 19:04:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 19:04:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 19:04:54 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 19:04:54 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 11 Aug 2026 19:04:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 11 Aug 2026 19:05:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 19:05:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:05:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 19:15:36 GMT
CMD ["gradle"]
# Tue, 11 Aug 2026 19:15:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 11 Aug 2026 19:15:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 11 Aug 2026 19:15:36 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 11 Aug 2026 19:15:36 GMT
WORKDIR /home/gradle
# Tue, 11 Aug 2026 19:15:40 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 11 Aug 2026 19:15:40 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 11 Aug 2026 19:15:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 11 Aug 2026 19:15:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 11 Aug 2026 19:15:43 GMT
USER gradle
# Tue, 11 Aug 2026 19:15:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 11 Aug 2026 19:15:43 GMT
USER root
```

-	Layers:
	-	`sha256:e3f9ee4410f580b6aa25583df525121fb62e969983ca4535073d9018d260fec1`  
		Last Modified: Mon, 10 Aug 2026 18:10:53 GMT  
		Size: 38.8 MB (38791667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44bd4e2540b34c1ff4a74c672899514b4b183867891b3c43df7733ca970c2a2b`  
		Last Modified: Tue, 11 Aug 2026 19:05:13 GMT  
		Size: 28.1 MB (28102924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d879f7436eb33ed8c79b1bc995157a3604743534ffee11f17b5d5429e07809`  
		Last Modified: Tue, 11 Aug 2026 19:05:14 GMT  
		Size: 54.3 MB (54273432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5089bf41b217230ea9cf22e878303d61f600afa28c717d8855449970c81a62`  
		Last Modified: Tue, 11 Aug 2026 19:05:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c259e9365bde26e13ecaa4a016ae4f7c4df54b648c830f826a129b6b8d258db4`  
		Last Modified: Tue, 11 Aug 2026 19:05:12 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a974897742404feed2ac07b92b51cfdc9d7284dfc60c249b4329a33495a764b`  
		Last Modified: Tue, 11 Aug 2026 19:15:58 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:175d086e49f5dbd0d37c46e2e6b5bfe04a7729a0d7c0e28dfaa61f2e2c00c037`  
		Last Modified: Tue, 11 Aug 2026 19:16:00 GMT  
		Size: 37.2 MB (37200609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ede8f974b3f553939d1093c36cc8f9c89de21d59d40c8208a46e962924c54eb`  
		Last Modified: Tue, 11 Aug 2026 19:16:02 GMT  
		Size: 138.1 MB (138068536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3127fc03d0c0c76668fed716cf91d083fdf15aaca584edea576fc21a1d9c01`  
		Last Modified: Tue, 11 Aug 2026 19:15:58 GMT  
		Size: 59.5 KB (59525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:a605231c0cb2c175ecbd01fd7308d00d7ad03b942d0b0a0621449628094d44a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5551081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b76a76158fcb8ab62d1bfb839e948e78534f7313e43b2de44225575550fc34f`

```dockerfile
```

-	Layers:
	-	`sha256:3dd2ac2ca89276394ad619252f6a8dde989c1861b2dda03c1f1527a2a28d991e`  
		Last Modified: Tue, 11 Aug 2026 19:15:59 GMT  
		Size: 5.5 MB (5526431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91c5506a4ab814269b47cbcc285290675bb93d7ff74ca23d832291da782ffcc7`  
		Last Modified: Tue, 11 Aug 2026 19:15:58 GMT  
		Size: 24.6 KB (24650 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk8-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:f64321f4483ea565262b645e41fe900e9047584aec6ace54629ec9c622e288fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.1 MB (305149774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baef074bf8eedb1c739f64f046a391509a8615442272337b5bc6bd2093cba6b0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

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
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 11 Aug 2026 20:19:39 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 11 Aug 2026 20:19:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 20:19:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 20:19:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 21:15:02 GMT
CMD ["gradle"]
# Tue, 11 Aug 2026 21:15:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 11 Aug 2026 21:15:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 11 Aug 2026 21:15:02 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 11 Aug 2026 21:15:03 GMT
WORKDIR /home/gradle
# Tue, 11 Aug 2026 21:15:18 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 11 Aug 2026 21:15:18 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 11 Aug 2026 21:15:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 11 Aug 2026 21:15:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 11 Aug 2026 21:15:22 GMT
USER gradle
# Tue, 11 Aug 2026 21:15:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 11 Aug 2026 21:15:23 GMT
USER root
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
	-	`sha256:a54b9a636bf32dadb9e856c7314b3a24786519526e739755c09559affba92470`  
		Last Modified: Tue, 11 Aug 2026 20:20:12 GMT  
		Size: 52.7 MB (52669708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588f4a355b9c61780384d99f035eac3383ca01b2b78d5924a6aa01b7cacbf878`  
		Last Modified: Tue, 11 Aug 2026 20:20:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d991b0694be83a0d8fca2fdd9e8c0363d7bd49024e297fc0e6687032e6919e`  
		Last Modified: Tue, 11 Aug 2026 20:20:10 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdda9d5408af7e717bdf62cf571deebe18e05bb9ac2f299cf1835f6cd85f33e9`  
		Last Modified: Tue, 11 Aug 2026 21:15:58 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116c709da1dc778810f591ac92ba998e0ae89d275833374ae9af4a40168bd54b`  
		Last Modified: Tue, 11 Aug 2026 21:16:00 GMT  
		Size: 39.2 MB (39189536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51608a5dc19a6009b2c1aef86f1c156c5d5dbd2b3ddf3e6e220e5399f62e657c`  
		Last Modified: Tue, 11 Aug 2026 21:16:02 GMT  
		Size: 138.1 MB (138068538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b916e9abb0423a219814f2703e027472a6d01c988e08d6f4b51d610cfb58758c`  
		Last Modified: Tue, 11 Aug 2026 21:15:58 GMT  
		Size: 35.0 KB (35007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:017e04ecc38d49ed004c39be5a6934921fffbb5610d4834df4fbbd69033ea4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5548796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:663e46e489a3175372aa80002ab665db5fde211ec954b1cbcdb3b400756684c7`

```dockerfile
```

-	Layers:
	-	`sha256:306055ef7aea298833513c35d1f949665a2bdb90da01687a5e1934c8695cfbb6`  
		Last Modified: Tue, 11 Aug 2026 21:15:58 GMT  
		Size: 5.5 MB (5524269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e432a448172bd8a0ee5519ec05ce2c8d07185f3eb203cd09400a45e47a06435d`  
		Last Modified: Tue, 11 Aug 2026 21:15:58 GMT  
		Size: 24.5 KB (24527 bytes)  
		MIME: application/vnd.in-toto+json
