## `gradle:jdk17-ubi9`

```console
$ docker pull gradle@sha256:c9476ec51c0230033d24e2dad5b00df978295b4335f46fb6ec6240542ecb745b
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

### `gradle:jdk17-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:78163ae3b9e5d962c3b49820052a9b879489e4c5ed92da9a5da8171e9309667d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.8 MB (392846942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c2334728bfa66e3ad797fbae5cfe9b070e399fb33643a30cbc6592154170aa`
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
# Wed, 22 Jul 2026 18:28:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:28:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:28:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:28:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:28:13 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 22 Jul 2026 18:28:20 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:28:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:28:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:28:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:28:21 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:01:22 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:01:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:01:22 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:01:22 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:01:22 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:01:25 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:01:25 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 19:01:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 19:01:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:01:28 GMT
USER gradle
# Wed, 22 Jul 2026 19:01:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:01:28 GMT
USER root
```

-	Layers:
	-	`sha256:4e7920a6df9f698998c80db9c24d69dedc87ab71cb83d5f35c3db42281db6ec0`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 40.7 MB (40722592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284cb02dfeb0e048d65e85a1b983b27689e4bfd65986b9250e2003b5b3ac4311`  
		Last Modified: Wed, 22 Jul 2026 18:28:39 GMT  
		Size: 27.7 MB (27661710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5cf1db10eb8ac0b9ced28a042e0b7b0d522f71c8ffd4e36905a70b2b7261bc`  
		Last Modified: Wed, 22 Jul 2026 18:28:41 GMT  
		Size: 145.9 MB (145915402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf0166f8397f5508b058b0b9ff4fbc920fd308086216cf09d28ce24b9755561`  
		Last Modified: Wed, 22 Jul 2026 18:28:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f45b567f30ff9c237305681f552646e61bb13a521a8e816e6a0749ff2bd92c`  
		Last Modified: Wed, 22 Jul 2026 18:28:38 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f102fcd3d52d9d3ee0eb8bee4eda4775017ee01ebb2dbd37889ee80017f3dc81`  
		Last Modified: Wed, 22 Jul 2026 19:01:44 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade63e36639fe1821d7802fdab37950caa79888004536b7c3592d6a4c5027833`  
		Last Modified: Wed, 22 Jul 2026 19:01:46 GMT  
		Size: 37.9 MB (37921443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58018d9bfe76a2b1654a4e3c531317cd8e9846d8141ba98698acaecfad32b`  
		Last Modified: Wed, 22 Jul 2026 19:01:48 GMT  
		Size: 140.6 MB (140596024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a237e3cf97e811a672f71221103136b760d71a237fd07911627e3bf89f323a`  
		Last Modified: Wed, 22 Jul 2026 19:01:44 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:e643a883991708670dfbbd13e8327f1fd0dbf65c7b792ee5de6aebf8af32db41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5456226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d305b6fa3344929d3adb36238e6a2b8cdd7a438738f46bd658df1a06a277bd0`

```dockerfile
```

-	Layers:
	-	`sha256:5176bf7fa4b7d7552b6e4d541cacb91453025c494581b042326abda7856807f6`  
		Last Modified: Wed, 22 Jul 2026 19:01:44 GMT  
		Size: 5.4 MB (5432990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5440d8fdb42765d6a3346f38569483fddd257466804eb4ed86e00db20303daa3`  
		Last Modified: Wed, 22 Jul 2026 19:01:44 GMT  
		Size: 23.2 KB (23236 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:62a012875675220ed9f9275a81cb02233dfedf1b3f148e40043272215b5444f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.5 MB (389494272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02566b2c91bb2ff08b8f7a6a643ec967df61eb9ebd38f0d939118b48c027e047`
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
# Wed, 22 Jul 2026 18:53:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:53:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:53:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:53:08 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:53:08 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 22 Jul 2026 18:53:15 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:53:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:53:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:53:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:53:16 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:03:27 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:03:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:03:27 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:03:27 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:03:27 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:03:32 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:03:32 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 19:03:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 19:03:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:03:35 GMT
USER gradle
# Wed, 22 Jul 2026 19:03:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:03:36 GMT
USER root
```

-	Layers:
	-	`sha256:874d407f446b6129b274afbba9c870e8b07666e3e15e80c2fdb80ce6e0fe8f97`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 38.8 MB (38824182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61456d27a38c29c7e47ae4c8326238148d65e576d81dbd7523fe6b7309fb7c3`  
		Last Modified: Wed, 22 Jul 2026 18:53:35 GMT  
		Size: 28.1 MB (28102438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86641d770f8b00222f98b9aa9f237c5f78957a390b2f1a83fed2a5ee3ee0244`  
		Last Modified: Wed, 22 Jul 2026 18:53:39 GMT  
		Size: 144.7 MB (144734820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b8c1ebe53db96b7993a27d529631a62b84bdc0c149e26be565c33968e43944`  
		Last Modified: Wed, 22 Jul 2026 18:53:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b37ef840fda0872b97e7fc1e9f01cfd8da13ccd954537fc994bc47568397b53`  
		Last Modified: Wed, 22 Jul 2026 18:53:33 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8a0b7b8186cd0d5efbc121fefa7fcf9d5316ab0be5dfd4439d6a7682d51a34`  
		Last Modified: Wed, 22 Jul 2026 19:03:52 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670f474c7df3be7a6efe2d7d9d4bd14b33e311215371e5370b79297fc850200d`  
		Last Modified: Wed, 22 Jul 2026 19:03:55 GMT  
		Size: 37.2 MB (37203307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00ba1ac1e15bb2db3bf95fdd05d6072714f02b9a74ff7fa224de9587175ee93`  
		Last Modified: Wed, 22 Jul 2026 19:03:59 GMT  
		Size: 140.6 MB (140596029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9de66debd46a7903f124bb4b8a126b52eea3a803abe2b4a7803f6bfb68f2b91`  
		Last Modified: Wed, 22 Jul 2026 19:03:52 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:34e296589bbfedaf4fb3d94a4cc48b02ce9d55785da068f4285acc3fead2d735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5453975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d4ac47367f172b99d40d09ade1f9e421c9527f6c61800c91133cdb5b600a10f`

```dockerfile
```

-	Layers:
	-	`sha256:9894d6cabb74c5c2a5d828a1687d86d32f6b64386ec51c74a92d7e22abf49679`  
		Last Modified: Wed, 22 Jul 2026 19:03:52 GMT  
		Size: 5.4 MB (5430590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7121639902410469155f4f5a0dc85b4c0c8be8efc686ef1ff133053a72702708`  
		Last Modified: Wed, 22 Jul 2026 19:03:52 GMT  
		Size: 23.4 KB (23385 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:fdb7e6e92877053ae95000ae1bcb8b4675932e4e3d5c94ef6d1682f0a73e5adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.8 MB (400806398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb878611e0aded0a9daccf2cada0bfe093e24612c62ee84a42428ff5377b2f9b`
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
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 22 Jul 2026 18:48:21 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:48:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:48:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:48:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:48:25 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 21:31:05 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 21:31:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 21:31:05 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 21:31:05 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 21:31:05 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 21:31:35 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 21:31:35 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 21:31:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 21:31:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 21:31:40 GMT
USER gradle
# Wed, 22 Jul 2026 21:31:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 21:31:43 GMT
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
	-	`sha256:16c39e1ad7899fad3b865fcbdd3ed52e234d5a455bee28351246721bf9402ebf`  
		Last Modified: Wed, 22 Jul 2026 18:49:03 GMT  
		Size: 145.8 MB (145788765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc839782a97ec068fdedbd861acf1ce48a70cb2b0ddbf8ecc4612a48eca7a93`  
		Last Modified: Wed, 22 Jul 2026 18:48:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64309934708375a12ed62238ad9377d2e8b2dc0eaf9e0f9d2267d8c44f22162f`  
		Last Modified: Wed, 22 Jul 2026 18:48:59 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7002cfe9f47566f118306f2c5382089c12a0f147790fd412235cee452fb39d`  
		Last Modified: Wed, 22 Jul 2026 21:32:26 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a33da5f5752ef076e38b2868bb77fd6da6c98ef5e3c15f63d841397785bdde9`  
		Last Modified: Wed, 22 Jul 2026 21:32:28 GMT  
		Size: 39.2 MB (39194135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d66f95a21bd27a097ec6673fcb97f517cc846c7bca082637ea729ea34c000d3`  
		Last Modified: Wed, 22 Jul 2026 21:32:31 GMT  
		Size: 140.6 MB (140596008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1ffca4b24e5f22e7853bf930fefb7aeb03f95e600b55478ef098d1d62127da`  
		Last Modified: Wed, 22 Jul 2026 21:32:26 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:8306f665c013ca34c037feb41f813f415bc9f22356f8ea473e5ed6d0a6fd19cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5451841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6072c031c86931d7ca76d59a8937f8b338d211fff4736cc991629115f58d89b`

```dockerfile
```

-	Layers:
	-	`sha256:af23dcecfb144139247fff1c43443762c676cfee098138e7640b4e7429763bf6`  
		Last Modified: Wed, 22 Jul 2026 21:32:27 GMT  
		Size: 5.4 MB (5428557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc8f9e5afaf197acd95bc451de635a26caa3f96b392502bedc0b94f2d2bdc6c0`  
		Last Modified: Wed, 22 Jul 2026 21:32:26 GMT  
		Size: 23.3 KB (23284 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:4313e1b98d4ce170f6a10c08bbe5f6cb6e03c99489468964f4b5ba3b6912b1f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.5 MB (380451436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4050e3a08f7861f23ba75904f8a6e5b4272d988a13fd9069e78bff77022e66`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:46:27 GMT
ENV container oci
# Wed, 22 Jul 2026 07:46:28 GMT
COPY dir:a03e3bcfd8bf8d44bed42e3e10179421dd7aac0c94ef6408965d38f7edbd7af9 in /      
# Wed, 22 Jul 2026 07:46:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:46:28 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:46:28 GMT
COPY dir:4d07c15056b36c02f12d33bca36ba79b9f06a60480d9a3171ab30a92fc4d505e in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:46:28 GMT
COPY dir:4d07c15056b36c02f12d33bca36ba79b9f06a60480d9a3171ab30a92fc4d505e in /root/buildinfo/      
# Wed, 22 Jul 2026 07:46:28 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:45:29Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:45:29Z" "architecture"="s390x" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:45:29Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 19:56:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 19:56:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 19:56:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 19:56:34 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 19:56:34 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 22 Jul 2026 19:57:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 19:57:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 19:57:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 19:57:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 19:57:24 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 20:09:49 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 20:09:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 20:09:49 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 20:09:49 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 20:09:49 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 20:09:53 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 20:09:53 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 20:09:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 20:09:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 20:09:57 GMT
USER gradle
# Wed, 22 Jul 2026 20:09:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 20:09:58 GMT
USER root
```

-	Layers:
	-	`sha256:c65a219c707e69f4ad99e548e896f9fe710e2c9885f83b540cf024eebcb56999`  
		Last Modified: Wed, 22 Jul 2026 08:43:56 GMT  
		Size: 38.7 MB (38743429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed9532b20ed3e6c4fa08101c27ea342a6295e1415cb4c00cc5a622f557a5a90e`  
		Last Modified: Wed, 22 Jul 2026 19:56:56 GMT  
		Size: 27.7 MB (27684869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a369b17525c1202776e5a7f538ae8dec1bc2cd3528d2fb85606fd3888c17c44`  
		Last Modified: Wed, 22 Jul 2026 19:57:50 GMT  
		Size: 135.9 MB (135912321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929db1d259ca3bdcbc9b23ba69e2f787a308edca8a56d502cecaf3c295f4761`  
		Last Modified: Wed, 22 Jul 2026 19:57:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59fcf11bfa31c4ccb992e5690579e14377af4f455b04d9d1fe885ed7e98d83a4`  
		Last Modified: Wed, 22 Jul 2026 19:57:47 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c34f884e358a76b9b9604cf518f0e6efb005bd79be1194bad79ea50a4547947`  
		Last Modified: Wed, 22 Jul 2026 20:10:23 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ed995d32a38e002791114fddf20062cc99d7c6dffd954115e226c5e81b54a4`  
		Last Modified: Wed, 22 Jul 2026 20:10:24 GMT  
		Size: 37.5 MB (37510260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2dce7d6b5d7168b17d8058a52ed370d04bba90f5ecccffdb2adbdfb0eebb34d`  
		Last Modified: Wed, 22 Jul 2026 20:10:26 GMT  
		Size: 140.6 MB (140596028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928897a3f8269fafa869eb1f5314a61675755b8f3f9e65e98dae1926e6b0fa43`  
		Last Modified: Wed, 22 Jul 2026 20:10:23 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:130d3e87c55a7770cf4342c74f9d8024a1b4fb42b25d867ff4c92ba2a8a21cbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5441047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e771adef9703c9e7233b573cdaad0f5a892915c1df4418eee8e3ac88919d7330`

```dockerfile
```

-	Layers:
	-	`sha256:3c3f3f78a76246cded1977a383d86738e82b3306cd6fd7eceba9ffe4fef71fb8`  
		Last Modified: Wed, 22 Jul 2026 20:10:22 GMT  
		Size: 5.4 MB (5417813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c22288843f5aa972fe96968cc51d07e872fd1b8f59bb6060576646b8152f5ba`  
		Last Modified: Wed, 22 Jul 2026 20:10:22 GMT  
		Size: 23.2 KB (23234 bytes)  
		MIME: application/vnd.in-toto+json
