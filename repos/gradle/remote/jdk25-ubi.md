## `gradle:jdk25-ubi`

```console
$ docker pull gradle@sha256:2cd22a1cd50656719c4338adf9761d5973d9a28f192ce098f83079204e2a01e3
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

### `gradle:jdk25-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:621308dec986e7e5d20c66cc065790390626ec921499e637e07cd84cfddb5039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.8 MB (345752820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2fdabc32b8ee2ddb5c36a010a7864a0dc8668472b80f865ec4010267bbd5b7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:52:21 GMT
ENV container oci
# Wed, 15 Jul 2026 05:52:22 GMT
COPY dir:e80ceae0f38fed255e475d6f3c857d9cc653b611388172a20e2345e2608f2c11 in /      
# Wed, 15 Jul 2026 05:52:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:52:22 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:52:23 GMT
COPY dir:fcea21daaad748df5672e8517505782b30d2c53d6febb830378b77388dd947d6 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:52:23 GMT
COPY dir:fcea21daaad748df5672e8517505782b30d2c53d6febb830378b77388dd947d6 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:52:23 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:48:52Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:48:52Z" "architecture"="x86_64" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:48:52Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:20:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:20:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:20:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:20:54 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:20:54 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 16 Jul 2026 00:22:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:22:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:22:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:22:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:22:42 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:13:39 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:13:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:13:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:13:39 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:13:39 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:13:42 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:13:42 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:13:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:13:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:13:44 GMT
USER gradle
# Thu, 16 Jul 2026 01:13:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:13:45 GMT
USER root
```

-	Layers:
	-	`sha256:c7288023ded975bbfebf94654b2abd0529e40b52fa589ee42fa73afc0e6c0670`  
		Last Modified: Wed, 15 Jul 2026 06:55:17 GMT  
		Size: 34.9 MB (34898991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e6784ea450bdba6f1ca9ce7c1eb4100b08bfd5c77ec68b527fa50b425a74d1`  
		Last Modified: Thu, 16 Jul 2026 00:21:15 GMT  
		Size: 37.8 MB (37772898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c846e36d04d0e9369cc1d1db8d95658efba17e3c8e34e4894c8ebdfa3376cdc1`  
		Last Modified: Thu, 16 Jul 2026 00:23:00 GMT  
		Size: 92.6 MB (92579375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38cf8c6459f0de108a242529333e0c7909773e070201aa01719c70ecc59398b2`  
		Last Modified: Thu, 16 Jul 2026 00:22:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fcf0e35c7601c2e47818942c7ad11ef835c502badb92ca13c403e0280a11bc`  
		Last Modified: Thu, 16 Jul 2026 00:22:57 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521079d87f1d70673889a2c8ec0ffb17ad156c6f7c37c6025b54de7dc871531e`  
		Last Modified: Thu, 16 Jul 2026 01:14:03 GMT  
		Size: 1.6 KB (1589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af30a3da6c7d3894b045343a439fda547ea4d3793852e86e356523e7263b8d26`  
		Last Modified: Thu, 16 Jul 2026 01:14:05 GMT  
		Size: 39.9 MB (39875881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4691a9c51b7172d883d8e04192e61590a9ce2001b2fafc75653b74bb6ac2280`  
		Last Modified: Thu, 16 Jul 2026 01:14:07 GMT  
		Size: 140.6 MB (140596024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd09c74bcf14375cb13e3584b4c915b7cdd083007d407e3d564e0c785ff2fe69`  
		Last Modified: Thu, 16 Jul 2026 01:14:03 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:38b31ed1f6b9bda51a0c45f0bb3a15331aa7b9bef3963038f90c997536131593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7081611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5974dc5392c906cc6c0a6f3d40f3f1bd894967af2356ac00dc1d07ba35dc98`

```dockerfile
```

-	Layers:
	-	`sha256:9794294faa083da19819e2dbde16ca7d2a5ecccb4fc8b86a4cf03732178a0e16`  
		Last Modified: Thu, 16 Jul 2026 01:14:03 GMT  
		Size: 7.1 MB (7056602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad86b834885854a68cff0357d299e575db3599656fe1fe1d04bff977df6afd5a`  
		Last Modified: Thu, 16 Jul 2026 01:14:03 GMT  
		Size: 25.0 KB (25009 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:686c4e5e8f758e335a6b672edc9cd8c8f01096229c5e4caae5fcd78e4e778418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342249455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7acb5c5f54776bf781b46aad042ea1e0331a7ad556d7a79d664755cbb3cfe8bb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:50:02 GMT
ENV container oci
# Wed, 15 Jul 2026 05:50:03 GMT
COPY dir:8f070411f1ee56ca3961d04e0e908caad0eb4e03104d45b7f770bb84cd3a08af in /      
# Wed, 15 Jul 2026 05:50:03 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:50:03 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:50:03 GMT
COPY dir:04f8dce71511af7de523b5498ebb5427d3946b49dd8d31c37d9494947f53788a in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:50:03 GMT
COPY dir:04f8dce71511af7de523b5498ebb5427d3946b49dd8d31c37d9494947f53788a in /root/buildinfo/      
# Wed, 15 Jul 2026 05:50:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:49:39Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:49:39Z" "architecture"="aarch64" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:49:39Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:21:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:21:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:21:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:21:42 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:21:42 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 16 Jul 2026 00:23:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:23:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:23:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:23:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:23:43 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:13:44 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:13:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:13:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:13:44 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:13:44 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:13:48 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:13:48 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:13:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:13:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:13:50 GMT
USER gradle
# Thu, 16 Jul 2026 01:13:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:13:51 GMT
USER root
```

-	Layers:
	-	`sha256:877a7cfebba1327468a9ce7bb85f9afffbfb1c95701f76d33d81f3833987c4e2`  
		Last Modified: Wed, 15 Jul 2026 08:02:44 GMT  
		Size: 33.0 MB (33038203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390923303d81c72c5ef7b5b2f596ef4bb192cfc493821ccde8a8ed990d599f5d`  
		Last Modified: Thu, 16 Jul 2026 00:22:00 GMT  
		Size: 37.7 MB (37707728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ebd6397910059d4608cf934ad1af0ab9f30f964497df79dd9c14792cab8b546`  
		Last Modified: Thu, 16 Jul 2026 00:24:02 GMT  
		Size: 91.5 MB (91548867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1000e9f321ac06d81aeeda9364c0ac79f5e238fff626411569a76c1d4154efcd`  
		Last Modified: Thu, 16 Jul 2026 00:24:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf05e4a2cdead1b31d586433aeb01a75db7f770e4b41b09e29d32395593bed4`  
		Last Modified: Thu, 16 Jul 2026 00:24:00 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423bd0c91a8e18dc5dd762ad7e04626fd8671fa31d3adde4604166df32ae56dc`  
		Last Modified: Thu, 16 Jul 2026 01:14:09 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a5c67ce98f5c3f43fa9759bb0e1cd6350f5eb4bd983cbe0e1453c044138122`  
		Last Modified: Thu, 16 Jul 2026 01:14:11 GMT  
		Size: 39.3 MB (39325255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b404ffc973b4cdf3da47f90cc04f436092724130262df56a86565405c4d62b0`  
		Last Modified: Thu, 16 Jul 2026 01:14:13 GMT  
		Size: 140.6 MB (140596024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3cd01dc31f1212d3afef7d6024935f30c1d2137e54ccf090a085f096cc83bcf`  
		Last Modified: Thu, 16 Jul 2026 01:14:09 GMT  
		Size: 29.3 KB (29342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:9b474db3a46b0420a4c3242f6a7aebc18f347512a279f74df53bea7b1da04de9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11899353a492cea5c1e94ba87ebfaf7db739004d8f94e09e6337d8ee0c38afb5`

```dockerfile
```

-	Layers:
	-	`sha256:60b9060d88090f977d403cd4005f04225081fd3b5a98432431b1ac12de622e12`  
		Last Modified: Thu, 16 Jul 2026 01:14:10 GMT  
		Size: 7.1 MB (7054879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f38810b7d216670f53dc64be5f700202abd939924302f29a3fc1f739c2bed52`  
		Last Modified: Thu, 16 Jul 2026 01:14:09 GMT  
		Size: 25.2 KB (25230 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:12c0d4a3e88aa2c11ecf8e65d7b937ffcaae55d0ffa3d2de13440bcc6daf6791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.7 MB (352690165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fec6d08832505a33ee17a466c883143eb06395d987f4a3988351c366c28bc13`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:49:00 GMT
ENV container oci
# Wed, 15 Jul 2026 05:49:01 GMT
COPY dir:10526134b402f96b01913ff63c11090d12c71c1f3d96105fcd44fc1b9ebc9a4e in /      
# Wed, 15 Jul 2026 05:49:01 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:49:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:49:01 GMT
COPY dir:cf7642e6d55956d71e3aaebdbf758e9516171ed79668415a4710b1fdcb1ac147 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:49:01 GMT
COPY dir:cf7642e6d55956d71e3aaebdbf758e9516171ed79668415a4710b1fdcb1ac147 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:49:01 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:48:41Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:48:41Z" "architecture"="ppc64le" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:48:41Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:19:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:19:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:19:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:19:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:19:49 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 16 Jul 2026 00:26:43 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:26:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:26:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:26:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:26:47 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:13:36 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:13:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:13:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:13:36 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:13:36 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:14:00 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:14:00 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:14:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:14:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:14:05 GMT
USER gradle
# Thu, 16 Jul 2026 01:14:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:14:07 GMT
USER root
```

-	Layers:
	-	`sha256:b060fee38424df7cdccede0607ef847e0d227597b97b59bc32fa6707e32cfd57`  
		Last Modified: Wed, 15 Jul 2026 12:17:24 GMT  
		Size: 39.0 MB (39003367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90cf761edb0d2dff4b7a85b108a0da2334197a83aac08a67d64abddc2b6414a`  
		Last Modified: Thu, 16 Jul 2026 00:20:26 GMT  
		Size: 39.5 MB (39529262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9392f36fde8efbf7a8c7c329a86294bbe3db06251de0d6ae5d3e38cef6e147e7`  
		Last Modified: Thu, 16 Jul 2026 00:27:21 GMT  
		Size: 91.9 MB (91912873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434f787097dbc2fd884a6420e12936cae59ce8109d131899cddd25874a7a2b92`  
		Last Modified: Thu, 16 Jul 2026 00:27:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b870d14164e3a4322de2a8e8be215528e1e383ffa4496d2c4ba8ba5ba8e165`  
		Last Modified: Thu, 16 Jul 2026 00:27:18 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dec06e47046968b17dd70c498ee3ea0bf22a275f03149902a9f5ae561c77f3d`  
		Last Modified: Thu, 16 Jul 2026 01:14:50 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6cbf04c508cfff2e0328fbb38edf2396a091bb80fd177607bc1bf1ca870af20`  
		Last Modified: Thu, 16 Jul 2026 01:14:53 GMT  
		Size: 41.6 MB (41644218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:783da306573961ecd8e6ffad78cc823e2d1f922142894b28be9fd50ac16aef3b`  
		Last Modified: Thu, 16 Jul 2026 01:14:55 GMT  
		Size: 140.6 MB (140596028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415e773f2d7b2a76530e3df949939f9fda3af4c0caac43c0a119dcbd2a27a11d`  
		Last Modified: Thu, 16 Jul 2026 01:14:51 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:23731ca7531410f6300c64bca0a0a3309d1fd1263a56515006af62a6ff15f072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7056437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6defbe1b8cd51e10f016622ae0b69b95dd474cedf2783e6bb4902868baa6c5af`

```dockerfile
```

-	Layers:
	-	`sha256:eb73ad904934ae2e6ef7275d79ff7a8518a2ecbdd3ab4fe2421174d1cf988b67`  
		Last Modified: Thu, 16 Jul 2026 01:14:51 GMT  
		Size: 7.0 MB (7031344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0e4b6b38d491896a7b5b5086dfcdcdf06a2810becc623269c1885d87b889a9e`  
		Last Modified: Thu, 16 Jul 2026 01:14:50 GMT  
		Size: 25.1 KB (25093 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:727370de6dc387730ad60256e2a9829bf0b3b60b06f99e50541a983d0bd31675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343944473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69e83fb487a9af08a099267080a23d22b2f6e5f4ae69eaa794b17bc9dbb4ea66`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 06:07:28 GMT
ENV container oci
# Wed, 15 Jul 2026 06:07:28 GMT
COPY dir:c139a456fb0c48548e9f88c9c78776f62ee6b4cb82d5cb148f031ebc4cd871b9 in /      
# Wed, 15 Jul 2026 06:07:28 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 06:07:28 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 06:07:29 GMT
COPY dir:7bd72475117264ee7e80797e1635130baf9553b3e299ea41ac556164e2790e11 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 06:07:29 GMT
COPY dir:7bd72475117264ee7e80797e1635130baf9553b3e299ea41ac556164e2790e11 in /root/buildinfo/      
# Wed, 15 Jul 2026 06:07:29 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T06:05:53Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T06:05:53Z" "architecture"="s390x" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T06:05:53Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:18:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:18:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:18:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:18:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:18:43 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 16 Jul 2026 00:21:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:21:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:21:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:21:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:21:15 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:11:50 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:11:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:11:50 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:11:50 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:11:50 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:12:01 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:12:01 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:12:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:12:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:12:05 GMT
USER gradle
# Thu, 16 Jul 2026 01:12:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:12:06 GMT
USER root
```

-	Layers:
	-	`sha256:d73d4f6457bcd782d3bc06902fa556ffd91db9aab85a2358b971636d93b8103c`  
		Last Modified: Wed, 15 Jul 2026 12:17:17 GMT  
		Size: 34.8 MB (34778657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99825ff0bcd8d9b4bfed5571db700e33f3e4e7c8f10f7fb0662b29c6034ff75`  
		Last Modified: Thu, 16 Jul 2026 00:19:07 GMT  
		Size: 38.1 MB (38147908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69e54ff4008d77f548fb3e711b355a21250a2ba2a05188a94bc2e5a103b4b8`  
		Last Modified: Thu, 16 Jul 2026 00:21:41 GMT  
		Size: 88.4 MB (88421732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a12affa0b1f829171ed75325764fa1858d604d4a7e324875b18d81e92425f79`  
		Last Modified: Thu, 16 Jul 2026 00:21:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63c29bc5e3e6d7bf108a065a644b39e4128eb78fda5a9276da7740a2f2bd730`  
		Last Modified: Thu, 16 Jul 2026 00:21:39 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d0aa394ed2cdcd5b82bf5166c414161ed68b2c73d9fb3867ea51576aa0cddc`  
		Last Modified: Thu, 16 Jul 2026 01:12:32 GMT  
		Size: 1.6 KB (1582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2145b6648c6853a5dbb931491a9a3799150f2b72c72a55803cac45a5aea115e`  
		Last Modified: Thu, 16 Jul 2026 01:12:34 GMT  
		Size: 42.0 MB (41995764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6f4b8ec64f0d2221417c8f4d36dbe53d838dd142f0b5e431a43d44518789ea`  
		Last Modified: Thu, 16 Jul 2026 01:12:35 GMT  
		Size: 140.6 MB (140596006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10457bf0fcd0636df909eef038a11af357d4848303a73dfb25af3ca0257b1b89`  
		Last Modified: Thu, 16 Jul 2026 01:12:32 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:c923afc6c8b290d26b2d3cb1a5872c0f5331d7d182894aac1a6295596ca2046e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7046817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f49c7650222d29c2910d403c0378a17b192299b23c423ec579a57869c4939c03`

```dockerfile
```

-	Layers:
	-	`sha256:ed4792ed806b1f8f4fb58d22f3d2da081de9233655ed84906ce7c66b8273f091`  
		Last Modified: Thu, 16 Jul 2026 01:12:33 GMT  
		Size: 7.0 MB (7021811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32cacdca14a05160c1a72515acf54bfb7f3c26c396a29dfc5fce3335f79fbbf3`  
		Last Modified: Thu, 16 Jul 2026 01:12:32 GMT  
		Size: 25.0 KB (25006 bytes)  
		MIME: application/vnd.in-toto+json
