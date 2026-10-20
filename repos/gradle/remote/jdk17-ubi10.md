## `gradle:jdk17-ubi10`

```console
$ docker pull gradle@sha256:4ece7eb7f140fc7311a123e5edea9f3a225d5cdacfb012aa69310fc730cc1528
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
$ docker pull gradle@sha256:be08ce5bdd05af800b4bba7ea08eb7b3d22f4cd52e3410f7d17f4f2af120be44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.4 MB (410440150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db99fc41fc026e9235a78ab5cae87c071b623a41fc05ef717681d810f663f173`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 13 Oct 2026 11:36:12 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:36:13 GMT
ENV container oci
# Tue, 13 Oct 2026 11:36:14 GMT
COPY dir:fe09ff3a49379305e1cb0e89f971424ce678aa73614343ecd1a31bb5cd5ba27f in /      
# Tue, 13 Oct 2026 11:36:14 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:36:14 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:36:14 GMT
COPY dir:5689adc5d5ec6bee467687c030512630f4ca86263fb7d693a9dce1bae6b0a2d9 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:36:14 GMT
COPY dir:5689adc5d5ec6bee467687c030512630f4ca86263fb7d693a9dce1bae6b0a2d9 in /root/buildinfo/      
# Tue, 13 Oct 2026 11:36:15 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:35:38Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:35:38Z" "architecture"="x86_64" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:35:38Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:57:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:57:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:57:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:57:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:57:24 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 22:57:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:57:56 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:57:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:57:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:57:56 GMT
CMD ["jshell"]
# Tue, 20 Oct 2026 17:53:29 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:53:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:53:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:53:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:53:29 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:53:33 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 20 Oct 2026 17:53:33 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:53:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:53:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:53:36 GMT
USER gradle
# Tue, 20 Oct 2026 17:53:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:53:37 GMT
USER root
```

-	Layers:
	-	`sha256:96e018865a7455542a612b44ed5f5973fa5ce3706b35273d9256f2da3960156c`  
		Last Modified: Tue, 13 Oct 2026 13:00:37 GMT  
		Size: 35.0 MB (34952271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb1a2a4183c7d4397db2e410734657e94976c5aa09412956b446da1fc167586`  
		Last Modified: Tue, 13 Oct 2026 22:57:42 GMT  
		Size: 37.9 MB (37887955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6cb0cddfeeb0b34c8313c9409e52de4bc1def2c4d781a879ee0dced8ffceda3`  
		Last Modified: Tue, 13 Oct 2026 22:58:18 GMT  
		Size: 145.8 MB (145832722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a520f0fdffde5eb43c6b05991f1ae71283935e84c75ffd57d59ecba131f643e1`  
		Last Modified: Tue, 13 Oct 2026 22:58:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a7cb4dd718b68b8789bd7135a12407e35de355c904f8abec7dc6aa311740db`  
		Last Modified: Tue, 13 Oct 2026 22:58:14 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840bb599c60a8f4fabbde4261f1c33a411f84e31af5cadfc3a90de05a475ad07`  
		Last Modified: Tue, 20 Oct 2026 17:53:54 GMT  
		Size: 1.6 KB (1589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc04e6ae874f06fb0321efa62a986b3c2e051707c7f79e65c3cdf32ee6137b2`  
		Last Modified: Tue, 20 Oct 2026 17:53:56 GMT  
		Size: 40.2 MB (40203747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d07ab2b2e47bd857774683ac67e4bb62bb1ca8710589c060802701956dc7802`  
		Last Modified: Tue, 20 Oct 2026 17:53:58 GMT  
		Size: 151.5 MB (151533616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1bcc2a082bf73b916184f6bcf66b648382aa151b49b1786360e3ac229ababd9`  
		Last Modified: Tue, 20 Oct 2026 17:53:54 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:9acb1e0c3f6f88250c569a809195964d8e81c3ce0e94b01f05268f3b961ca0d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7122977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b2f4b9bf89d8edcb9f7760fa750ee3b52143646aafe15a5de9dd31c1bdb2be6`

```dockerfile
```

-	Layers:
	-	`sha256:6ad45211cb357e43d963b86c9c0d6f67dec56a5c3af0622762646cda090476b6`  
		Last Modified: Tue, 20 Oct 2026 17:53:55 GMT  
		Size: 7.1 MB (7098518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de0ff5453fe77129a4701c1b048d3099610026ca7e9969d76cb8ddbd96648762`  
		Last Modified: Tue, 20 Oct 2026 17:53:54 GMT  
		Size: 24.5 KB (24459 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:6f345a67cd139d3651fefd35647b8d198646243e7a20d9fe6803777093b54be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.8 MB (406845477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7d29f80bf4d9832ad4df140909bafff56bbe982083ec8671e396153e69a027`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 13 Oct 2026 11:38:11 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:38:11 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:38:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:38:12 GMT
ENV container oci
# Tue, 13 Oct 2026 11:38:13 GMT
COPY dir:afba438e6c8fbafbf237be0da7ee4d78bf11b0c3e7cc19222cf85ac1fb700d8b in /      
# Tue, 13 Oct 2026 11:38:14 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:38:14 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:38:14 GMT
COPY dir:fe33b4e5c0b1e5a254838c04b2eae09c265227f5dbb605d1129c98df0746a610 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:38:14 GMT
COPY dir:fe33b4e5c0b1e5a254838c04b2eae09c265227f5dbb605d1129c98df0746a610 in /root/buildinfo/      
# Tue, 13 Oct 2026 11:38:15 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:37:42Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:37:42Z" "architecture"="aarch64" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:37:42Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:55:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:59 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 22:56:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:56:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:56:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:56:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:56:34 GMT
CMD ["jshell"]
# Tue, 20 Oct 2026 17:54:55 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:54:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:54:55 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:54:55 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:54:55 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:54:58 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 20 Oct 2026 17:54:58 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:54:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:55:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:55:01 GMT
USER gradle
# Tue, 20 Oct 2026 17:55:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:55:02 GMT
USER root
```

-	Layers:
	-	`sha256:be085d7a47c11404cbba8ea172a330ab100dad42557617444fa11a7b10a1bcfd`  
		Last Modified: Tue, 13 Oct 2026 13:00:34 GMT  
		Size: 33.1 MB (33127982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f91828960388fe4deb4188e3337ebaccce022a64bea6a63d3172bf0a202e3a`  
		Last Modified: Tue, 13 Oct 2026 22:56:20 GMT  
		Size: 37.8 MB (37834701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508ae7a016abf9e5bcf5da30e7839afe115d4070e2d84d47014f1c394c008b8d`  
		Last Modified: Tue, 13 Oct 2026 22:56:54 GMT  
		Size: 144.7 MB (144652004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda7a75bd83e4d0563bf72893b06299f4f3aa9a1c1ef401c054ad4d8df48718d`  
		Last Modified: Tue, 13 Oct 2026 22:56:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2daef066111b8cf633b91984e501dd2aa82f631e4484d9075a230472ea436d`  
		Last Modified: Tue, 13 Oct 2026 22:56:51 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ecad9bfca028649571dbf1a0f540f52f5df8ba811478ac22c89a951e310709`  
		Last Modified: Tue, 20 Oct 2026 17:55:21 GMT  
		Size: 1.6 KB (1588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ebeda7d412ffb5e8a2e0d5d72ea0dc68d212bf0823cafe48b05b5c838c64379`  
		Last Modified: Tue, 20 Oct 2026 17:55:23 GMT  
		Size: 39.7 MB (39663612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0f8e35e888d22b2d4cf2541956ae28162161f2e43bec355e2b6e7ed680cefa`  
		Last Modified: Tue, 20 Oct 2026 17:55:25 GMT  
		Size: 151.5 MB (151533617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18d30843c35c7747cafa3236ab6601b33527778a30414ef2f7becefa42d59ca`  
		Last Modified: Tue, 20 Oct 2026 17:55:21 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:cb0b4078284e94eb96f6c585751f8f02a45eff654ef4735a10356b4e8d0fe087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7121430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6db269b6d24bd2d59a743ec8371e207ea05acc8044c5dadb943b26ea5df5d8`

```dockerfile
```

-	Layers:
	-	`sha256:41fdeb63e13fa9ceac2c718c74a2adb31e1a3bbef3daf5828c09979e754d4191`  
		Last Modified: Tue, 20 Oct 2026 17:55:22 GMT  
		Size: 7.1 MB (7096774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f5eb3c6fdd4f0a5342de67186efbea19f075dd377513f3c827dc825403f77cd`  
		Last Modified: Tue, 20 Oct 2026 17:55:21 GMT  
		Size: 24.7 KB (24656 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:451716e06f1f167d97898469d71af731063f42d9708a75f1b3f7449f62b04050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.9 MB (417898545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:851d63d7987dba5a3e7a485c30bcf17b3519d75444578a92b73aa69061c7e769`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 13 Oct 2026 11:40:11 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:40:11 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:40:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:40:12 GMT
ENV container oci
# Tue, 13 Oct 2026 11:40:13 GMT
COPY dir:6eb3f609bc4e564b1e0f3615d9e0a50a15d83aa1392f9c11e0ce78b56c6d1f52 in /      
# Tue, 13 Oct 2026 11:40:13 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:40:13 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:40:14 GMT
COPY dir:5fe1f91fc0fc0351209cf5804013b88c8fe2990db4fa63780198492ee6928ab8 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:40:14 GMT
COPY dir:5fe1f91fc0fc0351209cf5804013b88c8fe2990db4fa63780198492ee6928ab8 in /root/buildinfo/      
# Tue, 13 Oct 2026 11:40:14 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:39:48Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:39:48Z" "architecture"="ppc64le" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:39:48Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:55:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:40 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 23:01:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 23:01:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 23:01:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 23:01:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 23:01:11 GMT
CMD ["jshell"]
# Tue, 13 Oct 2026 23:22:59 GMT
CMD ["gradle"]
# Tue, 13 Oct 2026 23:22:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 13 Oct 2026 23:22:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 13 Oct 2026 23:22:59 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 13 Oct 2026 23:23:00 GMT
WORKDIR /home/gradle
# Tue, 13 Oct 2026 23:23:28 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 13 Oct 2026 23:23:28 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 13 Oct 2026 23:23:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:56:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:56:46 GMT
USER gradle
# Tue, 20 Oct 2026 17:56:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:56:49 GMT
USER root
```

-	Layers:
	-	`sha256:cae3e061a7afa15909e77da897ec7c0aded380e79c5df5ed8870cb712d112de9`  
		Last Modified: Tue, 13 Oct 2026 16:45:35 GMT  
		Size: 39.1 MB (39113979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817884d4fc6351ec75c0b22c811b098c1f63bd0504a857ff68b68f04ecaa39c5`  
		Last Modified: Tue, 13 Oct 2026 22:56:39 GMT  
		Size: 39.7 MB (39670359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32b44dc6ee4f73b3276be4e29ce202b5952624fbfad35dd2c4765792facc1823`  
		Last Modified: Tue, 13 Oct 2026 23:01:55 GMT  
		Size: 145.7 MB (145687532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cd9c0e1e5520d04c0b2afa9f317e280af988688652a6981e1250ad092369b0`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a58063646e447716abb5f8872ea8e41ea6156412d558d0c955af009a21a597`  
		Last Modified: Tue, 13 Oct 2026 23:01:52 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d404271a60c21bdfab6745a5b1e1ee23248dad81f37028f238b6456490e001`  
		Last Modified: Tue, 13 Oct 2026 23:24:39 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c84f95a283a8d940ad8b3b256090dcff681dfc994937d6a867f2a3ba3066e7`  
		Last Modified: Tue, 13 Oct 2026 23:24:41 GMT  
		Size: 41.9 MB (41888448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0cf676b7027c422202dd7d27bcefa4afe205ad56c38a6cd1fddf7c4b25a612f`  
		Last Modified: Tue, 20 Oct 2026 17:57:53 GMT  
		Size: 151.5 MB (151533625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2303c9bc7a6d84b83500cd08da8b14bffbffd5a2957d2991b7e50513371a8a`  
		Last Modified: Tue, 20 Oct 2026 17:57:49 GMT  
		Size: 383.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:3226c998ef0afa2cbe68a8284b21f5ec3158928fd5969c99091cdef4649b5f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7109631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15a8c138f567bd05ce85e02e1e5806f1ad72dc82ebc18fe8e7c495d22da9c7d`

```dockerfile
```

-	Layers:
	-	`sha256:534acc2d44a4d0c37770cc640dffd9810961d8fabb653bdcc921189fe336ec45`  
		Last Modified: Tue, 20 Oct 2026 17:57:49 GMT  
		Size: 7.1 MB (7085100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7082fbeff0b03d1f233dec0a7c881575cce47533665d19d34368a95fdd8d966`  
		Last Modified: Tue, 20 Oct 2026 17:57:49 GMT  
		Size: 24.5 KB (24531 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:a6701cddf4279a0c9de41f1835658e05949eed76e9b0ab62ea6b5fb769f8bd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.8 MB (402754466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b54dbcdcdee91b8314d51350b1296391895b3451b682d310ced793157772385`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 13 Oct 2026 11:50:19 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:50:19 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:50:21 GMT
ENV container oci
# Tue, 13 Oct 2026 11:50:23 GMT
COPY dir:1e6e97c7b08276d6fc241657760d66b7afc6a0634288bfec812f60856399bac6 in /      
# Tue, 13 Oct 2026 11:50:24 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:50:24 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:50:24 GMT
COPY dir:a1971d62b01fb53b8823b9e3a25eadc4645703c309044f9cff0e33ddbf4d511d in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:50:25 GMT
COPY dir:a1971d62b01fb53b8823b9e3a25eadc4645703c309044f9cff0e33ddbf4d511d in /root/buildinfo/      
# Tue, 13 Oct 2026 11:50:26 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:48:36Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:48:36Z" "architecture"="s390x" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:48:36Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:55:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:19 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:19 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 22:56:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:56:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:56:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:56:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:56:04 GMT
CMD ["jshell"]
# Tue, 13 Oct 2026 23:09:57 GMT
CMD ["gradle"]
# Tue, 13 Oct 2026 23:09:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 13 Oct 2026 23:09:57 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 13 Oct 2026 23:09:57 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 13 Oct 2026 23:09:58 GMT
WORKDIR /home/gradle
# Tue, 13 Oct 2026 23:10:01 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 13 Oct 2026 23:10:01 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 13 Oct 2026 23:10:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:50:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:50:19 GMT
USER gradle
# Tue, 20 Oct 2026 17:50:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:50:20 GMT
USER root
```

-	Layers:
	-	`sha256:9a74cc32d0c11450cc3df28e940e72b0fc246b2ea4419b55b451e71c6cb0957e`  
		Last Modified: Tue, 13 Oct 2026 16:45:48 GMT  
		Size: 34.8 MB (34822258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37738299d37c835c30a436e5426ee0a7a6f254177dfc73825e46e460b422c76c`  
		Last Modified: Tue, 13 Oct 2026 22:55:52 GMT  
		Size: 38.3 MB (38273423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af97238a42aec21617ef55e1389fb7307d04421126a2969b8b91d282c0e06a4`  
		Last Modified: Tue, 13 Oct 2026 22:56:30 GMT  
		Size: 135.9 MB (135878817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d12d3ba40e363040b5fb56a5f0967938b58b848cb65e9532c32b19959be386`  
		Last Modified: Tue, 13 Oct 2026 22:56:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b8c5a234adeee7f1a46bb3909301a446810d4ff473c774e2da467bff6936ae`  
		Last Modified: Tue, 13 Oct 2026 22:56:27 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dccaaa3f3e037f07436613846672301dea4028398d9654e66f608cba55f63ca`  
		Last Modified: Tue, 13 Oct 2026 23:10:33 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c67619017c7adb89f367aee8e76c0f0ac506fe1a8f3c2606255396a02f1a2f`  
		Last Modified: Tue, 13 Oct 2026 23:10:35 GMT  
		Size: 42.2 MB (42241750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c594a556557e7f9f390ea808fc796f68ca4e595ce84b93a0f55b15a565b5e4e`  
		Last Modified: Tue, 20 Oct 2026 17:50:53 GMT  
		Size: 151.5 MB (151533624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e8cbfe536c68fdbc35ba146ee7767f95bd8a6397b43aba1c5d5292508ebdd6`  
		Last Modified: Tue, 20 Oct 2026 17:50:50 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:6bc2a4d413dabc04bd5a2915c70e4e4faf00f623fb00019bb76f68934ff1313d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7098786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a656ba07ffd3028d8b045f23a5dc865040f4e043b530c6a138c1686c3b0384e`

```dockerfile
```

-	Layers:
	-	`sha256:524035411f56e070ef0876aecb597fd980becafa9575e3ab2f84d3d0e7f249aa`  
		Last Modified: Tue, 20 Oct 2026 17:50:50 GMT  
		Size: 7.1 MB (7074329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cc47143f2b9eeb82862b77c94ec9c80e800d99f37559112d6843865800c56f4`  
		Last Modified: Tue, 20 Oct 2026 17:50:50 GMT  
		Size: 24.5 KB (24457 bytes)  
		MIME: application/vnd.in-toto+json
