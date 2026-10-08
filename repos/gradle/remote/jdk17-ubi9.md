## `gradle:jdk17-ubi9`

```console
$ docker pull gradle@sha256:e17826ab95c03715e007330d592ec417546041c4b98d8e596de064ea6488e08f
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

### `gradle:jdk17-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:729aa394db48806fb74bdc6ff27e7e97877b3f804b436a475faac5029a519266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.6 MB (403617294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9593313527f08752f17db099561ff72f9e4f0f8170f20a9e3af49db7d7b1aa6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:41:08 GMT
ENV container oci
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:f50158eee9e07cbf4aceebaec88e4c8773d7166ca83ee42f91072d081a60608e in /      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:41:08 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:41:09 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:40:51Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:40:51Z" "architecture"="x86_64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:40:51Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 21:55:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:55:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:55:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:55:16 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:55:16 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 06 Oct 2026 21:55:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:55:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:55:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:55:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:55:24 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 16:40:43 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:40:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:40:43 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:40:43 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:40:44 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:40:49 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 16:40:49 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:40:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:40:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:40:52 GMT
USER gradle
# Thu, 08 Oct 2026 16:40:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:40:52 GMT
USER root
```

-	Layers:
	-	`sha256:5f6aa419d45f217f7bbb8965a7f5de28a0c0124032a4ff1b28141d8f44c4fea7`  
		Last Modified: Tue, 06 Oct 2026 10:25:27 GMT  
		Size: 40.7 MB (40701553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ae804f45ed06912e041199b971d1a5b84edcaa1b66e6be073fe7a7c312fa7c1`  
		Last Modified: Tue, 06 Oct 2026 21:55:39 GMT  
		Size: 27.6 MB (27641139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99a600c926e357a4f9806d09231fa7b02da6413d83bd92175bd911dbe6ba449`  
		Last Modified: Tue, 06 Oct 2026 21:55:42 GMT  
		Size: 145.8 MB (145832681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a333893b1c6105a9f2b3b9a5783b2e4a0be105865da6cfdf69333e328130134e`  
		Last Modified: Tue, 06 Oct 2026 21:55:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3476cb257ac1dea869d14bc82e5a03de84aa6fefd894df23106457440fae17e5`  
		Last Modified: Tue, 06 Oct 2026 21:55:38 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ae3f977d59af125a9207f921747a7b76d2cce4cdf86cf045cf604fb96d13ce`  
		Last Modified: Thu, 08 Oct 2026 16:41:10 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e5524e4e3213238f0a1abb83fb9b025b83e85d543929f18cf434dfdf6ffe92`  
		Last Modified: Thu, 08 Oct 2026 16:41:12 GMT  
		Size: 37.9 MB (37878389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba6a2bf573560f0ccb4bc11ae78337578db984e666ee16595a48f1aa343c07e`  
		Last Modified: Thu, 08 Oct 2026 16:41:14 GMT  
		Size: 151.5 MB (151533612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4dac00228f511c781fb6edc42afe51f1b7489dd8bc4b5914b0cddcd4fdf7a62`  
		Last Modified: Thu, 08 Oct 2026 16:41:10 GMT  
		Size: 25.6 KB (25613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:c3e3839dc74a80aa774de3ee599d249829936bd72d3b8c21d71ed4b4579c6700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5461847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6c6e089c9823d2c6d4399282eb5c33130b4a6a7b90e8a88d09eae078183ca3`

```dockerfile
```

-	Layers:
	-	`sha256:c1ff73be08f850717b47856adff78b8ab078ec501c35ad0a59f21dd69c9deeca`  
		Last Modified: Thu, 08 Oct 2026 16:41:10 GMT  
		Size: 5.4 MB (5438643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33adc1de99f49cc5bb0c3e478c546be732d2dd04ae8907bbbca9ce4a7469c568`  
		Last Modified: Thu, 08 Oct 2026 16:41:10 GMT  
		Size: 23.2 KB (23204 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:33ba91a950d705d055c2496b078fcbefd91849835196839e27fded0afa48fb79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.3 MB (400266541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2b3d2beb85f232b680f319345965118a6789d34461afbcf549656f4096ab43`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:21 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:1d4511abff0d0cabc191309fe39f03480b6374c9bc8873ac0c048d111c3a696b in /      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:22 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:00Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:00Z" "architecture"="aarch64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:00Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 21:51:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:51:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:51:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:51:18 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:51:18 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 06 Oct 2026 21:51:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:51:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:51:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:51:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:51:47 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 16:40:37 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:40:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:40:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:40:37 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:40:37 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:40:43 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 16:40:43 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:40:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:40:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:40:46 GMT
USER gradle
# Thu, 08 Oct 2026 16:40:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:40:47 GMT
USER root
```

-	Layers:
	-	`sha256:6e3ee034ac700d9806da676936d58b1720e1c6ca90636cbbae190d0a885a71b2`  
		Last Modified: Tue, 06 Oct 2026 10:50:47 GMT  
		Size: 38.8 MB (38805435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616fda7fcaf2bf3d61e2aaabc1632d0614fe7997f7240e87bdf3fc12152ea40d`  
		Last Modified: Tue, 06 Oct 2026 21:51:33 GMT  
		Size: 28.1 MB (28073873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d1c8c76451c25d2d09ef0d8c375e247b739646cb8ce3be358be30ca16e5e5`  
		Last Modified: Tue, 06 Oct 2026 21:52:07 GMT  
		Size: 144.7 MB (144651984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:421cbd37e2cb16f152458fa9923ab6dc602810dcaab32fc09ed76e34a0146347`  
		Last Modified: Tue, 06 Oct 2026 21:51:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f174bca5be08ec8aa90dd4fd0e0fe60597948b01b9bf652dbc56ffdb1ec33d`  
		Last Modified: Tue, 06 Oct 2026 21:52:03 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b952614d3c027e3d8daf3efa8d61e62ef2288975591f0f629fb5c2da0e46598`  
		Last Modified: Thu, 08 Oct 2026 16:41:04 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ccd0e8f0cc88ac779c8410bc7d9a9962268cacda1be7aeb45c4c1617b8202c`  
		Last Modified: Thu, 08 Oct 2026 16:41:06 GMT  
		Size: 37.2 MB (37167986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c911572561ad4c037980de9b79ab26d6eb2edb7d36b10dcc7a5ff6a4bca5e388`  
		Last Modified: Thu, 08 Oct 2026 16:41:08 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e12a7ad8a3f9750bce22603a239e091867034a3995550429816ee7db7ac5f0a`  
		Last Modified: Thu, 08 Oct 2026 16:41:05 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:e86cff04b64c8f8f5b5ba62c88507dc80ffc9a5268376b83aa1722c56d42befe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5459596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10081d1f378617d2a4325eeea897e2818e7b900f80fa2ecf5b1f2ee0039a88ff`

```dockerfile
```

-	Layers:
	-	`sha256:56459c5c69949709a59be1c38dd5d154a6d9f88b05cf8802ab6053eb755498bc`  
		Last Modified: Thu, 08 Oct 2026 16:41:05 GMT  
		Size: 5.4 MB (5436243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:134e902e3f4df66540eb5030188d2ea0fddbfb67042f1e4b9d37b0e38734429f`  
		Last Modified: Thu, 08 Oct 2026 16:41:04 GMT  
		Size: 23.4 KB (23353 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:3c12926dd5a1ed52fe1bb292491acda017142462951fb31d9efc1bcd88411151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411514301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be78f7dfd7079d472e0466ac6d5d40cdab31056fe2aa88ba041423fd261fc34`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:44 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:d07f2b7b7fc0328aad01cfdaed182c175acb09c22d3d7ce49cc19c491698d5b0 in /      
# Tue, 06 Oct 2026 09:42:45 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:45 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:774b92356406bfee1307af385a5d45b5beda7faea39e85ca4f3d6fbc56d40b00 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:774b92356406bfee1307af385a5d45b5beda7faea39e85ca4f3d6fbc56d40b00 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:45 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:23Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:23Z" "architecture"="ppc64le" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:23Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 21:49:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:24 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 06 Oct 2026 21:53:18 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:53:22 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:53:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:53:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:53:23 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:13:46 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:13:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:13:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:13:46 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:13:46 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:14:03 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:14:03 GMT
ENV GRADLE_VERSION=9.8.1
# Tue, 06 Oct 2026 22:14:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:51:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:51:23 GMT
USER gradle
# Thu, 08 Oct 2026 16:51:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:51:28 GMT
USER root
```

-	Layers:
	-	`sha256:9244f500f9cceb07e7669ad9bfa7c24a2ed1eed26cb416a3d032180e1d0448b2`  
		Last Modified: Tue, 06 Oct 2026 12:14:20 GMT  
		Size: 45.1 MB (45090018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19b15df0f393569d2b35ab6197ae367a01bab491b217c2f51043e833e5b92ae`  
		Last Modified: Tue, 06 Oct 2026 21:50:11 GMT  
		Size: 30.1 MB (30059845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098681e8588dffd6ea737ac63f9f857203f26d9bbd56ae1755dbda8380fb9edf`  
		Last Modified: Tue, 06 Oct 2026 21:54:06 GMT  
		Size: 145.7 MB (145687485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d7b69c453fe8358da9ec8a8a90d9352d90330dd62c5cf622d85e1fd15ecf101`  
		Last Modified: Tue, 06 Oct 2026 21:54:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7a0b7af60b03a7f02a735528e43d222c94cb5c995ae2158bed5ffbbc2189b6`  
		Last Modified: Tue, 06 Oct 2026 21:54:03 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a64130ed017ac91cb2829422b99c7a640a2a65b0d42327ba863ad5e1a59d95b`  
		Last Modified: Tue, 06 Oct 2026 22:15:03 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fab4c435b05d1c7e521d37aaccc8dd058b0d278e06a9dcb0d0deac611cc23d`  
		Last Modified: Tue, 06 Oct 2026 22:15:05 GMT  
		Size: 39.1 MB (39138642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799faf17ef6bd26579e672f4ae56ede64ae474f1fe0c007157210fcacf3fcaa2`  
		Last Modified: Thu, 08 Oct 2026 16:52:28 GMT  
		Size: 151.5 MB (151533615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa5e46b3bfa950a510b4a5b5197d779da8d16b9c9620f14f5dde6e36124655a`  
		Last Modified: Thu, 08 Oct 2026 16:52:24 GMT  
		Size: 383.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:5d6ae25ab199f421159554eb4615e010dbaea1c67c0d4fbbf90db3b2cafa0dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5457502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b03bfb2259187cafbd16187734bb2914489612cfb3965b289f7ea0f54561b9e`

```dockerfile
```

-	Layers:
	-	`sha256:83fd0b3a9d02f966e0f7a93e7c7e57074c33bf85905488b250955ab4a47f55b2`  
		Last Modified: Thu, 08 Oct 2026 16:52:25 GMT  
		Size: 5.4 MB (5434214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acb96872f353ecca17ce846e035e38f722b5d1903e90908c65bc479813c878c8`  
		Last Modified: Thu, 08 Oct 2026 16:52:24 GMT  
		Size: 23.3 KB (23288 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:33073089e9aa832a9ecb605b1bc83844257d4c4b8048dfb63da2bcca6d973201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.3 MB (391337884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:700bce276ef7ceca572b4aa2eb5a927a407714eba80b0cc9c70bc45c0bcafc1e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 06 Oct 2026 09:51:04 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:51:05 GMT
ENV container oci
# Tue, 06 Oct 2026 09:51:05 GMT
COPY dir:c58a4b8bf0196c807188ee6dea2fad088ed1bceedcd144c3af13a3b1c934b3cd in /      
# Tue, 06 Oct 2026 09:51:05 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:51:05 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:51:05 GMT
COPY dir:9d66497e256b1d273edc77a18f5fdc558aff480773821c3d11b7cd1cd7af99e7 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:51:05 GMT
COPY dir:9d66497e256b1d273edc77a18f5fdc558aff480773821c3d11b7cd1cd7af99e7 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:51:05 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:50:16Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:50:16Z" "architecture"="s390x" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:50:16Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 21:49:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:56 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:56 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 06 Oct 2026 21:50:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:50:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:50:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:50:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:50:43 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:10:32 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:10:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:10:32 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:10:32 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:10:32 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:47:10 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 16:47:10 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:47:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:48:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:48:16 GMT
USER gradle
# Thu, 08 Oct 2026 16:48:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:48:25 GMT
USER root
```

-	Layers:
	-	`sha256:6777def25a899459b707cc96f2d5877f5351bd987ce1bcc32688d02bd60b3dfb`  
		Last Modified: Tue, 06 Oct 2026 11:01:36 GMT  
		Size: 38.8 MB (38771997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baf2bcdd80a6d58608e6ed3b4d1ccc6530df6a22eb5d853b65fd0def4b49f93a`  
		Last Modified: Tue, 06 Oct 2026 21:50:18 GMT  
		Size: 27.7 MB (27672930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba9ddac8ba1dc608649bc9edfb0cd672601f1ec374f838dc09558c04bd275d7d`  
		Last Modified: Tue, 06 Oct 2026 21:51:08 GMT  
		Size: 135.9 MB (135878807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3a4033f5b3a8ea3a12ccbc7f7ce32e77f04fc8b662d378d39fa6038b4727db`  
		Last Modified: Tue, 06 Oct 2026 21:51:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5de6e9c3bc94dcf8a493b3fa2303210f69e53fc61608d79fac7e0a56bef2f2`  
		Last Modified: Tue, 06 Oct 2026 21:51:04 GMT  
		Size: 2.5 KB (2467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c0f51aec9049ad52f0bfb0dca158e39d1e1b7d588d19bf4dab2baec2f38290`  
		Last Modified: Tue, 06 Oct 2026 22:11:03 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3129ace707c3bd4f385ed4209890f2f966c5d447f733e79621472adc6e0718c4`  
		Last Modified: Thu, 08 Oct 2026 16:50:01 GMT  
		Size: 37.5 MB (37475837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6054e772225f863b1c52831194cf20fd1d1e73a8b2b8fa9d870209bbf5d336`  
		Last Modified: Thu, 08 Oct 2026 16:50:04 GMT  
		Size: 151.5 MB (151533617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6b67fe3f10c67a7d46e42881114e8ca6e91e30716117337bd9ffe5ceb58900`  
		Last Modified: Thu, 08 Oct 2026 16:49:55 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:8c1e34522afa31ebf7f3787af38bb5163415ee51bbf07a193af7747056ce1801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5446708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfe48c7bf5bd91fac8aaba2ba1911b0bcf7c81c463b469c983866eb2b65fb0ea`

```dockerfile
```

-	Layers:
	-	`sha256:f51a390b429cc3e68b5467f6f5683f426710dc7a20d6e5a69e4addfec640e044`  
		Last Modified: Thu, 08 Oct 2026 16:49:56 GMT  
		Size: 5.4 MB (5423470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:808e60e7c40723ea732c8c3e8f84075763551188410b802852b16cca19343ac7`  
		Last Modified: Thu, 08 Oct 2026 16:49:56 GMT  
		Size: 23.2 KB (23238 bytes)  
		MIME: application/vnd.in-toto+json
