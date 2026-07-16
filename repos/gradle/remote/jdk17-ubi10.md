## `gradle:jdk17-ubi10`

```console
$ docker pull gradle@sha256:7114bf72e88644f3464b769f8f7a8cdd0c255b70846ca9dea3566b803714d93c
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

### `gradle:jdk17-ubi10` - linux; amd64

```console
$ docker pull gradle@sha256:ab4de68ac08a9c3a5b3232b9db3aa1d26a4337731064d9b5f3470965c28769eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.1 MB (399088789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79aa8ba5684755ff92ad320f9851647d19235310087d899bb8d1acd58a878e9f`
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
# Thu, 16 Jul 2026 00:21:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:21:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:21:54 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:21:54 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Thu, 16 Jul 2026 00:22:01 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:22:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:22:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:22:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:22:02 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:13:55 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:13:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:13:55 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:13:55 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:13:55 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:13:59 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:13:59 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:13:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:14:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:14:01 GMT
USER gradle
# Thu, 16 Jul 2026 01:14:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:14:02 GMT
USER root
```

-	Layers:
	-	`sha256:c7288023ded975bbfebf94654b2abd0529e40b52fa589ee42fa73afc0e6c0670`  
		Last Modified: Wed, 15 Jul 2026 06:55:17 GMT  
		Size: 34.9 MB (34898991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380d08ce95244067415f4a22a50dbd57ae413a2c9f1be3fc11d949f7babd0198`  
		Last Modified: Thu, 16 Jul 2026 00:22:21 GMT  
		Size: 37.8 MB (37772788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:522dd90c8b48d168c868775e3b9e2aa0dd759e2658dc568b9a9facf2acdc255e`  
		Last Modified: Thu, 16 Jul 2026 00:22:23 GMT  
		Size: 145.9 MB (145915467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7527ddaf141f0acff3cf19cfef51e67deb0268e51c73a2249d4f6e725c5fd564`  
		Last Modified: Thu, 16 Jul 2026 00:22:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e55075b081f9d97816469bf28dc2a519ee063d7486f5fdaeac7437009b44ce4`  
		Last Modified: Thu, 16 Jul 2026 00:22:19 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ad16b2f948e33f2215408857d7347b208dd29ea88f946caa21811f7ceb461e`  
		Last Modified: Thu, 16 Jul 2026 01:14:21 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07fc9349f5fe493ffa64425d9617c2d3e9a920e6874dd8a2646ff93b5133ad02`  
		Last Modified: Thu, 16 Jul 2026 01:14:23 GMT  
		Size: 39.9 MB (39875864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696a3d381c04164c15abf6524ce618bfd49004a10b8800f3f6ca83d61e3b4b66`  
		Last Modified: Thu, 16 Jul 2026 01:14:25 GMT  
		Size: 140.6 MB (140596026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ea149225f45091d1af66993d501cd29a58a4b6b5524d3fa18ed2c27c6c5424`  
		Last Modified: Thu, 16 Jul 2026 01:14:21 GMT  
		Size: 25.6 KB (25616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:891f36350499fbc8437225d45392d39a957296f17520c6bf8b4795b6538358db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7113074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2485e3d4306191b05f5831184171a8c001dd1a990dba142f9008849b9dcf472`

```dockerfile
```

-	Layers:
	-	`sha256:2d2faa02138c698af6a3533d2c8f38b93844fc74d04e4879da45ae8e7d3c6934`  
		Last Modified: Thu, 16 Jul 2026 01:14:21 GMT  
		Size: 7.1 MB (7088620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12c57ba685a3dcc34759d8ebe6cbf4476ddb5b172c4a46d7fc0e2019865293a0`  
		Last Modified: Thu, 16 Jul 2026 01:14:21 GMT  
		Size: 24.5 KB (24454 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:2ee27168a9d69a95782029df7db4458a0d5e5ed32cfae605021b60a2a326d082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395435428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16187b6e317213ff53cd1a2a0cf057605c13fc246a66c05871e89d4b204f3426`
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
# Thu, 16 Jul 2026 00:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:22:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:22:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:22:43 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Thu, 16 Jul 2026 00:22:49 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:22:50 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:22:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:22:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:22:51 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:13:53 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:13:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:13:53 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:13:53 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:13:53 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:13:57 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:13:57 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:13:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:14:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:14:00 GMT
USER gradle
# Thu, 16 Jul 2026 01:14:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:14:00 GMT
USER root
```

-	Layers:
	-	`sha256:877a7cfebba1327468a9ce7bb85f9afffbfb1c95701f76d33d81f3833987c4e2`  
		Last Modified: Wed, 15 Jul 2026 08:02:44 GMT  
		Size: 33.0 MB (33038203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137461e484d51aa8809a3529856884e239836f4de269dfbb8eebac8b05468b8b`  
		Last Modified: Thu, 16 Jul 2026 00:23:10 GMT  
		Size: 37.7 MB (37707864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c4b977d52c68aed51485803ca0a37b277492287db6adfed4bc4604c6542db5`  
		Last Modified: Thu, 16 Jul 2026 00:23:12 GMT  
		Size: 144.7 MB (144734834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feefc531cf041098adc985d5e3ded1c492ac1b591739506c18df435ecdc579b`  
		Last Modified: Thu, 16 Jul 2026 00:23:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fcf0e35c7601c2e47818942c7ad11ef835c502badb92ca13c403e0280a11bc`  
		Last Modified: Thu, 16 Jul 2026 00:22:57 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b556747d6cca8aca65a741ed34b874f333bad231928eea4213ce108a34209d63`  
		Last Modified: Thu, 16 Jul 2026 01:14:19 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a8809eab5b893a409e4a5ffcd5cb0cecb12c8027e1c65c6c6291511baa31e6`  
		Last Modified: Thu, 16 Jul 2026 01:14:21 GMT  
		Size: 39.3 MB (39325132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0695d6236723598099fae6a806c03de8646d4cf73d3fa1077dfc5594421d46fb`  
		Last Modified: Thu, 16 Jul 2026 01:14:23 GMT  
		Size: 140.6 MB (140596025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4544382bb564d0d836f6ddc39332ce64fc73d42fbd1fc0bb5e8173b4c896db41`  
		Last Modified: Thu, 16 Jul 2026 01:14:19 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:c8a9377cc192f03d8b1662e14040384c5590c106855f116c89133bd4c02fff9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7111528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f16edccbf518762d3cde252755ee82693a09436075ad8c80b744362d6d00733e`

```dockerfile
```

-	Layers:
	-	`sha256:fbc8b081f2d30da157f74d032d7d59e9ca7ff6d79e33e597849658e685de3a80`  
		Last Modified: Thu, 16 Jul 2026 01:14:19 GMT  
		Size: 7.1 MB (7086876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ae2427fc47a2543c784b2eae7a77af8f106020f0816ec66aea8939d57ec4d82`  
		Last Modified: Thu, 16 Jul 2026 01:14:19 GMT  
		Size: 24.7 KB (24652 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:5f08e990a5f3176c59cac3301ce7a62ed1d329260c1f08cc8595640766d396ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.6 MB (406565691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910700617d9bfd32dd6383e694e65d0c51969003e8decbbfb6e93a06c016ae21`
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
ENV JAVA_VERSION=jdk-17.0.19+10
# Thu, 16 Jul 2026 00:23:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:23:17 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:23:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:23:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:23:17 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:17:33 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:17:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:17:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:17:33 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:17:33 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:17:49 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:17:49 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:17:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:17:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:17:53 GMT
USER gradle
# Thu, 16 Jul 2026 01:17:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:17:55 GMT
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
	-	`sha256:adaa2847379241d14e2cbc21bdb4330306011f98a052df00c4e2dbab5c039538`  
		Last Modified: Thu, 16 Jul 2026 00:23:56 GMT  
		Size: 145.8 MB (145788668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6352e6a0f6e3e1dafb6b9383bddd565b6b38e47c5d828c40727eaaf780c1fea9`  
		Last Modified: Thu, 16 Jul 2026 00:23:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aacc5d2bba8fe5ed2d7b6d1b26f91a18009e78730518d3c54190239ec9cc66a`  
		Last Modified: Thu, 16 Jul 2026 00:23:27 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556fec532855b1a49b7a289958390859ffae4878dfffc403aceaff2a59b2f8bd`  
		Last Modified: Thu, 16 Jul 2026 01:18:39 GMT  
		Size: 1.6 KB (1582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58648aafa388cab5364fbc61c017c31749dd349a14a39ed76c3e8672ba704c5`  
		Last Modified: Thu, 16 Jul 2026 01:18:41 GMT  
		Size: 41.6 MB (41644000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9695cf3607a6bab27dad5e2a8844922191b431c19a7cd3c53741c6da967a01`  
		Last Modified: Thu, 16 Jul 2026 01:18:43 GMT  
		Size: 140.6 MB (140595979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1a34340e5e7124b3e7d5ef8d33d5e2c6fe2f823ec0674090b0dcf926764632`  
		Last Modified: Thu, 16 Jul 2026 01:18:39 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:f5be37c090ac68ddd9d739cfc14dc20c6a6aea9366aabce23efda8305e359ec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7104565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da8708cfa6db5a476ec6d2c5b0be57552cd8eb181e481c108761b5e4c8db87ba`

```dockerfile
```

-	Layers:
	-	`sha256:994f1482917fa32848400b5f029ee3699fcb2c2a92690eaef5a8ec4598dc424e`  
		Last Modified: Thu, 16 Jul 2026 01:18:39 GMT  
		Size: 7.1 MB (7080038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ed801d365aa9ea897e85e8e1fac3cbc5c607a0a57ba75828d573130ee183519`  
		Last Modified: Thu, 16 Jul 2026 01:18:39 GMT  
		Size: 24.5 KB (24527 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:152322f645bea8ae7eb7ce7745df2b77269e3e68881ee81ec26b83a96d2e2e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.4 MB (391434422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f912378a9ba5e022a2f424f9857886084689337c007c423bac4dd755cff339d`
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
ENV JAVA_VERSION=jdk-17.0.19+10
# Thu, 16 Jul 2026 00:19:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:19:29 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:19:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:19:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:19:29 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 00:27:16 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 00:27:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 00:27:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 00:27:16 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 00:27:16 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 00:27:23 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 00:27:23 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 00:27:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 00:27:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 00:27:27 GMT
USER gradle
# Thu, 16 Jul 2026 00:27:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 00:27:27 GMT
USER root
```

-	Layers:
	-	`sha256:d73d4f6457bcd782d3bc06902fa556ffd91db9aab85a2358b971636d93b8103c`  
		Last Modified: Wed, 15 Jul 2026 12:17:17 GMT  
		Size: 34.8 MB (34778657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad16659d7394a61dd167bd768b66532de6dd459eeeb734253c4a878941738b32`  
		Last Modified: Thu, 16 Jul 2026 00:19:14 GMT  
		Size: 38.1 MB (38147926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a64e8fb0565242e77a90118fcecf340e82363c14675b567d54487659f198098`  
		Last Modified: Thu, 16 Jul 2026 00:19:54 GMT  
		Size: 135.9 MB (135912298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066cdf6f3a0410167bf84c1992e7ee2fe49a33dd3de4df9cbd22b70a823261da`  
		Last Modified: Thu, 16 Jul 2026 00:19:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354fa666eb50c741d7da230909bae44ae049229d2df479ffbb3b2cb180544398`  
		Last Modified: Thu, 16 Jul 2026 00:19:52 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ab80f8e940344d7993aae95c31d9563c760a54e038d41bcb7eac1639d3cf97`  
		Last Modified: Thu, 16 Jul 2026 00:27:53 GMT  
		Size: 1.6 KB (1588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad6c42c38327693006789ee21f9847bccb04bbd8e760889d4b989f9481666d2`  
		Last Modified: Thu, 16 Jul 2026 00:27:54 GMT  
		Size: 42.0 MB (41995100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96df3984509303dee9fbcd8972b4c6e63dbb45406f864ca59df1b2b8312822d2`  
		Last Modified: Thu, 16 Jul 2026 00:27:56 GMT  
		Size: 140.6 MB (140596028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c282a69a806f2b541188247ab53cf9b155d836b3c5e0a7afc2148f3a7bdaca4c`  
		Last Modified: Thu, 16 Jul 2026 00:27:53 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:bffad50950e6ff6d879279508614475ab0712e3c96c14d887a5b15a594128fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7093720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcb92e35a156a2daa10e7ac40d499b435b276343b347668f65faa73bca08e31f`

```dockerfile
```

-	Layers:
	-	`sha256:df6d7398b0761d6e2cc04e8a462a9e00b2e3d6b2ff7aa4a21173fe927437edcd`  
		Last Modified: Thu, 16 Jul 2026 00:27:53 GMT  
		Size: 7.1 MB (7069267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:410cdd7fc7a0d243edff528b4e1b9526a16f60abad3300e851182f17afdcba07`  
		Last Modified: Thu, 16 Jul 2026 00:27:53 GMT  
		Size: 24.5 KB (24453 bytes)  
		MIME: application/vnd.in-toto+json
