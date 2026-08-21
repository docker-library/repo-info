## `gradle:jdk26-ubi`

```console
$ docker pull gradle@sha256:8bf1e0dec54c0488c5e607278f3147a8b9054882e2f93d4cf23c9a49abc55856
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
$ docker pull gradle@sha256:d702b7c754cc34a5d8ba19aac523439905d08be0136b639f8cc30db48d6a9466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.5 MB (358514641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d239a4d0d5e379dcd0954c44715513478665236597b4689ccd3b0435e90bcf`
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
# Fri, 21 Aug 2026 18:24:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 18:24:37 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:26:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:26:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:26:59 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:44:59 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:44:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:44:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 18:44:59 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:44:59 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:45:05 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 21 Aug 2026 18:45:05 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 18:45:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 18:45:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:45:07 GMT
USER gradle
# Fri, 21 Aug 2026 18:45:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:45:08 GMT
USER root
```

-	Layers:
	-	`sha256:d61293fa3d3593fa639f5bfdc418af2cbb4e25ccdf20c6ff76fc342b18e72883`  
		Last Modified: Thu, 20 Aug 2026 06:41:10 GMT  
		Size: 34.9 MB (34881705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33904a7e340d50016d201001084b07c6de73d6eaf6e218acee34ce87e48b9db7`  
		Last Modified: Fri, 21 Aug 2026 18:24:55 GMT  
		Size: 37.8 MB (37796143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0e75b67bafadabc783318b1724ed625d233f468603fd2001977da58e9622dc`  
		Last Modified: Fri, 21 Aug 2026 18:27:18 GMT  
		Size: 94.6 MB (94563258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61784e7a86b1124735bddac5d2eaf161e70e7a9c57e694b026babc64518ab559`  
		Last Modified: Fri, 21 Aug 2026 18:27:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865e9c7800ae3acd5e9f3f15128bd073c379534f6e6ce4df48035e4d42035477`  
		Last Modified: Fri, 21 Aug 2026 18:27:16 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c41beb458cf92254bafd74cf55863f25cef27fc5082144a71ed4180d53554fd`  
		Last Modified: Fri, 21 Aug 2026 18:45:27 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94aa42ef16cb3fed8a9dba32db09498e041f52736975d77e9ddd6e3436e0e3f`  
		Last Modified: Fri, 21 Aug 2026 18:45:28 GMT  
		Size: 39.9 MB (39889708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8b834c548889405e30fdaa36b614b3c7fc9cdca5a61ca5c4c3015e323ae86d`  
		Last Modified: Fri, 21 Aug 2026 18:45:31 GMT  
		Size: 151.4 MB (151353990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccc68d90b3f781aaf30b8c9b188e90c4c91bd29d12230206acc5aecf536937f`  
		Last Modified: Fri, 21 Aug 2026 18:45:27 GMT  
		Size: 25.6 KB (25618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:b8a49e29115f8c938581a08654634d36a7688bf58641952f7887a63213a13f82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7086138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9bcd9771b7b7db948ed5ee86e2c63d92c738a9be741cea02cae6778210dd89c`

```dockerfile
```

-	Layers:
	-	`sha256:c7da3f49461ea11aed49952efbdf2433edbd218141ce6209d96daade45e7b46d`  
		Last Modified: Fri, 21 Aug 2026 18:45:27 GMT  
		Size: 7.1 MB (7061713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:754c2e7178b0bdb95ffafd666c1de424fa8408a08c289a81136444c4958b3ead`  
		Last Modified: Fri, 21 Aug 2026 18:45:26 GMT  
		Size: 24.4 KB (24425 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:7aaa0221888cdc16b0ca9f050ad63efa1c5ec0d25c96c17f2f88e5f38e87998f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.1 MB (355113262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2817e2229776a5da5b1ce1d30db1d5f012927e7477823aafe24a67cb234a0c6d`
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
# Fri, 21 Aug 2026 17:45:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 17:45:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:45:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 17:45:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:45:45 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:29:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:30:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:30:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:30:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:30:00 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:11:21 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 19:11:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 19:11:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 19:11:21 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 19:11:21 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 19:11:26 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 21 Aug 2026 19:11:26 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 19:11:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 19:11:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 19:11:29 GMT
USER gradle
# Fri, 21 Aug 2026 19:11:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 19:11:29 GMT
USER root
```

-	Layers:
	-	`sha256:68774b1c806af71a34a179e2397bd0a4568f97681106fab710192c96e498f363`  
		Last Modified: Thu, 20 Aug 2026 06:41:06 GMT  
		Size: 33.1 MB (33110773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f3401d912f3ea3c5a86193c981a85319e1cc8df9a18f37dc33108beb957156`  
		Last Modified: Fri, 21 Aug 2026 17:46:13 GMT  
		Size: 37.7 MB (37724033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17db62e33b9d98a921d78981d2d45a19af593f7db498b064071eefde1ab9d6dc`  
		Last Modified: Fri, 21 Aug 2026 18:30:18 GMT  
		Size: 93.5 MB (93541454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af8811840f1a68acdf2edbb4542391de623c3d03f3fb2590bfde914a53a4efa`  
		Last Modified: Fri, 21 Aug 2026 18:30:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde03729c9acc901160136524be850e60622630bb8b4082149b649c50b1fcec9`  
		Last Modified: Fri, 21 Aug 2026 18:30:16 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50f7601c6a7ddc11a4cd96b022838065f8d368ca619b3d23585774692032591`  
		Last Modified: Fri, 21 Aug 2026 19:11:49 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2098bf80cee57e021c36a8778d5d08c1860baf9c064cffd747af7859ffad8850`  
		Last Modified: Fri, 21 Aug 2026 19:11:51 GMT  
		Size: 39.3 MB (39349429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d9f66a05b01f9f982da429a2ab056b150a6e3a34da0777a2085c55969d24992`  
		Last Modified: Fri, 21 Aug 2026 19:11:54 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221f264fde5bb34680cdef0fc93c3e43e8fc7dabd2ff9c4ea78d06d3f160db64`  
		Last Modified: Fri, 21 Aug 2026 19:11:50 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:d18d118d78c5e3858325f2295cb39f4a611cde06fa7ee86f8436f80e360350a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7084588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa34fd8c2291ff1a26735953b3b9d62ae20670b8d2a8b4109a50bbf7b295e23`

```dockerfile
```

-	Layers:
	-	`sha256:37b7f0d5e65dde09f730958b9917f92619e000c6d70cabd18a1a1adebc004493`  
		Last Modified: Fri, 21 Aug 2026 19:11:50 GMT  
		Size: 7.1 MB (7059966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:342a6fa49779fed3a3f2a71a38ef379af6e34fcdabb701adf804c38e79f0ae6f`  
		Last Modified: Fri, 21 Aug 2026 19:11:49 GMT  
		Size: 24.6 KB (24622 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:69acadc07ab66e42f0814777e3f17d0fd009d36afdeca7779392e8cdab2fe105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.5 MB (365539458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:675348b64b0ac9bf26d657f48ac99a75a39a85e94f0c25704602eb17c1c228ac`
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
ENV JAVA_VERSION=jdk-26.0.1+8
# Mon, 17 Aug 2026 23:32:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 23:32:11 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 23:32:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 23:32:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 23:32:11 GMT
CMD ["jshell"]
# Wed, 19 Aug 2026 19:28:36 GMT
CMD ["gradle"]
# Wed, 19 Aug 2026 19:28:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 19 Aug 2026 19:28:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 19 Aug 2026 19:28:36 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 19 Aug 2026 19:28:36 GMT
WORKDIR /home/gradle
# Wed, 19 Aug 2026 19:28:49 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 19 Aug 2026 19:28:49 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 19 Aug 2026 19:28:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 19:28:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 19:28:53 GMT
USER gradle
# Wed, 19 Aug 2026 19:28:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 19:28:55 GMT
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
	-	`sha256:dd535d440f68cd4db29e93faa5af1bec9d259d0320da231ec3e4ffb0bdc7b17c`  
		Last Modified: Mon, 17 Aug 2026 23:32:56 GMT  
		Size: 93.9 MB (93902388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fafa0dfc27da2e074579a58ca7b7832f56eb9a4ed64bb96e87c88bb2b6ce8f0`  
		Last Modified: Mon, 17 Aug 2026 23:32:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc154d0f75aee89681ca15921c1e4cc7d7e7bdb2f888a8a631708c27831c8dd`  
		Last Modified: Mon, 17 Aug 2026 23:32:54 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1eadd4f8d55768b02d6d2ec0619e78d47019bd70f201d4127ca195781845314`  
		Last Modified: Wed, 19 Aug 2026 19:29:33 GMT  
		Size: 1.6 KB (1590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72b0e8f9f9bc4f55622fdde5f12731c0afd478195c774643c41c76c29f52a9d`  
		Last Modified: Wed, 19 Aug 2026 19:29:35 GMT  
		Size: 41.7 MB (41669325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc0001f055a95de3e5d0fa64ce4b605748badd9b810706ff13ca1fdf5b8b797`  
		Last Modified: Wed, 19 Aug 2026 19:29:37 GMT  
		Size: 151.4 MB (151354021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65237ef194cea715f6d9d7d27cd13c71de868e08d60cb1f135c15f28bac85bb8`  
		Last Modified: Wed, 19 Aug 2026 19:29:33 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:144b95d5cb565fbef13dd25da8fd74fac84b5053471270830c39eca33fe5bb11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7061558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0216418785ac7776b2a0faccb5d009d45cb97a20953c99df4a1e0d85a29b30ea`

```dockerfile
```

-	Layers:
	-	`sha256:c7fafa31233f4f9d557f5bb5686bceb632c4cfa70c9fa3be1609cf0a6099a25d`  
		Last Modified: Wed, 19 Aug 2026 19:29:33 GMT  
		Size: 7.0 MB (7037065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2378bac206b4afd418c736c3d3d61146047b424c45cab2ce12885f6b95a5b958`  
		Last Modified: Wed, 19 Aug 2026 19:29:33 GMT  
		Size: 24.5 KB (24493 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:129838a0ac8f9fcc9c9ea3885bc366f283ddcd9fb34389427f331e368edee3b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.9 MB (356906229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9cfd41b82473572b8c25c49bf963baced2fd0e9d0e79307917ded53c77d24d2`
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
# Fri, 21 Aug 2026 17:46:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 17:46:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:46:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 17:46:27 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:46:27 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:35:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:35:41 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:35:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:35:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:35:41 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:01:42 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 19:01:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 19:01:42 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 19:01:42 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 19:01:42 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 19:01:46 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 21 Aug 2026 19:01:46 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 19:01:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 19:01:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 19:01:50 GMT
USER gradle
# Fri, 21 Aug 2026 19:01:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 19:01:51 GMT
USER root
```

-	Layers:
	-	`sha256:b046321c2e480498ac362a67b448add00a021c25fec4bcba6fd7a58d411dc197`  
		Last Modified: Thu, 20 Aug 2026 12:16:34 GMT  
		Size: 34.8 MB (34761940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddb87076a5ab9009889fcfce1485d30640da13853a0d57772521606befae416`  
		Last Modified: Fri, 21 Aug 2026 17:46:49 GMT  
		Size: 38.2 MB (38170739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b10e5adc3b87827f11aa23e4114151f5e63ff1ccdb5d955d6a29f5655425f98`  
		Last Modified: Fri, 21 Aug 2026 18:36:05 GMT  
		Size: 90.6 MB (90589429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b30c42d955f39db453341ab826836f6eee7418bdf9b1fa4aead488fef27be3c`  
		Last Modified: Fri, 21 Aug 2026 18:36:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471c3f6a944e7a170c2b8a455977b00a2af6e2f67b8a8cdb71645f5c0a116369`  
		Last Modified: Fri, 21 Aug 2026 18:36:04 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75368e886d8a6c99e476ecc5391e89017664cff4bf1d014d6d9925639f94c78c`  
		Last Modified: Fri, 21 Aug 2026 19:02:17 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671f7e2386ccfbae53e5f378f662a04bef0a5bc379616c2005c7e9da09aba2f3`  
		Last Modified: Fri, 21 Aug 2026 19:02:18 GMT  
		Size: 42.0 MB (42025513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c892c0137c0a9d88ccce7a8fa642b229d5941671671a11b277b18c2a2bf29e`  
		Last Modified: Fri, 21 Aug 2026 19:02:20 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d684e95f4d27aa4ebfbc2eddca7057b49ce3fd2ff59156c7b13c73fe1dd6721`  
		Last Modified: Fri, 21 Aug 2026 19:02:17 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:97fb742aad2cc0a4645d6bed84540157d4534f3e66b25f88eba5bdb5e246122d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7051969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b922de136fb0184e9be62d2d1d404a82ab71b37688dee73660fd815d909df0`

```dockerfile
```

-	Layers:
	-	`sha256:8420776bec92771113ade179fc6a285d28cbb6ed78b7d32ac6db61f3ad5e3d16`  
		Last Modified: Fri, 21 Aug 2026 19:02:17 GMT  
		Size: 7.0 MB (7027546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d6f9a24e2a868a77e0b335a3601a19e54433a83b72c10344d2a8757ea1949d9`  
		Last Modified: Fri, 21 Aug 2026 19:02:17 GMT  
		Size: 24.4 KB (24423 bytes)  
		MIME: application/vnd.in-toto+json
