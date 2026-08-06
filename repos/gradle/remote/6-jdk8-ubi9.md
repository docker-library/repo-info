## `gradle:6-jdk8-ubi9`

```console
$ docker pull gradle@sha256:61cf6c9fa7d9cf25ccd4d879d9a76c991ad84b27c403e60150df0112d7e83bc3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `gradle:6-jdk8-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:b42d09f0b3033d1d8ff9ebf56ede638375ab92052fc76433b91e6194eaa05e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269615910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa93d90078b58af58efcac38256a247e14cbd6ca5569f8839deb27d93a760e4`
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
# Wed, 05 Aug 2026 19:11:40 GMT
CMD ["gradle"]
# Wed, 05 Aug 2026 19:11:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Aug 2026 19:11:40 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 05 Aug 2026 19:11:40 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Aug 2026 19:11:40 GMT
WORKDIR /home/gradle
# Wed, 05 Aug 2026 19:11:44 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 05 Aug 2026 19:11:44 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 05 Aug 2026 19:11:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 05 Aug 2026 19:11:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 05 Aug 2026 19:11:46 GMT
USER gradle
# Wed, 05 Aug 2026 19:11:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 05 Aug 2026 19:11:47 GMT
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
	-	`sha256:7a873858d59c77f29b8a52105b1b40cf5cf6427da18a0bcd5e5f30d9b8bc15df`  
		Last Modified: Wed, 05 Aug 2026 19:12:03 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441bebc144e5b102e490f0773e8f95d5e06209f36d062ece2b71a8dc45801790`  
		Last Modified: Wed, 05 Aug 2026 19:12:04 GMT  
		Size: 37.9 MB (37917533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24fc50093d26d882dde40c34a533e2fddb7a400b1dfb7f454b3305fea6f0a8ed`  
		Last Modified: Wed, 05 Aug 2026 19:12:06 GMT  
		Size: 107.7 MB (107696669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65178ae822f4b59ae86153533297f12e9cb66b1b6fd8816d799f0116f5cb4fd1`  
		Last Modified: Wed, 05 Aug 2026 19:12:03 GMT  
		Size: 431.3 KB (431271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:23da6e56c0d098fa342acf51033ccc7ba6cfdc6156209900ef9c0d5925a80a17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5443747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2199fafc4f88ac8a506a496aa50ec4f8343773aad091f263603f88d32bc7c5a`

```dockerfile
```

-	Layers:
	-	`sha256:f7d176022aca2b51583004e6e7449bd2803dc88a011a734ff7a6d4571235603f`  
		Last Modified: Wed, 05 Aug 2026 19:12:03 GMT  
		Size: 5.4 MB (5420228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9a27aa346f45ed450d6e1ce88423d9a7ff427e49137467f26a7001914ad6821`  
		Last Modified: Wed, 05 Aug 2026 19:12:03 GMT  
		Size: 23.5 KB (23519 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk8-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:89a94da99ddc463d997679ee0479771ea305f15121291fc895823ef836b96945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.5 MB (266514166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5afcf0b77df309fc307caa6fbd55ca1f320b280eab1ebe85feb2b0a024118b`
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
# Wed, 05 Aug 2026 19:10:54 GMT
CMD ["gradle"]
# Wed, 05 Aug 2026 19:10:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Aug 2026 19:10:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 05 Aug 2026 19:10:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Aug 2026 19:10:54 GMT
WORKDIR /home/gradle
# Wed, 05 Aug 2026 19:10:58 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 05 Aug 2026 19:10:58 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 05 Aug 2026 19:10:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 05 Aug 2026 19:11:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 05 Aug 2026 19:11:00 GMT
USER gradle
# Wed, 05 Aug 2026 19:11:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 05 Aug 2026 19:11:00 GMT
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
	-	`sha256:616c73e044fea5e6a2dfe578da1353b00998d96744320265d75df1bb5b855a86`  
		Last Modified: Wed, 05 Aug 2026 19:11:15 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee282854cef74ec07e41b2e5d7b5ab2249ea5df97de79df2944648bcbe450fb`  
		Last Modified: Wed, 05 Aug 2026 19:11:16 GMT  
		Size: 37.2 MB (37203901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb753bce15a0cffd69fe74166ac28d7317c21abd95c4c26e1ad83519b200fff`  
		Last Modified: Wed, 05 Aug 2026 19:11:18 GMT  
		Size: 107.7 MB (107696667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08614c5246c92d48d47a35bd62aea8e1cb42034bce5b1578cd8c48120135cc1`  
		Last Modified: Wed, 05 Aug 2026 19:11:15 GMT  
		Size: 425.0 KB (425020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:4b02c729ca600a5e1647a3a77dcc3e7afe0c7fa6e1b183e63466bfbcf7b324ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5442244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6927714a8b41b1b3b8d94d807b138358cc6f06247da9b312be046b8e47f2ff`

```dockerfile
```

-	Layers:
	-	`sha256:79362945ee10e52169e0906f1a932bfa5f45b4e2a27454750f5a30c677f7c942`  
		Last Modified: Wed, 05 Aug 2026 19:11:15 GMT  
		Size: 5.4 MB (5418552 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18f9705c2817667fb7386f90b97b127369bcf2cefd4db4231db5bb2a4b6c84f3`  
		Last Modified: Wed, 05 Aug 2026 19:11:15 GMT  
		Size: 23.7 KB (23692 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk8-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:9d6cdf94741442c7a117e2b464b567c0ab9f8a767e377bed84bcef15c75e4b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274801640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f691a1c4cfe90a68f2b812d5a6731bc77201a2a9233417db7f3e8d0f75d2c64e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:17:07 GMT
ENV container oci
# Mon, 03 Aug 2026 17:17:08 GMT
COPY dir:1ade7d4dffe44110b5720076840490f6baa7301b84541d08c0ea6a38569ff32e in /      
# Mon, 03 Aug 2026 17:17:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:17:08 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:17:08 GMT
COPY dir:c4aef7217014f798a2cbbb791d2d6bc060d5a6d90fc8cf9706d57150150b9513 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:17:08 GMT
COPY dir:c4aef7217014f798a2cbbb791d2d6bc060d5a6d90fc8cf9706d57150150b9513 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:17:08 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:16:50Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:16:50Z" "architecture"="ppc64le" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:16:50Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 20:54:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 20:54:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:54:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 20:54:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 20:54:00 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 04 Aug 2026 20:54:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 04 Aug 2026 20:54:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 20:54:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:54:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 22:32:45 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 22:32:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 22:32:45 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 22:32:45 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 22:32:46 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 22:35:48 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 04 Aug 2026 22:35:48 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 04 Aug 2026 22:35:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 04 Aug 2026 22:36:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 22:36:47 GMT
USER gradle
# Tue, 04 Aug 2026 22:36:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 04 Aug 2026 22:36:49 GMT
USER root
```

-	Layers:
	-	`sha256:d878f355008c362e8a970b32096625c413c4690a3b0d735cf1fb625e90c0a75d`  
		Last Modified: Mon, 03 Aug 2026 18:11:34 GMT  
		Size: 45.1 MB (45128614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550cac100c4810402c753e19231ae0aefe14a5cc8a455755ec291a1491fd764e`  
		Last Modified: Tue, 04 Aug 2026 20:54:41 GMT  
		Size: 30.1 MB (30082322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:452335c818733c6c0203fdbdd9ca97398724718d7f8f290babdac89ec90e2264`  
		Last Modified: Tue, 04 Aug 2026 20:54:42 GMT  
		Size: 52.7 MB (52669708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0810e7e096a7515b1f4d698bd15f9cb2f10b2438a8774f3effb6255defa18772`  
		Last Modified: Tue, 04 Aug 2026 20:54:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cff5425fa1908086dae78f76e254d7ff5e27ab5163225325f29769927786d65`  
		Last Modified: Tue, 04 Aug 2026 20:54:40 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17429952efd16042bfdb6b1e94be76d63e5b06f6fcd7bcec91c44143dd471c8`  
		Last Modified: Tue, 04 Aug 2026 22:33:55 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c6db061ca27e6b411a6197e08afca76868c7d5f445f0a5270f61c6234da20b`  
		Last Modified: Tue, 04 Aug 2026 22:36:28 GMT  
		Size: 39.2 MB (39184988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ef288924841ed16aa1f543de75058d990b5ffe792439e5ed7c9ea8caf28bca`  
		Last Modified: Tue, 04 Aug 2026 22:37:33 GMT  
		Size: 107.7 MB (107696667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d794b2fe55c66a22a67f6d250415dfbdc19128900a9f91f804bcf85dc08fb2ef`  
		Last Modified: Tue, 04 Aug 2026 22:37:30 GMT  
		Size: 35.0 KB (34982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:7f238e9db3de9b4da5bfeaffa224c550675554bf13d2e420c5b91075dec2c4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5440014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9321fb8553b1953d12471ca02a21b015aee913541bcdf625fc4210cffa53df`

```dockerfile
```

-	Layers:
	-	`sha256:9c8a6cab3eaf628b01756d25b05fec731741b326b6914cc6435351d2170f4571`  
		Last Modified: Tue, 04 Aug 2026 22:37:31 GMT  
		Size: 5.4 MB (5416398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a85d4d336bd07cd01ba6bd9273427e5b8e9cc997a206c8c7b3933402c7d3ea7`  
		Last Modified: Tue, 04 Aug 2026 22:37:30 GMT  
		Size: 23.6 KB (23616 bytes)  
		MIME: application/vnd.in-toto+json
