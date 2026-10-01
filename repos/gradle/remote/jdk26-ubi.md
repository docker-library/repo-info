## `gradle:jdk26-ubi`

```console
$ docker pull gradle@sha256:d8bc0c0fd75bb584c77b0299050a6267836812cbf290b1b85c2b683750a43997
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
$ docker pull gradle@sha256:9e7c0ad7d5c0ce5eb3c1bf2d5af55abe42ad8a57ebe3d986ed322b7e9bdee516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (359031309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a64e1c63a71d7edd654ece741f551706485b8c09ba673bc6accf5ddb2e383e18`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 30 Sep 2026 07:29:37 GMT
ENV container oci
# Wed, 30 Sep 2026 07:29:37 GMT
COPY dir:4a2cf22f81e21a519a6037814395930006f66c73a33185c9b0909804097cd2e4 in /      
# Wed, 30 Sep 2026 07:29:37 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:29:37 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:29:37 GMT
COPY dir:0d19287003ab6c5bc6c6b54da180c6fbf0ccb471f51ab32ebe520362ec6a6019 in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:29:37 GMT
COPY dir:0d19287003ab6c5bc6c6b54da180c6fbf0ccb471f51ab32ebe520362ec6a6019 in /root/buildinfo/      
# Wed, 30 Sep 2026 07:29:38 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:29:16Z" "org.opencontainers.image.revision"="c36f95f6d717ca86d583acb486458c81a7d871c6" "build-date"="2026-09-30T07:29:16Z" "architecture"="x86_64" "vcs-ref"="c36f95f6d717ca86d583acb486458c81a7d871c6" "vcs-type"="git" "release"="1790753097"org.opencontainers.image.created=2026-09-30T07:29:16Z,org.opencontainers.image.revision=c36f95f6d717ca86d583acb486458c81a7d871c6
# Wed, 30 Sep 2026 21:04:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 30 Sep 2026 21:04:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:04:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 30 Sep 2026 21:04:08 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:04:08 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 30 Sep 2026 21:04:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64le)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 30 Sep 2026 21:04:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 30 Sep 2026 21:04:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:04:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 30 Sep 2026 21:04:15 GMT
CMD ["jshell"]
# Wed, 30 Sep 2026 21:16:52 GMT
CMD ["gradle"]
# Wed, 30 Sep 2026 21:16:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 30 Sep 2026 21:16:52 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 30 Sep 2026 21:16:52 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 30 Sep 2026 21:16:52 GMT
WORKDIR /home/gradle
# Wed, 30 Sep 2026 21:16:57 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 30 Sep 2026 21:16:57 GMT
ENV GRADLE_VERSION=9.8.0
# Wed, 30 Sep 2026 21:16:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Wed, 30 Sep 2026 21:16:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 30 Sep 2026 21:16:59 GMT
USER gradle
# Wed, 30 Sep 2026 21:17:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 30 Sep 2026 21:17:00 GMT
USER root
```

-	Layers:
	-	`sha256:391b2dfdd020c8a0be6ba9e27ed254ed8409bfbb569f3be31217c8d2a65c66a2`  
		Last Modified: Wed, 30 Sep 2026 08:26:27 GMT  
		Size: 35.0 MB (34957293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a01410cd93773b5bed27b011df7f35eb42d18b95aa9b5289bf51471dbb6712`  
		Last Modified: Wed, 30 Sep 2026 21:04:33 GMT  
		Size: 37.9 MB (37865294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b9d1de0f71396712c5c03efabcbc02b344c8d16a4352dfac7e9109a740768f`  
		Last Modified: Wed, 30 Sep 2026 21:04:34 GMT  
		Size: 94.6 MB (94563841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5304ce3fb7aeb7ec308389ec13426032e19013d9198fb7b373bf4ec7d009ba8`  
		Last Modified: Wed, 30 Sep 2026 21:04:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fe5eb28ad274e48939444144f7151fa7a687ba9dcfbe78873da909d20b665c`  
		Last Modified: Wed, 30 Sep 2026 21:04:31 GMT  
		Size: 2.5 KB (2468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4743752ccc452b286407f7a591f100795a577f82c60230ef03a71ec4b183a250`  
		Last Modified: Wed, 30 Sep 2026 21:17:17 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e407fa4f89f3cd959456bed6a7a1f9373be2e85071afd4def220facf869345`  
		Last Modified: Wed, 30 Sep 2026 21:17:19 GMT  
		Size: 40.1 MB (40090787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439c19a432f01623f6b08d1c0c6d56f5150b2fe068e2363c6ee9a513b2efc3a0`  
		Last Modified: Wed, 30 Sep 2026 21:17:21 GMT  
		Size: 151.5 MB (151524263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ed474ff2bbc15cd39528fb340cc7f1d13132bb703c69f3e29ada15d2a7a5e1`  
		Last Modified: Wed, 30 Sep 2026 21:17:17 GMT  
		Size: 25.6 KB (25617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:725cdb7261b8aa74e527a617dab677e972acf55f5186b040d928f898c77b43a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7082988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885830ab50f251ea5e94c611d5c697b90c9e6ce46fb7a472b743889b97f0022c`

```dockerfile
```

-	Layers:
	-	`sha256:447de8d64e2f602ebd7ac99d8b38d087f505968ff29a3f7af69e2e73e379224e`  
		Last Modified: Wed, 30 Sep 2026 21:17:17 GMT  
		Size: 7.1 MB (7058559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df752f12faa32db7c8460d86b2063a630f5a476c86b19fdbeb78041e3282e6d6`  
		Last Modified: Wed, 30 Sep 2026 21:17:17 GMT  
		Size: 24.4 KB (24429 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a767581a3f7552711d8e5df332a5c13ca310b90c949d5d308a92913a1c7ee579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.6 MB (355602695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dae6c30de79623a7da5171b5f1979a6ccb0dd886a5a933fda07c581c9983354`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 30 Sep 2026 07:33:03 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 30 Sep 2026 07:33:04 GMT
ENV container oci
# Wed, 30 Sep 2026 07:33:04 GMT
COPY dir:b23f1b0ddd9fd279c62ecc0b943b4a2c96946a2d2af1d1cdd1b530a4ba2459be in /      
# Wed, 30 Sep 2026 07:33:04 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:33:04 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:33:05 GMT
COPY dir:9cf1644e306c2a468e0c35a6515097d5f26998903ca48be5c88c30b23982ef21 in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:33:05 GMT
COPY dir:9cf1644e306c2a468e0c35a6515097d5f26998903ca48be5c88c30b23982ef21 in /root/buildinfo/      
# Wed, 30 Sep 2026 07:33:05 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:32:43Z" "org.opencontainers.image.revision"="c36f95f6d717ca86d583acb486458c81a7d871c6" "build-date"="2026-09-30T07:32:43Z" "architecture"="aarch64" "vcs-ref"="c36f95f6d717ca86d583acb486458c81a7d871c6" "vcs-type"="git" "release"="1790753097"org.opencontainers.image.created=2026-09-30T07:32:43Z,org.opencontainers.image.revision=c36f95f6d717ca86d583acb486458c81a7d871c6
# Wed, 30 Sep 2026 21:02:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 30 Sep 2026 21:02:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:02:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 30 Sep 2026 21:02:30 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:02:30 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 30 Sep 2026 21:03:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64le)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 30 Sep 2026 21:03:14 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 30 Sep 2026 21:03:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:03:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 30 Sep 2026 21:03:14 GMT
CMD ["jshell"]
# Wed, 30 Sep 2026 21:14:25 GMT
CMD ["gradle"]
# Wed, 30 Sep 2026 21:14:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 30 Sep 2026 21:14:25 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 30 Sep 2026 21:14:25 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 30 Sep 2026 21:14:25 GMT
WORKDIR /home/gradle
# Wed, 30 Sep 2026 21:14:30 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 30 Sep 2026 21:14:30 GMT
ENV GRADLE_VERSION=9.8.0
# Wed, 30 Sep 2026 21:14:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Wed, 30 Sep 2026 21:14:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 30 Sep 2026 21:14:32 GMT
USER gradle
# Wed, 30 Sep 2026 21:14:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 30 Sep 2026 21:14:33 GMT
USER root
```

-	Layers:
	-	`sha256:9ecd9154d0ac1d3014d65a9a6871a8c0c64a22ac6d5a9235ede1bb14d47cbb9c`  
		Last Modified: Wed, 30 Sep 2026 09:02:01 GMT  
		Size: 33.2 MB (33151204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f83dc24508e23e934f1985e95eb565351d6425eaeeeb6b32eba8ca789177f9a1`  
		Last Modified: Wed, 30 Sep 2026 21:02:58 GMT  
		Size: 37.8 MB (37796878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcc30a1f2a0efee325ba3eff96236a9cbca48c5d9a1c83c8e5d1bbc8f98cb26`  
		Last Modified: Wed, 30 Sep 2026 21:03:33 GMT  
		Size: 93.5 MB (93543483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fd5f868941dfab3076fb9492909018342cbb0642d82c40b043421d19f5dfdf`  
		Last Modified: Wed, 30 Sep 2026 21:03:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e32b1fd918bd291d3b06a32b63b875d1cf5a7c10265a5e62549ca2ec0ea267b`  
		Last Modified: Wed, 30 Sep 2026 21:03:31 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e0c350a8d9b4542dec775b6fa5f5be1934cd6dc222374700384f287a15a9e5`  
		Last Modified: Wed, 30 Sep 2026 21:14:52 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ebb3e700da63ed1feba7c2a5044f09b6d251e94974aa3081190dcc2d7779a6`  
		Last Modified: Wed, 30 Sep 2026 21:14:54 GMT  
		Size: 39.6 MB (39553308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4910b673b8a2fd1978921722caf8c4b90739da73a4fcf4d0ed42c72a52a73b4`  
		Last Modified: Wed, 30 Sep 2026 21:14:56 GMT  
		Size: 151.5 MB (151524265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4c7c3c6c5c7ce402776d42e05195454b87155bfd1781c0732b1fb3bff906f2`  
		Last Modified: Wed, 30 Sep 2026 21:14:52 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:bfef96da58c3fcfcbe23f2ae074ed43a6c12d96ee3d84a169ebc83a3b7362709
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7081438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cce64cc5d33c1423edb63ddc365d85b1a76890142db7b47d9abf4272691af0c`

```dockerfile
```

-	Layers:
	-	`sha256:b0af74cd6f84a18e89396b5ee4de25adeb9d9c9af8b783e6c3b1ef16efb543a1`  
		Last Modified: Wed, 30 Sep 2026 21:14:52 GMT  
		Size: 7.1 MB (7056812 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0bc0dc3667c9e4d1f67335c697ffcb64e327c1458ba94b5ec516dab24921d6c`  
		Last Modified: Wed, 30 Sep 2026 21:14:52 GMT  
		Size: 24.6 KB (24626 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:f79598618a37e83e77ecb421964a253bf4fb7d6fb0f80cb24cdbbbc47b0dd5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.5 MB (365524878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efe27e2006db30075e450bc350aaddcf39d71edc0ff8cc85156b69b7c9832fa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 30 Sep 2026 07:32:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:32:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:32:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:32:24 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 30 Sep 2026 07:32:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:32:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 30 Sep 2026 07:32:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:32:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:32:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 30 Sep 2026 07:32:24 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:32:24 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 30 Sep 2026 07:32:24 GMT
ENV container oci
# Wed, 30 Sep 2026 07:32:25 GMT
COPY dir:011ac10d6905fed4073dab7e8db2ce401abb06876cd876c2627b45fcaa4bebc5 in /      
# Wed, 30 Sep 2026 07:32:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:32:25 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:32:25 GMT
COPY dir:515e9f8a7dba4b71d812235696c26ee13f6d7354d59bce30fdcdfdd7921042f8 in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:32:25 GMT
COPY dir:515e9f8a7dba4b71d812235696c26ee13f6d7354d59bce30fdcdfdd7921042f8 in /root/buildinfo/      
# Wed, 30 Sep 2026 07:32:25 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:32:02Z" "org.opencontainers.image.revision"="c36f95f6d717ca86d583acb486458c81a7d871c6" "build-date"="2026-09-30T07:32:02Z" "architecture"="ppc64le" "vcs-ref"="c36f95f6d717ca86d583acb486458c81a7d871c6" "vcs-type"="git" "release"="1790753097"org.opencontainers.image.created=2026-09-30T07:32:02Z,org.opencontainers.image.revision=c36f95f6d717ca86d583acb486458c81a7d871c6
# Wed, 30 Sep 2026 21:02:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 30 Sep 2026 21:02:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:02:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 30 Sep 2026 21:02:30 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:02:30 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 30 Sep 2026 21:14:03 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64le)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 30 Sep 2026 21:14:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 30 Sep 2026 21:14:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:14:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 30 Sep 2026 21:14:08 GMT
CMD ["jshell"]
# Wed, 30 Sep 2026 22:14:15 GMT
CMD ["gradle"]
# Wed, 30 Sep 2026 22:14:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 30 Sep 2026 22:14:15 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 30 Sep 2026 22:14:15 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 30 Sep 2026 22:14:17 GMT
WORKDIR /home/gradle
# Wed, 30 Sep 2026 22:15:00 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 30 Sep 2026 22:15:00 GMT
ENV GRADLE_VERSION=9.8.0
# Wed, 30 Sep 2026 22:15:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Wed, 30 Sep 2026 22:15:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 30 Sep 2026 22:15:13 GMT
USER gradle
# Wed, 30 Sep 2026 22:15:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 30 Sep 2026 22:15:16 GMT
USER root
```

-	Layers:
	-	`sha256:a275ef60dc735135f2c1bbe39e0aa0e285cd85080b8a146978424089682245a2`  
		Last Modified: Wed, 30 Sep 2026 12:35:40 GMT  
		Size: 39.1 MB (39148108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ecea203b629dda6d1102b5717c9158590b74f9632f772168c3b49c66cee5c3`  
		Last Modified: Wed, 30 Sep 2026 21:03:17 GMT  
		Size: 39.6 MB (39622319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7076c741a16684f484b99430e8e38c6dff5c9bad0fd503d52c910595efe6`  
		Last Modified: Wed, 30 Sep 2026 21:14:49 GMT  
		Size: 93.4 MB (93350487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9bd87d25998c4cd50a82c18b733f9d87fc9b4e63013d638612465328d76627`  
		Last Modified: Wed, 30 Sep 2026 21:14:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021f0506c133cf923b9ae57a583316c971f75232a1eb011b3dd4c1b9b1b79445`  
		Last Modified: Wed, 30 Sep 2026 21:14:47 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c3bd5d58b790b6458dfe936ebec1e937b115ce24978d168b980c994f38b63b`  
		Last Modified: Wed, 30 Sep 2026 22:16:06 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c78e91e0a1b45c1faf539b051a973387571dc9cedb7f8842e86c50f8347a17a`  
		Last Modified: Wed, 30 Sep 2026 22:16:08 GMT  
		Size: 41.9 MB (41875092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71a3eafffb589ced075bc62694853d9246686ef0e79e26ac0563e931f0eb311`  
		Last Modified: Wed, 30 Sep 2026 22:16:10 GMT  
		Size: 151.5 MB (151524277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939ac3f5464412fcbd56646168a881173b47976f0c403aa964516fed442acacb`  
		Last Modified: Wed, 30 Sep 2026 22:16:06 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:1de5a826dc19e2aa5eb33926559c86902df0deed6ec427e08c326c8e8224ebc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7058414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f32154ac8c20cab084e3c11578b8ea464c451dddfd94b63e92e9175c3370e1fe`

```dockerfile
```

-	Layers:
	-	`sha256:614a01cd5d28c84f9640bea07b3b3ea49a19e35e2fd89002f1f54ea4bcc3d35c`  
		Last Modified: Wed, 30 Sep 2026 22:16:06 GMT  
		Size: 7.0 MB (7033913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32ab05e1f1f53c5681928f19507d77a43d2664ef45028eea4e5db3539ba66740`  
		Last Modified: Wed, 30 Sep 2026 22:16:06 GMT  
		Size: 24.5 KB (24501 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:9ca7d4430539520b675be0ea07b7a10d1f71f3b6199d428a07b2be5033095fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.5 MB (357450198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4832d4543f0396778dab462831b04d15898cb5262fcb20a82e18406487ca3470`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 30 Sep 2026 07:54:36 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:54:36 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:54:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:54:36 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 30 Sep 2026 07:54:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:54:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 30 Sep 2026 07:54:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:54:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:54:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 30 Sep 2026 07:54:36 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:54:36 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 30 Sep 2026 07:54:36 GMT
ENV container oci
# Wed, 30 Sep 2026 07:54:36 GMT
COPY dir:f1db57878cec66f0252c497e7449d358aeead644c362f5598e7f5cedde0b7305 in /      
# Wed, 30 Sep 2026 07:54:37 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:54:37 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:54:37 GMT
COPY dir:e274cd48fadb6d2b5c146cbcb6453e991c30f1d6e64abba0eece0f1a7a04b307 in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:54:37 GMT
COPY dir:e274cd48fadb6d2b5c146cbcb6453e991c30f1d6e64abba0eece0f1a7a04b307 in /root/buildinfo/      
# Wed, 30 Sep 2026 07:54:37 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:53:27Z" "org.opencontainers.image.revision"="c36f95f6d717ca86d583acb486458c81a7d871c6" "build-date"="2026-09-30T07:53:27Z" "architecture"="s390x" "vcs-ref"="c36f95f6d717ca86d583acb486458c81a7d871c6" "vcs-type"="git" "release"="1790753097"org.opencontainers.image.created=2026-09-30T07:53:27Z,org.opencontainers.image.revision=c36f95f6d717ca86d583acb486458c81a7d871c6
# Wed, 30 Sep 2026 21:00:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 30 Sep 2026 21:00:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:00:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 30 Sep 2026 21:00:47 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:00:47 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 30 Sep 2026 21:03:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64le)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 30 Sep 2026 21:03:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 30 Sep 2026 21:03:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:03:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 30 Sep 2026 21:03:01 GMT
CMD ["jshell"]
# Wed, 30 Sep 2026 21:10:32 GMT
CMD ["gradle"]
# Wed, 30 Sep 2026 21:10:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 30 Sep 2026 21:10:32 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 30 Sep 2026 21:10:32 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 30 Sep 2026 21:10:32 GMT
WORKDIR /home/gradle
# Wed, 30 Sep 2026 21:10:37 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 30 Sep 2026 21:10:37 GMT
ENV GRADLE_VERSION=9.8.0
# Wed, 30 Sep 2026 21:10:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Wed, 30 Sep 2026 21:10:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 30 Sep 2026 21:10:40 GMT
USER gradle
# Wed, 30 Sep 2026 21:10:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 30 Sep 2026 21:10:41 GMT
USER root
```

-	Layers:
	-	`sha256:c8e472d215ec6e7ecaa53e374ca5d7fa6faf9ed3c5d5fcab813c21ff81738edc`  
		Last Modified: Wed, 30 Sep 2026 12:35:33 GMT  
		Size: 34.9 MB (34862430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b1281f7c004b0b5aecc6a8b39642436d0d48942ce18d9a905b173e82bb19b2`  
		Last Modified: Wed, 30 Sep 2026 21:01:15 GMT  
		Size: 38.2 MB (38238716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a19c81d1008b5b4eab7f2545ecf4f4b4d8449aaaf13d27ce1fab4e3db5d13d5b`  
		Last Modified: Wed, 30 Sep 2026 21:03:26 GMT  
		Size: 90.6 MB (90590766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6bdc02e30913f7588497232bd6e9dda281b59035c3328a2a6d502dfa9e0c5f2`  
		Last Modified: Wed, 30 Sep 2026 21:03:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829f1797661067eae42cd71df099dfb086c330979e9c4a2177c1e46e0dd9a1d6`  
		Last Modified: Wed, 30 Sep 2026 21:03:23 GMT  
		Size: 2.5 KB (2468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc0c81ef5878115c8acde7b4bd4921998502327ae9e898a28d890e9ce0ba418`  
		Last Modified: Wed, 30 Sep 2026 21:11:08 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b27760a52e8152376d36e69215049dc00291153c66057d32104abace6ee2685`  
		Last Modified: Wed, 30 Sep 2026 21:11:10 GMT  
		Size: 42.2 MB (42229436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46276b9f8cf6ca63705cf0a194352d5e78d799198e2f5cf57b3abe15d2ed56bd`  
		Last Modified: Wed, 30 Sep 2026 21:11:12 GMT  
		Size: 151.5 MB (151524262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47a62d3101f46db28b65b4463ced7e786aa64d7ad1ae0f24c170e8ac1954588`  
		Last Modified: Wed, 30 Sep 2026 21:11:08 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:50044a8258aae1851ee17ecbce057804bba4a491bd66152fbc6fbe855c70ae7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7048818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e335a5e5c53a00db749c2fadad57dbabd1b69c4c8956d559edfcc3e627b509a7`

```dockerfile
```

-	Layers:
	-	`sha256:ded63264160d5eb7b6bcdd5782de1090f84a22e7427b9a3dd1b8af7eee0ba0f4`  
		Last Modified: Wed, 30 Sep 2026 21:11:09 GMT  
		Size: 7.0 MB (7024392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83abe3a94a4110532c04c8dd99ef81fb2d4a71e3efda75b1c9573180795d087b`  
		Last Modified: Wed, 30 Sep 2026 21:11:08 GMT  
		Size: 24.4 KB (24426 bytes)  
		MIME: application/vnd.in-toto+json
