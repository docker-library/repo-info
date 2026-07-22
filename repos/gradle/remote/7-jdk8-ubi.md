## `gradle:7-jdk8-ubi`

```console
$ docker pull gradle@sha256:ff7891de53920bd718b9e6100dd254ff1b21c293d8e134d2b658ef7be803d9bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `gradle:7-jdk8-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:5e3e670b25efeb994e05eabb048c2cb729315a36460d1560b9924d3b790ee30d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (290033450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cca1f327e208989786b4085254361be88aa48ae3a329c6b57c7f74ffcc5c3d1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:34:24 GMT
ENV container oci
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:6b16b3336a884691d82bd90e5faf7d65fad1354d2664539a143b7bcc0d24b71e in /      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:34:25 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:34:05Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:34:05Z" "architecture"="x86_64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:34:05Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:27:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:27:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:27:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:27:38 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:27:38 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 22 Jul 2026 18:27:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 22 Jul 2026 18:27:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:27:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:27:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 19:01:57 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:01:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:01:57 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:01:57 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:01:57 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:02:00 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:02:00 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 22 Jul 2026 19:02:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 22 Jul 2026 19:02:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:02:03 GMT
USER gradle
# Wed, 22 Jul 2026 19:02:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 22 Jul 2026 19:02:03 GMT
USER root
```

-	Layers:
	-	`sha256:4e7920a6df9f698998c80db9c24d69dedc87ab71cb83d5f35c3db42281db6ec0`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 40.7 MB (40722592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8a596bd61afcb7ce4827512841d0b5406b5cada58b5fe0c91a7432c0d30f64`  
		Last Modified: Wed, 22 Jul 2026 18:27:56 GMT  
		Size: 27.7 MB (27661623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834b65982e5a8a2882da358d2b8d3f198f00c3476bdae96181c946a81b23eb49`  
		Last Modified: Wed, 22 Jul 2026 18:27:57 GMT  
		Size: 55.2 MB (55199132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7e050fe0be1195c032b03898815ac006942e4a8f48e4b0ba72cb5803a967d8`  
		Last Modified: Wed, 22 Jul 2026 18:27:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4a01c43659d18c9ca17149df73f6988c1c5ed1b0840afad767c6be233f8ec0`  
		Last Modified: Wed, 22 Jul 2026 18:27:56 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc838654407a80b6f02a7365d31a49f28791015cf18e528b04b48d6b25918324`  
		Last Modified: Wed, 22 Jul 2026 19:02:17 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0be8ba4b72ea20f85a7c491fe73f7282b31b6a671ad83490bf84bceca7700f9`  
		Last Modified: Wed, 22 Jul 2026 19:02:19 GMT  
		Size: 37.9 MB (37921427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d1d4657cc06addaf18b0521df46d3cae0e5899d0e7cd6a784031a774ac75d3`  
		Last Modified: Wed, 22 Jul 2026 19:02:21 GMT  
		Size: 128.5 MB (128469420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c5ec62b13c496e58577ea879f97b7afc4a7f141c2dfe0d607e7ffe5462e09a`  
		Last Modified: Wed, 22 Jul 2026 19:02:17 GMT  
		Size: 54.9 KB (54899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:8dfa389afe554a3a25b706ecdd1f06a473239398ab66902df142c9f4bf9a9f26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5461665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4aca47c82d090ead4141e382bf7815b0ab743bdf66778d3f1be1ff3b76da2ab`

```dockerfile
```

-	Layers:
	-	`sha256:f8058d80fcb75d94edb87dcc22291a4c2bdaf9e546a088e6b0994e0c75ce4904`  
		Last Modified: Wed, 22 Jul 2026 19:02:17 GMT  
		Size: 5.4 MB (5438111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6947fa7f9722bc086e572fc373398a3732cbc13100a7a4ca6b6e2722990a89e4`  
		Last Modified: Wed, 22 Jul 2026 19:02:17 GMT  
		Size: 23.6 KB (23554 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:7e2ec356e89135291c62aea6794f170db681a892bf6f25ad45e64b5e09ab79b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286936808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6aefa7b43f50c265f6d272126927cd4e35ad240831e9132ee63823e2817b31a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:37:07 GMT
ENV container oci
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:13cb9595e24a2f94b16cce79d23e558d6f0db7a9c73a3191107351f48264bcc1 in /      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:37:08 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:37:09 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:36:45Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:36:45Z" "architecture"="aarch64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:36:45Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:52:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:52:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:52:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:52:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:52:39 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 22 Jul 2026 18:52:43 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 22 Jul 2026 18:52:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:52:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:52:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 19:04:09 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:04:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:04:09 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:04:09 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:04:09 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:04:12 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:04:12 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 22 Jul 2026 19:04:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 22 Jul 2026 19:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:04:15 GMT
USER gradle
# Wed, 22 Jul 2026 19:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 22 Jul 2026 19:04:15 GMT
USER root
```

-	Layers:
	-	`sha256:874d407f446b6129b274afbba9c870e8b07666e3e15e80c2fdb80ce6e0fe8f97`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 38.8 MB (38824182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48701305c0fec7ba79059e5233b6125069d9c302804e25a31325fccb8c4cb241`  
		Last Modified: Wed, 22 Jul 2026 18:52:57 GMT  
		Size: 28.1 MB (28102765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e0dd3798723732690b94a7a5a2021a1fe1845ce977d7b83c1e77dd21e1950c`  
		Last Modified: Wed, 22 Jul 2026 18:52:58 GMT  
		Size: 54.3 MB (54273430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04e696b3898426fef7ee8178f9db816b1e4170a961a90f826b572379f133865`  
		Last Modified: Wed, 22 Jul 2026 18:52:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa4a863d18466e372a10297ea150191660c91e68f5bf7b7381f524d422cf703`  
		Last Modified: Wed, 22 Jul 2026 18:52:57 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbffdcfb55e850f2ba4743763f841cb16098297a2d0f706e78879abce0f757c7`  
		Last Modified: Wed, 22 Jul 2026 19:04:30 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0c670dab961958f445203fa7178e8fbc0a5b549fbf6008050ba2c78c1a53c8b`  
		Last Modified: Wed, 22 Jul 2026 19:04:32 GMT  
		Size: 37.2 MB (37203131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e2180628b1c89160a78d9244778a42852d86285423e1fc52c557d0e8e41cc7`  
		Last Modified: Wed, 22 Jul 2026 19:04:34 GMT  
		Size: 128.5 MB (128469419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed52769da47b5cb678f22506ab6764a88ee616701bd674393ce3600f030f944`  
		Last Modified: Wed, 22 Jul 2026 19:04:30 GMT  
		Size: 59.5 KB (59523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:afb4510ee678c1f4672beb531a6908f895bfb7638a2ee1ce939c01d21d9ef2c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5460166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861b81195002c46a74aee7afabe00037a60825abf93c80bfa515061a118bec7f`

```dockerfile
```

-	Layers:
	-	`sha256:55751f641d150afe34e2ce51a516845e6bd09fb37873f726cabfffe18d2f1bad`  
		Last Modified: Wed, 22 Jul 2026 19:04:31 GMT  
		Size: 5.4 MB (5436439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d52d0578a89bf499fed2c1e3434f327b47b30df17faa64866fa6c9410d970e9a`  
		Last Modified: Wed, 22 Jul 2026 19:04:30 GMT  
		Size: 23.7 KB (23727 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:1c98b60c01ea63c27ca4d8ce59e211a0b3db98efdb52bd41870a440be25ece4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295595738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d099122d40ec76d0f0fe0359faa8c6e2a1eafef106a64e66619f1079cec6e9e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 22 Jul 2026 07:40:04 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:40:04 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:40:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:40:04 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:40:05 GMT
ENV container oci
# Wed, 22 Jul 2026 07:40:08 GMT
COPY dir:c8f8871283832381250ef21ab896162ec1758ae55eb11b9cbea9913e273a401a in /      
# Wed, 22 Jul 2026 07:40:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:40:09 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:40:09 GMT
COPY dir:6088fe605826e3170ecfab99272b714167baa9ea41de316da7abbcc2c10ff764 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:40:10 GMT
COPY dir:6088fe605826e3170ecfab99272b714167baa9ea41de316da7abbcc2c10ff764 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:40:11 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:39:12Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:39:12Z" "architecture"="ppc64le" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:39:12Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:44:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:44:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:44:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:44:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:44:17 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 22 Jul 2026 18:44:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 22 Jul 2026 18:44:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:44:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:44:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 21:34:20 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 21:34:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 21:34:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 21:34:20 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 21:34:20 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 21:36:54 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 21:36:54 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 22 Jul 2026 21:36:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 22 Jul 2026 21:36:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 21:36:58 GMT
USER gradle
# Wed, 22 Jul 2026 21:36:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 22 Jul 2026 21:36:59 GMT
USER root
```

-	Layers:
	-	`sha256:d11d072ba4cd5e97a3d2471dfc12936c2852679f69eb78cd61ff24051fabae00`  
		Last Modified: Wed, 22 Jul 2026 12:11:59 GMT  
		Size: 45.1 MB (45136368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94ae6eb1939b95b8b464207fd65020201742c83c38ca654588914489e8b4842`  
		Last Modified: Wed, 22 Jul 2026 18:45:00 GMT  
		Size: 30.1 MB (30086583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a0d54c5df6e4a03727be818259c76966ad969fa9f6e74af60d5f62f49aaff6e`  
		Last Modified: Wed, 22 Jul 2026 18:45:01 GMT  
		Size: 52.7 MB (52669703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f098a8b599ff2ed3e944e605d5431d0c861f55b87fb133a33073999a564676e4`  
		Last Modified: Wed, 22 Jul 2026 18:44:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da3377f3bfbdbcab6733562c5dc4fc78f42ed30c9eb9d13842ae257331adf5b`  
		Last Modified: Wed, 22 Jul 2026 18:45:00 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7573491057619ab3ee0230358296e02e27610bcafeda11cb65919759b1f660`  
		Last Modified: Wed, 22 Jul 2026 21:35:17 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d13596f4b2c4064d02deaad849e34050b7a0fc10a29c88e0187101c39d156ff`  
		Last Modified: Wed, 22 Jul 2026 21:37:35 GMT  
		Size: 39.2 MB (39194294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6e39bf5ab9655853a3e33e8776cea3a7aa057c7ddfad470c7ab9d70f328adc`  
		Last Modified: Wed, 22 Jul 2026 21:37:37 GMT  
		Size: 128.5 MB (128469422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2670fec45b01bc53eaa986a2b83e22d6af3de821986f26b4b8ec6e7b26dbfe`  
		Last Modified: Wed, 22 Jul 2026 21:37:33 GMT  
		Size: 35.0 KB (35011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:8b0fb021e6eb8102374ccdd7c9b2b7d44779c85502612bd7464745edc9400673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5457905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3f11e57f69a48b5e5833d75b249be3ab8f7ce4acc4ad4cd9bc905118493319`

```dockerfile
```

-	Layers:
	-	`sha256:fc5c0fbaec6cb73b2722b94f97a6d578708b007d116f20bff06bc2127d8ceb97`  
		Last Modified: Wed, 22 Jul 2026 21:37:33 GMT  
		Size: 5.4 MB (5434289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d02d32f9104f3997d6d9e21f650c813528fd25f42b243bbd163b59b0147e3d44`  
		Last Modified: Wed, 22 Jul 2026 21:37:33 GMT  
		Size: 23.6 KB (23616 bytes)  
		MIME: application/vnd.in-toto+json
