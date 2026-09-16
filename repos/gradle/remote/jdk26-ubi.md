## `gradle:jdk26-ubi`

```console
$ docker pull gradle@sha256:f8b23ffcd53bf495cff97b769e3cd79018323ddea924e868e6604da5ab005c7f
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
$ docker pull gradle@sha256:eeacd70b6b7efe79695f96c6f44e7aeb050222b303536456d038cb8eccaa869c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358837606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95fc9912b280f161a79a6bbc8422628742c94e9fb914702818705ba6d39c0e5f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:21:02 GMT
ENV container oci
# Tue, 15 Sep 2026 07:21:02 GMT
COPY dir:21cef458533fac690c798cfa3b3e5958e280e4511a75d89de7a743be02a08382 in /      
# Tue, 15 Sep 2026 07:21:02 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:21:02 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:21:02 GMT
COPY dir:ef66525f31f34b461a1091c522dc4a2eae7c85b57a795b4dd467ec5654b1d180 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:21:02 GMT
COPY dir:ef66525f31f34b461a1091c522dc4a2eae7c85b57a795b4dd467ec5654b1d180 in /root/buildinfo/      
# Tue, 15 Sep 2026 07:21:03 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:20:44Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:20:44Z" "architecture"="x86_64" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:20:44Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Tue, 15 Sep 2026 22:53:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 15 Sep 2026 22:53:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:53:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 15 Sep 2026 22:53:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:53:43 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Tue, 15 Sep 2026 22:53:48 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 15 Sep 2026 22:53:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 15 Sep 2026 22:53:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:53:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 15 Sep 2026 22:53:49 GMT
CMD ["jshell"]
# Tue, 15 Sep 2026 23:16:44 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 23:16:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 23:16:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 23:16:44 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 23:16:44 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 23:16:50 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 15 Sep 2026 23:16:50 GMT
ENV GRADLE_VERSION=9.7.1
# Tue, 15 Sep 2026 23:16:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Tue, 15 Sep 2026 23:16:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 23:16:52 GMT
USER gradle
# Tue, 15 Sep 2026 23:16:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 23:16:53 GMT
USER root
```

-	Layers:
	-	`sha256:b2a0a2287149cc416166ed23549eb27c7c85bb290f7f72720084c62240c18942`  
		Last Modified: Tue, 15 Sep 2026 08:55:08 GMT  
		Size: 34.9 MB (34945197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293a5c7f2427653c2d69dbaad4d1814b6229520af5d88d13b36170c6b1cc5df7`  
		Last Modified: Tue, 15 Sep 2026 22:54:07 GMT  
		Size: 37.9 MB (37854159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c347f372b4ce14fe6ae64c627587d4f09714cebbbd77ac4bd8e42983666cf67`  
		Last Modified: Tue, 15 Sep 2026 22:54:08 GMT  
		Size: 94.6 MB (94563258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f059c7c7e0d5d822aacadc9e30831121db6c2e5351c2a7120775bed492ada6f5`  
		Last Modified: Tue, 15 Sep 2026 22:54:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba83c981cddf13f6c1b35e368fb34413e8a5ab0226e4cab428b181784c4059a`  
		Last Modified: Tue, 15 Sep 2026 22:54:01 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec16db138a3c39f11ef2b3900ad7f6d20feb82a2f7b7ab8356daec7035cb3995`  
		Last Modified: Tue, 15 Sep 2026 23:17:11 GMT  
		Size: 1.6 KB (1587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb477faf5c6ee2fdef248a9da72035a77ea8da0604e51be270d8a8c1e2874ddd`  
		Last Modified: Tue, 15 Sep 2026 23:17:12 GMT  
		Size: 40.1 MB (40091122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e7774dafb63ec2d93827e09f9cc746a1a5567a8d9eb0687948ff7dea64428b`  
		Last Modified: Tue, 15 Sep 2026 23:17:14 GMT  
		Size: 151.4 MB (151354037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d4c7d8ab203ca293f571d36175a246989b6e6d9def197ccb35d09c594c78d6b`  
		Last Modified: Tue, 15 Sep 2026 23:17:10 GMT  
		Size: 25.6 KB (25613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:6b8dc01bdfcb5131317a27ca216a62c80a220efc3146c24a1ddb25c2d1d1a8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7086006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04aeb0dbff401121716789d0b71f7b0a04803c358f8d72af5fd9ec5d137b73e`

```dockerfile
```

-	Layers:
	-	`sha256:65ad783e45d948a18f1b41c514f9d948e48c7b2facecbbe6ba6900fef003dd47`  
		Last Modified: Tue, 15 Sep 2026 23:17:11 GMT  
		Size: 7.1 MB (7061581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f62a2b14ffa6d0e827c58c13bc167f239f0e512fc702716ceaa0d567268a8f29`  
		Last Modified: Tue, 15 Sep 2026 23:17:10 GMT  
		Size: 24.4 KB (24425 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:e12a57454d1125b3ec925921a3a330e188983168f16a99fcdde1208fb7a2e1cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.4 MB (355390779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43c654e39c3d0c0b60921392dd2d2e7dddd71e358e0042da23cee2d3a75fda72`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:23:41 GMT
ENV container oci
# Tue, 15 Sep 2026 07:23:42 GMT
COPY dir:0845143fbed957104ab911522be3d0b6d3786a7c091384a3b77e4182364ea680 in /      
# Tue, 15 Sep 2026 07:23:42 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:23:42 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:23:42 GMT
COPY dir:6f027d514aa0d332f638ab89347dc08b3f3268364d11eb6c4c523f18d39132e3 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:23:42 GMT
COPY dir:6f027d514aa0d332f638ab89347dc08b3f3268364d11eb6c4c523f18d39132e3 in /root/buildinfo/      
# Tue, 15 Sep 2026 07:23:42 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:23:13Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:23:13Z" "architecture"="aarch64" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:23:13Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Tue, 15 Sep 2026 22:41:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 15 Sep 2026 22:41:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:41:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 15 Sep 2026 22:41:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:41:39 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Tue, 15 Sep 2026 22:42:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 15 Sep 2026 22:42:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 15 Sep 2026 22:42:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:42:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 15 Sep 2026 22:42:48 GMT
CMD ["jshell"]
# Tue, 15 Sep 2026 23:13:22 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 23:13:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 23:13:22 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 23:13:22 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 23:13:22 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 23:13:27 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 15 Sep 2026 23:13:27 GMT
ENV GRADLE_VERSION=9.7.1
# Tue, 15 Sep 2026 23:13:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Tue, 15 Sep 2026 23:13:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 23:13:30 GMT
USER gradle
# Tue, 15 Sep 2026 23:13:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 23:13:31 GMT
USER root
```

-	Layers:
	-	`sha256:bc840691d14453cf4b8d9c57d899d7ea0d7fa6dae3fcee6dbcaa685e0c31d009`  
		Last Modified: Tue, 15 Sep 2026 08:55:06 GMT  
		Size: 33.1 MB (33144625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0217794dd44a968878e3c5af3eb6a4738d4058bf60b44f5a140173c3fc48eff`  
		Last Modified: Tue, 15 Sep 2026 22:42:01 GMT  
		Size: 37.8 MB (37780027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:560d00be7ddf8ad4f2517294393b8573e7ca70bc43daef4484ac2f0525d25697`  
		Last Modified: Tue, 15 Sep 2026 22:43:07 GMT  
		Size: 93.5 MB (93541445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dce540ecf09f38c481a0d8abc7e0f7eff13831e423b3a9d947705e658b1d548`  
		Last Modified: Tue, 15 Sep 2026 22:43:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c3dcbea0726a7515a29a319733056b8825d269f6a0ed4e0952c892d010dca68`  
		Last Modified: Tue, 15 Sep 2026 22:43:05 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d67a2d087d5f4e56cc592f951dcbee667f019f7dcd76f373fb5ea69b305170`  
		Last Modified: Tue, 15 Sep 2026 23:13:50 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e90052bdf7a0e61d36c75f11baf666e8bab131fc492fcdcc0e69d55b6c7b7a7`  
		Last Modified: Tue, 15 Sep 2026 23:13:52 GMT  
		Size: 39.5 MB (39537104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039c27fb30c0edeabba6885410d46a149683f5166e841eff5a20827642707d6b`  
		Last Modified: Tue, 15 Sep 2026 23:13:55 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586847c9d0ae7fbbdd61ea04aaea6fb2e665e4e540370b33571b0f456c92336a`  
		Last Modified: Tue, 15 Sep 2026 23:13:50 GMT  
		Size: 29.3 KB (29343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:f9d28ea63892c412601e88953fb1834dbbbaa0209cfce27db833845f979a8035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7084456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23955edf6403ca2d060d13f2cbe2cc5533fceb8c95cca9934b81edae14b283a8`

```dockerfile
```

-	Layers:
	-	`sha256:2f951403b636c3484dcf780017480f090111b7c92bb3761f1705dd8ce2fb2f01`  
		Last Modified: Tue, 15 Sep 2026 23:13:50 GMT  
		Size: 7.1 MB (7059834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dda5cc1ec79b21e11eaa793cce177037277bfc188f104cd52a9689092ec2a0b`  
		Last Modified: Tue, 15 Sep 2026 23:13:50 GMT  
		Size: 24.6 KB (24622 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:0bfcb2026b705cfcc4657d6b9d4ec028f751eed219f63c7d9d930f00110c73f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.3 MB (365269227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb811bbab01073119eba84a43e90f8de16da2baefb3593f6fa0f02901c7b106c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:24:47 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:24:47 GMT
ENV container oci
# Tue, 15 Sep 2026 07:24:47 GMT
COPY dir:74a02c466907e44b158ce4759bc510ce82dea90059cdd3111818e1216e94981e in /      
# Tue, 15 Sep 2026 07:24:47 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:24:47 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:24:48 GMT
COPY dir:d3f35ec2e3cd701d60ea9e59cc460be3f9ef6f13480ada9a8a3a859627e87d9e in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:24:48 GMT
COPY dir:d3f35ec2e3cd701d60ea9e59cc460be3f9ef6f13480ada9a8a3a859627e87d9e in /root/buildinfo/      
# Tue, 15 Sep 2026 07:24:48 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:24:30Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:24:30Z" "architecture"="ppc64le" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:24:30Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Wed, 16 Sep 2026 01:52:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 01:52:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 01:52:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 01:52:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 16 Sep 2026 01:52:03 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 16 Sep 2026 02:01:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 16 Sep 2026 02:01:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 02:01:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 02:01:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 02:01:07 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 06:03:42 GMT
CMD ["gradle"]
# Wed, 16 Sep 2026 06:03:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 16 Sep 2026 06:03:42 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 16 Sep 2026 06:03:42 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 16 Sep 2026 06:03:42 GMT
WORKDIR /home/gradle
# Wed, 16 Sep 2026 06:03:54 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 16 Sep 2026 06:03:54 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 16 Sep 2026 06:03:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 16 Sep 2026 06:04:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 16 Sep 2026 06:04:09 GMT
USER gradle
# Wed, 16 Sep 2026 06:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 16 Sep 2026 06:04:15 GMT
USER root
```

-	Layers:
	-	`sha256:e6853c34644bdb2f7b388f1cfefb2460bb0c83858f9ead1b21da21eea8bd737a`  
		Last Modified: Tue, 15 Sep 2026 12:25:37 GMT  
		Size: 39.1 MB (39092184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6379114af2b533684e58aa624cc4897b1150e50cdf93de63632dbb75ca065b`  
		Last Modified: Wed, 16 Sep 2026 01:52:39 GMT  
		Size: 39.6 MB (39605606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a5a6ddbaa652aaf7d109e235ac0a94de03184149a2879d67f00a196ad4c072`  
		Last Modified: Wed, 16 Sep 2026 02:01:45 GMT  
		Size: 93.4 MB (93351130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d6d26b3497c3f8728a38fa54d0a1aa9f10df7a8ca1fbf61adc29be8b161505c`  
		Last Modified: Wed, 16 Sep 2026 02:01:42 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce3d8cafe217b0775d37ddd35c8768f537cbbb9330e0216ba6008e84ea7c27a`  
		Last Modified: Wed, 16 Sep 2026 02:01:42 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66da295231303079584deafd1f73eac750950e67c67a661c7c68674ba94015e`  
		Last Modified: Wed, 16 Sep 2026 06:05:20 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2008dec16b8d7cbab6e926f5f88ff375668da68c42d23705c2c2c8ff4072f1`  
		Last Modified: Wed, 16 Sep 2026 06:05:22 GMT  
		Size: 41.9 MB (41861687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33075916cfe6115ac8c9941e7abe4506b35d18b9c42d147e89ddd223a33c9ac3`  
		Last Modified: Wed, 16 Sep 2026 06:05:24 GMT  
		Size: 151.4 MB (151354021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bc3445537139342426f02d9eba611c04bb36707d1ac6df1159e438cbba52169`  
		Last Modified: Wed, 16 Sep 2026 06:05:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:0b1e96f45be35c2ee3d48e65a8660f5753ff114f86f7f35e0ca43f55a803ed9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7061432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49c4e7ab6dffe543ae9f0faeea564bb970c918693379139ee7915da183344dc7`

```dockerfile
```

-	Layers:
	-	`sha256:7c0f7a21baab5ab7b32314c3406772ce8e399ac2685d1fbe355f7d22b84b635c`  
		Last Modified: Wed, 16 Sep 2026 06:05:20 GMT  
		Size: 7.0 MB (7036935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47f685e9dd532cabafa914adf870c198c2d527367fc5eb7e81100357cd2f4383`  
		Last Modified: Wed, 16 Sep 2026 06:05:20 GMT  
		Size: 24.5 KB (24497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:74f792bd36aa0eb862f77c08cefc9cc865e6c2f0ba00b295b2fb63579d68f973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.0 MB (356963033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdfc31cbb2664424012338cceb4a442c2688f5ca06c6d4a5360d517c797f8b0c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 01:03:51 GMT
ENV container oci
# Mon, 31 Aug 2026 01:03:51 GMT
COPY dir:e0b55156afc48595f50283f3b5ca4e244773f3f5a271f2cd3ceb460190953ed1 in /      
# Mon, 31 Aug 2026 01:03:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 01:03:52 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 01:03:52 GMT
COPY dir:621390827405d8042b06b62cd80e2a658b5a7b3772c696e3082635466ca2f168 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 01:03:52 GMT
COPY dir:621390827405d8042b06b62cd80e2a658b5a7b3772c696e3082635466ca2f168 in /root/buildinfo/      
# Mon, 31 Aug 2026 01:03:52 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T01:02:39Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T01:02:39Z" "architecture"="s390x" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T01:02:39Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:02:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:02:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:02:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:02:10 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:02:10 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Mon, 31 Aug 2026 19:04:45 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:04:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:04:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:04:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:04:48 GMT
CMD ["jshell"]
# Mon, 31 Aug 2026 19:53:39 GMT
CMD ["gradle"]
# Mon, 31 Aug 2026 19:53:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 31 Aug 2026 19:53:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 31 Aug 2026 19:53:39 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 31 Aug 2026 19:53:39 GMT
WORKDIR /home/gradle
# Mon, 31 Aug 2026 19:53:43 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 31 Aug 2026 19:53:43 GMT
ENV GRADLE_VERSION=9.7.1
# Mon, 31 Aug 2026 19:53:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Mon, 31 Aug 2026 19:53:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 31 Aug 2026 19:53:47 GMT
USER gradle
# Mon, 31 Aug 2026 19:53:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 31 Aug 2026 19:53:48 GMT
USER root
```

-	Layers:
	-	`sha256:6a32169b134863613ca74b2a88a364995d45d3ced3576f8ec16b59a99b1445d8`  
		Last Modified: Mon, 31 Aug 2026 06:16:03 GMT  
		Size: 34.8 MB (34778899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772305ea4fb57a3591fb3ab7d2221b6969ceb13294c6f4bbb59b68e80c44a226`  
		Last Modified: Mon, 31 Aug 2026 19:02:43 GMT  
		Size: 38.2 MB (38197740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e659f2b0cc6ead1b44bcfddaa7ff016aff0020758cf01618cad38fee97e36d52`  
		Last Modified: Mon, 31 Aug 2026 19:05:15 GMT  
		Size: 90.6 MB (90589429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe5290a7d9a0d00561082588d7922a305778115d96bf06ea639de0b8b3a95ad`  
		Last Modified: Mon, 31 Aug 2026 19:05:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8955593b4c3f09841de6325c635be17496a589beabb11527a1d2d38307ba239e`  
		Last Modified: Mon, 31 Aug 2026 19:05:08 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30623d017773a614ae1cb2713649593526e94153722264ce8f12d8ab5975785e`  
		Last Modified: Mon, 31 Aug 2026 19:54:17 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e04d3eb9cb40ef9dd8ef2957dbcafa7a88bf6987b9b107fa82f22f148f7588`  
		Last Modified: Mon, 31 Aug 2026 19:54:18 GMT  
		Size: 42.0 MB (42038339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d332ee7defc31d93ec783febb62b921093f2d5eee6ec98cc5b22bedca3d30344`  
		Last Modified: Mon, 31 Aug 2026 19:54:20 GMT  
		Size: 151.4 MB (151354036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be084a076df0981882812b716029e9f14c38ad16b492f61e0c91d7d7518db641`  
		Last Modified: Mon, 31 Aug 2026 19:54:17 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:40b891304f4d8249bc695fdc1fb2b6d75a91e7217e87427463ed6d488cb410df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7052013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e0012b19d477bfebf702959b354dbb7a3bc7d0284efdf177a8c7014b0dda87`

```dockerfile
```

-	Layers:
	-	`sha256:475f26916e50a1d34b9a6501aba5850de169d6f951fe2df80e065af2af0e7131`  
		Last Modified: Mon, 31 Aug 2026 19:54:17 GMT  
		Size: 7.0 MB (7027590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc6f4295bc0ecf2e994e762196de2020b1e15ba6a00f7e01904e4488afc6c7a7`  
		Last Modified: Mon, 31 Aug 2026 19:54:17 GMT  
		Size: 24.4 KB (24423 bytes)  
		MIME: application/vnd.in-toto+json
