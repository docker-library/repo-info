## `gradle:jdk17-ubi10`

```console
$ docker pull gradle@sha256:380b97a6b0b3371f8d91f7a014fe245e559463e182bb6f20de7846d55b019fbb
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

### `gradle:jdk17-ubi10` - linux; amd64

```console
$ docker pull gradle@sha256:50c7d6fec7b116fe747bbf1d0ac821262bede1f70199fcb7e5bf89ae07e1ad64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.1 MB (399116968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d90c7ce2b60cb7b07daeb2737d5b298c3f051649ada56a9f19600d6a2501fa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:41:36 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 03 Aug 2026 17:41:36 GMT
ENV container oci
# Mon, 03 Aug 2026 17:41:36 GMT
COPY dir:ed77bb373e14ffa6b3783b4ca84874dcd05c0d6bea35c76071d4ccb41ebeef18 in /      
# Mon, 03 Aug 2026 17:41:36 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:41:36 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:41:36 GMT
COPY dir:7e4a63454f39409c213733c178806885b5a316509bc6872a23eca6721c2a73bc in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:41:36 GMT
COPY dir:7e4a63454f39409c213733c178806885b5a316509bc6872a23eca6721c2a73bc in /root/buildinfo/      
# Mon, 03 Aug 2026 17:41:36 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:40:34Z" "org.opencontainers.image.revision"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "build-date"="2026-08-03T17:40:34Z" "architecture"="x86_64" "vcs-ref"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "vcs-type"="git" "release"="1785778687"org.opencontainers.image.created=2026-08-03T17:40:34Z,org.opencontainers.image.revision=b9fdece4d2c962654c1c4a6f9578551c79e4c4c6
# Tue, 04 Aug 2026 21:03:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:03:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:03:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:03:58 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:03:58 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 21:04:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 04 Aug 2026 21:04:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:04:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:04:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 21:04:05 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 21:16:19 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 21:16:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 21:16:19 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 21:16:19 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 21:16:19 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 21:16:23 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 04 Aug 2026 21:16:23 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 04 Aug 2026 21:16:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 04 Aug 2026 21:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 21:16:26 GMT
USER gradle
# Tue, 04 Aug 2026 21:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 21:16:26 GMT
USER root
```

-	Layers:
	-	`sha256:ac98f959ddf9baac24d46ce09bc63e26a45b74b502da97c83be3cdfcd2b5bad0`  
		Last Modified: Mon, 03 Aug 2026 18:50:26 GMT  
		Size: 34.9 MB (34906609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1708c470a89426101f911eebf92a29b5fab7e6e5cba1e5f5187bdc4148006237`  
		Last Modified: Tue, 04 Aug 2026 21:04:24 GMT  
		Size: 37.8 MB (37781307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf9dd4fb3a1046e0dc7f69c879fdc0055645711ed680975cbe53288c4ad94221`  
		Last Modified: Tue, 04 Aug 2026 21:04:26 GMT  
		Size: 145.9 MB (145915452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56a5acaf1b3bfd4dd0412bf69207edd5dbffb747eaa0c0cb8da8dbdfb7a64a39`  
		Last Modified: Tue, 04 Aug 2026 21:04:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ec5031e22b1ed680a9d571d1531f2216ec40169b92bdeff62d9cf01dfed206`  
		Last Modified: Tue, 04 Aug 2026 21:04:23 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cebe6b342b9937dffba1a79800bc57c147af4e946f7de407bb568345af2f3221`  
		Last Modified: Tue, 04 Aug 2026 21:16:43 GMT  
		Size: 1.6 KB (1590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93f52217311db29dddafcbc8efca45ed0370928f819e7ac40a44aae38287fc0`  
		Last Modified: Tue, 04 Aug 2026 21:16:45 GMT  
		Size: 39.9 MB (39887922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c0eccec12dc147b504345d3d0ac024618f7e618e73e440f45e187b7a2d28cb`  
		Last Modified: Tue, 04 Aug 2026 21:16:47 GMT  
		Size: 140.6 MB (140596026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c7b5a52b30329ea7ea7365ff14c3c2b674170df5895bc900a85b9d48cdc629`  
		Last Modified: Tue, 04 Aug 2026 21:16:43 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:8f2203c75d6f093c2a6fdfa95798d57c504129243a12969fcb1b32e3e4b2750c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7113096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5965ffc02e156f80a332d65527e21079f3277b4027ac573b071eaff6185b1f31`

```dockerfile
```

-	Layers:
	-	`sha256:86631e9e2f11f78bb506d3616337640538840abf88444dd48b7127348b3751bd`  
		Last Modified: Tue, 04 Aug 2026 21:16:43 GMT  
		Size: 7.1 MB (7088641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f1b7a45c2447bb7d7507012d7d3dda90e3b9fcaf35eb4bfc5e90e9b707856a8`  
		Last Modified: Tue, 04 Aug 2026 21:16:43 GMT  
		Size: 24.5 KB (24455 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:448004ca62f11a02555f8a9bdc77cf02b6ed93026d1818e7e20933fd2ced5ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.5 MB (395459952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb6b1dbe060019251b8de52c96cea99b2703e52961dee803e1a0757c92916d8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 03 Aug 2026 17:42:25 GMT
ENV container oci
# Mon, 03 Aug 2026 17:42:26 GMT
COPY dir:26fa351aba4d56b41677f6e2b1ab88063d4c9bbfc6176232f37e77eaf773115e in /      
# Mon, 03 Aug 2026 17:42:26 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:42:26 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:42:26 GMT
COPY dir:866ddf8cef7c479ff27d941240740a59788ad28338ae4d90f502ab418f7eb118 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:42:26 GMT
COPY dir:866ddf8cef7c479ff27d941240740a59788ad28338ae4d90f502ab418f7eb118 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:42:26 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:42:02Z" "org.opencontainers.image.revision"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "build-date"="2026-08-03T17:42:02Z" "architecture"="aarch64" "vcs-ref"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "vcs-type"="git" "release"="1785778687"org.opencontainers.image.created=2026-08-03T17:42:02Z,org.opencontainers.image.revision=b9fdece4d2c962654c1c4a6f9578551c79e4c4c6
# Tue, 04 Aug 2026 21:04:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:04:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:04:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:04:05 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:04:05 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 21:04:12 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 04 Aug 2026 21:04:13 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:04:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:04:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 21:04:13 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 22:04:05 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 22:04:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 22:04:05 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 22:04:05 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 22:04:05 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 22:04:11 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 04 Aug 2026 22:04:11 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 04 Aug 2026 22:04:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 04 Aug 2026 22:04:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 22:04:13 GMT
USER gradle
# Tue, 04 Aug 2026 22:04:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 22:04:14 GMT
USER root
```

-	Layers:
	-	`sha256:37c5f70fcd6cd766028ac1d94a4780f9f0b7d6d0cef13f7218ef89620df991eb`  
		Last Modified: Mon, 03 Aug 2026 18:50:21 GMT  
		Size: 33.0 MB (33046883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:134a168f0de828ec2c95c1bbf63eb85f73784708c13c6b433663a5d1c77a8f3b`  
		Last Modified: Tue, 04 Aug 2026 21:04:32 GMT  
		Size: 37.7 MB (37711899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:255a5cdb1d36ce20a6176d2c3846c0286f61eb8f0e00f31979334f73a9c5c5bc`  
		Last Modified: Tue, 04 Aug 2026 21:04:34 GMT  
		Size: 144.7 MB (144734827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f01bbde18563fe596acdb925ef7eea995bca1f7f715c1845bceb6d0c21f62f`  
		Last Modified: Tue, 04 Aug 2026 21:04:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1cb441358c6b06d88881094b21665c7896adfee05ba0143460b4a2afeb2893`  
		Last Modified: Tue, 04 Aug 2026 21:04:31 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbb87924e995c4c1429e996dc03f67b649426f8499ef39a9cd53b2aa8a004a2`  
		Last Modified: Tue, 04 Aug 2026 22:04:33 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b29e8a97277fde73a0d8b837c785edf8c755bbaf3ff22923b3707b1362ce340`  
		Last Modified: Tue, 04 Aug 2026 22:04:35 GMT  
		Size: 39.3 MB (39336939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e7dedaa88eea9bb3a581a90f0897c7956f5bf49a6222b397df09a68c8f1c47`  
		Last Modified: Tue, 04 Aug 2026 22:04:37 GMT  
		Size: 140.6 MB (140596026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa12682786b9f7fa1117b2bb99a4132cfff9ca9d6e9d409391a1888fa0cd27d`  
		Last Modified: Tue, 04 Aug 2026 22:04:33 GMT  
		Size: 29.3 KB (29341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:e2ae748349e46301d85cb7befc0cdabb121094eeaade439c7b256c51e9bde0ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7111548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75198c66f524afe865a029ef0c52b9b046d2403df1c72f7d8da858670291f829`

```dockerfile
```

-	Layers:
	-	`sha256:d21ce338d761e8a2780bbd884ffee10081e15d4db646e3bdd381cecbfe51eeb4`  
		Last Modified: Tue, 04 Aug 2026 22:04:34 GMT  
		Size: 7.1 MB (7086897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ed145412bdb465d00b23e08d9d9bb7b36671fea6bca2f39af5aed477e9fec8b`  
		Last Modified: Tue, 04 Aug 2026 22:04:33 GMT  
		Size: 24.7 KB (24651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:ae799c5292b1730ab80910d5696557e38120821adc4192a72a83c8d81f4439c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.6 MB (406593986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41e5a19b0811e543c669e7d1a33f34e6f454c57d9723d0642570db303b5ba009`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 13:50:05 GMT
ENV container oci
# Wed, 29 Jul 2026 13:50:06 GMT
COPY dir:32b612952f6a200e1fc2841228adfff5b5619d342a0bf5d8f4fb3394f3204d40 in /      
# Wed, 29 Jul 2026 13:50:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 13:50:06 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 13:50:06 GMT
COPY dir:6312ce2863b2ed80640bbcd1b43ae5dd174e45e7d1f30d05f89f474c8f56d870 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 13:50:06 GMT
COPY dir:6312ce2863b2ed80640bbcd1b43ae5dd174e45e7d1f30d05f89f474c8f56d870 in /root/buildinfo/      
# Wed, 29 Jul 2026 13:50:06 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T13:49:48Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T13:49:48Z" "architecture"="ppc64le" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T13:49:48Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 02:11:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 02:11:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 02:11:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 02:11:48 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 02:11:48 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Fri, 31 Jul 2026 02:15:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 31 Jul 2026 02:15:11 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 02:15:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 02:15:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 31 Jul 2026 02:15:12 GMT
CMD ["jshell"]
# Fri, 31 Jul 2026 04:29:33 GMT
CMD ["gradle"]
# Fri, 31 Jul 2026 04:29:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 31 Jul 2026 04:29:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 31 Jul 2026 04:29:33 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 31 Jul 2026 04:29:33 GMT
WORKDIR /home/gradle
# Fri, 31 Jul 2026 04:29:44 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 31 Jul 2026 04:29:44 GMT
ENV GRADLE_VERSION=9.6.1
# Fri, 31 Jul 2026 04:29:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Fri, 31 Jul 2026 04:29:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 31 Jul 2026 04:29:49 GMT
USER gradle
# Fri, 31 Jul 2026 04:29:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 31 Jul 2026 04:29:51 GMT
USER root
```

-	Layers:
	-	`sha256:efe2e261eec9fcfe777756b6158d35446d9dd1a2f1a234aaded7f95906b10b72`  
		Last Modified: Wed, 29 Jul 2026 18:21:45 GMT  
		Size: 39.0 MB (39032105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba0a9d84008c0e73e6b7d424bd5d3c7cbcf8bc4d10b3f3d389a3e69fcafa52f`  
		Last Modified: Fri, 31 Jul 2026 02:12:32 GMT  
		Size: 39.5 MB (39531151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33007bc3c9dbc1ebd1ee6a3b8438adf6ef0bbca80da6cb59a82c70b1b87fff2`  
		Last Modified: Fri, 31 Jul 2026 02:15:49 GMT  
		Size: 145.8 MB (145788669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790cba3e190d9912faff9a322c93ef7abcedfad8b29ffbce3b4a7905becb63c2`  
		Last Modified: Fri, 31 Jul 2026 02:15:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c83fc85887a5516efb5e6f4b272fb1cd7cbf64d92fca11f924df66fc851a52`  
		Last Modified: Fri, 31 Jul 2026 02:15:45 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116d6fb8811240c5b0dbf52cabc7e681dbf5b1b9aee6328f0812c95a9785cf05`  
		Last Modified: Fri, 31 Jul 2026 04:30:29 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7bfe2d8656500d2f4be00f7d030b04b27b99c1522d784bdbf07baeed22eb65`  
		Last Modified: Fri, 31 Jul 2026 04:30:31 GMT  
		Size: 41.6 MB (41641613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb82d2c2448dab5ce86dc3e485ad9c84a56dc82f35d579f957e2139ab9974e8`  
		Last Modified: Fri, 31 Jul 2026 04:30:33 GMT  
		Size: 140.6 MB (140596028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de7804a8058c2d4e1322535ae25f1ed04bd320217cffbd4fcf46cd9880778d6`  
		Last Modified: Fri, 31 Jul 2026 04:30:29 GMT  
		Size: 383.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:74dccbb2eee6f48c927f3c142abd9d68ee2ae46b3d7295ac5fc5101591f2bad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7104573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6710c5d6da8ee0cad28851712d2734c39eaca75565f88f361d9ce133bcad15fe`

```dockerfile
```

-	Layers:
	-	`sha256:f74cc7972d9f89f973aee3d135d6b6be20a501f91c21941bfa42c1fa3f2fb41d`  
		Last Modified: Fri, 31 Jul 2026 04:30:29 GMT  
		Size: 7.1 MB (7080046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33910527823e175214fd163453d079b4e13371d1c1e02d2aa5fe7ce00d510bbc`  
		Last Modified: Fri, 31 Jul 2026 04:30:28 GMT  
		Size: 24.5 KB (24527 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:cbb3b355dcae6757446f5f2ec88e13661b53c44fb24f56e8bd687183f356c19d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.4 MB (391430100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad0079c54e75e5289df3cc5de12037f7823a0c17bfaa57974ce3f431dd525a7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 14:09:24 GMT
ENV container oci
# Wed, 29 Jul 2026 14:09:25 GMT
COPY dir:95cb629b59dcab1d83b18a252bac1931d0ea13f8221158f9ae691eca6c2af42e in /      
# Wed, 29 Jul 2026 14:09:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 14:09:25 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 14:09:25 GMT
COPY dir:84509ddc5ec4034e1c3fd54fce9ccc6c0300dfbba8aa67a14a2de63394571f4b in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 14:09:25 GMT
COPY dir:84509ddc5ec4034e1c3fd54fce9ccc6c0300dfbba8aa67a14a2de63394571f4b in /root/buildinfo/      
# Wed, 29 Jul 2026 14:09:25 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T14:06:40Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T14:06:40Z" "architecture"="s390x" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T14:06:40Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 00:37:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 00:37:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:37:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 00:37:09 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:37:09 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Fri, 31 Jul 2026 00:38:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 31 Jul 2026 00:38:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 00:38:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:38:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 31 Jul 2026 00:38:04 GMT
CMD ["jshell"]
# Fri, 31 Jul 2026 01:12:34 GMT
CMD ["gradle"]
# Fri, 31 Jul 2026 01:12:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 31 Jul 2026 01:12:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 31 Jul 2026 01:12:34 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 31 Jul 2026 01:12:34 GMT
WORKDIR /home/gradle
# Fri, 31 Jul 2026 01:12:46 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 31 Jul 2026 01:12:46 GMT
ENV GRADLE_VERSION=9.6.1
# Fri, 31 Jul 2026 01:12:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Fri, 31 Jul 2026 01:12:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 31 Jul 2026 01:12:50 GMT
USER gradle
# Fri, 31 Jul 2026 01:12:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 31 Jul 2026 01:12:51 GMT
USER root
```

-	Layers:
	-	`sha256:c9183109e6599bdbc51a1ba29d2941b9a92503ebf23d69b5d2d0432506828168`  
		Last Modified: Wed, 29 Jul 2026 18:21:35 GMT  
		Size: 34.8 MB (34762514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacd36c744a249efaf24f7d79f0f1c8472dad14a703eff084795a2bbda884ed0`  
		Last Modified: Fri, 31 Jul 2026 00:37:39 GMT  
		Size: 38.2 MB (38153931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5758fa41fdc2c1a4c5260e0dd9dd312bc46212a215657ab283490b551ab555`  
		Last Modified: Fri, 31 Jul 2026 00:38:32 GMT  
		Size: 135.9 MB (135912372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d889b92d31f8afde2e10527e1d51f361bf095eff7559f41b425af3ba71ce5b`  
		Last Modified: Fri, 31 Jul 2026 00:38:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22585cfec28e47e5776a2419dfafc179339f3307223671424259acbad2199f0f`  
		Last Modified: Fri, 31 Jul 2026 00:38:30 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c931f63d6125cc229176d2b436dc4533171684086149b5f062c4cdde3541f49`  
		Last Modified: Fri, 31 Jul 2026 01:13:24 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:773fff195c708ca6e3869e80c1eef4cc63a928b9803f1e656e3c6b25c1f604ae`  
		Last Modified: Fri, 31 Jul 2026 01:13:25 GMT  
		Size: 42.0 MB (42000847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129136749f7137a26dcbf9e1109e59a0ca19868a3ffb08061fb3d1aa3593da71`  
		Last Modified: Fri, 31 Jul 2026 01:13:27 GMT  
		Size: 140.6 MB (140596023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06f8d693edbfdea30e3a43fca0f6ab9383179a4c9bdeebd21fd1f67d4b50f64b`  
		Last Modified: Fri, 31 Jul 2026 01:13:24 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:b042cd1ed9045533df9b26aa54fdbaf37b2ec0be49b99dabf7c67621a007aaec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7093728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a086880936204412bca862bb2d7dc93949f249c88582c386dc2a6bd43f442e7b`

```dockerfile
```

-	Layers:
	-	`sha256:7986a172db61845d6d79cf1f4a5a85a6501e613190dbe5266add9e220deb8cd5`  
		Last Modified: Fri, 31 Jul 2026 01:13:24 GMT  
		Size: 7.1 MB (7069275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6b293ba0ad9e32fb38e4b40f6c0647cbbfc7fc0ce0aa9b15be653079ede40fa`  
		Last Modified: Fri, 31 Jul 2026 01:13:24 GMT  
		Size: 24.5 KB (24453 bytes)  
		MIME: application/vnd.in-toto+json
