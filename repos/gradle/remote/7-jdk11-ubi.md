## `gradle:7-jdk11-ubi`

```console
$ docker pull gradle@sha256:91fee876498a8e8ce7fe0e0eaafa57625e2ab1731c3af89a694d1aa2a3b665a2
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

### `gradle:7-jdk11-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:19713ede5b7d60cfa131bdb461795851dac29ff2ee1bae9c5d483139f3b61360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.1 MB (377133309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4e2a7b0d285fbfc6a8bd4f7db9b717b3aae126a49819616b5f672721ee125d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:42:09 GMT
ENV container oci
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:8b54154024a9f6604a1f7d88b375ea31b450980a74152912280af8df957f00cd in /      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:42:09 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /root/buildinfo/      
# Tue, 25 Aug 2026 08:42:10 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:41:53Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:41:53Z" "architecture"="x86_64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:41:53Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:45:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 17:45:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:45:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 17:45:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:45:40 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Tue, 25 Aug 2026 17:46:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64le)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        x86_64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 25 Aug 2026 17:46:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 25 Aug 2026 17:46:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:46:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 25 Aug 2026 17:46:03 GMT
CMD ["jshell"]
# Tue, 25 Aug 2026 17:57:32 GMT
CMD ["gradle"]
# Tue, 25 Aug 2026 17:57:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 25 Aug 2026 17:57:32 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 25 Aug 2026 17:57:32 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 25 Aug 2026 17:57:32 GMT
WORKDIR /home/gradle
# Tue, 25 Aug 2026 17:58:10 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 25 Aug 2026 17:58:10 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 25 Aug 2026 17:58:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 25 Aug 2026 17:58:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 25 Aug 2026 17:58:12 GMT
USER gradle
# Tue, 25 Aug 2026 17:58:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 25 Aug 2026 17:58:13 GMT
USER root
```

-	Layers:
	-	`sha256:4853116e101d40f67d98c14106326af68960f39e03627259f46bfe4c535cca9b`  
		Last Modified: Tue, 25 Aug 2026 09:35:48 GMT  
		Size: 40.7 MB (40711993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ab84d2729fce299f941d8b11b60690ebe46e945734018ccee2f299b1c46882`  
		Last Modified: Tue, 25 Aug 2026 17:46:21 GMT  
		Size: 27.7 MB (27657997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea87379f1988fc43e96732f96d78f7f7be30040b9128c42e65e8026e5c6cb585`  
		Last Modified: Tue, 25 Aug 2026 17:46:24 GMT  
		Size: 142.3 MB (142322578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec60615e33893e2960dd8cb9aa3767953cd1df7f9f849c3b0c6d1eaa3dc63c2`  
		Last Modified: Tue, 25 Aug 2026 17:46:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62ea4b063b9c34357ecb413c98414599628bf4c3986311b1b4840f9c4362df6`  
		Last Modified: Tue, 25 Aug 2026 17:46:20 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6962303884f35eb486093c13418a8b37a42412a309d208cfe678df1ea41071`  
		Last Modified: Tue, 25 Aug 2026 17:57:54 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe890c924d06b9ae3778c148be45406a9ba79aac08f2471e4b28fce9e9f6a85e`  
		Last Modified: Tue, 25 Aug 2026 17:58:28 GMT  
		Size: 37.9 MB (37912081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf47081dbb065e33c0854eed541d94cdf56d2b3fa6365e4ff17e42153b83774`  
		Last Modified: Tue, 25 Aug 2026 17:58:30 GMT  
		Size: 128.5 MB (128469419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf2871697c2325ae44539ddb46170b4f910415374a6683439cdce6221a3123f`  
		Last Modified: Tue, 25 Aug 2026 17:58:26 GMT  
		Size: 54.9 KB (54900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:ff80d7b3bf82eeb8a5e85821078038ef6ff43db7acc8f450b3fe79b4464c52e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5360268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285f96978d0a53734198db2728fddffd64df1a302667c6d09215d1f642bc126c`

```dockerfile
```

-	Layers:
	-	`sha256:d03f084f5f520cf42ac6f4c838e6e5efb088552dfe92f9fbb64a108883334ab7`  
		Last Modified: Tue, 25 Aug 2026 17:58:26 GMT  
		Size: 5.3 MB (5336689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2c898ec6f611b5d637a57fcc1c7e8731ba814412134ebb047b19df8646da22e`  
		Last Modified: Tue, 25 Aug 2026 17:58:26 GMT  
		Size: 23.6 KB (23579 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk11-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:f1a53491dd250e1fc7a61ef9f3e4996f84056e85fd4c3e857717d17fbd47ebf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.7 MB (371682475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14db1f36c19bcf9b082f2ba622eb89ce7530501fd28c556edcbb703610b78a0d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:43:54 GMT
ENV container oci
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:fc82963b4cd1761f20a1a620749f6598604531a4997e7419bffffcb2369d8feb in /      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:43:55 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /root/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:43:32Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:43:32Z" "architecture"="aarch64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:43:32Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:45:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 17:45:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:45:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 17:45:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:45:02 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Tue, 25 Aug 2026 17:45:11 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64le)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        x86_64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 25 Aug 2026 17:45:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 25 Aug 2026 17:45:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:45:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 25 Aug 2026 17:45:12 GMT
CMD ["jshell"]
# Tue, 25 Aug 2026 17:55:55 GMT
CMD ["gradle"]
# Tue, 25 Aug 2026 17:55:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 25 Aug 2026 17:55:55 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 25 Aug 2026 17:55:55 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 25 Aug 2026 17:55:55 GMT
WORKDIR /home/gradle
# Tue, 25 Aug 2026 17:55:59 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 25 Aug 2026 17:55:59 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 25 Aug 2026 17:55:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 25 Aug 2026 17:56:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 25 Aug 2026 17:56:01 GMT
USER gradle
# Tue, 25 Aug 2026 17:56:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 25 Aug 2026 17:56:02 GMT
USER root
```

-	Layers:
	-	`sha256:cfeec01a2bba583c2dcde9b457cc89d4b56583567390972f5501ce5ad4fa4ae8`  
		Last Modified: Tue, 25 Aug 2026 09:35:36 GMT  
		Size: 38.8 MB (38815608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972767872e005aa93410106d03669f453dd32e1e46d10128d0965d1fa92fbfc1`  
		Last Modified: Tue, 25 Aug 2026 17:45:29 GMT  
		Size: 28.1 MB (28103676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b894113aeb076b3085b6570c17b16ba9dda2c1403aff5f8a484ac38062fba629`  
		Last Modified: Tue, 25 Aug 2026 17:45:32 GMT  
		Size: 139.0 MB (139026033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7a6302cd641dc58949056daab9af5a57c8037cff70a4682b3cf5fba287d6a5`  
		Last Modified: Tue, 25 Aug 2026 17:45:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fb99047b2bf55c5f8b0f058d8b48d8d1667bef024178ce671e40063a461eaa`  
		Last Modified: Tue, 25 Aug 2026 17:45:28 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b965a5499c17f892cf6b0648fbda997421faaa79e231e4b8993989db0192ed`  
		Last Modified: Tue, 25 Aug 2026 17:56:18 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f6dbe72664280f08e868ac4054c40a35e3180cc933de68fb660fd1987c99c2c`  
		Last Modified: Tue, 25 Aug 2026 17:56:19 GMT  
		Size: 37.2 MB (37203876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5eb6a950135babdd91e099ae7926ce8fb46f7955b22012e50e031c3459a2320`  
		Last Modified: Tue, 25 Aug 2026 17:56:21 GMT  
		Size: 128.5 MB (128469419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b3f70c291ae4ffcf4c568f2f3c6fae6c73560e17471feaa15f2c998c5835727`  
		Last Modified: Tue, 25 Aug 2026 17:56:18 GMT  
		Size: 59.5 KB (59521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:2d773b3f6a89870847f0c65ba170ee6545677cdbb68efe0e17f2d74854b4100d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5358683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee396adf543d39037b2c61f1e1f3f03f44442eec791bb82772def5b863bc9e3f`

```dockerfile
```

-	Layers:
	-	`sha256:890fb2f04ca7c2788bae34c67a77e4251f13daf41d53fb75b94b73fdf9d9e4c8`  
		Last Modified: Tue, 25 Aug 2026 17:56:18 GMT  
		Size: 5.3 MB (5334931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f90fca97427ca7bd4aef2ba05c882042047b0e3e11dccfe456484376ff47dd52`  
		Last Modified: Tue, 25 Aug 2026 17:56:17 GMT  
		Size: 23.8 KB (23752 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk11-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:74bd02652071b4a1bb0f5c6c84b7731c7c75c10461bd99066b88b59e9f91d3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.5 MB (372517457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:564ee9688c7f16e1b45aaeb242a5d34d254cce90fd17058367e864544bfa869a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:29:28 GMT
ENV container oci
# Mon, 17 Aug 2026 17:29:29 GMT
COPY dir:fd02ee61f18b6a9a0841859445fda5f8ab05c6927edd49e303b6a533755bd4a4 in /      
# Mon, 17 Aug 2026 17:29:29 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:29:29 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:29:29 GMT
COPY dir:b25d5255b5edbca8e555492c2c12dd22f04038385b82b65469d49226dd8af92b in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:29:29 GMT
COPY dir:b25d5255b5edbca8e555492c2c12dd22f04038385b82b65469d49226dd8af92b in /root/buildinfo/      
# Mon, 17 Aug 2026 17:29:29 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:29:13Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:29:13Z" "architecture"="ppc64le" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:29:13Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Fri, 21 Aug 2026 20:26:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 20:26:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 20:26:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 20:26:31 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 20:26:31 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 20:31:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64le)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        x86_64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 20:31:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:31:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:31:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:31:12 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 21:00:36 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 21:00:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 21:00:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 21:00:36 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 21:00:36 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 21:05:01 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 21 Aug 2026 21:05:01 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 21 Aug 2026 21:05:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 21 Aug 2026 21:05:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 21:05:06 GMT
USER gradle
# Fri, 21 Aug 2026 21:05:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 21 Aug 2026 21:05:07 GMT
USER root
```

-	Layers:
	-	`sha256:6392cf19f004ed09bcdb61b0e4a5631b05086155709b2aef736fecbd95fbce63`  
		Last Modified: Mon, 17 Aug 2026 18:18:04 GMT  
		Size: 45.1 MB (45134291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dfe74e2c931a31fff9c889520d02658ea98fe4483f1a9cf8e06dd33280afc3`  
		Last Modified: Fri, 21 Aug 2026 20:27:07 GMT  
		Size: 30.1 MB (30087125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52460bc57681adb989b3a5d73f5b321ee86ff0db39d1e2b105a21e8ff8f7531`  
		Last Modified: Fri, 21 Aug 2026 20:31:44 GMT  
		Size: 129.6 MB (129592001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb527b8f88824f27bbdad363c54c14318895b107f3020d557ebe7c61b5b1ed6`  
		Last Modified: Fri, 21 Aug 2026 20:31:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4298267539a07370fb9ba82d453406c80387bec1e522db0b17bcc043bdc3df7e`  
		Last Modified: Fri, 21 Aug 2026 20:31:41 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6195ca300a4455453bbb572adfc5840e464433a3dd932de832fd58145938dc65`  
		Last Modified: Fri, 21 Aug 2026 21:01:28 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79cbd701942cbf0aa03e6c9dcd5f870b1e8673db53ea90a9a8a13c3c109c8c4`  
		Last Modified: Fri, 21 Aug 2026 21:05:41 GMT  
		Size: 39.2 MB (39195218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6579ab3ea18bac2cbd6fc1874354e3d5ae8c6b780f6fe86ccc86ca925d9a70ec`  
		Last Modified: Fri, 21 Aug 2026 21:05:43 GMT  
		Size: 128.5 MB (128469470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234499b39769109f123738a87cc2ac9ef909509e4bb462d43c9a512f4d468b66`  
		Last Modified: Fri, 21 Aug 2026 21:05:40 GMT  
		Size: 35.0 KB (35006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:56fc7b9b76e0a8209e7deaee7ca57385b8bdeb120afc1bede12a6b223057949f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e288d6ad976ec60410b23f9b9034fc078eccd22ba7c9efcf970593f38d1032c1`

```dockerfile
```

-	Layers:
	-	`sha256:1c49bc917fd4cfb0d6b3d2f112a7b2e1eb2a9e1211ec4411f8c0c675d24ce411`  
		Last Modified: Fri, 21 Aug 2026 21:05:40 GMT  
		Size: 5.3 MB (5331653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d22fa3d06d86a70e1adae2345ad17c031e57a55930ba7173452f38dce1095da`  
		Last Modified: Fri, 21 Aug 2026 21:05:39 GMT  
		Size: 23.6 KB (23605 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk11-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:58cc621ef4fe5415870f4d858ddd8940451f7a1a705d98e167eeba40d26fb5cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.5 MB (355519138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cd09d82cfcc10f6eec9716614955b7f4bf4b567f90520789cca096e328d779`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 25 Aug 2026 08:50:00 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:50:00 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:50:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:50:00 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:50:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:50:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:50:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:50:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:50:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:50:00 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:50:00 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:50:00 GMT
ENV container oci
# Tue, 25 Aug 2026 08:50:00 GMT
COPY dir:23c70db6e76bc6ea5061b556754d8a1704ccb2feef0fc87ab93a5654d46761e2 in /      
# Tue, 25 Aug 2026 08:50:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:50:00 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:50:00 GMT
COPY dir:ed3a3ac0e58e5782de6fe40a6de2186b2361e9badfa28ee5f2ccb1605402851a in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:50:00 GMT
COPY dir:ed3a3ac0e58e5782de6fe40a6de2186b2361e9badfa28ee5f2ccb1605402851a in /root/buildinfo/      
# Tue, 25 Aug 2026 08:50:00 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:49:18Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:49:18Z" "architecture"="s390x" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:49:18Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:47:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 17:47:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:47:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 17:47:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:47:43 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Tue, 25 Aug 2026 17:47:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64le)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        x86_64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 25 Aug 2026 17:47:56 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 25 Aug 2026 17:47:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:47:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 25 Aug 2026 17:47:58 GMT
CMD ["jshell"]
# Tue, 25 Aug 2026 17:57:12 GMT
CMD ["gradle"]
# Tue, 25 Aug 2026 17:57:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 25 Aug 2026 17:57:12 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 25 Aug 2026 17:57:12 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 25 Aug 2026 17:57:13 GMT
WORKDIR /home/gradle
# Tue, 25 Aug 2026 17:57:30 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 25 Aug 2026 17:57:30 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 25 Aug 2026 17:57:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 25 Aug 2026 17:57:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 25 Aug 2026 17:57:39 GMT
USER gradle
# Tue, 25 Aug 2026 17:57:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 25 Aug 2026 17:57:41 GMT
USER root
```

-	Layers:
	-	`sha256:a6135cd535d2f39b7151f75d61dd9655c68455b59291e5770dbcd6cce1c976df`  
		Last Modified: Tue, 25 Aug 2026 09:48:37 GMT  
		Size: 38.8 MB (38759452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19dc5e98e314d5633f88c80002d2d7e85ba61e2fbada799c5e431b95cbf64b96`  
		Last Modified: Tue, 25 Aug 2026 17:48:50 GMT  
		Size: 27.7 MB (27686375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb47c1c39c9c78b8a0db49429a174ca6ad4eee35fe48ca4e469b199a6db019ba`  
		Last Modified: Tue, 25 Aug 2026 17:48:52 GMT  
		Size: 123.0 MB (123048681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b9e7441424366971cc5e68380dca23b446a534247266325f412d5816e88555`  
		Last Modified: Tue, 25 Aug 2026 17:48:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b87b158515fa2ee5fa9c1d44dd92d25552a2e3106c8800a836448734edb7c1`  
		Last Modified: Tue, 25 Aug 2026 17:48:49 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f24a6f122f650086c6660d0fc4a5ae6d5dbec67902bd4bb265889581b5449ef`  
		Last Modified: Tue, 25 Aug 2026 17:58:25 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909ec7f8b51415dddca9e16ee9970e4aafda5ade488066e817dce49caabe0367`  
		Last Modified: Tue, 25 Aug 2026 17:58:29 GMT  
		Size: 37.5 MB (37515860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a839d67995d24eb550658e57d9d8fd82595fed9686596dad39bfb28dd21248ca`  
		Last Modified: Tue, 25 Aug 2026 17:58:37 GMT  
		Size: 128.5 MB (128469423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e259864e21d48b146f8c7450e9bd610e180b2b3cf036530bbe9a64a79bc7539f`  
		Last Modified: Tue, 25 Aug 2026 17:58:31 GMT  
		Size: 35.0 KB (35008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:d67bc5e6d581d639846052d91a005676558ef2479bb11fa50fba469a8f7a69c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5345095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b54720a12f3320c26823809114a31146da4b7e2e941f33b2a0a4739a8aab873`

```dockerfile
```

-	Layers:
	-	`sha256:55e3a23349c2a1d1347ab58b8ea95ae4dffe0ee92055faa340e387e66a2fa446`  
		Last Modified: Tue, 25 Aug 2026 17:58:32 GMT  
		Size: 5.3 MB (5321516 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f320bcca4444deb63bc0aad6df71157e54dc7f04eed919ea2a1b1637a4f64d4b`  
		Last Modified: Tue, 25 Aug 2026 17:58:30 GMT  
		Size: 23.6 KB (23579 bytes)  
		MIME: application/vnd.in-toto+json
