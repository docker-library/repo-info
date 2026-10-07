## `gradle:jdk25-ubi`

```console
$ docker pull gradle@sha256:bc787808c1cd288bd31719351750d9a2d09636c3b7ae75e997bc89c138d0b446
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
$ docker pull gradle@sha256:ad0aaccdb47d8aa6b8d93dd5d0608a8ba69cf476c0e4271716b390098db2aecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.1 MB (357093114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b61526c9a3821e655d75a7169a8d0c7117f5875440c4a4a70ead5c3d9d1d17`
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
# Tue, 06 Oct 2026 21:55:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:55:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:55:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:55:28 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:55:28 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 06 Oct 2026 21:55:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:55:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:55:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:55:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:55:59 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:08:35 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:08:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:08:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:08:35 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:08:35 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:08:40 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:08:40 GMT
ENV GRADLE_VERSION=9.8.0
# Tue, 06 Oct 2026 22:08:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Tue, 06 Oct 2026 22:08:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:08:43 GMT
USER gradle
# Tue, 06 Oct 2026 22:08:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 06 Oct 2026 22:08:43 GMT
USER root
```

-	Layers:
	-	`sha256:9244a62486f52ea78c7c9bffc8936622a69a982b1ed177ee04ddfae80f9a2f94`  
		Last Modified: Tue, 06 Oct 2026 07:58:50 GMT  
		Size: 35.0 MB (34955692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9301f67786be8013a2d5114f8de8138852310c96a18fc595ca453ac43c0c72`  
		Last Modified: Tue, 06 Oct 2026 21:55:46 GMT  
		Size: 37.9 MB (37859753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8094e22e66e2c7c39a39e1b5390cc59efd6122c4a4912080cbb645f3bc13e9`  
		Last Modified: Tue, 06 Oct 2026 21:56:17 GMT  
		Size: 92.6 MB (92618964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f802c866bf26fdb2bba9d85f846d5c80293e97a4f5ae3b36e2e2343cce67543`  
		Last Modified: Tue, 06 Oct 2026 21:56:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22e8446a030a601a744893f867c5adfcf2d6f13fdef0fcffe511ad827aa0273`  
		Last Modified: Tue, 06 Oct 2026 21:56:15 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da628771f393c9cde0b7b90c243372e23b4cb531707da098426737c5e7439d5`  
		Last Modified: Tue, 06 Oct 2026 22:09:02 GMT  
		Size: 1.6 KB (1590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99cd8bfda8ca3937a206ec289d56eb299e5700652dac9d971bdda7a5664554b4`  
		Last Modified: Tue, 06 Oct 2026 22:09:04 GMT  
		Size: 40.1 MB (40104608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02b85dcfc5e0486a211f31b187faca79e0642c29b47675331d7a644e69b00088`  
		Last Modified: Tue, 06 Oct 2026 22:09:06 GMT  
		Size: 151.5 MB (151524264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab1003c999fce133af149c5072508e87a833e93e304a5f952b9cb6d81a808f0`  
		Last Modified: Tue, 06 Oct 2026 22:09:02 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:3ab575c2b139030e17718a5562e9abda407adf4531551a044dcb5ad714bd0d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7086667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d2181dddb1065f8f14e68660e2dc1a7a7a6cef450891a671d5b60ff33e76f4`

```dockerfile
```

-	Layers:
	-	`sha256:3943ede9e2b3e92f605f543adf84e4ddcc25a740f17ff7b6f3413b14f8da4272`  
		Last Modified: Tue, 06 Oct 2026 22:09:02 GMT  
		Size: 7.1 MB (7061650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:854f9bad630b203eb758bb77531ec8658cdc58375562d0774acbf36f11c4b66a`  
		Last Modified: Tue, 06 Oct 2026 22:09:02 GMT  
		Size: 25.0 KB (25017 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:871bcf97e0e31458374bf1990a0d14aa4ecb956e6b8c8a4b413f657d16f263f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.6 MB (353565259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fc084973e87afdc94143f143a657633dcc7e5f056369e5c27acf7d27db2cad1`
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
# Tue, 06 Oct 2026 21:51:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:51:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:51:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:51:44 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:51:44 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 06 Oct 2026 21:52:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:52:27 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:52:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:52:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:52:27 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:08:28 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:08:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:08:28 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:08:28 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:08:28 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:08:35 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:08:35 GMT
ENV GRADLE_VERSION=9.8.0
# Tue, 06 Oct 2026 22:08:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Tue, 06 Oct 2026 22:08:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:08:38 GMT
USER gradle
# Tue, 06 Oct 2026 22:08:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 06 Oct 2026 22:08:39 GMT
USER root
```

-	Layers:
	-	`sha256:8bbad36d7459a5946aefb1e837706ffa90447344493f010df72763ae29ef2507`  
		Last Modified: Tue, 06 Oct 2026 07:58:54 GMT  
		Size: 33.1 MB (33124268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a41a66587a18b2b09d2f21d5a0f7cbf80d891bb2349bfa1f93aadfee4ec229`  
		Last Modified: Tue, 06 Oct 2026 21:52:12 GMT  
		Size: 37.8 MB (37799847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187bdc258fb7a2804942b86ec75a182e7d43732f36fd65f646877c6a44a2ce7f`  
		Last Modified: Tue, 06 Oct 2026 21:52:45 GMT  
		Size: 91.5 MB (91529564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa55b7d5e5fa070ba49bf0a57a25c044968ca47bf1f7b0b3051c6beaec56d812`  
		Last Modified: Tue, 06 Oct 2026 21:52:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24c21f39369a361efa455d8b2d3a81e42424242af514b33d5ffcad0357b7639`  
		Last Modified: Tue, 06 Oct 2026 21:52:43 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50bcd27ea0b3878d4e6411a35ed76c7ce61276ad6f3347d03f8e79049429cdb4`  
		Last Modified: Tue, 06 Oct 2026 22:08:58 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d946fda179bb6d22a92f7a6821f27dc49b9c3ad59f505bbcc6abc1354d3b40`  
		Last Modified: Tue, 06 Oct 2026 22:09:01 GMT  
		Size: 39.6 MB (39553762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6f109a9f84f7d7ad7d8b4c21c1275ea6bd81131c96cfede11f58330f60e2a8`  
		Last Modified: Tue, 06 Oct 2026 22:09:03 GMT  
		Size: 151.5 MB (151524262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86246fb705b88410e7d486d2d7f32d48aa34e0e4e9610e56954a4cfc457ffc21`  
		Last Modified: Tue, 06 Oct 2026 22:08:59 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:0df9ef3ce4a2a3548cd498a32b5429de334b56fb8c2ac4d06a479de2f666bc94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1781c4449c252f307fda7a9ab5b90da42e7839ac9603a1f6744e99cdee5f1e7`

```dockerfile
```

-	Layers:
	-	`sha256:d367610564a64ecc9f590cee24db3dc4abf6ae37f1da58945597ba9b63c2116b`  
		Last Modified: Tue, 06 Oct 2026 22:08:59 GMT  
		Size: 7.1 MB (7059927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0381f06afb85ae94ffe783603c9868e4391b4d7d4c3cedcadccebe7d3b4b3ed`  
		Last Modified: Tue, 06 Oct 2026 22:08:58 GMT  
		Size: 25.2 KB (25238 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:be3f59e67e044047af135037db7733f041f672c663de98e5c7dc826a54614311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.4 MB (363426857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70963064cd83eba7800a715dd0324c6e0e34145c8ee502ae6c3cf7308a9f700a`
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
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 06 Oct 2026 21:57:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:57:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:57:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:57:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:57:32 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:09:52 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:09:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:09:52 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:09:52 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:09:52 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:10:23 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:10:23 GMT
ENV GRADLE_VERSION=9.8.0
# Tue, 06 Oct 2026 22:10:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Tue, 06 Oct 2026 22:10:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:10:33 GMT
USER gradle
# Tue, 06 Oct 2026 22:10:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 06 Oct 2026 22:10:35 GMT
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
	-	`sha256:732d4afa9fed00567ba6541182a69bde95fe8f1a26f2f39ce5e51e2a7534d214`  
		Last Modified: Tue, 06 Oct 2026 21:58:11 GMT  
		Size: 91.3 MB (91257488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87af423afe645e42b6db96f3af161b3d29b008e3dd88f9d16096c16011d3056b`  
		Last Modified: Tue, 06 Oct 2026 21:58:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b74ab7eca7f423225d2f970051d5efdc0f6efcbd9fce3ebc1fa1d6f3f573f74`  
		Last Modified: Tue, 06 Oct 2026 21:58:09 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:229eaa8b7978b8c7a9a291e217f6f901975fcc9913849779f5757f3db531f624`  
		Last Modified: Tue, 06 Oct 2026 22:11:27 GMT  
		Size: 1.6 KB (1588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c182cc2a31bf34e09b8096ada506390a3d2b47c160ba0bf8190d04c5bac8b262`  
		Last Modified: Tue, 06 Oct 2026 22:11:29 GMT  
		Size: 41.9 MB (41871266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf83b5d15f85cb54edd5144561d94f36acfbd4bc20f1b4a96349860aca63cbe`  
		Last Modified: Tue, 06 Oct 2026 22:11:32 GMT  
		Size: 151.5 MB (151524265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8f893978e116881f4ff9f09540e97e2a3a46f062c011b02dad2df9f7e43990`  
		Last Modified: Tue, 06 Oct 2026 22:11:27 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:8ec1827e9262199385a14e7cdf243a9db23f2effe5f65ccb0248021ee97e1bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7061492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8703c10b333e45e7cfeb9ccd153e24df37afe171ef314c61a79e4843302adaed`

```dockerfile
```

-	Layers:
	-	`sha256:7f62d5618ba6e9cafcb4ac7b922ea81e530e2572a901113a8ca8c2b2f6c9844b`  
		Last Modified: Tue, 06 Oct 2026 22:11:28 GMT  
		Size: 7.0 MB (7036392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6c1d85084e62d665f8066d568380fcdf9066484815efd4eed49b4ff6d976895`  
		Last Modified: Tue, 06 Oct 2026 22:11:27 GMT  
		Size: 25.1 KB (25100 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:975e921701ed711c4db88abefaee26ebc4c8d1812fa9bef4f161a17a608c00c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.3 MB (355286664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483e6c23359ff4cccd08074236fd072e5445b6c301dca525757d7f4798069acf`
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
# Tue, 06 Oct 2026 21:49:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:56 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:56 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 06 Oct 2026 21:52:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64le)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:52:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:52:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:52:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:52:08 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:08:36 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:08:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:08:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:08:36 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:08:36 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:08:39 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:08:39 GMT
ENV GRADLE_VERSION=9.8.0
# Tue, 06 Oct 2026 22:08:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Tue, 06 Oct 2026 22:08:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:08:43 GMT
USER gradle
# Tue, 06 Oct 2026 22:08:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 06 Oct 2026 22:08:43 GMT
USER root
```

-	Layers:
	-	`sha256:42cbc52a670f5b53993e0233ccf7a79e7a946f4215ce8ab80402bf2f86b79986`  
		Last Modified: Tue, 06 Oct 2026 12:22:34 GMT  
		Size: 34.9 MB (34862390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3427043e69b9e9595c6764c342f83066a7dbb55b962934e649cdf7b38fafebb`  
		Last Modified: Tue, 06 Oct 2026 21:50:27 GMT  
		Size: 38.2 MB (38239362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:943e651e62e7bc02f14122243424df3cc784025e06cdfa5aa8dd8a88c0be1fbf`  
		Last Modified: Tue, 06 Oct 2026 21:52:32 GMT  
		Size: 88.4 MB (88423529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0e484ca4f27ef2d06389896a42c0dc7936e7fa1a939020ac8245add16839ca`  
		Last Modified: Tue, 06 Oct 2026 21:52:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd613e136aae67e7cafb21d8ccc5b4c9e46b2d33a39fa25ec8465b73982232b9`  
		Last Modified: Tue, 06 Oct 2026 21:52:30 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecbe77991ca3f124878bf75f34366f1648473189c992731143d73ecf6974d734`  
		Last Modified: Tue, 06 Oct 2026 22:09:07 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dffba872b61964cff29cd6d0dab2f8d1eb06a5e37992c725aa4283cb761f7fa`  
		Last Modified: Tue, 06 Oct 2026 22:09:08 GMT  
		Size: 42.2 MB (42232525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d468dfd015be23e40a79a39cd1a2d718d7e51def8782684580f4b736e78d3f3b`  
		Last Modified: Tue, 06 Oct 2026 22:09:10 GMT  
		Size: 151.5 MB (151524262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c06b844e39b8626c3778a8e8be9cd76a3703d21ae988654b01035595880f3da`  
		Last Modified: Tue, 06 Oct 2026 22:09:07 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:43f168031b7660409571ed0413a23acab9c2218aebb3aa46145bfd76fd948bb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7051874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb9b6354af40ef68a309c4d407cbca37f2f1832ed163d5b4c9d73db5d11ba96`

```dockerfile
```

-	Layers:
	-	`sha256:7fcfac63eee28d7c442c34f676b81b9100c0770b6be2a3a01d0ea5ba893401ad`  
		Last Modified: Tue, 06 Oct 2026 22:09:07 GMT  
		Size: 7.0 MB (7026859 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa298ed30dd81d5d6f4ba4f57e5278639972b6a44d7b0761ac3f3486e618dd0f`  
		Last Modified: Tue, 06 Oct 2026 22:09:07 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
