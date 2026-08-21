## `gradle:ubi10`

```console
$ docker pull gradle@sha256:3eac7c4910d05e6397e8e6036f914ee9f46e65215ec3b685121af424df9c7c5f
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
$ docker pull gradle@sha256:76c42a4b5d5e0799616c1d501d4a531e304fd6f856289814c30f9b63b8daf65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.6 MB (356567896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c30855d35f34f41a67332db0d0d60060841830ef278b707bad22bd2ffd4eb8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 05:43:08 GMT
ENV container oci
# Thu, 20 Aug 2026 05:43:09 GMT
COPY dir:9f021fb13f2371556f5330777fa50b285029910699c8db1352c33ddbfc4aa6e0 in /      
# Thu, 20 Aug 2026 05:43:09 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 05:43:09 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 05:43:09 GMT
COPY dir:bf294f09ff82d16384bebbac392bb5b44f58ff0fde6056277f77e6dc82df16e4 in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 05:43:09 GMT
COPY dir:bf294f09ff82d16384bebbac392bb5b44f58ff0fde6056277f77e6dc82df16e4 in /root/buildinfo/      
# Thu, 20 Aug 2026 05:43:09 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T05:42:51Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T05:42:51Z" "architecture"="x86_64" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T05:42:51Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Fri, 21 Aug 2026 18:22:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 18:22:13 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:26:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:26:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:26:05 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:43:34 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:43:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:43:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 18:43:34 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:43:34 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:43:39 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 21 Aug 2026 18:43:39 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 18:43:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 18:43:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:43:42 GMT
USER gradle
# Fri, 21 Aug 2026 18:43:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:43:43 GMT
USER root
```

-	Layers:
	-	`sha256:d61293fa3d3593fa639f5bfdc418af2cbb4e25ccdf20c6ff76fc342b18e72883`  
		Last Modified: Thu, 20 Aug 2026 06:41:10 GMT  
		Size: 34.9 MB (34881705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c0b548d83c2b1942af61fd37650f952215b00ce0d742a663a103f8305653e6`  
		Last Modified: Fri, 21 Aug 2026 18:22:29 GMT  
		Size: 37.8 MB (37796344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9425b330ca3cb1e74394083cded957e533cf14942d2fd3c41998e40e38e92082`  
		Last Modified: Fri, 21 Aug 2026 18:26:22 GMT  
		Size: 92.6 MB (92616380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f693f375eabdf6f260da8fe45479824a1d4e97f9c23d83eb7fd8fc8e8785827`  
		Last Modified: Fri, 21 Aug 2026 18:26:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c4023cc86c5539901faa53cf2b1b58f4943a2ef49682c46044771c6d4ac5b76`  
		Last Modified: Fri, 21 Aug 2026 18:26:20 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4be4ccc9f2ad2e462693f1cac0c300d9f7ed312b9e4e7cafc977e5a600b7157`  
		Last Modified: Fri, 21 Aug 2026 18:44:02 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bdc4aa5e81737d98c013660303ee86237cfd4fffa797ccf6c9fc93ea2867046`  
		Last Modified: Fri, 21 Aug 2026 18:44:03 GMT  
		Size: 39.9 MB (39889610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81aa0d2dc785ddc5e3bf782d75c0ab629b9a4549e0d34f466236f35e4521292d`  
		Last Modified: Fri, 21 Aug 2026 18:44:06 GMT  
		Size: 151.4 MB (151354026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01d1d353c5652a40a5e4991b55141191427e060973fd6d1f3cc1bda459aa052`  
		Last Modified: Fri, 21 Aug 2026 18:44:02 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:990cded3bd26e9bce62bd0ae06c51238b1bddfb73ba13ca01cf96d37e009a16e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7089811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2703956e5805fef7f0d746d18731772f1f817c44ca58b38508ad9e63a2695b`

```dockerfile
```

-	Layers:
	-	`sha256:dc2033ae8f6dd2d2f586430bb7aabdefb35b7dd09b6fafbbf458f0ca9628fdb5`  
		Last Modified: Fri, 21 Aug 2026 18:44:02 GMT  
		Size: 7.1 MB (7064802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ceacfadfdc72b54a39eb74182f28125a40b352a8e4a43d0f5b46060fb4a28b5b`  
		Last Modified: Fri, 21 Aug 2026 18:44:01 GMT  
		Size: 25.0 KB (25009 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b9b70305e851616d79ab62dc9cee1cdcdf2ae8f97f2bae80c6c48a452184ae2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.1 MB (353104767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47aa05bac53c0ca27d58b7901eb6108c82574c5987515ba74ee37bad772f7b7f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:45:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 05:45:25 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 05:45:25 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 05:45:25 GMT
ENV container oci
# Thu, 20 Aug 2026 05:45:25 GMT
COPY dir:e44f9197bfd72bc658385b5b15ab7462e17e7efd592f16da1d8b4e59c9a00dc2 in /      
# Thu, 20 Aug 2026 05:45:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 05:45:25 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 05:45:25 GMT
COPY dir:7954bbfaabcb4f9d29560c7d7cdb21c9cca4ba55a953c5ccc5d80e9881cc587c in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 05:45:26 GMT
COPY dir:7954bbfaabcb4f9d29560c7d7cdb21c9cca4ba55a953c5ccc5d80e9881cc587c in /root/buildinfo/      
# Thu, 20 Aug 2026 05:45:26 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T05:45:03Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T05:45:03Z" "architecture"="aarch64" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T05:45:03Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Fri, 21 Aug 2026 18:26:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 18:26:17 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:28:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:29:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:29:01 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:37:23 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:37:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:37:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 18:37:23 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:37:23 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:37:29 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 21 Aug 2026 18:37:29 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 18:37:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 18:37:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:37:32 GMT
USER gradle
# Fri, 21 Aug 2026 18:37:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:37:32 GMT
USER root
```

-	Layers:
	-	`sha256:68774b1c806af71a34a179e2397bd0a4568f97681106fab710192c96e498f363`  
		Last Modified: Thu, 20 Aug 2026 06:41:06 GMT  
		Size: 33.1 MB (33110773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe256e3a8d3de4d6f0e0776579405235d87fd6973b685a02824a5e2fd9e313e`  
		Last Modified: Fri, 21 Aug 2026 18:26:42 GMT  
		Size: 37.7 MB (37724096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2280224a1c59ddde9ac3dba4a4e383b82f1a19df3ddec12ba2a6f9a7f2bdf411`  
		Last Modified: Fri, 21 Aug 2026 18:29:20 GMT  
		Size: 91.5 MB (91532955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6d9410f1716c572f1bc5a57a727aab3b0ed01f93f12ee23904301f05cfb209`  
		Last Modified: Fri, 21 Aug 2026 18:29:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23bdb330a17af88cc709a9b54141219ab2cb93729380df770f1ce5f307d1143`  
		Last Modified: Fri, 21 Aug 2026 18:29:17 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c994b0cd153038105cd08739713c99e9d8d8826e2b9f0469713aa0810fd13bb`  
		Last Modified: Fri, 21 Aug 2026 18:37:52 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6db104571352c5995c7fc10c99e4a1466b13cd18476bed9c8ad27c569461b6`  
		Last Modified: Fri, 21 Aug 2026 18:37:55 GMT  
		Size: 39.3 MB (39349370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdb7dc20de06afcc909ee6d7418c2ccdc2655949b77990cd1a34944fea4c695`  
		Last Modified: Fri, 21 Aug 2026 18:37:56 GMT  
		Size: 151.4 MB (151354016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8423887b14b7bd592ba8064ee5cf4545e6245e668a69dbc5c12bcee52fe97ca5`  
		Last Modified: Fri, 21 Aug 2026 18:37:52 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:d6f3aa0aa5acbfe88b0c16ae348b29585c364072d9d729a027b126088f3d1508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7088309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5ad4603370d61082721ebe0593133bf5f1212fc5dba9e42c8c53b68fe896cb`

```dockerfile
```

-	Layers:
	-	`sha256:9f06b21cbd6c27bc7aed075959f985a5d8dc314ef3cd9f858622b736c4836523`  
		Last Modified: Fri, 21 Aug 2026 18:37:53 GMT  
		Size: 7.1 MB (7063079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee31a79f01d0d389b360979e29e9795946a75ddd2be30866eea0b23cbcf93d51`  
		Last Modified: Fri, 21 Aug 2026 18:37:52 GMT  
		Size: 25.2 KB (25230 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:7b06c80f3f3a872ee292c11532869890a8dc12c06d9a542fed77624fcc149640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.5 MB (363549855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5292fff3be30fe61741c1f5edfa5d0579dfe16cc9ac2e2d88eaa84d9ff3723a7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 17 Aug 2026 10:03:49 GMT
ENV container oci
# Mon, 17 Aug 2026 10:03:50 GMT
COPY dir:191310e6819456763791bc6c4e350e983e2c2ece70382b2919b5ba9a569a22b7 in /      
# Mon, 17 Aug 2026 10:03:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 10:03:50 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 10:03:50 GMT
COPY dir:e82b530ea693b16cd4c8b870284cdb0f4a2af3565438911629ec1ba13ecbc4c4 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 10:03:50 GMT
COPY dir:e82b530ea693b16cd4c8b870284cdb0f4a2af3565438911629ec1ba13ecbc4c4 in /root/buildinfo/      
# Mon, 17 Aug 2026 10:03:50 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T10:03:32Z" "org.opencontainers.image.revision"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "build-date"="2026-08-17T10:03:32Z" "architecture"="ppc64le" "vcs-ref"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "vcs-type"="git" "release"="1786960640"org.opencontainers.image.created=2026-08-17T10:03:32Z,org.opencontainers.image.revision=e7c0028707fa6423887e58fdaaa0ce41b96656c8
# Mon, 17 Aug 2026 23:23:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 23:23:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 23:23:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 23:23:44 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 23:23:44 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Mon, 17 Aug 2026 23:31:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 23:31:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 23:31:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 23:31:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 23:31:21 GMT
CMD ["jshell"]
# Wed, 19 Aug 2026 19:22:16 GMT
CMD ["gradle"]
# Wed, 19 Aug 2026 19:22:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 19 Aug 2026 19:22:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 19 Aug 2026 19:22:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 19 Aug 2026 19:22:16 GMT
WORKDIR /home/gradle
# Wed, 19 Aug 2026 19:22:42 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 19 Aug 2026 19:22:42 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 19 Aug 2026 19:22:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 19:22:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 19:22:47 GMT
USER gradle
# Wed, 19 Aug 2026 19:22:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 19:22:50 GMT
USER root
```

-	Layers:
	-	`sha256:b47e83667df621a3a3a3dd649d67af68e3b28a9124e58b1e5b79a552c9ab780e`  
		Last Modified: Mon, 17 Aug 2026 11:33:26 GMT  
		Size: 39.1 MB (39053766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9653afc06c5ffe749de3db83247d3a5ed5be22b219ae3703806228f1f52d3ae4`  
		Last Modified: Mon, 17 Aug 2026 23:24:24 GMT  
		Size: 39.6 MB (39555357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca3c718b15042ae6f14ef6c7e80c1fe2a3466c71f8a74e386c5999731e5ff1b`  
		Last Modified: Mon, 17 Aug 2026 23:31:54 GMT  
		Size: 91.9 MB (91912866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6e0f82cb5fc6dc8919f815dbd5ce705c7d42bc2b7b6b9cc5e1ce17bbaa826b`  
		Last Modified: Mon, 17 Aug 2026 23:31:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f549778802cfaf67affbde75c0df318c9895d74b4f37acad4b7e77ff749aba4b`  
		Last Modified: Mon, 17 Aug 2026 23:31:52 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb11bff65fed96f8e45cfd5661c56b85190fbdc66372d0ce499bc8e2a74bbff4`  
		Last Modified: Wed, 19 Aug 2026 19:23:31 GMT  
		Size: 1.6 KB (1589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655ebe5575238a297a79324b95d2ab1b49694df62fdf7c1d28ae5a090bd8d610`  
		Last Modified: Wed, 19 Aug 2026 19:23:33 GMT  
		Size: 41.7 MB (41669423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19a06f284940eec4b33bef0c83209d785731eed841ed24ee36d16bd22f40f6b`  
		Last Modified: Wed, 19 Aug 2026 19:23:36 GMT  
		Size: 151.4 MB (151354023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad607b771f6417f42e8e0a21d3cce82a40d32baddffe0b338ecbcfb1dd3b2e54`  
		Last Modified: Wed, 19 Aug 2026 19:23:31 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:0eec8a7ec698f2dd109858f4babc5a4d21b53d9d4b607bbbe2a8d831bb403bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7064636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53977ed32e4d2b8d4e67e5acd4fc859bb7ae57f1288d9b485d8fa8c31c900405`

```dockerfile
```

-	Layers:
	-	`sha256:59e06778d432cb891cb8ec3403629923622b2a24f0b75ce33edfaeb55592fc3e`  
		Last Modified: Wed, 19 Aug 2026 19:23:32 GMT  
		Size: 7.0 MB (7039544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6a48f6bbcdc558d02b3a487d73e9aacfc7bbb0e611dcb2a07ce4b6c6203f89b`  
		Last Modified: Wed, 19 Aug 2026 19:23:31 GMT  
		Size: 25.1 KB (25092 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:e0ec8b41e8dcd7b2c11a294514bec4a0f541e11ecb07bddff839865efd5db7cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.7 MB (354739056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dcbcd7d0815fda4d8b72d1bf989a0c746c0adcb639a648fc007deb863ed50c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 06:03:17 GMT
ENV container oci
# Thu, 20 Aug 2026 06:03:17 GMT
COPY dir:eb18fd88295490f3f96fdde5a853a45643aef05924fb21e2cc03135e89cc179a in /      
# Thu, 20 Aug 2026 06:03:17 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 06:03:17 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 06:03:17 GMT
COPY dir:b4a8f7f96c926329ee4146bbe412375c58d085296683d1ba2080891348b92698 in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 06:03:17 GMT
COPY dir:b4a8f7f96c926329ee4146bbe412375c58d085296683d1ba2080891348b92698 in /root/buildinfo/      
# Thu, 20 Aug 2026 06:03:18 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T06:02:11Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T06:02:11Z" "architecture"="s390x" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T06:02:11Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Fri, 21 Aug 2026 17:46:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 17:46:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:46:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 17:46:19 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:46:19 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:33:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:33:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:33:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:33:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:33:25 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:59:20 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:59:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:59:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 18:59:20 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:59:20 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:59:25 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 21 Aug 2026 18:59:25 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 18:59:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 18:59:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:59:29 GMT
USER gradle
# Fri, 21 Aug 2026 18:59:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:59:30 GMT
USER root
```

-	Layers:
	-	`sha256:b046321c2e480498ac362a67b448add00a021c25fec4bcba6fd7a58d411dc197`  
		Last Modified: Thu, 20 Aug 2026 12:16:34 GMT  
		Size: 34.8 MB (34761940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909a3330ebad5340d53c77e18cf268ebe2438eabb2abf70a4d8e1abe56378d4e`  
		Last Modified: Fri, 21 Aug 2026 17:46:44 GMT  
		Size: 38.2 MB (38170684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3e921a42028b794f7e33d9875592bcc437608b16ce8b6bb7e2cbb0dac1aea0`  
		Last Modified: Fri, 21 Aug 2026 18:33:49 GMT  
		Size: 88.4 MB (88422336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473b89ec7b10c345add22addd3d519563158d90ddfa0749d4a6bcd4000ef1460`  
		Last Modified: Fri, 21 Aug 2026 18:33:47 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c509bae9ca04b54b5e9dbefcd1140536c527125a03cf4b5596cef5e30c30168d`  
		Last Modified: Fri, 21 Aug 2026 18:33:47 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6984c08f63777e3a260451f2cfff06d4df54d760f2df216922bdd48bbbdbebe2`  
		Last Modified: Fri, 21 Aug 2026 18:59:56 GMT  
		Size: 1.6 KB (1588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e24dca5fd194500fa9b8bf083ff80f86e848d658893a2c7627fe7ce9f24affb`  
		Last Modified: Fri, 21 Aug 2026 18:59:57 GMT  
		Size: 42.0 MB (42025479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f351d6b115d555fde814c243116f70279071e54efb3ff3185500ed3d8dd5a8`  
		Last Modified: Fri, 21 Aug 2026 18:59:59 GMT  
		Size: 151.4 MB (151354023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c77364045a338070fab2c2c362bf1c3ce03d2f9288c8eaf626cd3c3e09b9022`  
		Last Modified: Fri, 21 Aug 2026 18:59:56 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:a51202fc4f2ed082adde44b1bd75d56addf303c358e9eb2febff7ae09c2b4a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7055018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419a3828fd6e8032e1a1be85a5671c937273f335d7af1064724b7aaf8965d69c`

```dockerfile
```

-	Layers:
	-	`sha256:77954a949fd078c56450cd6b2307b70ef388e066dde932fb5c4169b17f43b1da`  
		Last Modified: Fri, 21 Aug 2026 18:59:56 GMT  
		Size: 7.0 MB (7030011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71142761452ab36126a83e77d94f4b968ceba8d1090c00d39b3775958fdc6477`  
		Last Modified: Fri, 21 Aug 2026 18:59:56 GMT  
		Size: 25.0 KB (25007 bytes)  
		MIME: application/vnd.in-toto+json
