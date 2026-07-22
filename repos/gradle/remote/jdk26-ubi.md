## `gradle:jdk26-ubi`

```console
$ docker pull gradle@sha256:749d25dd840ef5aa8f009a7dbc7ca6d2506c30065bea6daeb4d5ad53efd218d4
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

### `gradle:jdk26-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:8bb700c3632e5dba3236a0c96d00610dc931674be7edeac88531f255d4b12194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.7 MB (347739404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5853ac32308386b39ff8b1d253f32fc414f0629615578406ef9d2a4db51c7edf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:26:51 GMT
ENV container oci
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:b8ce0462b23033a189e5c4dd0f5c6ccb96b3cec90716c47359623a67ff89ff8a in /      
# Tue, 21 Jul 2026 21:26:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:26:52 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:252f351b421304c992996882cb00d6f04fd6ac2c0d6c63f07b755dedc3bc9246 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:252f351b421304c992996882cb00d6f04fd6ac2c0d6c63f07b755dedc3bc9246 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:26:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:26:32Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:26:32Z" "architecture"="x86_64" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:26:32Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:28:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:28:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:28:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:28:51 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:28:51 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 22 Jul 2026 18:28:57 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:28:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:28:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:28:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:28:58 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:01:32 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:01:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:01:32 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:01:32 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:01:32 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:01:35 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:01:35 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 19:01:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 19:01:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:01:37 GMT
USER gradle
# Wed, 22 Jul 2026 19:01:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:01:38 GMT
USER root
```

-	Layers:
	-	`sha256:1a70cbb74144ef90a6ddb34ce9ec12c795834baf78bdb1417827dff114fc5859`  
		Last Modified: Wed, 22 Jul 2026 00:25:25 GMT  
		Size: 34.9 MB (34943743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11404570253ceaa2c82dffca3cc9f0545b99bea6df0dfafa6196fdb27552cc02`  
		Last Modified: Wed, 22 Jul 2026 18:29:17 GMT  
		Size: 37.8 MB (37771469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1d538d4fad193a6a937e8227fb366db329a4a00ec49f8d3cd4293ab4bbd6d0`  
		Last Modified: Wed, 22 Jul 2026 18:29:18 GMT  
		Size: 94.5 MB (94525411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44b61a29ee223b2194d15d47249628a1319bdefe45b3735c49bed41b9c6cdce`  
		Last Modified: Wed, 22 Jul 2026 18:29:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee402954dfd38da9cc5200349bf38a3b690a86e0725c43f8fbe8f16bac893824`  
		Last Modified: Wed, 22 Jul 2026 18:29:15 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f2ced4ba98741a5175d946edc0b3bf8b6fe4ae42259218db63014e30c996eb`  
		Last Modified: Wed, 22 Jul 2026 19:01:57 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b395a2f4f07e72b1aca12e6a1bd962e30755095eddbef9c52d19a4144d49420e`  
		Last Modified: Wed, 22 Jul 2026 19:01:59 GMT  
		Size: 39.9 MB (39872923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78541d6819c41e023156e579f14b2ffef1999a753cfb03f1a8253505360df204`  
		Last Modified: Wed, 22 Jul 2026 19:02:01 GMT  
		Size: 140.6 MB (140596027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c65e3aae22d55cec941aade58d850d974d5c033b18058c21dc82f30c03c894bf`  
		Last Modified: Wed, 22 Jul 2026 19:01:57 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:9191aaf81b4131faac7a776a00ebaa9798a2c7c60090a4a3d6ac0a065b1b0f19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7077939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105a4bad7c7273da6c598722b4dba17df973fd05620f9109969de760cc8ee2d8`

```dockerfile
```

-	Layers:
	-	`sha256:07ec5843183ae5c79f3669fc7af7766538f92c4d3d262310161d2836fa862036`  
		Last Modified: Wed, 22 Jul 2026 19:01:57 GMT  
		Size: 7.1 MB (7053519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c79250a9f9a77adb3357b9506941e5d1137ecea49c604182803796507d8d6e5`  
		Last Modified: Wed, 22 Jul 2026 19:01:57 GMT  
		Size: 24.4 KB (24420 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:85adaa9dced323c78d52a9c22b2eef0e4ce45a5f91d8649bd82ff204bfe6053a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.2 MB (344220100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3973952ce94c036ecb9689b78c81ceddf6ca9a8f0374fd9da7be8edbb852e81f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:30:05 GMT
ENV container oci
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:58c4efe09946efbac1eda4e0aca465b8b6cdac53b3c03d17070e9e7933760782 in /      
# Tue, 21 Jul 2026 21:30:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:30:06 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:a9f896a5c62d3423fff2b67473319ede4242afa9801ddb241e77920e7ee4ae16 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:a9f896a5c62d3423fff2b67473319ede4242afa9801ddb241e77920e7ee4ae16 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:30:07 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:29:44Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:29:44Z" "architecture"="aarch64" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:29:44Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:53:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:53:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:53:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:53:10 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:53:10 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 22 Jul 2026 18:53:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:53:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:53:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:53:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:53:42 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:03:29 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:03:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:03:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:03:29 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:03:29 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:03:33 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:03:33 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 19:03:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 19:03:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:03:36 GMT
USER gradle
# Wed, 22 Jul 2026 19:03:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:03:36 GMT
USER root
```

-	Layers:
	-	`sha256:58f664164ca85fb5b417ce6f6fffea1e66eaf780a7dedb2c483cdd5286d5ee2b`  
		Last Modified: Wed, 22 Jul 2026 00:25:47 GMT  
		Size: 33.1 MB (33053422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a30f586bb7eb29b5a178da3bc212205038bcb898da252f82e8d26c6be282fa`  
		Last Modified: Wed, 22 Jul 2026 18:53:27 GMT  
		Size: 37.7 MB (37713570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef99d800a6d8045eebdebf86bba7b40c90a37df4bbad93c8df6949cfecbf217`  
		Last Modified: Wed, 22 Jul 2026 18:54:01 GMT  
		Size: 93.5 MB (93505314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab1c4698329c85a01c46a90ea43bcea1c8d76fa5ce618afbaba56c5ae831e5a`  
		Last Modified: Wed, 22 Jul 2026 18:53:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e99482748f91783e2fde85ae2082ec5fcc8e4c802811d9b78f8d702c846850`  
		Last Modified: Wed, 22 Jul 2026 18:53:58 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b3e6a7ee0b72ea4a192656b15022b8c564949f3799da2b40856b841f47040c9`  
		Last Modified: Wed, 22 Jul 2026 19:03:55 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5fecb7798b544774afd111a43ac783d932f335c1995e7efa12a1522014f8e7`  
		Last Modified: Wed, 22 Jul 2026 19:03:57 GMT  
		Size: 39.3 MB (39318208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a434714fb7ff7913009d3c163e2e5b16795faf5223028c2db8adfdfc69496fda`  
		Last Modified: Wed, 22 Jul 2026 19:03:59 GMT  
		Size: 140.6 MB (140596030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4acd4a38e12c28e430b2dfd9df6696b5cc80689a305e0c72d1afaf52e66e9dd`  
		Last Modified: Wed, 22 Jul 2026 19:03:55 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:b13e7291db3407220ff5826a0625ed318bbce9eb09877934285c0ae2e06f6ed0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7076390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4df8cf87b05378b4fa9e596500b9fa4249595b51e476992681363404823b826`

```dockerfile
```

-	Layers:
	-	`sha256:277d4f3772dadcdbfcb9ae2a6262654b20e837b02f37a8d49a86cf823075d3f1`  
		Last Modified: Wed, 22 Jul 2026 19:03:55 GMT  
		Size: 7.1 MB (7051772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a928acaccc27b2cd7555e22cd5c3d5cc06005b02f66a2a84800b1300bd41adf6`  
		Last Modified: Wed, 22 Jul 2026 19:03:55 GMT  
		Size: 24.6 KB (24618 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:702b96ef11e74b33e863000fedf991def844e63e6659ab93fcd4ed889ff12272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.6 MB (359617703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bfb0315e1cce14f12be25fa9e23e5a781d13cdc2c30a05c89e46011bf9f46a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL io.openshift.expose-services=""
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 20 Jul 2026 21:10:41 GMT
ENV container oci
# Mon, 20 Jul 2026 21:10:41 GMT
COPY dir:486c188ec489f585250b063e77f54577b4fcf90bf07fe8ac893420971b0ec8ed in /      
# Mon, 20 Jul 2026 21:10:41 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 20 Jul 2026 21:10:41 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 21:10:41 GMT
COPY dir:1529365045deeb3e3148761dba002be739f48b987d287c6ea4004bcf6f239911 in /usr/share/buildinfo/      
# Mon, 20 Jul 2026 21:10:41 GMT
COPY dir:1529365045deeb3e3148761dba002be739f48b987d287c6ea4004bcf6f239911 in /root/buildinfo/      
# Mon, 20 Jul 2026 21:10:42 GMT
LABEL "org.opencontainers.image.created"="2026-07-20T21:10:24Z" "org.opencontainers.image.revision"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "build-date"="2026-07-20T21:10:24Z" "architecture"="ppc64le" "vcs-ref"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "vcs-type"="git" "release"="1784581369"org.opencontainers.image.created=2026-07-20T21:10:24Z,org.opencontainers.image.revision=71f84d0717d42d49af1ce4d67019f56edf8b1f68
# Tue, 21 Jul 2026 16:50:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 16:50:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:50:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 16:50:56 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 16:50:56 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 21 Jul 2026 17:01:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 17:01:29 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 17:01:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 17:01:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 17:01:30 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:11:33 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:11:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:11:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:11:33 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:11:34 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:11:47 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:11:47 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 21 Jul 2026 17:11:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 21 Jul 2026 17:11:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:11:51 GMT
USER gradle
# Tue, 21 Jul 2026 17:11:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:11:53 GMT
USER root
```

-	Layers:
	-	`sha256:d680386524b7132d3758999921708dfa4704f315f2416aed5ab9cca03ee6b05d`  
		Last Modified: Tue, 21 Jul 2026 00:15:53 GMT  
		Size: 39.0 MB (39003051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142d7cf628640a8877b46a41a2d6bfdab2a8f78d7b1a919de7b80c57e0e873ba`  
		Last Modified: Tue, 21 Jul 2026 16:51:36 GMT  
		Size: 44.5 MB (44459646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a0756822d9b4f4d394cc609209422e2182ae46b4b6ff4bd3aafc28b5d52573`  
		Last Modified: Tue, 21 Jul 2026 17:02:07 GMT  
		Size: 93.9 MB (93902369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b188a5c88b658aa4ddfed3c12ef42b63e81e08af836a18e27323e9e261f8a6f3`  
		Last Modified: Tue, 21 Jul 2026 17:02:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94a9a246dcada0d86da8909621e0582c0484cf91c50c03d21c1f609b28cd5939`  
		Last Modified: Tue, 21 Jul 2026 17:02:04 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00c57e9f0e8f33f068a074dc180496993a8699dd426dd7f2bc2127dec17e0ae`  
		Last Modified: Tue, 21 Jul 2026 17:12:30 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29e7c04ed00af00a1d8bd13ac6ca2e3dde24eb4bb72a7777dc62727d4f3f48e`  
		Last Modified: Tue, 21 Jul 2026 17:12:33 GMT  
		Size: 41.7 MB (41652015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3529fe79edc7988adeff2cf793515a9fd3a8f15797ecf0ed2f7b64e6308bfcea`  
		Last Modified: Tue, 21 Jul 2026 17:12:35 GMT  
		Size: 140.6 MB (140596027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcfa8c652502c6015d00f5fdb477cb839f007f2f8b0a7c29ba381fbe59f24d17`  
		Last Modified: Tue, 21 Jul 2026 17:12:31 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:e711dab81e240c080b339733b5705b797686116bd42738db6a4f9bed87929e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7053358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7992b30432c1653af2a50184cdeaa7f3cadcfcf24cfbffa6fa4b3209d03d2488`

```dockerfile
```

-	Layers:
	-	`sha256:b337235dfdd34388caf327cc95f46ab606269b081ab374e599e3bd4ae46d0d40`  
		Last Modified: Tue, 21 Jul 2026 17:12:31 GMT  
		Size: 7.0 MB (7028865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03d32a5a7c3758e5d62904eb1223e1b419cf908bb26e2470afc3e3d874c8f6ba`  
		Last Modified: Tue, 21 Jul 2026 17:12:30 GMT  
		Size: 24.5 KB (24493 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:c0a90238956441d90b83c338877164a34aaeb9f47c8520cf88e43fddb48f333e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.9 MB (348944577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33013b6a63aae6023db667d0faf505ae99aa38080af7f941f9021757850b5469`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL io.openshift.expose-services=""
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 20 Jul 2026 21:17:11 GMT
ENV container oci
# Mon, 20 Jul 2026 21:17:12 GMT
COPY dir:a6976d9edd4931db01f54246b007db8821e070ff96271037dd495011b478ba3b in /      
# Mon, 20 Jul 2026 21:17:12 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 20 Jul 2026 21:17:12 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 21:17:12 GMT
COPY dir:d0e1923003a0e4f9e2e88ae4ff75844529b8365c177dd138fc02f1d5c0bc4ec5 in /usr/share/buildinfo/      
# Mon, 20 Jul 2026 21:17:12 GMT
COPY dir:d0e1923003a0e4f9e2e88ae4ff75844529b8365c177dd138fc02f1d5c0bc4ec5 in /root/buildinfo/      
# Mon, 20 Jul 2026 21:17:12 GMT
LABEL "org.opencontainers.image.created"="2026-07-20T21:16:03Z" "org.opencontainers.image.revision"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "build-date"="2026-07-20T21:16:03Z" "architecture"="s390x" "vcs-ref"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "vcs-type"="git" "release"="1784581369"org.opencontainers.image.created=2026-07-20T21:16:03Z,org.opencontainers.image.revision=71f84d0717d42d49af1ce4d67019f56edf8b1f68
# Tue, 21 Jul 2026 16:50:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 16:50:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:50:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 16:50:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 16:50:45 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 21 Jul 2026 16:53:11 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 16:53:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 16:53:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 16:53:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 16:53:12 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:01:40 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:01:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:01:40 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:01:40 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:01:40 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:01:46 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:01:46 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 21 Jul 2026 17:01:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 21 Jul 2026 17:01:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:01:50 GMT
USER gradle
# Tue, 21 Jul 2026 17:01:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:01:51 GMT
USER root
```

-	Layers:
	-	`sha256:8f200b9c901c53267e3af6f18a54f6038f0d14c580dd6d30d165b125119c4f1c`  
		Last Modified: Tue, 21 Jul 2026 00:15:45 GMT  
		Size: 34.7 MB (34728302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a581042499eab8591b8021f3b12224945d11b30dd5e281c41189ce74b0905b`  
		Last Modified: Tue, 21 Jul 2026 16:51:16 GMT  
		Size: 41.1 MB (41074850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd9e75b20ca0db95c3066420fc01aff2009a0d09a60a2a8caf18579e2cad67a`  
		Last Modified: Tue, 21 Jul 2026 16:53:38 GMT  
		Size: 90.5 MB (90537369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7c9949271b87b9253429399162f465a883ea1518a687e11536b05d0d9ed4ed`  
		Last Modified: Tue, 21 Jul 2026 16:53:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c4f3645657533af402d4aaab7344db085b9815bfe47dca12cf4462b45100b4`  
		Last Modified: Tue, 21 Jul 2026 16:53:37 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04b8a80d47bc27a36282ed15f7af735814b32142bcf528ade7871ba9907e3a45`  
		Last Modified: Tue, 21 Jul 2026 17:02:21 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f271aa1daa30c0e9cbb0c8fe86fe6d91b1a46ce4e366a4824e04804faca2206e`  
		Last Modified: Tue, 21 Jul 2026 17:02:23 GMT  
		Size: 42.0 MB (42003491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3e1e179d134ee37e4cb285efa7a4022aa9219fbdff26b238a8836bf0cf5d66`  
		Last Modified: Tue, 21 Jul 2026 17:02:25 GMT  
		Size: 140.6 MB (140595977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e731bfdf3ce43664cb7f4eca06620e726bf49b1d64b1738e7e3aa7dd2f863b4`  
		Last Modified: Tue, 21 Jul 2026 17:02:21 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:8ca2be254b37cf9995b23ff75857bd18636083c99e2f63b5ba9cd0353a39e658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7043763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926cc4483e9e4538a54d8dcc579dede5c4449f5971d02672c6689940d70d3200`

```dockerfile
```

-	Layers:
	-	`sha256:74de872c483a127fe3d7e7849d4a92febead1507df513d0e77a1562bee6de268`  
		Last Modified: Tue, 21 Jul 2026 17:02:21 GMT  
		Size: 7.0 MB (7019344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dfa9d886dd0f37c2a318e5d183f68effa343c8cf79daf5559d52a441113c521`  
		Last Modified: Tue, 21 Jul 2026 17:02:21 GMT  
		Size: 24.4 KB (24419 bytes)  
		MIME: application/vnd.in-toto+json
