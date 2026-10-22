## `gradle:jdk25-ubi10`

```console
$ docker pull gradle@sha256:6cd9413ed44722c503a0976f5b0312406719b9cf8063b896c4ee7ab9afa3cf7b
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

### `gradle:jdk25-ubi10` - linux; amd64

```console
$ docker pull gradle@sha256:c91bf5c6778e2f1b3ff1b83813684c3a9a1b7c5f58068167bfd43d880d3bbf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357237101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc4e0d4453246fdb687e862f014a1617192d89b8fdaa8c70d0b3fd1ec9fc71d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:48:53 GMT
ENV container oci
# Tue, 20 Oct 2026 00:48:54 GMT
COPY dir:f1c76a6243bae0571dcb78281fcfe2c643a8f555dfdca207fe1b10b3b00283d9 in /      
# Tue, 20 Oct 2026 00:48:54 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:48:54 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:48:54 GMT
COPY dir:b5325220b21ab4bdd3b622989894128b9739c056cbb0dd5b9f66881f5434041c in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:48:55 GMT
COPY dir:b5325220b21ab4bdd3b622989894128b9739c056cbb0dd5b9f66881f5434041c in /root/buildinfo/      
# Tue, 20 Oct 2026 00:48:55 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:48:29Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:48:29Z" "architecture"="x86_64" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:48:29Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Wed, 21 Oct 2026 21:49:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:49:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:49:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:49:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:49:43 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 21 Oct 2026 21:49:48 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 21:49:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:49:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:49:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 21:49:49 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 21:56:22 GMT
CMD ["gradle"]
# Wed, 21 Oct 2026 21:56:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 21 Oct 2026 21:56:22 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 21 Oct 2026 21:56:22 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 21 Oct 2026 21:56:22 GMT
WORKDIR /home/gradle
# Wed, 21 Oct 2026 21:56:26 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 21 Oct 2026 21:56:26 GMT
ENV GRADLE_VERSION=9.8.2
# Wed, 21 Oct 2026 21:56:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Wed, 21 Oct 2026 21:56:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 21 Oct 2026 21:56:29 GMT
USER gradle
# Wed, 21 Oct 2026 21:56:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 21 Oct 2026 21:56:29 GMT
USER root
```

-	Layers:
	-	`sha256:87420a9ecd145c9a242c1eaa570c6b7327b097ddb3bf3d58c96ba0e75e0d3edc`  
		Last Modified: Tue, 20 Oct 2026 02:09:48 GMT  
		Size: 35.0 MB (34961973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b07650baa8e6c02c12f7728f9706427054dd718a403b8e575ee9d3b6fd317c0`  
		Last Modified: Wed, 21 Oct 2026 21:50:07 GMT  
		Size: 37.9 MB (37889248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2efc207ed3145540a31d31291ecb2af036bb56d32ab082284c0b36f5e4191ea0`  
		Last Modified: Wed, 21 Oct 2026 21:50:08 GMT  
		Size: 92.6 MB (92618968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2017031c75f1b58ce8d0ed547eb907c95a39547fea6914a3db50de053f82135`  
		Last Modified: Wed, 21 Oct 2026 21:50:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e087742e3c559044da6ade9a19cc2fe788697096528b7d474bb04db721d3bebb`  
		Last Modified: Wed, 21 Oct 2026 21:50:05 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dfb863f13355a2d2c8a375d9fb36fb7717bd9ba5ae16c5d7e85910b7fa5cb7d`  
		Last Modified: Wed, 21 Oct 2026 21:56:46 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a9c492c203b3dedfbd4fd7a0178ee987287651ebcd6e0a4e9b0772157f74328`  
		Last Modified: Wed, 21 Oct 2026 21:56:48 GMT  
		Size: 40.2 MB (40203473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7430e60f77f6f142e81f2df7b9014fe0d068da329fb1b2ece1b49cfb561ef6f`  
		Last Modified: Wed, 21 Oct 2026 21:56:50 GMT  
		Size: 151.5 MB (151533620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25eea8aaeedaea33d1fd1b8d8499a71faade593f700b88e72871063be85719ee`  
		Last Modified: Wed, 21 Oct 2026 21:56:46 GMT  
		Size: 25.6 KB (25606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:edc36869dbdef34131761a5ee3dd7ac67eece79d6cd45be99277e1ddbbab0341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7091519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4659b8cbf70f1d2156375b3ff993ddc23e4657a84688704f796e8d5713431728`

```dockerfile
```

-	Layers:
	-	`sha256:c1a1a3e7f310d39625e51e70d8da0776c828763591bd88a4fecddfa93691eb6c`  
		Last Modified: Wed, 21 Oct 2026 21:56:46 GMT  
		Size: 7.1 MB (7066502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9afdec63289aa877764a7e532eed1068d8211dc85f2817138d61b4def121d980`  
		Last Modified: Wed, 21 Oct 2026 21:56:45 GMT  
		Size: 25.0 KB (25017 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:8607b5aa10be03c1a02fef3a373676453e39fca610b101064d95475856da289e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.7 MB (353740802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc4bf00680256d8a5b5514cdd33562ac682319726ce5dcad571fb6394e44a9a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:51:54 GMT
ENV container oci
# Tue, 20 Oct 2026 00:51:55 GMT
COPY dir:0d7cbcbcf024404d0c04cf00e00c66c352826a90edb3b336fe7e26d881767ac0 in /      
# Tue, 20 Oct 2026 00:51:55 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:51:55 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:51:56 GMT
COPY dir:24db7167ffb16392a529e9c110e76f8adb27cab3a5daaf3fa3cb59ee0e4577e9 in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:51:56 GMT
COPY dir:24db7167ffb16392a529e9c110e76f8adb27cab3a5daaf3fa3cb59ee0e4577e9 in /root/buildinfo/      
# Tue, 20 Oct 2026 00:51:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:51:25Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:51:25Z" "architecture"="aarch64" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:51:25Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Wed, 21 Oct 2026 22:23:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:23:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:23:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:23:28 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:23:28 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 21 Oct 2026 22:23:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 22:23:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:23:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:23:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:23:59 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 22:51:48 GMT
CMD ["gradle"]
# Wed, 21 Oct 2026 22:51:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 21 Oct 2026 22:51:48 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 21 Oct 2026 22:51:48 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 21 Oct 2026 22:51:48 GMT
WORKDIR /home/gradle
# Wed, 21 Oct 2026 22:51:51 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 21 Oct 2026 22:51:51 GMT
ENV GRADLE_VERSION=9.8.2
# Wed, 21 Oct 2026 22:51:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Wed, 21 Oct 2026 22:51:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 21 Oct 2026 22:51:54 GMT
USER gradle
# Wed, 21 Oct 2026 22:51:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 21 Oct 2026 22:51:55 GMT
USER root
```

-	Layers:
	-	`sha256:de452dfec330a84b0272627b023d15c8c60dd01f2776e3bfb8479177eea5f9e8`  
		Last Modified: Tue, 20 Oct 2026 02:12:17 GMT  
		Size: 33.1 MB (33146454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f28b969051f977d43422603c88b9a70ef6bb0ddd24818ed533f40149dc4793`  
		Last Modified: Wed, 21 Oct 2026 22:23:46 GMT  
		Size: 37.8 MB (37829779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e15bb24b789676b24cd39bdebb448f0e85d42ef6be803502e7fd43b38334aaf`  
		Last Modified: Wed, 21 Oct 2026 22:24:18 GMT  
		Size: 91.5 MB (91529506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a467f395c088b2e154d0485cea4f2975323cabbeeaa8d975b94087bd47c4950`  
		Last Modified: Wed, 21 Oct 2026 22:24:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebf15a344e2deb5ab4a8ab818a0c930815a4e7a2dbe92f9504fe1a08100d53f`  
		Last Modified: Wed, 21 Oct 2026 22:24:16 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b235eb31fb68a4ef128fbf36654e948c6aabae3e6e6b3c58f0ee57fc930b7dba`  
		Last Modified: Wed, 21 Oct 2026 22:52:14 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ee734e141070fb8133c2f97958d6a84d0cb6f14ae4d4d1ddd29b577f443fae`  
		Last Modified: Wed, 21 Oct 2026 22:52:16 GMT  
		Size: 39.7 MB (39667890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff1ed8ef441d8b5e9983fb24297d2275a510a5f85441469d37052220496fa38`  
		Last Modified: Wed, 21 Oct 2026 22:52:17 GMT  
		Size: 151.5 MB (151533617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee84a63e9a9effb936a331936a3763ed8f76916042a594b9ef05d6a29df917c6`  
		Last Modified: Wed, 21 Oct 2026 22:52:14 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:d1a692dfc71ee0d06109ec5578d9e9db440d1b2f21a5bd1d544e2fe89d29f23e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7090017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f613987ebe5a3c5ffba22b4584ab132de4fcb3e59becee39a49bfc9abf877a`

```dockerfile
```

-	Layers:
	-	`sha256:47857ee5226a62e400b6fc8664b418250299dde5191b1c5336820fd90046a2d0`  
		Last Modified: Wed, 21 Oct 2026 22:52:14 GMT  
		Size: 7.1 MB (7064779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b71170f360e24a1ce6b5d08636b2fcf1305209f1a9f7eecaeac541bd76a6eb2f`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 25.2 KB (25238 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:40ca0a8116e5e67a59c9079897f09a9ec8af5277d79efd3d172386612a98d3f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 MB (363562466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b47a243b5e7f5bd076abd86a0faf9b4a860fc76bd0bf21bb92caedf958a494a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:57:04 GMT
ENV container oci
# Tue, 20 Oct 2026 00:57:05 GMT
COPY dir:cd373f5068beb4743179e195991b7397c3c3824ae4bf507d1128934272762d7b in /      
# Tue, 20 Oct 2026 00:57:05 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:57:05 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:57:05 GMT
COPY dir:769c20b7655e754c3450cea4f95dca4b1728fd234d7fa2bdd65ec28d7b1b5a23 in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:57:05 GMT
COPY dir:769c20b7655e754c3450cea4f95dca4b1728fd234d7fa2bdd65ec28d7b1b5a23 in /root/buildinfo/      
# Tue, 20 Oct 2026 00:57:06 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:56:42Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:56:42Z" "architecture"="ppc64le" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:56:42Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Thu, 22 Oct 2026 03:45:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 22 Oct 2026 03:45:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 03:45:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 22 Oct 2026 03:45:19 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 22 Oct 2026 03:45:19 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Thu, 22 Oct 2026 03:50:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 22 Oct 2026 03:50:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 22 Oct 2026 03:50:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 22 Oct 2026 03:50:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 22 Oct 2026 03:50:47 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 13:45:39 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 13:45:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 13:45:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 13:45:39 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 13:45:39 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 13:46:04 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 22 Oct 2026 13:46:04 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 22 Oct 2026 13:46:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 22 Oct 2026 13:46:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 13:46:21 GMT
USER gradle
# Thu, 22 Oct 2026 13:46:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 13:46:29 GMT
USER root
```

-	Layers:
	-	`sha256:706c1d86d8f655e7a9987b276168ae6610b6eb0f0af14eef00d3c9b0fd3ef9af`  
		Last Modified: Tue, 20 Oct 2026 06:23:50 GMT  
		Size: 39.1 MB (39114515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74474bfe984479734eb518da4a75b237b4ecf2ebdc0e86cda4d7d076d9b91086`  
		Last Modified: Thu, 22 Oct 2026 03:46:31 GMT  
		Size: 39.7 MB (39668516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614b369d49e57d83cab3a716bff08aa9bfaac37d28023c6cc17ce118d14fd4e9`  
		Last Modified: Thu, 22 Oct 2026 03:51:30 GMT  
		Size: 91.3 MB (91257498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a6170506abe9828f9be903a03825648c81848b81578cb69ce8e50a8c7656a0`  
		Last Modified: Thu, 22 Oct 2026 03:51:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd4b3ce47df9ec81db0bd6f84cb2e4b623c007786ad53012c4ca9e7c742a03d`  
		Last Modified: Thu, 22 Oct 2026 03:51:27 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f66b5884c32d24437245e1f8d2c77144262c6363932d6129e7e173a4f8e990`  
		Last Modified: Thu, 22 Oct 2026 13:47:33 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a736fc0d02fd4d3f6af5a9116049213e440edee7bddf9f49eb7a4de8d01bd5`  
		Last Modified: Thu, 22 Oct 2026 13:47:35 GMT  
		Size: 42.0 MB (41983713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af9039f204ada5d5cbb777335bad49b2f050a12460677322a41778b5f1fac21`  
		Last Modified: Thu, 22 Oct 2026 13:47:37 GMT  
		Size: 151.5 MB (151533624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5076d26a5b0f395fc9e57d431ac7a0821ac39123639a7e5e56b2c5d7d35045bf`  
		Last Modified: Thu, 22 Oct 2026 13:47:33 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:05dd0bfcd89b8f3c946685ff350d71a861b82bc4ea140e20ee481852f53462d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7066345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547118541c67b72b52ef6b2df6b53e6c824f0450ee06977e2bf2cd45129dd239`

```dockerfile
```

-	Layers:
	-	`sha256:45a3d43355722b26a29fcc68ae982a8d478b99ac126f50d72b57aac08e9ea5eb`  
		Last Modified: Thu, 22 Oct 2026 13:47:33 GMT  
		Size: 7.0 MB (7041244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f62401dfd663523bd7176291d25f4518f85476317f7ad8dab0363123da77bec`  
		Last Modified: Thu, 22 Oct 2026 13:47:32 GMT  
		Size: 25.1 KB (25101 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:f5b0a899676610af6211cf4b1edb6a974b13e38d409ff368a47e564b6b61614b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.5 MB (355474035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5788ee55da2c50ae92c5d7f379602e7175460ef8cdaadfda64a02a70afd5e96`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:59:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:59:46 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:59:46 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:59:46 GMT
ENV container oci
# Tue, 20 Oct 2026 00:59:46 GMT
COPY dir:1dca27d8a4631430ce4a0546b2acb4d2dfd9e93a14f7ce87ec4760e4b4e094d8 in /      
# Tue, 20 Oct 2026 00:59:47 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:59:47 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:59:47 GMT
COPY dir:34d2f38fc29827d4559e7791423f00150e0ce5b6b676cdb03f156d477c55fb3b in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:59:48 GMT
COPY dir:34d2f38fc29827d4559e7791423f00150e0ce5b6b676cdb03f156d477c55fb3b in /root/buildinfo/      
# Tue, 20 Oct 2026 00:59:48 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:58:22Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:58:22Z" "architecture"="s390x" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:58:22Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Wed, 21 Oct 2026 22:43:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:43:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:43:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:43:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:43:17 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 21 Oct 2026 22:44:50 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 22:44:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:44:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:44:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:44:51 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:42:10 GMT
CMD ["gradle"]
# Wed, 21 Oct 2026 23:42:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 21 Oct 2026 23:42:10 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 21 Oct 2026 23:42:10 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 21 Oct 2026 23:42:10 GMT
WORKDIR /home/gradle
# Wed, 21 Oct 2026 23:42:15 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 21 Oct 2026 23:42:15 GMT
ENV GRADLE_VERSION=9.8.2
# Wed, 21 Oct 2026 23:42:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Wed, 21 Oct 2026 23:42:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 21 Oct 2026 23:42:19 GMT
USER gradle
# Wed, 21 Oct 2026 23:42:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 21 Oct 2026 23:42:19 GMT
USER root
```

-	Layers:
	-	`sha256:f0c098a0b77910af4ed5092668750de09dbb36cfe7d08db735e1fde196a516a8`  
		Last Modified: Tue, 20 Oct 2026 06:23:43 GMT  
		Size: 34.8 MB (34846681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288e733c06aaaaf736ef99c097d9d35851b74e32daaf7ba93852c1bab451be9c`  
		Last Modified: Wed, 21 Oct 2026 22:43:40 GMT  
		Size: 38.3 MB (38270932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:633c1f12989e5700b6605b6bcfc32a407dea749e8c1708fe0198a92bd94d77e9`  
		Last Modified: Wed, 21 Oct 2026 22:45:16 GMT  
		Size: 88.4 MB (88423549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce1ee15a1793050b4cdd2a6a84292459f8f3dd9e14998add267e71afa17bb5c`  
		Last Modified: Wed, 21 Oct 2026 22:45:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a61b80b3cd9761bb4dec73cece0186c0f0433473cf5f2fd5eef618b4b78e696`  
		Last Modified: Wed, 21 Oct 2026 22:45:14 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a1198dacfb8502e1665a17aacdd9d6ed7a39e5d67006d0ecf119223cd96ac3`  
		Last Modified: Wed, 21 Oct 2026 23:42:47 GMT  
		Size: 1.6 KB (1582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaef4a65926a87ef274ea96fb8e274a75ea375ace67c273d5bda1312fa463050`  
		Last Modified: Wed, 21 Oct 2026 23:42:48 GMT  
		Size: 42.4 MB (42394666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618cfd6514767a612f7f850ea631e2193b76c5be7910ffd7a04f3b6c040204f4`  
		Last Modified: Wed, 21 Oct 2026 23:42:50 GMT  
		Size: 151.5 MB (151533616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4780079587f00ac593ba1f4eb665001b67c46c45fe70cf7bc69bb0fbfb8563db`  
		Last Modified: Wed, 21 Oct 2026 23:42:47 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:df801a11a64699fb094838352074012bfc52287941961cabfe4df148f28ae4c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7056726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8875d54341daed8aad61e7983a5bfa1e78f9f5044b8af2cfba1124bacce2c337`

```dockerfile
```

-	Layers:
	-	`sha256:c8c59af06d40f76cb489486e8c763f63f7c35303f56b62c86bbda9889cba10be`  
		Last Modified: Wed, 21 Oct 2026 23:42:47 GMT  
		Size: 7.0 MB (7031711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:381e41e8c3216790811fea9935c0616638d8c8584375c30ef7ba974edf2ba7a5`  
		Last Modified: Wed, 21 Oct 2026 23:42:47 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
