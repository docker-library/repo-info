## `gradle:ubi10`

```console
$ docker pull gradle@sha256:69a3931deda06a8311fd81b8cac72fa19273599806ca49c49a7c72cfd41c1974
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

### `gradle:ubi10` - linux; amd64

```console
$ docker pull gradle@sha256:6cca1be0f098bbfdd00626af5d067e2366a9be74844708f13728cd69fe88b15d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.4 MB (355403183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:462eb5d27c4950984761bec5f829a75c804be4674f1a161417fe7dc10af40e15`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 10 Aug 2026 21:51:29 GMT
ENV container oci
# Mon, 10 Aug 2026 21:51:30 GMT
COPY dir:7a04abc64e369dd32456066306b8fddc9c1e490ec0cf51450d2d195a7ad5c1e9 in /      
# Mon, 10 Aug 2026 21:51:30 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 21:51:30 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 21:51:30 GMT
COPY dir:0b22cdacfd54d8b903ea695d9151f1ccb890483ff9ca8176faa3c586cf67071d in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 21:51:30 GMT
COPY dir:0b22cdacfd54d8b903ea695d9151f1ccb890483ff9ca8176faa3c586cf67071d in /root/buildinfo/      
# Mon, 10 Aug 2026 21:51:30 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T21:51:06Z" "org.opencontainers.image.revision"="f79522b6176b2c2293398c933c4f7a44008ab395" "build-date"="2026-08-10T21:51:06Z" "architecture"="x86_64" "vcs-ref"="f79522b6176b2c2293398c933c4f7a44008ab395" "vcs-type"="git" "release"="1786398535"org.opencontainers.image.created=2026-08-10T21:51:06Z,org.opencontainers.image.revision=f79522b6176b2c2293398c933c4f7a44008ab395
# Tue, 11 Aug 2026 17:50:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 17:50:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:50:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 17:50:28 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:50:28 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 11 Aug 2026 17:51:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 17:51:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 17:51:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 17:51:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 17:51:12 GMT
CMD ["jshell"]
# Tue, 11 Aug 2026 18:10:32 GMT
CMD ["gradle"]
# Tue, 11 Aug 2026 18:10:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 11 Aug 2026 18:10:32 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 11 Aug 2026 18:10:32 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 11 Aug 2026 18:10:32 GMT
WORKDIR /home/gradle
# Tue, 11 Aug 2026 18:10:36 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 11 Aug 2026 18:10:36 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 11 Aug 2026 18:10:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 11 Aug 2026 18:10:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 11 Aug 2026 18:10:38 GMT
USER gradle
# Tue, 11 Aug 2026 18:10:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 11 Aug 2026 18:10:39 GMT
USER root
```

-	Layers:
	-	`sha256:57ad07d2cd224920b88126949754e7f4ce28cf93f6845916da07c959c6d98f1d`  
		Last Modified: Tue, 11 Aug 2026 00:19:13 GMT  
		Size: 34.9 MB (34906619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf5b21a65fdeebe854c99cef8cf0d90b04a7fc11f05517ad7f3dbb8fb386852`  
		Last Modified: Tue, 11 Aug 2026 17:50:54 GMT  
		Size: 37.8 MB (37784380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ddf7bd9c3013846fc12145bec42648aa887fcc37f498d5c0466acf9d837fa8f`  
		Last Modified: Tue, 11 Aug 2026 17:51:30 GMT  
		Size: 92.6 MB (92579374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8c3734691dacc7b57e110ea79bbef9e5c9f804972ae1baa8e2803cce6fa7fb`  
		Last Modified: Tue, 11 Aug 2026 17:51:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6338bceb2edee460f75ec587c6a6a5adcfc8045233accdb3cbfe134cd4c67770`  
		Last Modified: Tue, 11 Aug 2026 17:51:28 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01b1c03b79c64981bb82d44c04a71c8d77bfa5cfba0b6083638e67c390af8ab7`  
		Last Modified: Tue, 11 Aug 2026 18:10:58 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c85327b76d7ed9637c8804bd864246eac96bf9f687b5c1465a86e2e861a110`  
		Last Modified: Tue, 11 Aug 2026 18:11:00 GMT  
		Size: 39.9 MB (39875212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0948584ff37ea2adffa0b1f5453ff8207ad03c1eda6f5042b48963daa56e731a`  
		Last Modified: Tue, 11 Aug 2026 18:11:01 GMT  
		Size: 150.2 MB (150227949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82aeae184a0c32659c2ac4f38ac9f2607ab2244a093f3aaf14a9f51cbbf6392e`  
		Last Modified: Tue, 11 Aug 2026 18:10:58 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:5bd55df86b221c315ea44df6bec96b4d622ba7c47d4969c77a0a5cc081e590cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7088378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fcdbb3380f14fa06e1b53c4cb68dc01b36974f8c552652553f06ae95f54f97c`

```dockerfile
```

-	Layers:
	-	`sha256:69a5b0586d5338c4d82bff1f87be0acdd4453e0c076e5caa607f6edf503f0a7d`  
		Last Modified: Tue, 11 Aug 2026 18:10:58 GMT  
		Size: 7.1 MB (7063371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e4179495f2ad6b269a7f96242ad84561a76cfa61d426ba78b555f87b236b510`  
		Last Modified: Tue, 11 Aug 2026 18:10:58 GMT  
		Size: 25.0 KB (25007 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d46a559426ae24441e203db474ccd6d4048c1f68c8b0e2e633498b2001424ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.0 MB (351978336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d37d61d0d6255beb3074448e1086e31634c20dd085082cbcfb6ea59ddaafe16`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 10 Aug 2026 21:53:25 GMT
ENV container oci
# Mon, 10 Aug 2026 21:53:26 GMT
COPY dir:9b127e1be7f03495b8968f9753237fa3e68b28fbfc2ca0a6affa6cd45dc58ba9 in /      
# Mon, 10 Aug 2026 21:53:26 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 21:53:26 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 21:53:26 GMT
COPY dir:9ab660a0e21475a7f5a194ebb4173ccfdc8efc453ad00cf084e289cfef69ef69 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 21:53:26 GMT
COPY dir:9ab660a0e21475a7f5a194ebb4173ccfdc8efc453ad00cf084e289cfef69ef69 in /root/buildinfo/      
# Mon, 10 Aug 2026 21:53:26 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T21:53:05Z" "org.opencontainers.image.revision"="f79522b6176b2c2293398c933c4f7a44008ab395" "build-date"="2026-08-10T21:53:05Z" "architecture"="aarch64" "vcs-ref"="f79522b6176b2c2293398c933c4f7a44008ab395" "vcs-type"="git" "release"="1786398535"org.opencontainers.image.created=2026-08-10T21:53:05Z,org.opencontainers.image.revision=f79522b6176b2c2293398c933c4f7a44008ab395
# Tue, 11 Aug 2026 19:05:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 19:05:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 19:05:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 19:05:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 19:05:37 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 11 Aug 2026 19:05:44 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 19:05:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 19:05:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:05:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 19:05:45 GMT
CMD ["jshell"]
# Tue, 11 Aug 2026 19:15:00 GMT
CMD ["gradle"]
# Tue, 11 Aug 2026 19:15:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 11 Aug 2026 19:15:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 11 Aug 2026 19:15:00 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 11 Aug 2026 19:15:00 GMT
WORKDIR /home/gradle
# Tue, 11 Aug 2026 19:15:04 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 11 Aug 2026 19:15:04 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 11 Aug 2026 19:15:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 11 Aug 2026 19:15:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 11 Aug 2026 19:15:07 GMT
USER gradle
# Tue, 11 Aug 2026 19:15:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 11 Aug 2026 19:15:08 GMT
USER root
```

-	Layers:
	-	`sha256:6ad2b21e4232c6d46ffbc015ce8e9bfb1643a196de1763d432d925693df6f338`  
		Last Modified: Tue, 11 Aug 2026 00:19:28 GMT  
		Size: 33.1 MB (33117757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8cb51b57eadcb2a18aca486b53db6f444a37633d3ccb6f9bf07690e48cb08a`  
		Last Modified: Tue, 11 Aug 2026 19:06:04 GMT  
		Size: 37.7 MB (37709041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a353a7177b53da4dc9288dc3f3c74d0b8f9fd23e9fe712a6e462a17f7080e6`  
		Last Modified: Tue, 11 Aug 2026 19:06:05 GMT  
		Size: 91.5 MB (91548889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf4986e30f354cf54855f92923664f17eb6ddabd1f9eb9977396dab027db882`  
		Last Modified: Tue, 11 Aug 2026 19:06:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7a4db31b0bbe8e0ac68197f2610340aab0eef55bc877d03e95133ba728943d`  
		Last Modified: Tue, 11 Aug 2026 19:06:02 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f306fc82d54e41e31e66217a732610c092fe75889d0e8f4a9b2dc7cf3814ddf6`  
		Last Modified: Tue, 11 Aug 2026 19:15:27 GMT  
		Size: 1.6 KB (1582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edf72990439e7f5b943100ffbc4dede293770fdca65f13777fde4b0c9ef613af`  
		Last Modified: Tue, 11 Aug 2026 19:15:28 GMT  
		Size: 39.3 MB (39341324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad55195fada006e2665b0fc2e736f16a07e611910dc1f600aae8b53fa8d46de0`  
		Last Modified: Tue, 11 Aug 2026 19:15:30 GMT  
		Size: 150.2 MB (150227952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16118196fa5b662a94dfe3073f63afdb8dd5e9878489aec7920d011c2e84875`  
		Last Modified: Tue, 11 Aug 2026 19:15:27 GMT  
		Size: 29.3 KB (29341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:73338f9e4794f0e3952ec8ebac2e1e6cd73bf0af22f7b2dfb23ec8f435d377e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7086878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:becf22d014e19db2e503c803ae20b998004257db3eff94cd47ba1a10d8eb6bd3`

```dockerfile
```

-	Layers:
	-	`sha256:f457de7e0af08a48af4fd97437d6bed863b6bb39026a85993a5f22a155b2c6b1`  
		Last Modified: Tue, 11 Aug 2026 19:15:27 GMT  
		Size: 7.1 MB (7061648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:513fe92f94a5d71065af7f9670ea0d66dfe0904b92f4e26a351e5016bb77b26a`  
		Last Modified: Tue, 11 Aug 2026 19:15:27 GMT  
		Size: 25.2 KB (25230 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:fda7c53b8828e77af48a01c56d83b1aee99d083d3cf03fbe89a733c7dff9cd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.3 MB (362341382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9330a968644c99980ddf106b7095a0f867105279cc52865fe7329bf778ebb1d6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 10 Aug 2026 21:59:05 GMT
ENV container oci
# Mon, 10 Aug 2026 21:59:05 GMT
COPY dir:249066be360b20bac2c3d87c82d2fd5913a2bd1c8a7703095843f7bb07f442b8 in /      
# Mon, 10 Aug 2026 21:59:05 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 21:59:05 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 21:59:05 GMT
COPY dir:7876787ddee47582bd5037da96d6c1c51bee54abfb82e51e92e428cf06595bca in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 21:59:05 GMT
COPY dir:7876787ddee47582bd5037da96d6c1c51bee54abfb82e51e92e428cf06595bca in /root/buildinfo/      
# Mon, 10 Aug 2026 21:59:06 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T21:58:46Z" "org.opencontainers.image.revision"="f79522b6176b2c2293398c933c4f7a44008ab395" "build-date"="2026-08-10T21:58:46Z" "architecture"="ppc64le" "vcs-ref"="f79522b6176b2c2293398c933c4f7a44008ab395" "vcs-type"="git" "release"="1786398535"org.opencontainers.image.created=2026-08-10T21:58:46Z,org.opencontainers.image.revision=f79522b6176b2c2293398c933c4f7a44008ab395
# Tue, 11 Aug 2026 20:19:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 20:19:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 20:19:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 20:19:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 20:19:36 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 11 Aug 2026 20:27:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 20:27:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 20:27:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 20:27:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 20:27:21 GMT
CMD ["jshell"]
# Tue, 11 Aug 2026 21:09:53 GMT
CMD ["gradle"]
# Tue, 11 Aug 2026 21:09:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 11 Aug 2026 21:09:53 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 11 Aug 2026 21:09:53 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 11 Aug 2026 21:09:54 GMT
WORKDIR /home/gradle
# Tue, 11 Aug 2026 21:10:19 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 11 Aug 2026 21:10:19 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 11 Aug 2026 21:10:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 11 Aug 2026 21:10:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 11 Aug 2026 21:10:25 GMT
USER gradle
# Tue, 11 Aug 2026 21:10:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 11 Aug 2026 21:10:27 GMT
USER root
```

-	Layers:
	-	`sha256:8cd8bf1356749857de78a84ea2d535a37f25277dac8b1dcfbb2a37ef254ca46b`  
		Last Modified: Tue, 11 Aug 2026 00:19:54 GMT  
		Size: 39.0 MB (38992795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3681bd23f68912b8e5fc514148289990dda7f13561576208484ea88934ecba6`  
		Last Modified: Tue, 11 Aug 2026 20:20:14 GMT  
		Size: 39.5 MB (39545533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e349a199c2bb1c23c4a9a5ad25b7ed85e0c28c7064a9f9edd537c7fc53034e7c`  
		Last Modified: Tue, 11 Aug 2026 20:27:55 GMT  
		Size: 91.9 MB (91912864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9ef306b300b89961b1c2cceebca604fb80568e7093cbe3ea069692f036cb1b`  
		Last Modified: Tue, 11 Aug 2026 20:27:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce225146d6b68a2fecc36953b0c910674358aa29a0d982f9023e05aa5f873477`  
		Last Modified: Tue, 11 Aug 2026 20:27:47 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e89ed88b32cd568c3bde08f95b09e5ec33c1e49e59574f43b0bb63af89f554`  
		Last Modified: Tue, 11 Aug 2026 21:11:07 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7313579a7fc02024d2616721eaf8db467fe824a1fe4a180a6f7464afd6556492`  
		Last Modified: Tue, 11 Aug 2026 21:11:09 GMT  
		Size: 41.7 MB (41657870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d469a149e2b4ff34af89ed0086c3629b550fc9912f72d1f96ae7ee46d379fd`  
		Last Modified: Tue, 11 Aug 2026 21:11:12 GMT  
		Size: 150.2 MB (150227900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae73f9c10c31c264d12e20de1c17a961d0aeacfe5f29a7805386f35b3e01533`  
		Last Modified: Tue, 11 Aug 2026 21:11:07 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:e9ebf29df4d0e0a0ab545d2073606d645a786869217b5420c51cb9455f43881b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7063206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a6e66c2bb82c4400baaeb3cef8c9b110b7d23a063d472bb946a464bfb66236`

```dockerfile
```

-	Layers:
	-	`sha256:d472a5c9d87321916300c576cb450941ac27918d6f92d5ed78d39d93c665f56a`  
		Last Modified: Tue, 11 Aug 2026 21:11:07 GMT  
		Size: 7.0 MB (7038113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d39108d34121a5cd1187c076baae045b3b13e5475ba6813ef60783c2a1bc7555`  
		Last Modified: Tue, 11 Aug 2026 21:11:07 GMT  
		Size: 25.1 KB (25093 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:088eee78c76f770f19cdba14cd3d2e0d1b61d2e17d79104340e20fcd9df067df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.6 MB (353588379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bb58cf3cb173ce5e7f925d07dc42356c241bd42ab147c86407640c09f194ed`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 22:13:57 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 10 Aug 2026 22:13:57 GMT
ENV container oci
# Mon, 10 Aug 2026 22:13:58 GMT
COPY dir:2529f8755d9ee8e53623ba27aa56e84fca0d00a668e2f0a6ab24b9e486487435 in /      
# Mon, 10 Aug 2026 22:13:58 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 22:13:58 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 22:13:58 GMT
COPY dir:80d51a898d3b26a95270997d07c6c3dac30eb3437f15cc4502861f1a56e565ec in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 22:13:58 GMT
COPY dir:80d51a898d3b26a95270997d07c6c3dac30eb3437f15cc4502861f1a56e565ec in /root/buildinfo/      
# Mon, 10 Aug 2026 22:13:58 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T22:12:27Z" "org.opencontainers.image.revision"="f79522b6176b2c2293398c933c4f7a44008ab395" "build-date"="2026-08-10T22:12:27Z" "architecture"="s390x" "vcs-ref"="f79522b6176b2c2293398c933c4f7a44008ab395" "vcs-type"="git" "release"="1786398535"org.opencontainers.image.created=2026-08-10T22:12:27Z,org.opencontainers.image.revision=f79522b6176b2c2293398c933c4f7a44008ab395
# Tue, 11 Aug 2026 17:49:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 17:49:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:49:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 17:49:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:49:57 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 11 Aug 2026 17:53:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 17:53:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 17:53:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 17:53:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 17:53:37 GMT
CMD ["jshell"]
# Tue, 11 Aug 2026 18:11:03 GMT
CMD ["gradle"]
# Tue, 11 Aug 2026 18:11:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 11 Aug 2026 18:11:03 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 11 Aug 2026 18:11:03 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 11 Aug 2026 18:11:03 GMT
WORKDIR /home/gradle
# Tue, 11 Aug 2026 18:11:18 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 11 Aug 2026 18:11:18 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 11 Aug 2026 18:11:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 11 Aug 2026 18:11:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 11 Aug 2026 18:11:25 GMT
USER gradle
# Tue, 11 Aug 2026 18:11:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 11 Aug 2026 18:11:27 GMT
USER root
```

-	Layers:
	-	`sha256:003f683bf518c0de90b2047dd27ee887a3a0041122084567ca251d13afdf8017`  
		Last Modified: Tue, 11 Aug 2026 00:19:41 GMT  
		Size: 34.8 MB (34777119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbf78ce8f1df853982ddb56a54c61db1fbbcecaefe493af04af7ca19652eaac`  
		Last Modified: Tue, 11 Aug 2026 17:50:37 GMT  
		Size: 38.2 MB (38153531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0062ab00e404ecc27bc427e98cfaa4a2bbd413709d993a8588629b55ac60a7f`  
		Last Modified: Tue, 11 Aug 2026 17:54:36 GMT  
		Size: 88.4 MB (88421657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6326e263ce016f3792ae323ff115b7c7eef660f38324ec794f7453089b31bc04`  
		Last Modified: Tue, 11 Aug 2026 17:54:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef247795565841bc275bf5b03dd78c9cf3138ae1383ceed29492537947759140`  
		Last Modified: Tue, 11 Aug 2026 17:54:31 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16ab30cecd2e228d288eb983e86c766f342de0e372de1e7a7c7bc5a549a8db6`  
		Last Modified: Tue, 11 Aug 2026 18:12:10 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1afb9da7ec63d08bdf655193b27564ada74b2157143c3e25381edde881cebeb`  
		Last Modified: Tue, 11 Aug 2026 18:12:13 GMT  
		Size: 42.0 MB (42003708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:201f6620d87d8733504f03a5d0c6924dde5b6061d72216bb151ffe8dcc5966bc`  
		Last Modified: Tue, 11 Aug 2026 18:12:15 GMT  
		Size: 150.2 MB (150227950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6b77c6e530cb749dd757eb296eb99b9f5994840ec66c5cd4f5925c3615584c`  
		Last Modified: Tue, 11 Aug 2026 18:12:11 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:5b092765c4fe66c2ed070ac255cc9a6b3f3624f23b5e4246aaeed37abba8a94c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7053587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac543325c5c331609e8d25078eb7d7d4397aa7d5e4d32399865172dea2531738`

```dockerfile
```

-	Layers:
	-	`sha256:b047576758be298c12aed626e63e93591ff323db7b5bc2aa046195ea4c6a5e46`  
		Last Modified: Tue, 11 Aug 2026 18:12:11 GMT  
		Size: 7.0 MB (7028580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:827763b1298c7ed70d76a42a4b8eeb5912d056927c5a7424e001f568fe731314`  
		Last Modified: Tue, 11 Aug 2026 18:12:11 GMT  
		Size: 25.0 KB (25007 bytes)  
		MIME: application/vnd.in-toto+json
