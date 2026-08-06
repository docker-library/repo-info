## `gradle:7-jdk8-ubi9`

```console
$ docker pull gradle@sha256:63e0e511cfc59fcff818e5f84a469dd6236bfd4ee5b0f1938a32850ea59a84fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `gradle:7-jdk8-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:5691f87d4e79664b0041a1c5244f0ba7c5f97d955fa95f10b211e59ef051e4bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (290012403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21fdcf1dc9abb1c98b0171d8efc604850a5c147ea8cf9bc1287b91384b500a89`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:12:12 GMT
ENV container oci
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:566bd7ceef314001d2d4000252aedc98335cb96737e8ca003268a81789b22de2 in /      
# Wed, 05 Aug 2026 05:12:13 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:12:13 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:f9035c16287ce6eab77e9c51b8fb202e226cae36f96964d20bdabe9900031efc in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:f9035c16287ce6eab77e9c51b8fb202e226cae36f96964d20bdabe9900031efc in /root/buildinfo/      
# Wed, 05 Aug 2026 05:12:13 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:11:46Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:11:46Z" "architecture"="x86_64" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:11:46Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:14:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 18:14:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:14:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 18:14:48 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:14:48 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 05 Aug 2026 18:14:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 05 Aug 2026 18:14:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 18:14:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:14:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 05 Aug 2026 19:11:34 GMT
CMD ["gradle"]
# Wed, 05 Aug 2026 19:11:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Aug 2026 19:11:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 05 Aug 2026 19:11:34 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Aug 2026 19:11:34 GMT
WORKDIR /home/gradle
# Wed, 05 Aug 2026 19:11:37 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 05 Aug 2026 19:11:37 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 05 Aug 2026 19:11:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 05 Aug 2026 19:11:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 05 Aug 2026 19:11:39 GMT
USER gradle
# Wed, 05 Aug 2026 19:11:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 05 Aug 2026 19:11:40 GMT
USER root
```

-	Layers:
	-	`sha256:f5e26a8514cb54661b214b756f0f307e562755e1865d1e13fa375c8e6c6b88ae`  
		Last Modified: Wed, 05 Aug 2026 06:11:38 GMT  
		Size: 40.7 MB (40708771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e7f9e2b8b5083a3743bf7b072b0dd98573354d9ff7658aae474bdce50916b9`  
		Last Modified: Wed, 05 Aug 2026 18:15:06 GMT  
		Size: 27.7 MB (27658197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af76b6529880f6d0a650283254dae87fc227032d8f6bc815e333d70066801ee`  
		Last Modified: Wed, 05 Aug 2026 18:15:07 GMT  
		Size: 55.2 MB (55199113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6929fc1ea291f795b97fa3a5d06f381562421ae2408aeebe939f2e9e1a408c`  
		Last Modified: Wed, 05 Aug 2026 18:15:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10edafb3f28df30f73edfb256f7b563b48613cb498cbae6296792db461b93665`  
		Last Modified: Wed, 05 Aug 2026 18:15:06 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a38c5ca409961e6dfe152b32bdf2b669a9973b3ab1c90a82ac28e3f68b1556c`  
		Last Modified: Wed, 05 Aug 2026 19:11:54 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df99f3f2cb7e568c0ce7b52af73028bc23ed3067bb84d7569a01e40b237dbae9`  
		Last Modified: Wed, 05 Aug 2026 19:11:56 GMT  
		Size: 37.9 MB (37917644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e8be217099b746b149d59bd12c323c44d9d0337c91d18bd53451bd7e29705c`  
		Last Modified: Wed, 05 Aug 2026 19:11:58 GMT  
		Size: 128.5 MB (128469418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611b943f3771e514257a62b37580c1d6fe414834278ee4217fe5dffdff5de3da`  
		Last Modified: Wed, 05 Aug 2026 19:11:54 GMT  
		Size: 54.9 KB (54903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:6efdb3e6cf66cf4cf83c289c7bfde0a4d1eeb661f1d4394aaf519cbf2b32458d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5461646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac7ad3a377c262fc7ec798f0faa74afa6a264a06421df1363ff88e00ba1a802`

```dockerfile
```

-	Layers:
	-	`sha256:9c633ebaa49c2abbfa96f998efa888a7bf441338494b30de78283f940528e9f9`  
		Last Modified: Wed, 05 Aug 2026 19:11:55 GMT  
		Size: 5.4 MB (5438128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd477868417b0eac52faf1cc2b187efe8ad66cb508b152abd1e046a254d5e65e`  
		Last Modified: Wed, 05 Aug 2026 19:11:54 GMT  
		Size: 23.5 KB (23518 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:da25b49371ee11e239a1f41bece83b2e0b9cc8a90b987a66923332432bf6dc9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286921545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f79bef8a1fdca0b3ebce24e4675fcb211f9374c9327c660db2bd37970e32ef`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:14:19 GMT
ENV container oci
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:353d0b802c7bafe293cb00c4bee1ca7723a5390ae04dc844a3a7d0512dfa7188 in /      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:14:20 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /root/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:13:59Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:13:59Z" "architecture"="aarch64" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:13:59Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:14:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 18:14:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:14:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 18:14:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:14:02 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 05 Aug 2026 18:14:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 05 Aug 2026 18:14:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 18:14:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:14:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 05 Aug 2026 19:11:07 GMT
CMD ["gradle"]
# Wed, 05 Aug 2026 19:11:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Aug 2026 19:11:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 05 Aug 2026 19:11:07 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Aug 2026 19:11:07 GMT
WORKDIR /home/gradle
# Wed, 05 Aug 2026 19:11:11 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 05 Aug 2026 19:11:11 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 05 Aug 2026 19:11:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 05 Aug 2026 19:11:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 05 Aug 2026 19:11:13 GMT
USER gradle
# Wed, 05 Aug 2026 19:11:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 05 Aug 2026 19:11:14 GMT
USER root
```

-	Layers:
	-	`sha256:5a99040b034c68b0560dce13016c272ff01da7a59b1bcf22a9d2b71ead46ab6e`  
		Last Modified: Wed, 05 Aug 2026 06:11:46 GMT  
		Size: 38.8 MB (38809285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:773c8991772db8b4b411222fcb04461f2ebbfe596a236e833480dda457336116`  
		Last Modified: Wed, 05 Aug 2026 18:14:21 GMT  
		Size: 28.1 MB (28101536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad6eab8a0f1e9fb37d28b41dadc378f43e934a8f1b48f851c88f6a33d4fc5a5`  
		Last Modified: Wed, 05 Aug 2026 18:14:22 GMT  
		Size: 54.3 MB (54273399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af9eed70d266b9f652de898ac0690ddd4e4b2119affda69fc970786d49bc5e9`  
		Last Modified: Wed, 05 Aug 2026 18:14:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d2f45c48a94377db10f39a7066326a4d83b4554a486c8cee11a37b66b9dae79`  
		Last Modified: Wed, 05 Aug 2026 18:14:21 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46efce973a00be95020af0ef5c9605676e72c6420167f601a02ff793cf9993ce`  
		Last Modified: Wed, 05 Aug 2026 19:11:29 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e222d088ee57ec9dbc474dab796e3d784a48a80463c55d0627d46766612a16b`  
		Last Modified: Wed, 05 Aug 2026 19:11:31 GMT  
		Size: 37.2 MB (37203995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b64ade0c7abfb2c4c55f5c499fdb9a7c7d2c6da0c65bed5ffc6df81d3ddf7ba`  
		Last Modified: Wed, 05 Aug 2026 19:11:33 GMT  
		Size: 128.5 MB (128469443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be477eeaea8f8ae53f2db3f5f30f1416ee222a7e4ffec605686b54e453f7e433`  
		Last Modified: Wed, 05 Aug 2026 19:11:30 GMT  
		Size: 59.5 KB (59525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:940400feca599ca86075fa24fcd1224f134f4b52423a0e5a2a68db3522e310c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5460143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff675e8f5d969be0baf77a0236b0508b61af24a3cdf77ea0a489eb46d1dd20f`

```dockerfile
```

-	Layers:
	-	`sha256:4b0fe5d04ba7d09105ba3fbc02b17f7e85a3bbc0acec4150832939bd62ec178f`  
		Last Modified: Wed, 05 Aug 2026 19:11:30 GMT  
		Size: 5.4 MB (5436452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:409082cd248f27ca8c4107efa20097de7f58e16bf4cc2891db7acd32d02bede1`  
		Last Modified: Wed, 05 Aug 2026 19:11:29 GMT  
		Size: 23.7 KB (23691 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:97f2d5e0eccc2abec83b02532185a619040762ba9e4e61f9d9bb465a80848a92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295581011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9d9fdb07eddac3254bf95ab9009cbb8eb341c17fac6fe22fff62b735fd1816`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Aug 2026 05:14:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:14:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:14:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:14:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:14:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:14:24 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:14:24 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:14:24 GMT
ENV container oci
# Wed, 05 Aug 2026 05:14:25 GMT
COPY dir:28775ed7978fd3a44b19708cf82ce636374b80680941e51083be12f87b91458b in /      
# Wed, 05 Aug 2026 05:14:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:14:25 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:14:25 GMT
COPY dir:de16351dc26286830df16a2b3fe817976feaf6649fda945a2d1702ccbdff7737 in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:14:25 GMT
COPY dir:de16351dc26286830df16a2b3fe817976feaf6649fda945a2d1702ccbdff7737 in /root/buildinfo/      
# Wed, 05 Aug 2026 05:14:25 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:14:09Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:14:09Z" "architecture"="ppc64le" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:14:09Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 23:02:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 23:02:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 23:02:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 23:02:53 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 23:02:53 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 05 Aug 2026 23:03:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 05 Aug 2026 23:03:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 23:03:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 23:03:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 06 Aug 2026 00:59:02 GMT
CMD ["gradle"]
# Thu, 06 Aug 2026 00:59:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 06 Aug 2026 00:59:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 06 Aug 2026 00:59:02 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 06 Aug 2026 00:59:02 GMT
WORKDIR /home/gradle
# Thu, 06 Aug 2026 01:01:58 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 06 Aug 2026 01:01:58 GMT
ENV GRADLE_VERSION=7.6.6
# Thu, 06 Aug 2026 01:01:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Thu, 06 Aug 2026 01:02:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 06 Aug 2026 01:02:02 GMT
USER gradle
# Thu, 06 Aug 2026 01:02:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 06 Aug 2026 01:02:04 GMT
USER root
```

-	Layers:
	-	`sha256:b34938719019e8348c3c9e59e5f2c4177458a5e9b2c5068866dfd3de6935707e`  
		Last Modified: Wed, 05 Aug 2026 06:12:11 GMT  
		Size: 45.1 MB (45131442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54584e329dcd099f168c3be67ba15d47a9999ab9c2555f30cd317a7811f9098`  
		Last Modified: Wed, 05 Aug 2026 23:03:31 GMT  
		Size: 30.1 MB (30084320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c752033f9267b870f55245f0955a2cbd124f619e9d5905cbbff1832466746d`  
		Last Modified: Wed, 05 Aug 2026 23:03:33 GMT  
		Size: 52.7 MB (52669703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1ba9faac77d077a0cae0f70bc270bb8ca4e48ed09b7f029579e8a43fa2e3be`  
		Last Modified: Wed, 05 Aug 2026 23:03:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237ef316f1e5bdfd70165c0db0507c6bafa43c72874511fccbccd0efe4d389ec`  
		Last Modified: Wed, 05 Aug 2026 23:03:31 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4894ee3d75e173208e3b9928ab9679aae29781d2f7152ebce9635293aad7cb2d`  
		Last Modified: Thu, 06 Aug 2026 01:00:02 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6b5e8330a384b65c8323c67d252fa162cb402058c724c1d919cf06447b7e0e`  
		Last Modified: Thu, 06 Aug 2026 01:02:35 GMT  
		Size: 39.2 MB (39186753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523cd6214509da883ce12476abeb1b9b31c39f1d8d015515163dd5b6990b85d0`  
		Last Modified: Thu, 06 Aug 2026 01:02:38 GMT  
		Size: 128.5 MB (128469420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc7ea7d552e23fb6df7846119a407d3a59182ff27224e4841d2c3179c907d5d`  
		Last Modified: Thu, 06 Aug 2026 01:02:34 GMT  
		Size: 35.0 KB (35010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:c3a31eec446b27385dbd68ce3bdd2d72bb97ab865de4bcefed5428f76a0cc28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5457918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425ffcd48c11c9a48665840c2cd06878a4214aa3501932e26b6923fb6f3909f8`

```dockerfile
```

-	Layers:
	-	`sha256:cbd154f1d4a5b37adaafc52e3807e30f37bbf8c0a1498b149ee31c52d7814161`  
		Last Modified: Thu, 06 Aug 2026 01:02:34 GMT  
		Size: 5.4 MB (5434302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57f1bc80869f18b9d1f52af62f4c1788e639ae717a3c979e09d7f006de2b8b14`  
		Last Modified: Thu, 06 Aug 2026 01:02:34 GMT  
		Size: 23.6 KB (23616 bytes)  
		MIME: application/vnd.in-toto+json
