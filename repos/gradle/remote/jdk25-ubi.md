## `gradle:jdk25-ubi`

```console
$ docker pull gradle@sha256:511abb59ead1b9e8b25e114bee5c5f1a8e299790ee08e46cc4e84aa42d9a2271
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
$ docker pull gradle@sha256:759a148b713b9075c094daaead63bcab9c33f7395a9127e76459a34f5cbfffb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349183973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680dbceb03a57f19388fc71cd0080cfbd3397a3f46066705efaac2c4d2195a19`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL io.openshift.expose-services=""
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 20 Jul 2026 21:05:29 GMT
ENV container oci
# Mon, 20 Jul 2026 21:05:29 GMT
COPY dir:be65801bfe1d5d542d5581f62937bedfc51bd9ef20db9247657ff82a1f9c7002 in /      
# Mon, 20 Jul 2026 21:05:29 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 20 Jul 2026 21:05:29 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 21:05:29 GMT
COPY dir:7e813dae0991761a17220188f1cf70522a87e98e24121b15c124138fea14766e in /usr/share/buildinfo/      
# Mon, 20 Jul 2026 21:05:29 GMT
COPY dir:7e813dae0991761a17220188f1cf70522a87e98e24121b15c124138fea14766e in /root/buildinfo/      
# Mon, 20 Jul 2026 21:05:30 GMT
LABEL "org.opencontainers.image.created"="2026-07-20T21:05:08Z" "org.opencontainers.image.revision"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "build-date"="2026-07-20T21:05:08Z" "architecture"="x86_64" "vcs-ref"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "vcs-type"="git" "release"="1784581369"org.opencontainers.image.created=2026-07-20T21:05:08Z,org.opencontainers.image.revision=71f84d0717d42d49af1ce4d67019f56edf8b1f68
# Tue, 21 Jul 2026 17:03:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 17:03:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:03:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 17:03:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:03:24 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 21 Jul 2026 17:05:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 17:05:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 17:05:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 17:05:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 17:05:58 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:19:19 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:19:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:19:19 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:19:19 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:19:19 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:19:22 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:19:22 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 21 Jul 2026 17:19:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 21 Jul 2026 17:19:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:19:24 GMT
USER gradle
# Tue, 21 Jul 2026 17:19:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:19:25 GMT
USER root
```

-	Layers:
	-	`sha256:9c35cef7c7f5d6e8530d291b7ae98db7bafbd6acb32807d414a20ba1412b4cee`  
		Last Modified: Mon, 20 Jul 2026 21:46:40 GMT  
		Size: 34.9 MB (34879050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ba6ac1334114e47e42be7f5aee61a40f2f88618ee1c53718aeb092cf363a4e`  
		Last Modified: Tue, 21 Jul 2026 17:03:43 GMT  
		Size: 41.2 MB (41220292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219227b97ad4a8540e0ca43a8530ab10a8c08e0aacc6deec9c834ee0851b7fa7`  
		Last Modified: Tue, 21 Jul 2026 17:06:17 GMT  
		Size: 92.6 MB (92579359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fba18da4f247d7b13f3f6d294c1914871bff63bac7069d79f8a4418bb5261f`  
		Last Modified: Tue, 21 Jul 2026 17:06:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c26f2de0d67180ff614ddb7a8ec249a92de256d91ff9d80d43e51c9499b0f15`  
		Last Modified: Tue, 21 Jul 2026 17:06:06 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a1eede0a2bcce506ce70d318dda823b97830f3855e25d731f35dc61280684a6`  
		Last Modified: Tue, 21 Jul 2026 17:19:44 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a08ae09ae35541e478bc8dd49955f972128678d6f9bc181b83f4e800b91c272d`  
		Last Modified: Tue, 21 Jul 2026 17:19:46 GMT  
		Size: 39.9 MB (39879597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be293ccab40a67daeb388e8c6cc9bec46be49cae9afe2689a39492e2b6fe2a00`  
		Last Modified: Tue, 21 Jul 2026 17:19:48 GMT  
		Size: 140.6 MB (140596023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4efe7ae8225ceeb0081dd9471c9c86839d25a1d1d7f5fba0faa444af3aa2fa`  
		Last Modified: Tue, 21 Jul 2026 17:19:44 GMT  
		Size: 25.6 KB (25616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:bacabae4ab9d6946d8041bdb612d199aa0a406e8ea9048c9a8ed08e1b01a8262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7081610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b06a4930a1e011ae8cc74880e1fea737cc868cf7b16f2e60488f9ba14095af`

```dockerfile
```

-	Layers:
	-	`sha256:96cb813d1bf33740d91f79a9a92314720d34471066223e0aa2984f971fa92a17`  
		Last Modified: Tue, 21 Jul 2026 17:19:45 GMT  
		Size: 7.1 MB (7056602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50b275094eb76a9bb1f858c9766b7a81c560a6740beb81e719619750fd575516`  
		Last Modified: Tue, 21 Jul 2026 17:19:44 GMT  
		Size: 25.0 KB (25008 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:339736f378004a2e11c1a0db6cc5820c30a71a5ebc683b831302f281c9c6e8d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.1 MB (345095652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0134be7212e651afa46ce80c1b95d725de3877aced5b1ff7b532d95c338b23c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL io.openshift.expose-services=""
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 20 Jul 2026 21:07:32 GMT
ENV container oci
# Mon, 20 Jul 2026 21:07:33 GMT
COPY dir:62b4a42eb40600c59bfd1fd54712a84c802a4e9884ee9756642eb56fa9e3dded in /      
# Mon, 20 Jul 2026 21:07:33 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 20 Jul 2026 21:07:33 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 21:07:33 GMT
COPY dir:9e3ac7ef784ea1786b4c0db58729498372dfbd1d076c9d076141fd7f15208171 in /usr/share/buildinfo/      
# Mon, 20 Jul 2026 21:07:33 GMT
COPY dir:9e3ac7ef784ea1786b4c0db58729498372dfbd1d076c9d076141fd7f15208171 in /root/buildinfo/      
# Mon, 20 Jul 2026 21:07:34 GMT
LABEL "org.opencontainers.image.created"="2026-07-20T21:07:11Z" "org.opencontainers.image.revision"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "build-date"="2026-07-20T21:07:11Z" "architecture"="aarch64" "vcs-ref"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "vcs-type"="git" "release"="1784581369"org.opencontainers.image.created=2026-07-20T21:07:11Z,org.opencontainers.image.revision=71f84d0717d42d49af1ce4d67019f56edf8b1f68
# Tue, 21 Jul 2026 17:00:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 17:00:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:00:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 17:00:30 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:00:30 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 21 Jul 2026 17:01:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 17:01:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 17:01:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 17:01:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 17:01:04 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:10:33 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:10:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:10:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:10:33 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:10:33 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:10:37 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:10:37 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 21 Jul 2026 17:10:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 21 Jul 2026 17:10:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:10:39 GMT
USER gradle
# Tue, 21 Jul 2026 17:10:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:10:40 GMT
USER root
```

-	Layers:
	-	`sha256:9e87f0b05623e42064eff2c03f371c8ad59cb9096807807d8d149c97eb66a9e5`  
		Last Modified: Mon, 20 Jul 2026 21:53:27 GMT  
		Size: 33.0 MB (33038839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c17f14166b12708255e1b59424089d5a68de1e0baf6ef8c380a9c0da3e45235f`  
		Last Modified: Tue, 21 Jul 2026 17:00:48 GMT  
		Size: 40.5 MB (40526367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d8baa6a1ff26753fd0f753beb6b94f509d6bdd3ec95db4801671e2088db4eb`  
		Last Modified: Tue, 21 Jul 2026 17:01:23 GMT  
		Size: 91.5 MB (91548885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ff44c4cc0cb38f4d1e4ec975611c0b0853960c1aec408b9ebc85ce6ac6f43b`  
		Last Modified: Tue, 21 Jul 2026 17:01:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db148695e02bc8862da28a1722c9649fd80d538f3c00acbbaff6c30e7674df2c`  
		Last Modified: Tue, 21 Jul 2026 17:01:21 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a56b53123af4d6166d81880226248109ac8ca3783664bde505f3d3c0aa6da1a`  
		Last Modified: Tue, 21 Jul 2026 17:11:00 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c21e99f852c891a31adb1c4c408865361f34f01ff641bc5314d82a22e500eec`  
		Last Modified: Tue, 21 Jul 2026 17:11:01 GMT  
		Size: 39.4 MB (39352160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1912f64892aa1ace23d4e537dae6ab6afb2ccb7233b2cb9772ec9e83cbd481`  
		Last Modified: Tue, 21 Jul 2026 17:11:04 GMT  
		Size: 140.6 MB (140596026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3921b40aa61cd72893c037f4a7c02a4701a069c9254e6a7bac5daba819fd188e`  
		Last Modified: Tue, 21 Jul 2026 17:10:59 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:d5773cb8a1d3f971a7f8ba40e1fd21d8429fe03694ff5ca99a21e443d4fb2a2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff38edf66713fc6b9cbdb317cf34ba19335d8260d19c5061b9f8f00c8298b64d`

```dockerfile
```

-	Layers:
	-	`sha256:6ad3ec5d89334840cf89cbcf5106363c1e1ed0de4c8fb1f78be292568c15fd50`  
		Last Modified: Tue, 21 Jul 2026 17:10:59 GMT  
		Size: 7.1 MB (7054879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66eb4ca004b59b00096500f3dbe13e35f1d0a6425c7819eebb306e7306b87ab7`  
		Last Modified: Tue, 21 Jul 2026 17:10:59 GMT  
		Size: 25.2 KB (25230 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-ubi` - linux; ppc64le

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

### `gradle:jdk25-ubi` - unknown; unknown

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

### `gradle:jdk25-ubi` - linux; s390x

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

### `gradle:jdk25-ubi` - unknown; unknown

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
