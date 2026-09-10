## `gradle:9-jdk26-ubi`

```console
$ docker pull gradle@sha256:04392e58ef604aa1727ac003e3ed940a8efa3c31d1e7ddd16486c507743ad6cd
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

### `gradle:9-jdk26-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:b9e1f99c6f1c413963b6966efc04b80dd17a92a645d0ba4d5d748b2b99908589
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.7 MB (358654174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5c29dfb85376372b912aaa406feaf56bcd543ee987ed33a31ac45e0f6c3c18`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:04:44 GMT
ENV container oci
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:876d55a6afad3c650d61c0b66072339064fd4222217a3606856925173e6b4f5d in /      
# Wed, 09 Sep 2026 08:04:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:04:45 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:f690a7926d4d1793e3444aefd940484afd5d12be6d84f392fc895c8a06b3b693 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:f690a7926d4d1793e3444aefd940484afd5d12be6d84f392fc895c8a06b3b693 in /root/buildinfo/      
# Wed, 09 Sep 2026 08:04:45 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:04:26Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:04:26Z" "architecture"="x86_64" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:04:26Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Wed, 09 Sep 2026 22:36:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:36:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:36:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:36:42 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:36:42 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 22:38:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 09 Sep 2026 22:38:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:38:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:38:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 22:38:43 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 23:12:54 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 23:12:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 23:12:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 23:12:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 23:12:54 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 23:12:59 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 09 Sep 2026 23:12:59 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 23:12:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 23:13:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 23:13:02 GMT
USER gradle
# Wed, 09 Sep 2026 23:13:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 23:13:02 GMT
USER root
```

-	Layers:
	-	`sha256:1abc6d29de37a94354a7ff1ac7ec241d10a16dabadf22aaa8ea915e748300f18`  
		Last Modified: Wed, 09 Sep 2026 09:16:41 GMT  
		Size: 34.9 MB (34908248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7417f344fa3a35de5ca400b28649146bed9ccffcaa997358ee3d7e75868a8c29`  
		Last Modified: Wed, 09 Sep 2026 22:37:02 GMT  
		Size: 37.9 MB (37851272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c0372b64ff7df6413e40a0cd68f28ba90a6b0e6be1ad8ca4bcb3863d2136a8d`  
		Last Modified: Wed, 09 Sep 2026 22:39:01 GMT  
		Size: 94.6 MB (94563217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac14daa3e442d947f3ac5f3cc710d4f92d9131f31f92d904468c8faf358a762`  
		Last Modified: Wed, 09 Sep 2026 22:38:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4ea67757d7e5087e889f89394d6c935190ca87e055bd97df4a82bf3df053249`  
		Last Modified: Wed, 09 Sep 2026 22:38:58 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9942318b387ac6aed0634ce220ce13202603e0d4732119269503998c588e6d0f`  
		Last Modified: Wed, 09 Sep 2026 23:13:20 GMT  
		Size: 1.6 KB (1582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2acee4ee7bb408589858ee4c405906f8049c716694066c847c5fc2dc7b6163`  
		Last Modified: Wed, 09 Sep 2026 23:13:21 GMT  
		Size: 39.9 MB (39947628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6172349b570958355c57f0c030d263dd5cedce2823a1f0bcdbb0752e45abd5cf`  
		Last Modified: Wed, 09 Sep 2026 23:13:24 GMT  
		Size: 151.4 MB (151353983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dc49b7d88274715647b91a55988868a44c8463bd194c6387cf8456698ebdf3`  
		Last Modified: Wed, 09 Sep 2026 23:13:20 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:7db10badcbb306b745c3881f3b391302d6e3f7ce377034406eab94f1614f6042
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7086194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd358384c0e39e3b48e66befc6c751353d88cf8c02fd93f162086c1e7ccbd79`

```dockerfile
```

-	Layers:
	-	`sha256:ac348d0c70c39cc12c079c57e4d0dbaab2619191c440de53b18e4fc580a610e8`  
		Last Modified: Wed, 09 Sep 2026 23:13:20 GMT  
		Size: 7.1 MB (7061769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89d425a57b52fcc0bdb985af3dcc3a2ffcb73a5d117a083d421a4b4ac13e180e`  
		Last Modified: Wed, 09 Sep 2026 23:13:19 GMT  
		Size: 24.4 KB (24425 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk26-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:f610f5580d3f28407c67ba27ad9e500f041a7594aa09f65457129aa6a34e3c02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.2 MB (355244916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d416dca603263a06e3be1fbb4381af1a72ceb8bb0971005c38e81aaa9266cd36`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:06:49 GMT
ENV container oci
# Wed, 09 Sep 2026 08:06:50 GMT
COPY dir:57d486e1a6b8b6e97fc97c129774bb79b4e36c15fecc3af363e179377116c60e in /      
# Wed, 09 Sep 2026 08:06:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:06:50 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:06:51 GMT
COPY dir:6ee5715f8cb3dbeb466566f7a46f579cfcaf91ec3ea74ce59c0412cc9823eb1e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:06:51 GMT
COPY dir:6ee5715f8cb3dbeb466566f7a46f579cfcaf91ec3ea74ce59c0412cc9823eb1e in /root/buildinfo/      
# Wed, 09 Sep 2026 08:06:51 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:06:27Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:06:27Z" "architecture"="aarch64" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:06:27Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Wed, 09 Sep 2026 22:36:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:36:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:36:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:36:44 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:36:44 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 22:37:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 09 Sep 2026 22:37:28 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:37:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:37:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 22:37:28 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 23:12:29 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 23:12:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 23:12:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 23:12:29 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 23:12:29 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 23:12:34 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 09 Sep 2026 23:12:34 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 23:12:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 23:12:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 23:12:38 GMT
USER gradle
# Wed, 09 Sep 2026 23:12:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 23:12:38 GMT
USER root
```

-	Layers:
	-	`sha256:8fd75ffc9e9e12cc305a8d45a9be20f6f7f4be59d1a88a8ba04e45d5fe6b4e10`  
		Last Modified: Wed, 09 Sep 2026 09:16:40 GMT  
		Size: 33.1 MB (33117333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f179c1ed6de3bc7c5386d177d9a64f753c9258d00fdb7733081efd06037e977`  
		Last Modified: Wed, 09 Sep 2026 22:37:11 GMT  
		Size: 37.8 MB (37780748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1db8808d6dec354f5f3ad037404a6db684e94dff4ba807df8bf41d478f578c`  
		Last Modified: Wed, 09 Sep 2026 22:37:46 GMT  
		Size: 93.5 MB (93541423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f31637b8e6c6ba0d55686fd2be623f4d174970b934f753a12dd3a34f75762d6`  
		Last Modified: Wed, 09 Sep 2026 22:37:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f83da68c9c314c098279b2bc462655f47fffb853efcef439422b5da6d6b43f`  
		Last Modified: Wed, 09 Sep 2026 22:37:44 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6649e2605a6e9f9ada1bec83e48cc5c3d8405341cca782d26c79dbd876047f`  
		Last Modified: Wed, 09 Sep 2026 23:12:58 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397fbe61cf4af3fdc3caff4cdd8db290c4c7bb43d977e06d0d53d37ea693d30f`  
		Last Modified: Wed, 09 Sep 2026 23:13:00 GMT  
		Size: 39.4 MB (39417891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ada5a9449eaccbd2670e68562d50171581dadfd5382a3081ffc54d870b589de`  
		Last Modified: Wed, 09 Sep 2026 23:13:03 GMT  
		Size: 151.4 MB (151353972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbeef50d1920de3bec05b828392d30c7d214b3e647a4b10bc0ff329102b1c055`  
		Last Modified: Wed, 09 Sep 2026 23:12:58 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:7fe638d54c705c87d4d93b2cc1f08bc9eb652e6d9ce03533feb623fef220bd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7084644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b4bbab8c4150044492a5e27281c07c5bcc5f67aa5291f3bde02da7a03a61b6`

```dockerfile
```

-	Layers:
	-	`sha256:a43721b5420a93349dcf26830274a6f378b6c9f70a880a6d08ccb04856e9c910`  
		Last Modified: Wed, 09 Sep 2026 23:12:58 GMT  
		Size: 7.1 MB (7060022 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b27e12e2a1521e598d8ff832b8f55bc6c65f994dd46ff0dd96518ffc55a6810`  
		Last Modified: Wed, 09 Sep 2026 23:12:58 GMT  
		Size: 24.6 KB (24622 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk26-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:3ea098b6359c0ed26fa88743ec6f9d18877cc2fd1e97a023f34eb7646522dec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.1 MB (365130337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dbf6e7da1ed9f44879ccbf2ac20a9ef6f4d714dbd20a9ee0cc373c4a48efec`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:06:39 GMT
ENV container oci
# Wed, 09 Sep 2026 08:06:40 GMT
COPY dir:0685b6397104b9765a1a0dd63be7b48ac903f486ac996e6e23bbb9b17d69003c in /      
# Wed, 09 Sep 2026 08:06:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:06:40 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:06:40 GMT
COPY dir:fac2abf7d1bd3e81b31254757fb843349b91fa6f1a92b7b768e949e6a469dae3 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:06:40 GMT
COPY dir:fac2abf7d1bd3e81b31254757fb843349b91fa6f1a92b7b768e949e6a469dae3 in /root/buildinfo/      
# Wed, 09 Sep 2026 08:06:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:06:18Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:06:18Z" "architecture"="ppc64le" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:06:18Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Wed, 09 Sep 2026 22:35:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:35:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:35:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:35:53 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:35:53 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 22:45:57 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 09 Sep 2026 22:46:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:46:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:46:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 22:46:02 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 23:14:04 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 23:14:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 23:14:04 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 23:14:04 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 23:14:05 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 23:14:33 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 09 Sep 2026 23:14:33 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 23:14:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 23:14:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 23:14:43 GMT
USER gradle
# Wed, 09 Sep 2026 23:14:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 23:14:45 GMT
USER root
```

-	Layers:
	-	`sha256:245a2e93cd72e73a8f90ed5ced2a97c07c6fd0958f8e2194fab3139abf47eb5f`  
		Last Modified: Wed, 09 Sep 2026 12:24:36 GMT  
		Size: 39.1 MB (39102809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10c8fc955d4331db7d08e6c6c4453b5eb830f6e137362380c3076b86f9d85b6`  
		Last Modified: Wed, 09 Sep 2026 22:36:57 GMT  
		Size: 39.6 MB (39600709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:344d653590292349ae0c560a4991b837755f7680aa0243ea9303e6f67753cc6e`  
		Last Modified: Wed, 09 Sep 2026 22:46:41 GMT  
		Size: 93.4 MB (93351149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5983e8bd6ff3ab0ad8cb19025780205b11ce939feb070a357f33fdf6a0e3129`  
		Last Modified: Wed, 09 Sep 2026 22:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f82eabdbe261ff85fe087910dbdb661ee2aabebb0ceeb6e7d6898819daf6adf`  
		Last Modified: Wed, 09 Sep 2026 22:46:39 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a18961cf74a027b88f8f1de4f50559136bcf5e9984efb07deca6feb020494f`  
		Last Modified: Wed, 09 Sep 2026 23:15:28 GMT  
		Size: 1.6 KB (1588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d883eb772490b3ff39d19de49552f10d46dd3ef325b828da93b7a448b64a3244`  
		Last Modified: Wed, 09 Sep 2026 23:15:30 GMT  
		Size: 41.7 MB (41717081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0296e0d7c0de6ff6b68e7dcf06aa87ad885f651b5723060e323408affea94eb`  
		Last Modified: Wed, 09 Sep 2026 23:15:32 GMT  
		Size: 151.4 MB (151353987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06681aa4410e3b63c926886dc7823e29f8043cc5add462faf47816f47131197d`  
		Last Modified: Wed, 09 Sep 2026 23:15:28 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:a89cdd5da4244b51bac527ae599aa85503f182b63c0609b5e99bd0ec0927f212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7061620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2dbdedaf31c325f960920eafe455ed2e7f4224a4de0f191dc1808b683a23d2`

```dockerfile
```

-	Layers:
	-	`sha256:a4138cff4716d9b84bc199c85a8a5eef08e0b861fc9af43f13006a018e565a48`  
		Last Modified: Wed, 09 Sep 2026 23:15:28 GMT  
		Size: 7.0 MB (7037123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04e61f99b78c4fcc773bbb5f7b7e1cd1f31f3126bb294519df042ba965b29c59`  
		Last Modified: Wed, 09 Sep 2026 23:15:27 GMT  
		Size: 24.5 KB (24497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk26-ubi` - linux; s390x

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

### `gradle:9-jdk26-ubi` - unknown; unknown

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
