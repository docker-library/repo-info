## `gradle:ubi`

```console
$ docker pull gradle@sha256:5952a265524012c0d2005f7db50f5430d03bae41a3fdb0b398f9172d38fe324d
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

### `gradle:ubi` - linux; amd64

```console
$ docker pull gradle@sha256:7bf7a71ad118f57735cc204ae714daaa803b78ea2e6fe5029f76d687e642760d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.8 MB (345792978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9712340d14b00a0d502a550bf8cb93210a0798fa855ea16e613259b518265f42`
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
# Wed, 22 Jul 2026 18:28:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:28:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:28:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:28:34 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:28:34 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 22 Jul 2026 18:28:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:28:41 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:28:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:28:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:28:41 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:01:18 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:01:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:01:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:01:18 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:01:18 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:01:22 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:01:22 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 19:01:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 19:01:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:01:24 GMT
USER gradle
# Wed, 22 Jul 2026 19:01:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:01:25 GMT
USER root
```

-	Layers:
	-	`sha256:1a70cbb74144ef90a6ddb34ce9ec12c795834baf78bdb1417827dff114fc5859`  
		Last Modified: Wed, 22 Jul 2026 00:25:25 GMT  
		Size: 34.9 MB (34943743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4578142f025c948b93c3ad6227d05b10d8c8b731bc8c6821221db349a20bb78`  
		Last Modified: Wed, 22 Jul 2026 18:29:00 GMT  
		Size: 37.8 MB (37771506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94e47d70c201c6d0764713c8e55a4874d6e2236c64229fc1ab13fb2422f0657`  
		Last Modified: Wed, 22 Jul 2026 18:29:01 GMT  
		Size: 92.6 MB (92579350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c37b710ce952c67339184ae464f6e9be6106c0e0858ac166be0e3271fc2a56b`  
		Last Modified: Wed, 22 Jul 2026 18:28:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99680651b5c07617ea8a747f792ce4f9379b564559b3bc5113002add42a44703`  
		Last Modified: Wed, 22 Jul 2026 18:28:58 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33621136652e5e5036576bb1ecc32789bd826e1454117bdb55dd88644d1705ae`  
		Last Modified: Wed, 22 Jul 2026 19:01:43 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6051ef6c98210d353430b0bd18bd6e8e43139239ede8543b3200066edb9af442`  
		Last Modified: Wed, 22 Jul 2026 19:01:45 GMT  
		Size: 39.9 MB (39872700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcebaadf8bf5fb5075fedf087a8ed79c0be9939aea2beba197a56acec24a27e8`  
		Last Modified: Wed, 22 Jul 2026 19:01:48 GMT  
		Size: 140.6 MB (140596008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb48db1237b0aa7accc77dea591c305e8960552ce985c0c738c383185f360b78`  
		Last Modified: Wed, 22 Jul 2026 19:01:43 GMT  
		Size: 25.6 KB (25634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:5dc2d1d14912b9370fdce7c8139642ae08dd097a6169e53681dd2f31bc49864d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7081619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8169f4e2e43495802f9532a3a3291cd01be974dbe82e1847c3fccfe0723d8ba9`

```dockerfile
```

-	Layers:
	-	`sha256:799fb4df507afaedba1f089656945b5cb48e20b612a0f8db31ad5c7d3e48d1b4`  
		Last Modified: Wed, 22 Jul 2026 19:01:44 GMT  
		Size: 7.1 MB (7056610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:728b2a15c3fb36f92ff4feb77ae8fcb28500df870f7731b096e0ead8053f3081`  
		Last Modified: Wed, 22 Jul 2026 19:01:43 GMT  
		Size: 25.0 KB (25009 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:8c9bca8bb08b5fe3fdb94a84ab27b0ca762abdeb30ad38b26ba071cd1206c89b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.3 MB (342263409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0dcbcc98994f81b57edd45c703ceee08e3612d0a34aab58defdc9cc509ccc8`
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
# Wed, 22 Jul 2026 18:53:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:53:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:53:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:53:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:53:02 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 22 Jul 2026 18:53:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:53:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:53:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:53:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:53:34 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:03:17 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:03:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:03:17 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:03:17 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:03:17 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:03:21 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:03:21 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 19:03:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 19:03:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:03:23 GMT
USER gradle
# Wed, 22 Jul 2026 19:03:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:03:24 GMT
USER root
```

-	Layers:
	-	`sha256:58f664164ca85fb5b417ce6f6fffea1e66eaf780a7dedb2c483cdd5286d5ee2b`  
		Last Modified: Wed, 22 Jul 2026 00:25:47 GMT  
		Size: 33.1 MB (33053422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5227d56c9542d40dd07de894846c7d2114665effe301f1f2e98aa45d7270c96e`  
		Last Modified: Wed, 22 Jul 2026 18:53:20 GMT  
		Size: 37.7 MB (37713543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f432a415ac0af61d73b7cbdda904667679b6ff835dece88aac7b86763eb0a5e`  
		Last Modified: Wed, 22 Jul 2026 18:53:52 GMT  
		Size: 91.5 MB (91548891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c88c8f4aed95383eb8e0f08f699a7bd2ba65b82582f038da976ae03518461ce`  
		Last Modified: Wed, 22 Jul 2026 18:53:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:161c7e399b068b85491075d40b550925073cf02fea310e770a919c3b45bc28e3`  
		Last Modified: Wed, 22 Jul 2026 18:53:48 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6bc0f28d621d7779378c3ca048e70b99e500cb5ea530a57e49f23327477a39`  
		Last Modified: Wed, 22 Jul 2026 19:03:43 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb93f3685fa47129ed402b2cbbcbdf0edc64b6bccc8759b2961e28e4377cf1c`  
		Last Modified: Wed, 22 Jul 2026 19:03:45 GMT  
		Size: 39.3 MB (39318173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1070128e42b44a93d7bc26dd600a029660b61d6f8d1ed430b6c01c08b73c7aef`  
		Last Modified: Wed, 22 Jul 2026 19:03:47 GMT  
		Size: 140.6 MB (140596008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970bc3eddeb6a7ffd868a64bcc52d38919e401cdf5d28d3d57dc2cd9ba3fa40f`  
		Last Modified: Wed, 22 Jul 2026 19:03:43 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:8bd59998bfe83b83a7545cb47c8f2927290fee9e0e4ab6607fbbffb2ffc846f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef20548a6589dbaa973d6f8046e592ef6642a8833122142218aa03f73290c226`

```dockerfile
```

-	Layers:
	-	`sha256:be282ca25f0927899bf067698cf396508e28da8c121b663a312cfeb2fa3bade1`  
		Last Modified: Wed, 22 Jul 2026 19:03:43 GMT  
		Size: 7.1 MB (7054887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e47fb0581ae93eff2648406fe5c2658a20d5818555bb76e80afed1c555fc340d`  
		Last Modified: Wed, 22 Jul 2026 19:03:43 GMT  
		Size: 25.2 KB (25230 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:d5a5fd53f302918c5ec205ae97fb3fdce47f866f9dcb9682c9d00fc3ae08f661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.6 MB (357628186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec9d19526b82aef33aa0f44fb57b4296035cc0139e60a5adda9e51f84209ca9`
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
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 21 Jul 2026 17:00:29 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 17:00:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 17:00:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 17:00:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 17:00:32 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:08:40 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:08:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:08:40 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:08:40 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:08:41 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:09:00 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:09:00 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 21 Jul 2026 17:09:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 21 Jul 2026 17:09:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:09:07 GMT
USER gradle
# Tue, 21 Jul 2026 17:09:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:09:09 GMT
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
	-	`sha256:3b99833437e5a24494b206c34314fab4b2ab5a69eb73faae077f5754e89dd6c9`  
		Last Modified: Tue, 21 Jul 2026 17:01:07 GMT  
		Size: 91.9 MB (91912882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc2ba1380f4525aa687905553f413262b658c56d2e1ecf1e03a852234dedeab`  
		Last Modified: Tue, 21 Jul 2026 17:01:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad8a8d8a169a0c2a61991eaf67dd4dab1cac65d83b30dce69ae1a8c4d5146d98`  
		Last Modified: Tue, 21 Jul 2026 17:01:04 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fb704bf1ab17287515698bf5e37a41aebffa4ab77cf2f5e13898aa99201faa`  
		Last Modified: Tue, 21 Jul 2026 17:09:47 GMT  
		Size: 1.6 KB (1587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04646a9a7130aeed93cf8108d79d07b10cffc0f9df84e252e1acf2cd11b5e997`  
		Last Modified: Tue, 21 Jul 2026 17:09:49 GMT  
		Size: 41.7 MB (41652166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c936eeede73c10728e9d35fd77258a51bebd9cad454279301392b3e030af8382`  
		Last Modified: Tue, 21 Jul 2026 17:09:51 GMT  
		Size: 140.6 MB (140596025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a414d7211c99b79d5a04dfcb9bed7757aec9c9531707bcb5bbf704597b996ae8`  
		Last Modified: Tue, 21 Jul 2026 17:09:47 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:0eaae036f2a210fc7cd74a1fabecbaee531ff00187216801ebb66b3c40f3f135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7056437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1431be7f1f1e08e770f435deb31b934c53db0ae127f334090aa8727373a4effe`

```dockerfile
```

-	Layers:
	-	`sha256:b2122ca2f177b1d433c2b8dd188062e7bee9e3509f35fdecb795965d877040c6`  
		Last Modified: Tue, 21 Jul 2026 17:09:47 GMT  
		Size: 7.0 MB (7031344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3fa563a5bce4739d55e53c690b89ee1e0568ed743c1061279826aac8932df45`  
		Last Modified: Tue, 21 Jul 2026 17:09:46 GMT  
		Size: 25.1 KB (25093 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi` - linux; s390x

```console
$ docker pull gradle@sha256:27114363571635aef24e40ad2b90a1e390e2d942faf3dd8e463587dae7389a34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.8 MB (346829171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb948a976023189c4048306df400a8a886a929a03a665abcbf92d7b9a7d7d8d`
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
# Tue, 21 Jul 2026 16:50:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 16:50:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:50:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 16:50:46 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 16:50:46 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 21 Jul 2026 16:53:03 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 16:53:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 16:53:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 16:53:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 16:53:04 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:00:29 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:00:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:00:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:00:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:00:29 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:00:34 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:00:34 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 21 Jul 2026 17:00:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 21 Jul 2026 17:00:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:00:40 GMT
USER gradle
# Tue, 21 Jul 2026 17:00:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:00:40 GMT
USER root
```

-	Layers:
	-	`sha256:8f200b9c901c53267e3af6f18a54f6038f0d14c580dd6d30d165b125119c4f1c`  
		Last Modified: Tue, 21 Jul 2026 00:15:45 GMT  
		Size: 34.7 MB (34728302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c2049c90291c06adaddd0dfa38572f95cf49347a2f9abf6fa4cd0a6766c0c9e`  
		Last Modified: Tue, 21 Jul 2026 16:51:11 GMT  
		Size: 41.1 MB (41074918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4364e1fdfd25e591bab6413c86f84599498be6cfbfff046daf3495c6008753dc`  
		Last Modified: Tue, 21 Jul 2026 16:53:30 GMT  
		Size: 88.4 MB (88421661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3682594a9435c161416c92704bf46db301d6d3436098d609f725f5f4a5335c91`  
		Last Modified: Tue, 21 Jul 2026 16:53:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2813d288374acfd6396955ab156f2257e0302728c4d8dcf415506b079dc4ad`  
		Last Modified: Tue, 21 Jul 2026 16:53:28 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523a2f92d695b262a300a9192640b84e26a498b8c2f10e77b878d031c8c53ec5`  
		Last Modified: Tue, 21 Jul 2026 17:01:14 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86ce44d1adbf18c4ee3b815c10a833a7add6d206502d12cc7b45af9a4c3d561`  
		Last Modified: Tue, 21 Jul 2026 17:01:15 GMT  
		Size: 42.0 MB (42003853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e546dd2d669b66639cc6422f3b4568a09ee786449e2188b55cee81c5976982af`  
		Last Modified: Tue, 21 Jul 2026 17:01:17 GMT  
		Size: 140.6 MB (140596025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3b1542382aa84b540dfe178101730529ad37ec16417f65401d499a73b248ec`  
		Last Modified: Tue, 21 Jul 2026 17:01:14 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:866a71ef90787101942643a8578c62395b6df4a843a5ce9daebc62634ea8c67f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7046818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86bcccbdfbdc80936f56c8b13f22941aecf2c14982a1dcf2490eac736116e562`

```dockerfile
```

-	Layers:
	-	`sha256:3366341043d36a3edbec8435e8833dcbd8603faed8226607c1cb9a09f63c84dc`  
		Last Modified: Tue, 21 Jul 2026 17:01:14 GMT  
		Size: 7.0 MB (7021811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f50f4e09d041582bc42f575ade7369eee3572fd0d50666363e522e39fecfb258`  
		Last Modified: Tue, 21 Jul 2026 17:01:14 GMT  
		Size: 25.0 KB (25007 bytes)  
		MIME: application/vnd.in-toto+json
