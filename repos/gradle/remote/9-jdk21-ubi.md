## `gradle:9-jdk21-ubi`

```console
$ docker pull gradle@sha256:bcc3e363697bbe8c59515440aa5a35cb31b33d4c90dd76a9ae233f73fcfe349e
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

### `gradle:9-jdk21-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:a089a098756386f2499a1e725975765cc652f691e0ee074bb5d4eb3d2e18005b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.6 MB (422594180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63198c55205b1429d4536acb006a62265954e14a790f6dcbfbceb41b828edef`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:52:49 GMT
ENV container oci
# Tue, 06 Oct 2026 06:52:50 GMT
COPY dir:f34bac4cb5386fae5c688b9edc1b823fe38f4dd16d1c362f8163660dba6cbcaa in /      
# Tue, 06 Oct 2026 06:52:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:52:50 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:52:50 GMT
COPY dir:a955a0c99bb51e4c1fd6c1c97d380d39455977317b0ff795e31df9ed150f19a8 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:52:50 GMT
COPY dir:a955a0c99bb51e4c1fd6c1c97d380d39455977317b0ff795e31df9ed150f19a8 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:52:50 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:52:27Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:52:27Z" "architecture"="x86_64" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:52:27Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 21:54:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:54:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:54:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:54:55 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:54:55 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 06 Oct 2026 21:55:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:55:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:55:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:55:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:55:36 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:08:30 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:08:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:08:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:08:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:08:30 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:08:37 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:08:37 GMT
ENV GRADLE_VERSION=9.8.0
# Tue, 06 Oct 2026 22:08:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Tue, 06 Oct 2026 22:08:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:08:41 GMT
USER gradle
# Tue, 06 Oct 2026 22:08:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 06 Oct 2026 22:08:41 GMT
USER root
```

-	Layers:
	-	`sha256:9244a62486f52ea78c7c9bffc8936622a69a982b1ed177ee04ddfae80f9a2f94`  
		Last Modified: Tue, 06 Oct 2026 07:58:50 GMT  
		Size: 35.0 MB (34955692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d4092820077c34c08735b552e4d6bc29a8b800ac946b2b8851035f85e55de9`  
		Last Modified: Tue, 06 Oct 2026 21:55:20 GMT  
		Size: 37.9 MB (37859689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8906edb1694ca8863e6e67fa4af2ca5bf5c6c41c539b58b06c197645f93b81c9`  
		Last Modified: Tue, 06 Oct 2026 21:55:59 GMT  
		Size: 158.1 MB (158120079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d61caff7ed5d10e6dcefd954c81357890a7d22c0ef03fc88fae489ee0a572c5`  
		Last Modified: Tue, 06 Oct 2026 21:55:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9462770abbfeec436213433ca89d20902bb469282a6cfd3a70a3e2bb7b6b64f2`  
		Last Modified: Tue, 06 Oct 2026 21:55:53 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160e96ef17a05c651a9625e78a9841ca5e897ebf31df7498bcb90541cfabfe2b`  
		Last Modified: Tue, 06 Oct 2026 22:09:01 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310ab842c8cfc3116fc8860bd2a2b30728ac3bd7af1adbcd12dbf90594c81e2b`  
		Last Modified: Tue, 06 Oct 2026 22:09:02 GMT  
		Size: 40.1 MB (40104623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3388d8e223ecc44c988d54bda789f595ab8eeeb149c1a9a3dc5ca03f7f127205`  
		Last Modified: Tue, 06 Oct 2026 22:09:05 GMT  
		Size: 151.5 MB (151524267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91d77fca6912dcca420f3bb4e4a5c79468ccbbdcc3b621fd17c5f3883f7d7ce`  
		Last Modified: Tue, 06 Oct 2026 22:09:01 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:88198703c22cca0d79a8a0e616dddbf8da1d338b4e0365e96bb11db54cc13fbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7119977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ccecbd45051f4bec2ed37d8bf00068330662b543283f4a1ad5020e86b432c5`

```dockerfile
```

-	Layers:
	-	`sha256:b760df32b2dd0bb63e5c0d2c84118b697488d7830e49c10286a32aa31319c7b1`  
		Last Modified: Tue, 06 Oct 2026 22:09:01 GMT  
		Size: 7.1 MB (7095518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0192a3a534fec1e74c03dd4fe31afab26d1d324a5709cb906125b415aa5222c4`  
		Last Modified: Tue, 06 Oct 2026 22:09:00 GMT  
		Size: 24.5 KB (24459 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:0b5396d67b31aa35ae565e00957123f0d4aecc4b1ad446db6bd95369fab3925b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.4 MB (418439281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83f150351c071620962a7e68ca40b0c26255ee92be570eb858f9a506e1f189a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:54:51 GMT
ENV container oci
# Tue, 06 Oct 2026 06:54:52 GMT
COPY dir:5d724641a5e7af80919f5b39a516d4561f65b3b7352fbda320935cbb5242688a in /      
# Tue, 06 Oct 2026 06:54:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:54:52 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:54:52 GMT
COPY dir:00864b7e610d3da6756b5cf1b37de86187c773ede7d568403a72c9370ca645e1 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:54:52 GMT
COPY dir:00864b7e610d3da6756b5cf1b37de86187c773ede7d568403a72c9370ca645e1 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:54:52 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:54:30Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:54:30Z" "architecture"="aarch64" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:54:30Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 21:52:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:52:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:52:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:52:04 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:52:04 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 06 Oct 2026 21:52:11 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:52:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:52:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:52:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:52:12 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:09:18 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:09:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:09:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:09:18 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:09:18 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:09:24 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:09:24 GMT
ENV GRADLE_VERSION=9.8.0
# Tue, 06 Oct 2026 22:09:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Tue, 06 Oct 2026 22:09:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:09:27 GMT
USER gradle
# Tue, 06 Oct 2026 22:09:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 06 Oct 2026 22:09:28 GMT
USER root
```

-	Layers:
	-	`sha256:8bbad36d7459a5946aefb1e837706ffa90447344493f010df72763ae29ef2507`  
		Last Modified: Tue, 06 Oct 2026 07:58:54 GMT  
		Size: 33.1 MB (33124268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f217bbce67d7e1a7fea44edcce9da970f4c00798ac9a0010e2f812dd11ecf3d`  
		Last Modified: Tue, 06 Oct 2026 21:52:32 GMT  
		Size: 37.8 MB (37799974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac09ace79e7471b3fd5cf9ff2463cd1a25b52ea3d0d0a29ed8661a4dd70de85`  
		Last Modified: Tue, 06 Oct 2026 21:52:35 GMT  
		Size: 156.4 MB (156403475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecba8c9d17c0a808dc3fb76ccf7451bbfbb05f9c80447ff03b03ed3b19e5eff8`  
		Last Modified: Tue, 06 Oct 2026 21:52:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616719d9359718affa10b6d5c303848229f5535feab1caa97a24e06c627df820`  
		Last Modified: Tue, 06 Oct 2026 21:52:31 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677bfa1b311796f9f6f1d4e781c64a88b66f78f8794ffd25b1e5de6b58f6a65b`  
		Last Modified: Tue, 06 Oct 2026 22:09:48 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b740be78d850b49caf6b6eeb8061d94794729066da4fbf882c405a6c366e7ca`  
		Last Modified: Tue, 06 Oct 2026 22:09:49 GMT  
		Size: 39.6 MB (39553741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e076dd898bca952948ee5cbe1a8869e149868fcbd8103269df32aa013f2ddb68`  
		Last Modified: Tue, 06 Oct 2026 22:09:51 GMT  
		Size: 151.5 MB (151524265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e3c93321f7afe59e483343a5e26ea0b619fb855985eb7e995d364c52b6ffeb`  
		Last Modified: Tue, 06 Oct 2026 22:09:48 GMT  
		Size: 29.3 KB (29341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:fb87e64e0efed6b2b559b19b3a2d27a555028fa5583c4eb3e10dff344d54f27c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7118430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d242eff14e2655c03506cd7cc89ccf26e77accfacd8486c5a60c33ca0f9bd015`

```dockerfile
```

-	Layers:
	-	`sha256:24041a7a90fc2df033cde53b94290616148effc1b2dc7cee475a5d653f92f471`  
		Last Modified: Tue, 06 Oct 2026 22:09:48 GMT  
		Size: 7.1 MB (7093774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a20e0a9d20718509554400bfd1f9b7c94bfae760c652571c296d15eb41bbd0a`  
		Last Modified: Tue, 06 Oct 2026 22:09:47 GMT  
		Size: 24.7 KB (24656 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:3391c160d9888888023cb2753cc8f09d262b8a7fb2e38d68affd3c112cf66530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **430.5 MB (430453582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338a9d5ef895ab1d33867628f31475d7b4df5350f768ae5a6933d0b5a2029385`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:54:24 GMT
ENV container oci
# Tue, 06 Oct 2026 06:54:25 GMT
COPY dir:e25ca9bce19950e134d1571bfd9f5606eb05da1f098ac5b727aef4ebc7b83454 in /      
# Tue, 06 Oct 2026 06:54:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:54:25 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:54:25 GMT
COPY dir:c45e57b863ca71f3508a48e72ff9c0ad8871f2710bd7efaffe74fbc929216e53 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:54:25 GMT
COPY dir:c45e57b863ca71f3508a48e72ff9c0ad8871f2710bd7efaffe74fbc929216e53 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:54:25 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:54:08Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:54:08Z" "architecture"="ppc64le" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:54:08Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 21:49:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:34 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:34 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 06 Oct 2026 21:55:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:55:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:55:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:55:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:55:26 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:09:56 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:09:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:09:56 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:09:56 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:09:56 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:10:34 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:10:34 GMT
ENV GRADLE_VERSION=9.8.0
# Tue, 06 Oct 2026 22:10:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Tue, 06 Oct 2026 22:10:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:10:44 GMT
USER gradle
# Tue, 06 Oct 2026 22:10:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 06 Oct 2026 22:10:48 GMT
USER root
```

-	Layers:
	-	`sha256:3a3a2461cd07c59e0c778d6435ecc60f319acf3d0d977d18a22118130e1e6f78`  
		Last Modified: Tue, 06 Oct 2026 12:22:40 GMT  
		Size: 39.1 MB (39133633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2fbb754e1bdb9156007fee5ee8b98c08e806b671924b977b328590aaee1039`  
		Last Modified: Tue, 06 Oct 2026 21:50:16 GMT  
		Size: 39.6 MB (39635607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d845788e727ddec464ed5504ad1b8ca2520e74ce1a3bcaf2b3bf6defcfefc33`  
		Last Modified: Tue, 06 Oct 2026 21:56:10 GMT  
		Size: 158.3 MB (158284478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c49f4b070f345cad310f124dbb1b420b01cec83278792a0c3490b905e8dd6e2`  
		Last Modified: Tue, 06 Oct 2026 21:56:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32a0b9f0069615c136b8c0b6e32140bead14da43833314c5ab2e197ea82a4b76`  
		Last Modified: Tue, 06 Oct 2026 21:56:07 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345908feb043563416969191857795fce07dd003d2892f468db82ab6542aae48`  
		Last Modified: Tue, 06 Oct 2026 22:11:40 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e430921bdbe1b5ba31eaa79962eb8fba9a3e26726e4b25af81cff49bb2ed1d9`  
		Last Modified: Tue, 06 Oct 2026 22:11:42 GMT  
		Size: 41.9 MB (41870994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b36753408b62faccae6aaa750ed84ee3f4ea20f5bc3b9a266975d47c53fdc8a`  
		Last Modified: Tue, 06 Oct 2026 22:11:45 GMT  
		Size: 151.5 MB (151524266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1312cb863e84788023e2a461cd7178d651b4485ec837be14e011fffcd4b900cd`  
		Last Modified: Tue, 06 Oct 2026 22:11:40 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:33d99209503564c4f9449f2c318bd02ed3a046ef6a08e42158c2962b1dc43f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7111467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66c19218f8508fd4c7dc85dc07a6ba48b0aebf9ab5278318e843e789434c8803`

```dockerfile
```

-	Layers:
	-	`sha256:0c51d46cb9692a3e08ab1b678ff0cba55ffa5565ea88f555a5094f73e00142b2`  
		Last Modified: Tue, 06 Oct 2026 22:11:41 GMT  
		Size: 7.1 MB (7086936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:066e9e1ab6c31374157ba8471f7744ec1646e139ab31f91d3e941dd12c0c984c`  
		Last Modified: Tue, 06 Oct 2026 22:11:40 GMT  
		Size: 24.5 KB (24531 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:2a4bc769387823a6583dcebe20166a53ee7d7c594b81345b5bb3807e595ade43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.2 MB (414210464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9fae02b44cc3777105bae08daa15007d4f0d272938319aa2939ef2e785f68f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:58:22 GMT
ENV container oci
# Tue, 06 Oct 2026 06:58:22 GMT
COPY dir:59b340005a5695367b2b6ba200b95afac8af79674120f76d505f107f62ec7ed4 in /      
# Tue, 06 Oct 2026 06:58:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:58:22 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:58:22 GMT
COPY dir:c68ac7435b1ee2e4e342e6f714a2722fab812e488dc6d92d624bfb60cd57be96 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:58:22 GMT
COPY dir:c68ac7435b1ee2e4e342e6f714a2722fab812e488dc6d92d624bfb60cd57be96 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:58:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:57:02Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:57:02Z" "architecture"="s390x" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:57:02Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 21:49:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:54 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:54 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 06 Oct 2026 21:51:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:51:27 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:51:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:51:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:51:27 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:08:39 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:08:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:08:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:08:39 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:08:39 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:08:43 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:08:43 GMT
ENV GRADLE_VERSION=9.8.0
# Tue, 06 Oct 2026 22:08:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Tue, 06 Oct 2026 22:08:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:08:47 GMT
USER gradle
# Tue, 06 Oct 2026 22:08:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 06 Oct 2026 22:08:48 GMT
USER root
```

-	Layers:
	-	`sha256:42cbc52a670f5b53993e0233ccf7a79e7a946f4215ce8ab80402bf2f86b79986`  
		Last Modified: Tue, 06 Oct 2026 12:22:34 GMT  
		Size: 34.9 MB (34862390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b319f1d3b97f91441a1e33ebb6ff306bbb0ba022e9fca3435e39cedcfe7b71af`  
		Last Modified: Tue, 06 Oct 2026 21:50:18 GMT  
		Size: 38.2 MB (38238963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2724669dea305a6b88a1a9471be7e3d504948497b27709938998995f35db3f08`  
		Last Modified: Tue, 06 Oct 2026 21:51:54 GMT  
		Size: 147.3 MB (147348027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5defe6348201817de46491b41582143511bd2c9260dcb8b4ba28a5f58b265fb4`  
		Last Modified: Tue, 06 Oct 2026 21:51:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e44c992d308114b2416b755a346c09de7c9ba51fddbc828bc241b08211a7f4`  
		Last Modified: Tue, 06 Oct 2026 21:51:51 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f655673d4317642cfc59a348f659123ac5824fee8f648e60c4769ce05db111c`  
		Last Modified: Tue, 06 Oct 2026 22:09:14 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f26e40e73d557803f4ab4ccd25b75ec12fb4080a5fa2c16d9a96dcf62f08a944`  
		Last Modified: Tue, 06 Oct 2026 22:09:15 GMT  
		Size: 42.2 MB (42232199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87eafb768b3556006b5a12f928266ef8379ccc5a5c9052232aefcb02451b2b34`  
		Last Modified: Tue, 06 Oct 2026 22:09:17 GMT  
		Size: 151.5 MB (151524290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f88518b5a12eff0ffbe843170a7a90ae2b6dd953e2c0ae07a2e0cfd22696cba`  
		Last Modified: Tue, 06 Oct 2026 22:09:14 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:8beb767f52aa5445413f6772f386ca20908a92b3bf3db1b2b44e397a14264cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7100622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8e6eb757c206c8fd07b81c2ced917d21f9ee4e92058294cfae6fee1a233f5ff`

```dockerfile
```

-	Layers:
	-	`sha256:9fa30d6c19a71c14e83e8f1e1e577f9311e9170750c2cb1ab393cc1c50f11fdd`  
		Last Modified: Tue, 06 Oct 2026 22:09:14 GMT  
		Size: 7.1 MB (7076165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04015e226f83ba3da98753e2640517dc87c3d9ba13854b7745ce9ccaa36dcc01`  
		Last Modified: Tue, 06 Oct 2026 22:09:13 GMT  
		Size: 24.5 KB (24457 bytes)  
		MIME: application/vnd.in-toto+json
