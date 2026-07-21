## `gradle:9-jdk26-ubi10`

```console
$ docker pull gradle@sha256:f250dcc757330c60e186ea11c9888189a211e3d6e6c7d1c8f7729a8ee2d650ff
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

### `gradle:9-jdk26-ubi10` - linux; amd64

```console
$ docker pull gradle@sha256:8616b20618109fec1efa8acf206ee662897ef83fb5dd68e471ac07fd5d5a4967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.1 MB (351130128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7dd37d61f10eb6f1d19c471c14ce640aca632ef128b1273e409059f1b7410c`
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
# Tue, 21 Jul 2026 17:04:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 17:04:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:04:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 17:04:09 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:04:09 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 21 Jul 2026 17:06:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 17:06:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 17:06:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 17:06:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 17:06:23 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:20:00 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:20:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:20:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:20:00 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:20:00 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:20:04 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:20:04 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 21 Jul 2026 17:20:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 21 Jul 2026 17:20:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:20:06 GMT
USER gradle
# Tue, 21 Jul 2026 17:20:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:20:06 GMT
USER root
```

-	Layers:
	-	`sha256:9c35cef7c7f5d6e8530d291b7ae98db7bafbd6acb32807d414a20ba1412b4cee`  
		Last Modified: Mon, 20 Jul 2026 21:46:40 GMT  
		Size: 34.9 MB (34879050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1505b30806c77ab9cf2a64cbc383a2257b35b0b2b94a1cb42ea9aff6b3b671`  
		Last Modified: Tue, 21 Jul 2026 17:04:35 GMT  
		Size: 41.2 MB (41220162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9907afd3b20a9703c1b5da1c4ef454b7dc315d73cae456c6673bddff9a039c`  
		Last Modified: Tue, 21 Jul 2026 17:06:42 GMT  
		Size: 94.5 MB (94525410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa68356302bb079d6486bfad0b9cf323febcaaa0f90150a287131f43ac9a4c7`  
		Last Modified: Tue, 21 Jul 2026 17:06:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da530997c52acc65766f72e5d74552cba3f54b8949feab6cb67df7bf9c2be349`  
		Last Modified: Tue, 21 Jul 2026 17:06:40 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b885d1b576d5f9ae4e074e8fc0c7d252fd687c0cc52f7e664dde6ae66cc058c`  
		Last Modified: Tue, 21 Jul 2026 17:20:27 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a1f62d00f47afd92dc0da706d614ff2e1da0aee348892bd1814d694eaea582`  
		Last Modified: Tue, 21 Jul 2026 17:20:29 GMT  
		Size: 39.9 MB (39879652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720a3cdccb09d19916660e88387aa1e9a758579bb789d8a4df9735f116fb062b`  
		Last Modified: Tue, 21 Jul 2026 17:20:31 GMT  
		Size: 140.6 MB (140596025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2388289a2ee4fb2675a922163974a1056c93c4b089128f643e3bcc6dc4dc1a`  
		Last Modified: Tue, 21 Jul 2026 17:20:28 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:8a39f5cd6f72733ac41df95cfd78401e02a1ffb1e77689a1693718de0c1e8f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7077932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713991170affc5f532597d59dad5a3e49ffeb84bafc82e15f1ef480770fb4db8`

```dockerfile
```

-	Layers:
	-	`sha256:0ab3a5c81ee18be57ca4c4fd438c52a6c62011c0806295bafc9d3764aca94aa4`  
		Last Modified: Tue, 21 Jul 2026 17:20:26 GMT  
		Size: 7.1 MB (7053511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e48f7d5c4deedd1371e0aa24fee1f08fbf311d2d7a15cc682200a5800b6c011`  
		Last Modified: Tue, 21 Jul 2026 17:20:25 GMT  
		Size: 24.4 KB (24421 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk26-ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ffb9c7a116610681c1cf946e03184617abd44d8cf2e011684e066a2310ae44c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.1 MB (347052304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d08f2476917718a0195cffa8e78dfb9180ce5aab818e5e27ebdeecc9735832`
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
# Tue, 21 Jul 2026 17:00:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 17:00:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:00:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 17:00:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:00:02 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 21 Jul 2026 17:01:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 17:01:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 17:01:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 17:01:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 17:01:26 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:10:54 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:10:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:10:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:10:54 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:10:54 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:10:58 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:10:58 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 21 Jul 2026 17:10:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 21 Jul 2026 17:11:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:11:01 GMT
USER gradle
# Tue, 21 Jul 2026 17:11:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:11:01 GMT
USER root
```

-	Layers:
	-	`sha256:9e87f0b05623e42064eff2c03f371c8ad59cb9096807807d8d149c97eb66a9e5`  
		Last Modified: Mon, 20 Jul 2026 21:53:27 GMT  
		Size: 33.0 MB (33038839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dbd2ea5b04b63f67e9ddac84c8a50d6f34f192f77c6dd2498fa69a1bd97dcd`  
		Last Modified: Tue, 21 Jul 2026 17:00:19 GMT  
		Size: 40.5 MB (40526521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74403e0a437bb291f1e026da403a0df95f6a3c263cf427261eae3da13baeedb`  
		Last Modified: Tue, 21 Jul 2026 17:01:45 GMT  
		Size: 93.5 MB (93505247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ae3d7018c256fe305bb7ee0acb7a0e1a39c792444ebe58e13fcab66784e2a5`  
		Last Modified: Tue, 21 Jul 2026 17:01:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2866631a17cb1ea4df1f08274796477c286bfd643936c158bba9a33c4abbb73d`  
		Last Modified: Tue, 21 Jul 2026 17:01:43 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a32e257d98f9841c914af58f5397e70cc0b4ce67139bee9694456bb1f9297b2`  
		Last Modified: Tue, 21 Jul 2026 17:11:21 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e65179e8f437c1db60e1687ea5c77638caa32493b781db04e0fd466a708e4bc`  
		Last Modified: Tue, 21 Jul 2026 17:11:22 GMT  
		Size: 39.4 MB (39352140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018c1e071445cdfa09b2c68bc9e44561526ce777e98d7bd32697a7b02aff4f17`  
		Last Modified: Tue, 21 Jul 2026 17:11:25 GMT  
		Size: 140.6 MB (140596009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907193f37534a36929c0544269ebb24a395c536e0bd7fc7d1dc3a6b7c85321a5`  
		Last Modified: Tue, 21 Jul 2026 17:11:21 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:397be8bde984bd0f157ac5b30a007efb4ca565c567562c6c4d3db5665b10ec1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7076382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6881fe821e164356a6c80de505e23a93b4d01f1def922a5d1404dce1e5e75ab8`

```dockerfile
```

-	Layers:
	-	`sha256:91da233bede86561e7ceeaf65dc43d96bba8f64314ec8f4bcc8e41cd90c48c1c`  
		Last Modified: Tue, 21 Jul 2026 17:11:21 GMT  
		Size: 7.1 MB (7051764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:497958ea4e155b14ebb03050c201db4dcc2487374f8d73c890a1c405ee9e8921`  
		Last Modified: Tue, 21 Jul 2026 17:11:21 GMT  
		Size: 24.6 KB (24618 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk26-ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:702b96ef11e74b33e863000fedf991def844e63e6659ab93fcd4ed889ff12272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.6 MB (359617703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bfb0315e1cce14f12be25fa9e23e5a781d13cdc2c30a05c89e46011bf9f46a`
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
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 21 Jul 2026 17:01:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 17:01:29 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 17:01:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 17:01:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 17:01:30 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:11:33 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:11:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:11:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:11:33 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:11:34 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:11:47 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:11:47 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 21 Jul 2026 17:11:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 21 Jul 2026 17:11:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:11:51 GMT
USER gradle
# Tue, 21 Jul 2026 17:11:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:11:53 GMT
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
	-	`sha256:27a0756822d9b4f4d394cc609209422e2182ae46b4b6ff4bd3aafc28b5d52573`  
		Last Modified: Tue, 21 Jul 2026 17:02:07 GMT  
		Size: 93.9 MB (93902369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b188a5c88b658aa4ddfed3c12ef42b63e81e08af836a18e27323e9e261f8a6f3`  
		Last Modified: Tue, 21 Jul 2026 17:02:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94a9a246dcada0d86da8909621e0582c0484cf91c50c03d21c1f609b28cd5939`  
		Last Modified: Tue, 21 Jul 2026 17:02:04 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00c57e9f0e8f33f068a074dc180496993a8699dd426dd7f2bc2127dec17e0ae`  
		Last Modified: Tue, 21 Jul 2026 17:12:30 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29e7c04ed00af00a1d8bd13ac6ca2e3dde24eb4bb72a7777dc62727d4f3f48e`  
		Last Modified: Tue, 21 Jul 2026 17:12:33 GMT  
		Size: 41.7 MB (41652015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3529fe79edc7988adeff2cf793515a9fd3a8f15797ecf0ed2f7b64e6308bfcea`  
		Last Modified: Tue, 21 Jul 2026 17:12:35 GMT  
		Size: 140.6 MB (140596027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcfa8c652502c6015d00f5fdb477cb839f007f2f8b0a7c29ba381fbe59f24d17`  
		Last Modified: Tue, 21 Jul 2026 17:12:31 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:e711dab81e240c080b339733b5705b797686116bd42738db6a4f9bed87929e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7053358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7992b30432c1653af2a50184cdeaa7f3cadcfcf24cfbffa6fa4b3209d03d2488`

```dockerfile
```

-	Layers:
	-	`sha256:b337235dfdd34388caf327cc95f46ab606269b081ab374e599e3bd4ae46d0d40`  
		Last Modified: Tue, 21 Jul 2026 17:12:31 GMT  
		Size: 7.0 MB (7028865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03d32a5a7c3758e5d62904eb1223e1b419cf908bb26e2470afc3e3d874c8f6ba`  
		Last Modified: Tue, 21 Jul 2026 17:12:30 GMT  
		Size: 24.5 KB (24493 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk26-ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:c0a90238956441d90b83c338877164a34aaeb9f47c8520cf88e43fddb48f333e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.9 MB (348944577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33013b6a63aae6023db667d0faf505ae99aa38080af7f941f9021757850b5469`
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
# Tue, 21 Jul 2026 16:50:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 16:50:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:50:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 16:50:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 16:50:45 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 21 Jul 2026 16:53:11 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 16:53:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 16:53:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 16:53:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 16:53:12 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:01:40 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:01:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:01:40 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:01:40 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:01:40 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:01:46 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:01:46 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 21 Jul 2026 17:01:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 21 Jul 2026 17:01:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:01:50 GMT
USER gradle
# Tue, 21 Jul 2026 17:01:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:01:51 GMT
USER root
```

-	Layers:
	-	`sha256:8f200b9c901c53267e3af6f18a54f6038f0d14c580dd6d30d165b125119c4f1c`  
		Last Modified: Tue, 21 Jul 2026 00:15:45 GMT  
		Size: 34.7 MB (34728302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a581042499eab8591b8021f3b12224945d11b30dd5e281c41189ce74b0905b`  
		Last Modified: Tue, 21 Jul 2026 16:51:16 GMT  
		Size: 41.1 MB (41074850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd9e75b20ca0db95c3066420fc01aff2009a0d09a60a2a8caf18579e2cad67a`  
		Last Modified: Tue, 21 Jul 2026 16:53:38 GMT  
		Size: 90.5 MB (90537369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7c9949271b87b9253429399162f465a883ea1518a687e11536b05d0d9ed4ed`  
		Last Modified: Tue, 21 Jul 2026 16:53:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c4f3645657533af402d4aaab7344db085b9815bfe47dca12cf4462b45100b4`  
		Last Modified: Tue, 21 Jul 2026 16:53:37 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04b8a80d47bc27a36282ed15f7af735814b32142bcf528ade7871ba9907e3a45`  
		Last Modified: Tue, 21 Jul 2026 17:02:21 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f271aa1daa30c0e9cbb0c8fe86fe6d91b1a46ce4e366a4824e04804faca2206e`  
		Last Modified: Tue, 21 Jul 2026 17:02:23 GMT  
		Size: 42.0 MB (42003491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3e1e179d134ee37e4cb285efa7a4022aa9219fbdff26b238a8836bf0cf5d66`  
		Last Modified: Tue, 21 Jul 2026 17:02:25 GMT  
		Size: 140.6 MB (140595977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e731bfdf3ce43664cb7f4eca06620e726bf49b1d64b1738e7e3aa7dd2f863b4`  
		Last Modified: Tue, 21 Jul 2026 17:02:21 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:8ca2be254b37cf9995b23ff75857bd18636083c99e2f63b5ba9cd0353a39e658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7043763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926cc4483e9e4538a54d8dcc579dede5c4449f5971d02672c6689940d70d3200`

```dockerfile
```

-	Layers:
	-	`sha256:74de872c483a127fe3d7e7849d4a92febead1507df513d0e77a1562bee6de268`  
		Last Modified: Tue, 21 Jul 2026 17:02:21 GMT  
		Size: 7.0 MB (7019344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dfa9d886dd0f37c2a318e5d183f68effa343c8cf79daf5559d52a441113c521`  
		Last Modified: Tue, 21 Jul 2026 17:02:21 GMT  
		Size: 24.4 KB (24419 bytes)  
		MIME: application/vnd.in-toto+json
