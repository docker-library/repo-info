## `gradle:jdk27-ubi10`

```console
$ docker pull gradle@sha256:670c59d143916ae206a80a1709b26cf4feaf4fe017d257cd9bb1c20872c94245
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

### `gradle:jdk27-ubi10` - linux; amd64

```console
$ docker pull gradle@sha256:f706f5e1338eb550845bfa3b7f317e66adadc287950c85ff006d334ebd36b316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.1 MB (358090819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b06d136ce18ebb6b1a4a797bac5196db11d42a3d527cf9b2f0352df25dbcdf9`
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
# Fri, 02 Oct 2026 23:44:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:44:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:44:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:44:47 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 02 Oct 2026 23:44:47 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 02 Oct 2026 23:44:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 02 Oct 2026 23:44:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:44:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:44:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:44:54 GMT
CMD ["jshell"]
# Mon, 05 Oct 2026 21:14:50 GMT
CMD ["gradle"]
# Mon, 05 Oct 2026 21:14:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 05 Oct 2026 21:14:50 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 05 Oct 2026 21:14:50 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 05 Oct 2026 21:14:50 GMT
WORKDIR /home/gradle
# Mon, 05 Oct 2026 21:14:55 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 05 Oct 2026 21:14:55 GMT
ENV GRADLE_VERSION=9.8.0
# Mon, 05 Oct 2026 21:14:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Mon, 05 Oct 2026 21:14:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 05 Oct 2026 21:14:57 GMT
USER gradle
# Mon, 05 Oct 2026 21:14:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 05 Oct 2026 21:14:57 GMT
USER root
```

-	Layers:
	-	`sha256:391b2dfdd020c8a0be6ba9e27ed254ed8409bfbb569f3be31217c8d2a65c66a2`  
		Last Modified: Wed, 30 Sep 2026 08:26:27 GMT  
		Size: 35.0 MB (34957293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6345569958af66d0d984b0c511661145aacb25c4c7dab3476b12e72464e9a27`  
		Last Modified: Fri, 02 Oct 2026 23:45:11 GMT  
		Size: 37.9 MB (37865342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8f3d68fe55e89cb43a47a3a514db36e4006c872cd918be8319c3ce51e8de11`  
		Last Modified: Fri, 02 Oct 2026 23:45:12 GMT  
		Size: 93.6 MB (93623625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ccb1c9c64389bf977a5966cb3587f16ee0449ec8644cb52fcf2e7a61a03422`  
		Last Modified: Fri, 02 Oct 2026 23:45:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11efcb7d583dc0c9ef605b5f070473b8a78c3f24989b0f338866baaf966a27a1`  
		Last Modified: Fri, 02 Oct 2026 23:45:10 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a823b1d89b8ede69c8a0b9d0cbb0b4a584d85591c50fc0317065b977262b8464`  
		Last Modified: Mon, 05 Oct 2026 21:15:15 GMT  
		Size: 1.6 KB (1590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ed862a205ca304ef1fbc31c1a96159d2d3f76b2aa81d65895c10db60c7c845`  
		Last Modified: Mon, 05 Oct 2026 21:15:17 GMT  
		Size: 40.1 MB (40090434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87dd206030d534d4b0a3f9b46818b3f89887a1c7e3267f76967090882347a139`  
		Last Modified: Mon, 05 Oct 2026 21:15:19 GMT  
		Size: 151.5 MB (151524292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58f60cc3f4bccde0de46b3699d91f015aa3123fc82e934864ad4ae39e9521fa`  
		Last Modified: Mon, 05 Oct 2026 21:15:15 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:b2a1c29cfdfe995c782c2a6e740598ebe109a8620fb7f9f55e02f44e04d46a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7081698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850f1f88966ac80caed9e188700535c1dc7d02ad9968af7e3517e01b06c41327`

```dockerfile
```

-	Layers:
	-	`sha256:0d417cd4b14eb14ad10d8d98de000e42c685cb0f9d45375685b8e416d5510f45`  
		Last Modified: Mon, 05 Oct 2026 21:15:15 GMT  
		Size: 7.1 MB (7057290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e008f892a525ec7b1d75939f019592c6ae0fee9039f5e94d4985e1b4f7d7e6a`  
		Last Modified: Mon, 05 Oct 2026 21:15:15 GMT  
		Size: 24.4 KB (24408 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:7f609e74f9c8f90e1d38a3f2c62186d7174cf903aff23c5f7fe764d48facd44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.7 MB (354692919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02417960e91ad3154cade3fae0506d2adda206ea5b4c02ecca0aa62b047cf587`
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
# Fri, 02 Oct 2026 23:43:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:43:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:43:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:43:14 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 02 Oct 2026 23:43:14 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 02 Oct 2026 23:43:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 02 Oct 2026 23:43:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:43:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:43:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:43:24 GMT
CMD ["jshell"]
# Mon, 05 Oct 2026 21:14:19 GMT
CMD ["gradle"]
# Mon, 05 Oct 2026 21:14:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 05 Oct 2026 21:14:19 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 05 Oct 2026 21:14:19 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 05 Oct 2026 21:14:19 GMT
WORKDIR /home/gradle
# Mon, 05 Oct 2026 21:14:25 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 05 Oct 2026 21:14:25 GMT
ENV GRADLE_VERSION=9.8.0
# Mon, 05 Oct 2026 21:14:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Mon, 05 Oct 2026 21:14:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 05 Oct 2026 21:14:28 GMT
USER gradle
# Mon, 05 Oct 2026 21:14:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 05 Oct 2026 21:14:29 GMT
USER root
```

-	Layers:
	-	`sha256:9ecd9154d0ac1d3014d65a9a6871a8c0c64a22ac6d5a9235ede1bb14d47cbb9c`  
		Last Modified: Wed, 30 Sep 2026 09:02:01 GMT  
		Size: 33.2 MB (33151204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1306ba6a62edf9f228bcbdfdadc724928780070d224fad11c7de4fbff96816`  
		Last Modified: Fri, 02 Oct 2026 23:43:43 GMT  
		Size: 37.8 MB (37796879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6d3a57f85db5af328308436ff69d41a1b198934f48018d5adfc8e4b8e7e8ef`  
		Last Modified: Fri, 02 Oct 2026 23:43:44 GMT  
		Size: 92.6 MB (92633786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0e5f8c8bf05fad3173ba1cb8f02bdccf8f26c481d43d7514bb57ad6bc81f2f`  
		Last Modified: Fri, 02 Oct 2026 23:43:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6e7d8e9db0d90b40c90a0bae6494d95fba66031fcfa098c3d200ac6eedfd98`  
		Last Modified: Fri, 02 Oct 2026 23:43:41 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:504cc69ae5108da2fdf8c057c07bba79270abdae1c381a0fbfd3b74057054321`  
		Last Modified: Mon, 05 Oct 2026 21:14:49 GMT  
		Size: 1.6 KB (1587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44707eea9d232024a90bd0c085a7ef00c08d694194377b89f9db633768e447b`  
		Last Modified: Mon, 05 Oct 2026 21:14:51 GMT  
		Size: 39.6 MB (39553231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e27c2091b4192e98c5bd6b8b42e3015760204158ea12be72448ded5f366ece`  
		Last Modified: Mon, 05 Oct 2026 21:14:53 GMT  
		Size: 151.5 MB (151524266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f4d581cc94c4aa2b8198e21de161b962d3c46f821f0c7cebe0262816b751e2`  
		Last Modified: Mon, 05 Oct 2026 21:14:49 GMT  
		Size: 29.3 KB (29333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:48e486699c872c9bc78dae6ad47bb411cfce62fabc5bd2c0dc451c5da385a8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290bf2e9b3c817554fdbc985f9676282ec99dc337014f196cd48ab623b995472`

```dockerfile
```

-	Layers:
	-	`sha256:08064690b4665d298d5f4d7cb180a85aa9145ec9b065f57beea6661d0741929f`  
		Last Modified: Mon, 05 Oct 2026 21:14:49 GMT  
		Size: 7.1 MB (7055543 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac93a719594e47e624001ac5f0dea7dc5c185a7741db63455bcfb7e8d7eea5b6`  
		Last Modified: Mon, 05 Oct 2026 21:14:49 GMT  
		Size: 24.6 KB (24606 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:32e08be5382f445907e5024af4c4d493df42f9eaaedea6a51a5f5dc66f0cc84f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.4 MB (364431191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145361894941d60c0edb89934dab0db4ab734b74a34490a8dd60910184804403`
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
ENV JAVA_VERSION=jdk-27+35
# Fri, 02 Oct 2026 23:43:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 02 Oct 2026 23:43:14 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:43:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:43:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:43:14 GMT
CMD ["jshell"]
# Mon, 05 Oct 2026 21:12:35 GMT
CMD ["gradle"]
# Mon, 05 Oct 2026 21:12:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 05 Oct 2026 21:12:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 05 Oct 2026 21:12:35 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 05 Oct 2026 21:12:36 GMT
WORKDIR /home/gradle
# Mon, 05 Oct 2026 21:12:54 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 05 Oct 2026 21:12:54 GMT
ENV GRADLE_VERSION=9.8.0
# Mon, 05 Oct 2026 21:12:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Mon, 05 Oct 2026 21:12:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 05 Oct 2026 21:12:58 GMT
USER gradle
# Mon, 05 Oct 2026 21:13:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 05 Oct 2026 21:13:00 GMT
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
	-	`sha256:2d3bb62be0c3f618183d85190cae071856f40df43ee736ee70805604d6f9e44c`  
		Last Modified: Fri, 02 Oct 2026 23:44:06 GMT  
		Size: 92.3 MB (92257172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8062184eef24de005cbaed9e3da3c7d665624962f27f2efd1112368d39a29d23`  
		Last Modified: Fri, 02 Oct 2026 23:44:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4788a51bf9247576dd2a6b2a79003c5fc76b8558afc790e1ae4bdd77888348f1`  
		Last Modified: Fri, 02 Oct 2026 23:44:03 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b9b85d9b443a5116396f048cbaede4c589b33ad5696da5caf8cb86f732bbb0`  
		Last Modified: Mon, 05 Oct 2026 21:13:42 GMT  
		Size: 1.6 KB (1588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c738b552687e7980361cbd4c4ede21139249a0e7d21eba6331707ecb458a818e`  
		Last Modified: Mon, 05 Oct 2026 21:13:44 GMT  
		Size: 41.9 MB (41874696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836b47b86220b99cd7ee5769cede9f86ad72e111de40c7edb4b0a9d7282ebcff`  
		Last Modified: Mon, 05 Oct 2026 21:13:47 GMT  
		Size: 151.5 MB (151524296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09eb2964a1aca9341f73040cef5b4d98c728b24b23d99243cee718e46a75835`  
		Last Modified: Mon, 05 Oct 2026 21:13:42 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:7fe7e116187b25daf2d591d3d92e8f3dc636fd621bda04bea9c9ea4f93e97b32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7057124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bbe739090378afae44d073639b4436a5cf7b198e7b25452af12517a953c5725`

```dockerfile
```

-	Layers:
	-	`sha256:03cc1fd88878f1aa2b22148dc2369d985e12e3cc0212319833e9352c78a2d066`  
		Last Modified: Mon, 05 Oct 2026 21:13:43 GMT  
		Size: 7.0 MB (7032644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7ed663d37a9bef57d8ba92af0359011025d4b9f7b70e5b315de5f142eac8aad`  
		Last Modified: Mon, 05 Oct 2026 21:13:42 GMT  
		Size: 24.5 KB (24480 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:c1d5f816e82191452162f70cca9571c901c63824deed382f2e54fdfdf0598610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357191100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4534388af574f9961f6f6d3a580d9a3bdb0d77486632e49d52537507959d527`
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
# Wed, 30 Sep 2026 21:00:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 30 Sep 2026 21:00:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:00:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 30 Sep 2026 21:00:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:00:45 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 02 Oct 2026 23:43:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 02 Oct 2026 23:43:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:43:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:43:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:43:03 GMT
CMD ["jshell"]
# Mon, 05 Oct 2026 21:12:31 GMT
CMD ["gradle"]
# Mon, 05 Oct 2026 21:12:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 05 Oct 2026 21:12:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 05 Oct 2026 21:12:31 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 05 Oct 2026 21:12:31 GMT
WORKDIR /home/gradle
# Mon, 05 Oct 2026 21:12:37 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 05 Oct 2026 21:12:37 GMT
ENV GRADLE_VERSION=9.8.0
# Mon, 05 Oct 2026 21:12:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Mon, 05 Oct 2026 21:12:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 05 Oct 2026 21:12:42 GMT
USER gradle
# Mon, 05 Oct 2026 21:12:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 05 Oct 2026 21:12:43 GMT
USER root
```

-	Layers:
	-	`sha256:c8e472d215ec6e7ecaa53e374ca5d7fa6faf9ed3c5d5fcab813c21ff81738edc`  
		Last Modified: Wed, 30 Sep 2026 12:35:33 GMT  
		Size: 34.9 MB (34862430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd65cc573d5695f24d71549e156e7c42c67688260a54aa40de84520472cef00`  
		Last Modified: Wed, 30 Sep 2026 21:01:12 GMT  
		Size: 38.2 MB (38238306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503492608e3f7b160f761c61eb40b661f568fa7d4075b8d49e4402209aea459d`  
		Last Modified: Fri, 02 Oct 2026 23:43:31 GMT  
		Size: 90.3 MB (90325709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facb490ad29da33e39c7834c53e63cfce6c13ccfa4a7c6367da0c2e76d04a40e`  
		Last Modified: Fri, 02 Oct 2026 23:43:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e7905e157e2a38f1fd54fcae0d022809baae729cff59ec74b15899b52dee13`  
		Last Modified: Fri, 02 Oct 2026 23:43:29 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cdbaff1031193c5ef92f8048d7f1db930840d9cfa22750e15a305e65f5df03`  
		Last Modified: Mon, 05 Oct 2026 21:13:09 GMT  
		Size: 1.6 KB (1592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768ce4062919dcce1965d07a9d3a07ae4b9cbf930d1dd4db1064a6725a0fbcc6`  
		Last Modified: Mon, 05 Oct 2026 21:13:11 GMT  
		Size: 42.2 MB (42235785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c90ac3cda9778922298c2399c8fa73cff76a6e1417a60223c077c5058858d136`  
		Last Modified: Mon, 05 Oct 2026 21:13:12 GMT  
		Size: 151.5 MB (151524267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67886a2dfe89c3c6e7de6c9f7b126e55ade4ec77a3ddf2f45fbad7f0fb2bf0bf`  
		Last Modified: Mon, 05 Oct 2026 21:13:09 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:b78da123f68a058d1833b61918711e4fb587d75c50dad82f8cb575bc1bf6e9a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7047530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523c133ea6f8fbf96bbc394129e59848a3123cdff9fec4a4122309ac12035f65`

```dockerfile
```

-	Layers:
	-	`sha256:e4040766222070af7a7e45a539c61ed7ad6c4b6c45601a504e838c547e371a25`  
		Last Modified: Mon, 05 Oct 2026 21:13:09 GMT  
		Size: 7.0 MB (7023123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15c4b4b3370485e6032efc2dea771741735bdb5a6874c46d2c55cd5d67bc0e98`  
		Last Modified: Mon, 05 Oct 2026 21:13:09 GMT  
		Size: 24.4 KB (24407 bytes)  
		MIME: application/vnd.in-toto+json
