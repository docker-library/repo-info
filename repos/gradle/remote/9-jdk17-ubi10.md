## `gradle:9-jdk17-ubi10`

```console
$ docker pull gradle@sha256:ee8e25905aa96b878cda215651a1c7466b714b0987e6406ead74c12df46d946e
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

### `gradle:9-jdk17-ubi10` - linux; amd64

```console
$ docker pull gradle@sha256:d391b5849eb77755ee2eb43bcbbda535e6760a3e1a2fc31170343d002f219f02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.3 MB (410311974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3e8a53dd53bbabf5b39d2e50413d7cf486a03503292fe0784bcc805e377eb06`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 08 Oct 2026 07:29:44 GMT
ENV container oci
# Thu, 08 Oct 2026 07:29:45 GMT
COPY dir:ddc630cb027274e98af97a1af6083c7b263b7cb019f3df1cfe8e4c98672cda82 in /      
# Thu, 08 Oct 2026 07:29:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:29:45 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:29:45 GMT
COPY dir:1fa5b8bc3bea37c9dd5b7f56283b2a920b53a13a06588e0df1136508b541f21f in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:29:45 GMT
COPY dir:1fa5b8bc3bea37c9dd5b7f56283b2a920b53a13a06588e0df1136508b541f21f in /root/buildinfo/      
# Thu, 08 Oct 2026 07:29:45 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:29:25Z" "org.opencontainers.image.revision"="15b051dbd9dfffc387e455857eb5a01665969eb9" "build-date"="2026-10-08T07:29:25Z" "architecture"="x86_64" "vcs-ref"="15b051dbd9dfffc387e455857eb5a01665969eb9" "vcs-type"="git" "release"="1791444377"org.opencontainers.image.created=2026-10-08T07:29:25Z,org.opencontainers.image.revision=15b051dbd9dfffc387e455857eb5a01665969eb9
# Thu, 08 Oct 2026 21:53:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 08 Oct 2026 21:53:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 21:53:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 08 Oct 2026 21:53:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 08 Oct 2026 21:53:17 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Thu, 08 Oct 2026 21:53:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 08 Oct 2026 21:53:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 08 Oct 2026 21:53:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 08 Oct 2026 21:53:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 08 Oct 2026 21:53:24 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 22:11:10 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 22:11:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 22:11:10 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 22:11:10 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 22:11:10 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 22:11:15 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 22:11:15 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 22:11:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 22:11:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 22:11:18 GMT
USER gradle
# Thu, 08 Oct 2026 22:11:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 22:11:19 GMT
USER root
```

-	Layers:
	-	`sha256:710627c3bbd291aa98b69cb89112ad2293928540481a1386e0ff674eb782c88c`  
		Last Modified: Thu, 08 Oct 2026 08:18:51 GMT  
		Size: 34.9 MB (34937054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f222dd4480961c5170564a9d12b872bed1c65a614a1b532c6f69ed65ee9e6e1b`  
		Last Modified: Thu, 08 Oct 2026 21:53:43 GMT  
		Size: 37.9 MB (37877151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97dab69f7f325fd3451167ed28b442a068aced5b03f88dc9ce0d7a40ce26ba6c`  
		Last Modified: Thu, 08 Oct 2026 21:53:45 GMT  
		Size: 145.8 MB (145832725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caab4157b3dcf01499269a34a8d610e478cc5bce7abcda1523fcf0e44543dba5`  
		Last Modified: Thu, 08 Oct 2026 21:53:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e1320a30ef7b213c2cf2288f642e060f4d881f7046ade9c8386069856ff73f`  
		Last Modified: Thu, 08 Oct 2026 21:53:41 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bdcda1c4c6aaf8eb53373e08884b2d7788c5325ae8bc2dbce8101f0c23a3b3`  
		Last Modified: Thu, 08 Oct 2026 22:11:36 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2749b1b73b7a1644a4251b08c588a63e8e558247473c6952ee8fcbaae6393b0e`  
		Last Modified: Thu, 08 Oct 2026 22:11:38 GMT  
		Size: 40.1 MB (40101602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd0763f854f4cd85ae4d55c68e7876eaa87f3ba79b9638bde83b8e35801676e0`  
		Last Modified: Thu, 08 Oct 2026 22:11:41 GMT  
		Size: 151.5 MB (151533616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c288998d98b426264251d3e910462e8ce1c309458c0fedcdbfc939e647c6802`  
		Last Modified: Thu, 08 Oct 2026 22:11:36 GMT  
		Size: 25.6 KB (25610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:64750fd8ef67022f6a1b304e486f993fd7ca17a9b28f7800d519cb32522f9ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7118133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4d8e6d74e0992b4be5944c2cc12bb1ac220f0a190a8c8a59fb913cf3d62922`

```dockerfile
```

-	Layers:
	-	`sha256:45cda3c471fd2d3dc72cac2d23f9e15273e1d822423369d9e3b18e6e0e009e82`  
		Last Modified: Thu, 08 Oct 2026 22:11:36 GMT  
		Size: 7.1 MB (7093674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e1a4a1db264516d05d1419e747e9d61ce2e49272a402a9fa3743893881f10ca`  
		Last Modified: Thu, 08 Oct 2026 22:11:36 GMT  
		Size: 24.5 KB (24459 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:19076e9ebaf06277e1eca6beb506ef8ee53ed09c12bba31decd7df3e123a6ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.7 MB (406721110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8d8d08ca197ac1db7efcc1d0ae2e71d81aad9ce2e6c5538175a8949b96b9fa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 08 Oct 2026 07:31:33 GMT
ENV container oci
# Thu, 08 Oct 2026 07:31:34 GMT
COPY dir:3b693ee56c8e02a0c8e6ed8f8171cc2234846abd348b9639ea706b42112670bc in /      
# Thu, 08 Oct 2026 07:31:34 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:31:34 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:31:34 GMT
COPY dir:680f884ce4f44b383a8b4383e602fd99d7e00d1f627ba9ceb02434c83b3c1cb0 in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:31:34 GMT
COPY dir:680f884ce4f44b383a8b4383e602fd99d7e00d1f627ba9ceb02434c83b3c1cb0 in /root/buildinfo/      
# Thu, 08 Oct 2026 07:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:31:12Z" "org.opencontainers.image.revision"="15b051dbd9dfffc387e455857eb5a01665969eb9" "build-date"="2026-10-08T07:31:12Z" "architecture"="aarch64" "vcs-ref"="15b051dbd9dfffc387e455857eb5a01665969eb9" "vcs-type"="git" "release"="1791444377"org.opencontainers.image.created=2026-10-08T07:31:12Z,org.opencontainers.image.revision=15b051dbd9dfffc387e455857eb5a01665969eb9
# Thu, 08 Oct 2026 22:45:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 08 Oct 2026 22:45:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 22:45:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 08 Oct 2026 22:45:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 08 Oct 2026 22:45:13 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Thu, 08 Oct 2026 22:45:19 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 08 Oct 2026 22:45:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 08 Oct 2026 22:45:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 08 Oct 2026 22:45:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 08 Oct 2026 22:45:21 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 23:41:09 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 23:41:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 23:41:09 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 23:41:09 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 23:41:09 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 23:41:14 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 23:41:14 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 23:41:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 23:41:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 23:41:17 GMT
USER gradle
# Thu, 08 Oct 2026 23:41:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 23:41:18 GMT
USER root
```

-	Layers:
	-	`sha256:8b2c25e4bec99a21d5c99e83343d0b1d76d3c026b29b0092e0f6b68de46679a2`  
		Last Modified: Thu, 08 Oct 2026 08:20:50 GMT  
		Size: 33.1 MB (33126510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e97a1cff1b6e3fa1cbaec69244d14c6dc7bb7b1c599b9638a276deb1c2785a`  
		Last Modified: Thu, 08 Oct 2026 22:45:39 GMT  
		Size: 37.8 MB (37825255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e555bab6671d0da1b882eac091a3bc07948895c82437e09b2f1036dc3c5ab`  
		Last Modified: Thu, 08 Oct 2026 22:45:41 GMT  
		Size: 144.7 MB (144652015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b0d2e71b52a2b3b3abf3cbaf43de5e3412fe97192e5676ad7cb3da800c4885`  
		Last Modified: Thu, 08 Oct 2026 22:45:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c351d94f9e0833f517e88c39af57dc5f8ab071e3db6bc66c41eb6d333978fc10`  
		Last Modified: Thu, 08 Oct 2026 22:45:38 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1020a787553c303d3d8d14bf8c91a4e7b2ce9f10820b86491651f6d595f601a0`  
		Last Modified: Thu, 08 Oct 2026 23:41:38 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9690b9db49ee947beb79f2eae18ac0807a06ca41dddeff4e803eac24623781a4`  
		Last Modified: Thu, 08 Oct 2026 23:41:40 GMT  
		Size: 39.6 MB (39550162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b2bad3ea834b951c9706c9ee46ffecbc24759f10b15172af772038b3a01b21`  
		Last Modified: Thu, 08 Oct 2026 23:41:42 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1398d4da7fe4e7424501b4c625834a9f04384c85695eb1a596b856d2bc979`  
		Last Modified: Thu, 08 Oct 2026 23:41:38 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:d1157b1f011e5283183760b73773a85ececb13c4987f71912fbb2e4b07e648dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7116586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ede350be79a5bcf308a84e755bc64137f9ba78e5f955c98faac7bf75c44b150`

```dockerfile
```

-	Layers:
	-	`sha256:d6369dfb5b660a151c7588f54f0c37590aeef642762dfca8b4b07a8f156d8edb`  
		Last Modified: Thu, 08 Oct 2026 23:41:38 GMT  
		Size: 7.1 MB (7091930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39e382e2291333cb57ee9bb8069a900b3b30fa35c0523a4bb849ace984410202`  
		Last Modified: Thu, 08 Oct 2026 23:41:38 GMT  
		Size: 24.7 KB (24656 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:419920e0987bec8970af3746248a8fbdba331f0deab3395b29506ccdccfbf838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.9 MB (417860891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944fd4b0fba7eb1378dd605dacdeb2d275d11df98fa399dd0d6e8d87ed96df1b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 08 Oct 2026 07:36:40 GMT
ENV container oci
# Thu, 08 Oct 2026 07:36:40 GMT
COPY dir:388f591eac105a4440fdce238f0ad736ed3b491450d48baf032edf518479d515 in /      
# Thu, 08 Oct 2026 07:36:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:36:40 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:36:40 GMT
COPY dir:5ad892eb87479bd4b3c99be2ca7f61e3602e21f09d90f472444a46d544881207 in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:36:40 GMT
COPY dir:5ad892eb87479bd4b3c99be2ca7f61e3602e21f09d90f472444a46d544881207 in /root/buildinfo/      
# Thu, 08 Oct 2026 07:36:41 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:36:23Z" "org.opencontainers.image.revision"="15b051dbd9dfffc387e455857eb5a01665969eb9" "build-date"="2026-10-08T07:36:23Z" "architecture"="ppc64le" "vcs-ref"="15b051dbd9dfffc387e455857eb5a01665969eb9" "vcs-type"="git" "release"="1791444377"org.opencontainers.image.created=2026-10-08T07:36:23Z,org.opencontainers.image.revision=15b051dbd9dfffc387e455857eb5a01665969eb9
# Thu, 08 Oct 2026 21:54:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 08 Oct 2026 21:54:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 21:54:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 08 Oct 2026 21:54:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 08 Oct 2026 21:54:13 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Thu, 08 Oct 2026 21:56:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 08 Oct 2026 21:56:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 08 Oct 2026 21:56:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 08 Oct 2026 21:56:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 08 Oct 2026 21:56:42 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 22:12:47 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 22:12:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 22:12:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 22:12:47 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 22:12:48 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 22:13:04 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 22:13:04 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 22:13:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 22:13:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 22:13:24 GMT
USER gradle
# Thu, 08 Oct 2026 22:13:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 22:13:29 GMT
USER root
```

-	Layers:
	-	`sha256:64c368eb978920b7af84152d3940ec25758b46a3457852eccedf5de2484cd15f`  
		Last Modified: Thu, 08 Oct 2026 12:22:44 GMT  
		Size: 39.1 MB (39110445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb83c38091915b22657b2f2847166260cc37cfb4c40a0f8997adc9a1bd699ae2`  
		Last Modified: Thu, 08 Oct 2026 21:55:01 GMT  
		Size: 39.7 MB (39650943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a08e7257b9d708762444689f4856034faabf0898ca7d090965c517c20fa416ac`  
		Last Modified: Thu, 08 Oct 2026 21:57:35 GMT  
		Size: 145.7 MB (145687561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2980a568b464ffec272311a026ddd893983fcc3b5d441dde3093a7bea8bf856e`  
		Last Modified: Thu, 08 Oct 2026 21:57:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8176b7591d31f3d3dc5651ee347cc52a0b9edc2ccc3c4557d7d436d4159c12c`  
		Last Modified: Thu, 08 Oct 2026 21:57:31 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b9ebe74e9eee36087be7acfb341d809c410f110f6bdb75e8545a689e1dc0bf`  
		Last Modified: Thu, 08 Oct 2026 22:14:55 GMT  
		Size: 1.6 KB (1588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3421fecb68dc640287824e28d0e7e15ef1bb5d2803d39cdeeb9c2378025d7b`  
		Last Modified: Thu, 08 Oct 2026 22:14:57 GMT  
		Size: 41.9 MB (41873727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123d28618d285dad4250a7ef5f5a5721897228622ed4696b3654fc49318f8520`  
		Last Modified: Thu, 08 Oct 2026 22:14:59 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b25d0dc96ffe6009d61178c8665902a13110d028d97d204538b914c023667df3`  
		Last Modified: Thu, 08 Oct 2026 22:14:55 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:85cb4ae34c56304ddd4c0dce8cb42128afbba3d95d55b4477fbde56fb6b48eda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7109623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faebdbf57db9936bfda28409dfd5c5db11555074b026bbd3429375044a6d5cfb`

```dockerfile
```

-	Layers:
	-	`sha256:23e37d351fbba36bec9c658a52bbca0fdacdfac6c5d85662a1212008e4c951d4`  
		Last Modified: Thu, 08 Oct 2026 22:14:55 GMT  
		Size: 7.1 MB (7085092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2c26f85021a6ac410c0b34bafc605cc10e53bee7a99adba7af1abdc93ab3bfc`  
		Last Modified: Thu, 08 Oct 2026 22:14:55 GMT  
		Size: 24.5 KB (24531 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:ca1ff34cc895400eaa4a2ae29086b9e6473fae5ee01bec534211c34451c96838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.7 MB (402700686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ad78672215bac7c1fd95de860bdb28f73cfcf244554796e8bc87c419f1f1d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 08 Oct 2026 07:38:49 GMT
ENV container oci
# Thu, 08 Oct 2026 07:38:49 GMT
COPY dir:2185e09a553c6a0e7730da84252854ea804b5de5f96680b868cbbe1579c38c18 in /      
# Thu, 08 Oct 2026 07:38:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:38:50 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:38:50 GMT
COPY dir:42bdc584280eebd24bad4f1889eac720868389fd49bdf4aff0f8c3f4fbc0f34b in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:38:50 GMT
COPY dir:42bdc584280eebd24bad4f1889eac720868389fd49bdf4aff0f8c3f4fbc0f34b in /root/buildinfo/      
# Thu, 08 Oct 2026 07:38:50 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:37:24Z" "org.opencontainers.image.revision"="15b051dbd9dfffc387e455857eb5a01665969eb9" "build-date"="2026-10-08T07:37:24Z" "architecture"="s390x" "vcs-ref"="15b051dbd9dfffc387e455857eb5a01665969eb9" "vcs-type"="git" "release"="1791444377"org.opencontainers.image.created=2026-10-08T07:37:24Z,org.opencontainers.image.revision=15b051dbd9dfffc387e455857eb5a01665969eb9
# Thu, 08 Oct 2026 21:51:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 08 Oct 2026 21:51:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 21:51:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 08 Oct 2026 21:51:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 08 Oct 2026 21:51:02 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Thu, 08 Oct 2026 21:51:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 08 Oct 2026 21:51:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 08 Oct 2026 21:51:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 08 Oct 2026 21:51:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 08 Oct 2026 21:51:08 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 22:08:53 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 22:08:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 22:08:53 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 22:08:53 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 22:08:53 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 22:09:02 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 22:09:02 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 22:09:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 22:09:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 22:09:06 GMT
USER gradle
# Thu, 08 Oct 2026 22:09:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 22:09:06 GMT
USER root
```

-	Layers:
	-	`sha256:153dd3294949a84a2e9eb09a5b4df7d9084a22632384e0b1cdfc24de2db74211`  
		Last Modified: Thu, 08 Oct 2026 12:22:39 GMT  
		Size: 34.8 MB (34799545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8abdca31a627841462bcc621c55c8d282c97eebc47dcfa4eb946fdede87fe017`  
		Last Modified: Thu, 08 Oct 2026 21:51:24 GMT  
		Size: 38.3 MB (38259930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7a2adf0def04bf5ad0d30dfce6ef99104f36eedbe19d0a6c00df1859de7f51`  
		Last Modified: Thu, 08 Oct 2026 21:51:32 GMT  
		Size: 135.9 MB (135878861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6fab9e81d1e9f97f2df9ad0bb27ccb6177fb30711871452ffb7b7a569be8f64`  
		Last Modified: Thu, 08 Oct 2026 21:51:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3483ad39124c8c17f2af13b44c75d6ff0dbb2378e266b212d87ee1736dcb41d2`  
		Last Modified: Thu, 08 Oct 2026 21:51:29 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d39b23f28e482ecc5101c569698ca91f54609bc541c244477419e5c35017996`  
		Last Modified: Thu, 08 Oct 2026 22:09:30 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081192263ae19aaf23828778b87b80a985cf3d44f69c0448a190be6a098912ce`  
		Last Modified: Thu, 08 Oct 2026 22:09:35 GMT  
		Size: 42.2 MB (42224150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5d769bd2a7bde52cb4ff9ae7ec2b03024574889ad72621f5060c61cd782c7d`  
		Last Modified: Thu, 08 Oct 2026 22:09:38 GMT  
		Size: 151.5 MB (151533609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1595b575995bbd68c3ce0a096063eddc3cdca244dbeba39e4c66b23fc4669e9`  
		Last Modified: Thu, 08 Oct 2026 22:09:33 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:65c072efc943cdfc8caeeda331ee2d90893f8a33021a5fe2f8037fbccbb6b8b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7098776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6bb4c94c83e63aff188fdc77b647c4fced9054684d22467950c80cf8b8afbe`

```dockerfile
```

-	Layers:
	-	`sha256:ee57bbd58c7084230d60a1a2cec054c4ae803604b836f986b3f2127e3c65b6a7`  
		Last Modified: Thu, 08 Oct 2026 22:09:33 GMT  
		Size: 7.1 MB (7074321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c5d6eb8390ffacc15793d978c99c9f1cd30a102681e6fbb9b47abeaef3b23b2`  
		Last Modified: Thu, 08 Oct 2026 22:09:32 GMT  
		Size: 24.5 KB (24455 bytes)  
		MIME: application/vnd.in-toto+json
