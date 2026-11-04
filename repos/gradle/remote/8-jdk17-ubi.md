## `gradle:8-jdk17-ubi`

```console
$ docker pull gradle@sha256:fbdc96bdb2a47452f029f41a9d611659e9ac7c49c3c826acb1e865876c2a01b7
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

### `gradle:8-jdk17-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:7970f4426d8d1bb0eae550e41aa53f2f9cac34a869da373e232b88bcad93f87b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.9 MB (391858515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a90ad14fba2b3eade6af08ef3ab4a40145263191b4e18dc88b0029f14ee9d7b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:24:06 GMT
ENV container oci
# Mon, 02 Nov 2026 00:24:06 GMT
COPY dir:cf1fefd4be4ce5fd82fa07ab19c9ebc91b7a3b97c257e48429ad961fafad7a2a in /      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:24:07 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /root/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:23:43Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:23:43Z" "architecture"="x86_64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:23:43Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 21:57:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:57:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:57:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:57:05 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 21:57:05 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:57:11 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 21:57:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:57:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:57:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 21:57:13 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:13:30 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 22:13:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 22:13:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 22:13:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 22:13:30 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 22:13:36 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 03 Nov 2026 22:13:36 GMT
ENV GRADLE_VERSION=8.14.6
# Tue, 03 Nov 2026 22:13:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Tue, 03 Nov 2026 22:13:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 22:13:40 GMT
USER gradle
# Tue, 03 Nov 2026 22:13:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 22:13:40 GMT
USER root
```

-	Layers:
	-	`sha256:0811bc98b695d75fb388d477ae3bfd11d656060625574fd2cff4fde9fbb28941`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 40.7 MB (40656388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc80300e74fe35e5726a92e681125c195a94b5d952a87ae9dee2411cc3974a7`  
		Last Modified: Tue, 03 Nov 2026 21:57:29 GMT  
		Size: 27.6 MB (27633962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d6dd2dcf065fa7c538fd525ea7a5f6b533aaa169a66f7f24f469e651f452b4`  
		Last Modified: Tue, 03 Nov 2026 21:57:32 GMT  
		Size: 146.1 MB (146096005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6274c034d9e6f589edef9bf08f656ac6b4703811ed4eba0d678cc113e7879472`  
		Last Modified: Tue, 03 Nov 2026 21:57:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa9df2c479e1a29112270364cc6bf2f8e3fe4b74f5854acd0057408fd9f7e135`  
		Last Modified: Tue, 03 Nov 2026 21:57:28 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c86c3a71452d5104b3b74227514daeb270d6d374e06e585781e14f2770b1dd2`  
		Last Modified: Tue, 03 Nov 2026 22:13:57 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ad404d0252bc740ae50361ff00a19ecce07df9c2aff63bc6d0f6588209d96c`  
		Last Modified: Tue, 03 Nov 2026 22:13:58 GMT  
		Size: 38.0 MB (37985595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddfd4df3d16b2f7cdccc71aeda9adfcc0470d91875ee9b383d1dc0e45bfd4723`  
		Last Modified: Tue, 03 Nov 2026 22:14:01 GMT  
		Size: 139.4 MB (139427353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae9b30376aa22d9ae88e7d85cbfad9ff51fe4494b7f01d89b5d7f0ccb9767e4`  
		Last Modified: Tue, 03 Nov 2026 22:13:57 GMT  
		Size: 54.9 KB (54909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:f73d5d608ddf1682614ed03bd86e2fdc324ac65decc87fc7b03229ef2232a24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5416582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5f169c877aafcb5a9e3184a6682092421ae54dd95128c8b83cbcc354a8a95c`

```dockerfile
```

-	Layers:
	-	`sha256:63554795416e9450717c72910a8250234c5be2b4dc6916659ae6ade8b0a285fa`  
		Last Modified: Tue, 03 Nov 2026 22:13:57 GMT  
		Size: 5.4 MB (5392743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9184facadd8de0cc5914439130d40767a76a0af035c8d7e03fcd4d8841e46127`  
		Last Modified: Tue, 03 Nov 2026 22:13:56 GMT  
		Size: 23.8 KB (23839 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:0adbd64e80c258b449619cb0a1441a4aa415339c017a3dcbba0a7d8e0f9a3fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.6 MB (388559640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27d0f9c6d09ef68672126882004b42de3e67ac3c4cd4ced3049d943a1d43e10`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:25:54 GMT
ENV container oci
# Mon, 02 Nov 2026 00:25:55 GMT
COPY dir:beed1d3a16575ec118f191761da739f3c3ef4d43b6f2d9506bd7c069a5485c34 in /      
# Mon, 02 Nov 2026 00:25:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:25:55 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:25:57 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:25:24Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:25:24Z" "architecture"="aarch64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:25:24Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 21:56:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:56:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:56:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:56:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 21:56:57 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:57:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 21:57:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:57:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:57:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 21:57:05 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:13:12 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 22:13:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 22:13:12 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 22:13:12 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 22:13:12 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 22:13:18 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 03 Nov 2026 22:13:18 GMT
ENV GRADLE_VERSION=8.14.6
# Tue, 03 Nov 2026 22:13:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Tue, 03 Nov 2026 22:13:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 22:13:21 GMT
USER gradle
# Tue, 03 Nov 2026 22:13:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 22:13:22 GMT
USER root
```

-	Layers:
	-	`sha256:523fc0b16ef3fb709fb87d6929dec51b632bf658c79e38ac795e0e360eb9a90c`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 38.8 MB (38764189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efaba453525abcdbad8c9dd03cfc98e89d6721c7c7671496e5f08aa5c7639c21`  
		Last Modified: Tue, 03 Nov 2026 21:57:23 GMT  
		Size: 28.1 MB (28069073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4728e412b107a5340dcdf4c64104162c972bdc846e559939f7c904bd61a5279e`  
		Last Modified: Tue, 03 Nov 2026 21:57:26 GMT  
		Size: 145.0 MB (144966404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7025ea220c2ccad5ec28ef6ade6ef229f67ce0b68ce7e178e6015d47eeb7b1`  
		Last Modified: Tue, 03 Nov 2026 21:57:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ff524f5517dc9b139cab144e0e5b2d6b4cf4a9686f53c8d40358c910c264a8`  
		Last Modified: Tue, 03 Nov 2026 21:57:22 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7e069d3d491c4205ec57ac8b285a6e15a4e7d2fe3bac3df34157c4813dfae4`  
		Last Modified: Tue, 03 Nov 2026 22:13:39 GMT  
		Size: 1.7 KB (1672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9120655efae426dabe58d9e1a78e5295c88efbf9d52cedd72f6b71aa66d7c2`  
		Last Modified: Tue, 03 Nov 2026 22:13:41 GMT  
		Size: 37.3 MB (37268788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73904a3cea633f94210d8d13d59b24cd31df8e4c3bca6b8bb85a0a0090ef9ddd`  
		Last Modified: Tue, 03 Nov 2026 22:13:43 GMT  
		Size: 139.4 MB (139427351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd22071737375c2a594cba7fa65b1beba2c36b76449d939770a7e2de1b20a04`  
		Last Modified: Tue, 03 Nov 2026 22:13:39 GMT  
		Size: 59.5 KB (59532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:7ce13c52c736300ac8370a78152a2665acdda3189d1937f03c6abb1baf912220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5414380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc69cd0bf0f571dfa88aee6dc6a77b0eac33f90db198b97d579962547bcc971`

```dockerfile
```

-	Layers:
	-	`sha256:c285da257762c1915ff8c90de4caa4f7be2f57edb50415b8c4e5c6100703c357`  
		Last Modified: Tue, 03 Nov 2026 22:13:39 GMT  
		Size: 5.4 MB (5390367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47801e8ceafbea00adff2063f2efb81d191b0607581acee12a04fc2c574584ed`  
		Last Modified: Tue, 03 Nov 2026 22:13:39 GMT  
		Size: 24.0 KB (24013 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:f17cb34a41ad6ed7e5569a13fda8739505a7015d8a5c54e05f58a0c16b3da875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.7 MB (398717917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ec4d049bb172cf0265d429e48cee4e4c3572f3814af9049e9d41f5b1c827b3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:25:28 GMT
ENV container oci
# Mon, 02 Nov 2026 00:25:29 GMT
COPY dir:71d38a1ba2a232bf2a1539156a589171b69c7e13bdcef7890d1e066b1fc4a7ca in /      
# Mon, 02 Nov 2026 00:25:29 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:25:29 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:25:29 GMT
COPY dir:0f37da6522cb4da37ab5bb24702dcfbe681f0adba3328e248ab52a9853b76016 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:25:30 GMT
COPY dir:0f37da6522cb4da37ab5bb24702dcfbe681f0adba3328e248ab52a9853b76016 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:25:30 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:25:00Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:25:00Z" "architecture"="ppc64le" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:25:00Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 01:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 01:21:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:21:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 01:21:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 01:21:36 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 22:06:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 22:06:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 22:06:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 22:06:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 22:06:58 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:16:30 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 22:16:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 22:16:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 22:16:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 22:16:31 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 22:16:52 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 03 Nov 2026 22:16:52 GMT
ENV GRADLE_VERSION=8.14.6
# Tue, 03 Nov 2026 22:16:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Tue, 03 Nov 2026 22:19:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 22:19:10 GMT
USER gradle
# Tue, 03 Nov 2026 22:19:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 22:19:12 GMT
USER root
```

-	Layers:
	-	`sha256:aa3f596ae7698c21f199c443b9309fb1eafc211ad3ad4ff1a6c5c3ff4b3250fd`  
		Last Modified: Mon, 02 Nov 2026 06:14:43 GMT  
		Size: 45.1 MB (45065542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef25287ca90e37eaf01f14803d76ba77c63e423cab3bf67817cc9f7d5f9f28d`  
		Last Modified: Tue, 03 Nov 2026 01:22:14 GMT  
		Size: 30.1 MB (30056005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00abfeeb8f9e3d23593d00aaf257fa619d2f4611da52101db774abe6f92a6bde`  
		Last Modified: Tue, 03 Nov 2026 22:07:41 GMT  
		Size: 144.9 MB (144878896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808d836cc4f41ed639d3eddaaebe693a79cef8de86c914a38e89fdd7fd9798b1`  
		Last Modified: Tue, 03 Nov 2026 22:07:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2f05dbdea784eb9a64417c62e209a5f92ef5bd1220de7a8ad398454721c006`  
		Last Modified: Tue, 03 Nov 2026 22:07:35 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbe50c7e8f0dba5b79427969a4e3a7ef36a974f49a0d5ed76fdb796473398b5c`  
		Last Modified: Tue, 03 Nov 2026 22:17:46 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4eb82be8f9c59923ae537a55e8ff9d3d3dd1e913384044dfca717cf65640e74`  
		Last Modified: Tue, 03 Nov 2026 22:17:48 GMT  
		Size: 39.3 MB (39250797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9407de80f7c81d6f6a49df4879341311730f665ebd4b536808f2f7cb90e523b4`  
		Last Modified: Tue, 03 Nov 2026 22:20:05 GMT  
		Size: 139.4 MB (139427352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f70628f65ce8330fa10f7e239a0d48903e265fa89ba5c293041acab2a75f31a`  
		Last Modified: Tue, 03 Nov 2026 22:20:02 GMT  
		Size: 35.0 KB (35013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:b633510327c82984bb563007145d8cbe26d1fa6d1dfc443bc9dc22f5c2e8452b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5411013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d198a6a51e5f38b6a701b4725ac6ad608bcee92a3bae30b9d3093551f78c59`

```dockerfile
```

-	Layers:
	-	`sha256:0217ef3cfbabef3f9c6889dcc2af739f24123b80b6f414b6f94141c5821ccbc9`  
		Last Modified: Tue, 03 Nov 2026 22:20:02 GMT  
		Size: 5.4 MB (5387076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fcaed829bdf41f65b9ec7c2ce3391fb725bafd9fbea730f6030d5128ef340ea`  
		Last Modified: Tue, 03 Nov 2026 22:20:01 GMT  
		Size: 23.9 KB (23937 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:b3b0cfd7f4c8744a55529c8e1c35f747b004fbda3a2ea39c59534b0b37bba9b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.9 MB (378853559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b5b030f5914d9b8c1c0acd5446c8b5e3a5f2a32a1806936a220de722424cb1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:30:43 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:30:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:30:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:30:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:30:44 GMT
ENV container oci
# Mon, 02 Nov 2026 00:30:44 GMT
COPY dir:3354298e26aff6759834f6c721ee20e5801c62e2d596eccc7a3850ff1107cf84 in /      
# Mon, 02 Nov 2026 00:30:45 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:30:45 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:30:45 GMT
COPY dir:126236b2a17503d969078765b28a2ff98fce8c606859003e14181ed8b8fbbd42 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:30:45 GMT
COPY dir:126236b2a17503d969078765b28a2ff98fce8c606859003e14181ed8b8fbbd42 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:30:46 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:29:55Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:29:55Z" "architecture"="s390x" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:29:55Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 01:01:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 01:01:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:01:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 01:01:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 01:01:02 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:55:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 21:55:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:55:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:55:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 21:55:24 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:12:01 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 22:12:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 22:12:01 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 22:12:01 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 22:12:01 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 22:12:05 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 03 Nov 2026 22:12:05 GMT
ENV GRADLE_VERSION=8.14.6
# Tue, 03 Nov 2026 22:12:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Tue, 03 Nov 2026 22:12:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 22:12:09 GMT
USER gradle
# Tue, 03 Nov 2026 22:12:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 22:12:09 GMT
USER root
```

-	Layers:
	-	`sha256:71ed50c648e5ec14fc803904806e41d775fb87612cbc7d6f1a0c3b33bed64ce3`  
		Last Modified: Mon, 02 Nov 2026 06:14:38 GMT  
		Size: 38.7 MB (38724978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4f6fd9f61e3018ce6bb3d88fa5f5942dcf69cc34bca6781ec67b5f321bad6c`  
		Last Modified: Tue, 03 Nov 2026 01:01:23 GMT  
		Size: 27.7 MB (27665815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc73923455cd282e506e2f9402317d73405bf1e38d9827c2f15e989517b9fcec`  
		Last Modified: Tue, 03 Nov 2026 21:55:48 GMT  
		Size: 135.4 MB (135390819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:536aea5254978bba715ef3808d7c2e410af12ae0fbcc6ae5b8982f1d343a2aa1`  
		Last Modified: Tue, 03 Nov 2026 21:55:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600b4b1ee577a9af76a3f816913c82c768348740a435e2e2a2ae43b55585b998`  
		Last Modified: Tue, 03 Nov 2026 21:55:46 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550a772cf782e680299dbb2cfe45776947f9284887355c400b67629d39857003`  
		Last Modified: Tue, 03 Nov 2026 22:12:32 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f939d1dee3df283d042a543163baa01a5d9e804febfb88ce66410a0cf28c182`  
		Last Modified: Tue, 03 Nov 2026 22:12:33 GMT  
		Size: 37.6 MB (37605290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e913c5a801688ee6308c76b41f3be5e70e9b94b5a00d8b44337e9b6af8ad8e`  
		Last Modified: Tue, 03 Nov 2026 22:12:35 GMT  
		Size: 139.4 MB (139427348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea8714a45ca3530638fbfccaf3bf1082369bb3d1b2119e2597b1928be215181`  
		Last Modified: Tue, 03 Nov 2026 22:12:32 GMT  
		Size: 35.0 KB (35000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:2f995d8ad5b1765f964855605c8b0d23af08c31dc624666630210c936d215c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5400196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60836ab374b74df49b0739745eff6ba81f30ea168a2e36c2916f5692b7b3398b`

```dockerfile
```

-	Layers:
	-	`sha256:791bcdb1a51d31e27a37659926ffae2991a29a882bc9cccac87fc4ba195adc2c`  
		Last Modified: Tue, 03 Nov 2026 22:12:32 GMT  
		Size: 5.4 MB (5376320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:721b9fef21ec9d523ca0db282b9e8ca2c5a394115ba0fd0e4d0431f84abce359`  
		Last Modified: Tue, 03 Nov 2026 22:12:32 GMT  
		Size: 23.9 KB (23876 bytes)  
		MIME: application/vnd.in-toto+json
