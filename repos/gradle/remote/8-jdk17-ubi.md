## `gradle:8-jdk17-ubi`

```console
$ docker pull gradle@sha256:d8a54a76475c183683547e487e2490df2d664fc715ba44e7553772c25294815e
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

### `gradle:8-jdk17-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:5b3f06d695867d9f2d8b1d296e82fea57c6e699a48c32c0bae72d98ca27aed1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.2 MB (390182235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea9809a1222bc3989fcc6f3e95dfad7fd88184cbee21460391d51134eca2591`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:43:40 GMT
ENV container oci
# Wed, 30 Sep 2026 07:43:40 GMT
COPY dir:01535d66c659bac5dc638e334bb8c0882e8bbe4dcc144deb448bf0673973267f in /      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:43:41 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /root/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:43:22Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:43:22Z" "architecture"="x86_64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:43:22Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:03:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 30 Sep 2026 21:03:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:03:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 30 Sep 2026 21:03:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:03:35 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Wed, 30 Sep 2026 21:03:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 30 Sep 2026 21:03:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 30 Sep 2026 21:03:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:03:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 30 Sep 2026 21:03:42 GMT
CMD ["jshell"]
# Wed, 30 Sep 2026 21:16:50 GMT
CMD ["gradle"]
# Wed, 30 Sep 2026 21:16:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 30 Sep 2026 21:16:50 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 30 Sep 2026 21:16:50 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 30 Sep 2026 21:16:50 GMT
WORKDIR /home/gradle
# Wed, 30 Sep 2026 21:16:55 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 30 Sep 2026 21:16:55 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 30 Sep 2026 21:16:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 30 Sep 2026 21:17:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 30 Sep 2026 21:17:27 GMT
USER gradle
# Wed, 30 Sep 2026 21:17:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 30 Sep 2026 21:17:28 GMT
USER root
```

-	Layers:
	-	`sha256:dc56ef34398ed4f6c8151f31ee5784575bedb47794f5ba379ebc2a25834fac35`  
		Last Modified: Wed, 30 Sep 2026 08:42:23 GMT  
		Size: 40.7 MB (40700861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3d97eac66b4cecc4d26675f9e584818162a7fa3e603ded044dc6fe387b6596`  
		Last Modified: Wed, 30 Sep 2026 21:03:58 GMT  
		Size: 27.6 MB (27641762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e732d0a54a771a4766912febf3255683bcd92edc09f23740312e2ede06266d23`  
		Last Modified: Wed, 30 Sep 2026 21:04:00 GMT  
		Size: 145.8 MB (145832697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390af53933ee86d7a1413759530bf6171fb7d00f5074826a777e78536d8d58c1`  
		Last Modified: Wed, 30 Sep 2026 21:03:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600b91ff3b7fcc1560aeded9b65f7d820e2f0bbe238d8f7b0c6faa8392232354`  
		Last Modified: Wed, 30 Sep 2026 21:03:56 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7bf7502f931ca990f42c9fa932c4ad203f93e0e69b71141df81cf61e081d03`  
		Last Modified: Wed, 30 Sep 2026 21:17:13 GMT  
		Size: 1.7 KB (1672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9b990b25892d8d2fbedb1912e7d143870e97d517738852accb18cba74bd2dc`  
		Last Modified: Wed, 30 Sep 2026 21:17:15 GMT  
		Size: 37.9 MB (37879171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2b64187a957b20c6bc01315e6d19d850bfd9f2a1ba618de2eae8fc099dbaa7`  
		Last Modified: Wed, 30 Sep 2026 21:17:43 GMT  
		Size: 138.1 MB (138068535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5fcacb4d97b060e81d2486f90c3a420267200ea48735fae75f9cb984b695d36`  
		Last Modified: Wed, 30 Sep 2026 21:17:40 GMT  
		Size: 54.9 KB (54904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:3f221b48c2989a5663343046e809c34bc212e593e1732b9ab5ee79d2662d2b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5431530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af97fb6e7d9902bce7464e858b6ca1ec1e773742161fc072b6b1beafd4dbe607`

```dockerfile
```

-	Layers:
	-	`sha256:b197457f073538f7f8e5bd0b5e9d7cf260e6184c2d0e114c4a51e34b6c9e116f`  
		Last Modified: Wed, 30 Sep 2026 21:17:40 GMT  
		Size: 5.4 MB (5407646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5714e080f9568c4a1645f8eecdfb43e06300fefd9ddb6361ced30527483c6a34`  
		Last Modified: Wed, 30 Sep 2026 21:17:40 GMT  
		Size: 23.9 KB (23884 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:65e766dd3ce11970e9d6ae7aa5365f88017ba991c420035eb1c4a32a9a351d30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.8 MB (386831773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6c755f00c792880e51725c4b9c4d6a78577e97185147c1e79ce144c68dac5e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:45:10 GMT
ENV container oci
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:06d90a0b7db8992c03ff9664b8cd3e00c58fd39e054579d5795d410389dd5e96 in /      
# Wed, 30 Sep 2026 07:45:10 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:45:10 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /root/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:44:47Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:44:47Z" "architecture"="aarch64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:44:47Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:02:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 30 Sep 2026 21:02:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:02:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 30 Sep 2026 21:02:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:02:36 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Wed, 30 Sep 2026 21:02:44 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 30 Sep 2026 21:02:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 30 Sep 2026 21:02:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:02:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 30 Sep 2026 21:02:45 GMT
CMD ["jshell"]
# Wed, 30 Sep 2026 21:14:34 GMT
CMD ["gradle"]
# Wed, 30 Sep 2026 21:14:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 30 Sep 2026 21:14:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 30 Sep 2026 21:14:34 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 30 Sep 2026 21:14:35 GMT
WORKDIR /home/gradle
# Wed, 30 Sep 2026 21:14:40 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 30 Sep 2026 21:14:40 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 30 Sep 2026 21:14:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 30 Sep 2026 21:14:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 30 Sep 2026 21:14:43 GMT
USER gradle
# Wed, 30 Sep 2026 21:14:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 30 Sep 2026 21:14:44 GMT
USER root
```

-	Layers:
	-	`sha256:b8f4af811c7c98a1b33bf1a9f90c3e1b1f2296b681895a0031b0560a5db8a0a4`  
		Last Modified: Wed, 30 Sep 2026 08:42:32 GMT  
		Size: 38.8 MB (38801364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad5c13991ada5b9101a2ab3546245108aa00a50efbd96bf612f616d98929ceb7`  
		Last Modified: Wed, 30 Sep 2026 21:03:03 GMT  
		Size: 28.1 MB (28076221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006079847204e2e4247fad7fa81563f7cc08db9951cacd0b35aac2b69d983e75`  
		Last Modified: Wed, 30 Sep 2026 21:03:05 GMT  
		Size: 144.7 MB (144651981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2062aa147b002459e9db096d62f45fd235436207d10f84a56c72d6a89d86a9c`  
		Last Modified: Wed, 30 Sep 2026 21:03:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663c84791c5beb14257549baf597489d964632cfd4d75d8155f526acab6046cb`  
		Last Modified: Wed, 30 Sep 2026 21:03:02 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112cd0ab9086e93826a841f0b01c3dbff56ecb4e635697d22edf069000b35470`  
		Last Modified: Wed, 30 Sep 2026 21:15:00 GMT  
		Size: 1.7 KB (1672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fc37614f0b844dc5112d367b864e35e1e7c03cbc143945f041fb5007ff82ac`  
		Last Modified: Wed, 30 Sep 2026 21:15:02 GMT  
		Size: 37.2 MB (37169806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc27355425e6071224d6d32223bc9bb8062bf3612eeec3b9a93fd95a6deb1e76`  
		Last Modified: Wed, 30 Sep 2026 21:15:04 GMT  
		Size: 138.1 MB (138068544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244fe8f3ca03519cbfbaea5c253c22114ad3d87bc0566ed4924426ff7fd48d36`  
		Last Modified: Wed, 30 Sep 2026 21:15:00 GMT  
		Size: 59.6 KB (59553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:3e0223637024cb7a24124e1ba1a0172f75c4b9b8cbbb4cb03d939eff6518c043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5429327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1edb0e46cddc7e38808af97c1d28dff42f5ac551752cd11ddaa5451db606b479`

```dockerfile
```

-	Layers:
	-	`sha256:7d65a36840a1239fee1cd9ca06be586325ac9b0a6d96d3a418d283064696df71`  
		Last Modified: Wed, 30 Sep 2026 21:15:00 GMT  
		Size: 5.4 MB (5405270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53298fe8f11e79c21f4bc3ca1e74348cec1585fc4e5dd258e35f86a30d89728a`  
		Last Modified: Wed, 30 Sep 2026 21:15:00 GMT  
		Size: 24.1 KB (24057 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:c5f801197d2b58d5e57adb0202e44e71eabb9aca34ac0305cc14fb514777e06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.1 MB (398089211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591672591157857df05ea44da4f7698f738a8273f1274ea04ffc35dfc10cbe96`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:45:36 GMT
ENV container oci
# Wed, 30 Sep 2026 07:45:37 GMT
COPY dir:4cb48862fe4662e41c3a56d6b359e33e4d555c6623a40f2773bc23feb43cfe43 in /      
# Wed, 30 Sep 2026 07:45:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:45:37 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:45:37 GMT
COPY dir:684cffcefbe18a79082b5d1177bd0a1ba4c1e150d009ccfa0e2601b532089da9 in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:45:37 GMT
COPY dir:684cffcefbe18a79082b5d1177bd0a1ba4c1e150d009ccfa0e2601b532089da9 in /root/buildinfo/      
# Wed, 30 Sep 2026 07:45:38 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:45:17Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:45:17Z" "architecture"="ppc64le" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:45:17Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:02:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 30 Sep 2026 21:02:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:02:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 30 Sep 2026 21:02:11 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:02:11 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Wed, 30 Sep 2026 21:07:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 30 Sep 2026 21:07:29 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 30 Sep 2026 21:07:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:07:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 30 Sep 2026 21:07:31 GMT
CMD ["jshell"]
# Wed, 30 Sep 2026 22:14:14 GMT
CMD ["gradle"]
# Wed, 30 Sep 2026 22:14:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 30 Sep 2026 22:14:14 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 30 Sep 2026 22:14:14 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 30 Sep 2026 22:14:17 GMT
WORKDIR /home/gradle
# Wed, 30 Sep 2026 22:14:51 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 30 Sep 2026 22:14:51 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 30 Sep 2026 22:14:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 30 Sep 2026 22:16:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 30 Sep 2026 22:16:35 GMT
USER gradle
# Wed, 30 Sep 2026 22:16:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 30 Sep 2026 22:16:38 GMT
USER root
```

-	Layers:
	-	`sha256:2d868f2473ac963a485d7abd68cef434f33691c56b1f88b36171cbdd8adfa2fe`  
		Last Modified: Wed, 30 Sep 2026 12:23:52 GMT  
		Size: 45.1 MB (45090153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac28273d350798805d412d94f1de702dd15554319b1a2cc7466c9d0cf1e97444`  
		Last Modified: Wed, 30 Sep 2026 21:03:04 GMT  
		Size: 30.1 MB (30061878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b8c659300b8be0d8c35912aec7158b22add1992a1f64ad048b3c7e5087252d`  
		Last Modified: Wed, 30 Sep 2026 21:08:24 GMT  
		Size: 145.7 MB (145687540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5372742614ead8546ca096ece628b880a32fe9da047d7e8c6b698b94beecb97d`  
		Last Modified: Wed, 30 Sep 2026 21:08:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d667f05e2769a4befc9f015e142e9437726df73d8b818dab2070246e55c1764d`  
		Last Modified: Wed, 30 Sep 2026 21:08:20 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aefe7642b13bbb210c2777cf3816427d31d37db44e626438cc5041bd2f93cb4`  
		Last Modified: Wed, 30 Sep 2026 22:16:01 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e89529adfdc352106f436d0d4da09a25d940b321e3b6b022662346b6361a344`  
		Last Modified: Wed, 30 Sep 2026 22:16:03 GMT  
		Size: 39.1 MB (39141765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2bf4606ecd90a374f76fc721b43d62fed4726a0cea15ecb003d2a6f172a538b`  
		Last Modified: Wed, 30 Sep 2026 22:17:20 GMT  
		Size: 138.1 MB (138068542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e647ef12258cbde4207508b6af48a387399cf620a11ec441d006067f46329cee`  
		Last Modified: Wed, 30 Sep 2026 22:17:16 GMT  
		Size: 35.0 KB (35014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:5a8d30a91ff11bdffe00e0a79271f335b319bd30892d150f3e68d14285913a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5427171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ead961d078c99d8df51ad34d0caabcba501b28236a45d27b4a75561f86c008`

```dockerfile
```

-	Layers:
	-	`sha256:dc2789831f2c54bf743a01f9a01fa9a47f3e939ab715d42ac937e43cbd6463ca`  
		Last Modified: Wed, 30 Sep 2026 22:17:16 GMT  
		Size: 5.4 MB (5403225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9274b0a39acd0a2ac7925490d646c46ba5e8c5b0f51f753e368e79d9fd6c3f8b`  
		Last Modified: Wed, 30 Sep 2026 22:17:16 GMT  
		Size: 23.9 KB (23946 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:842b1b748ffaec91421538386f34bad0a5f572c65ff2d7f5c49799eb44cbabf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377889345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274e9e42684491bf5599eab9a4d856680b622eb63fc4aaa764f44846cf31ba1a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 08:01:35 GMT
ENV container oci
# Wed, 30 Sep 2026 08:01:35 GMT
COPY dir:445decd9d97f9dcf53d77f808319e52de061e3b39d0a3a73f10dadcad04374c3 in /      
# Wed, 30 Sep 2026 08:01:35 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 08:01:35 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 08:01:35 GMT
COPY dir:80358e9112321f12996db9bd990d52a51b07e50af0cf78d80d3c6605d4960c8a in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 08:01:35 GMT
COPY dir:80358e9112321f12996db9bd990d52a51b07e50af0cf78d80d3c6605d4960c8a in /root/buildinfo/      
# Wed, 30 Sep 2026 08:01:35 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T08:00:38Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T08:00:38Z" "architecture"="s390x" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T08:00:38Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:00:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 30 Sep 2026 21:00:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:00:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 30 Sep 2026 21:00:46 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:00:46 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Wed, 30 Sep 2026 21:01:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 30 Sep 2026 21:01:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 30 Sep 2026 21:01:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:01:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 30 Sep 2026 21:01:36 GMT
CMD ["jshell"]
# Wed, 30 Sep 2026 21:10:34 GMT
CMD ["gradle"]
# Wed, 30 Sep 2026 21:10:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 30 Sep 2026 21:10:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 30 Sep 2026 21:10:34 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 30 Sep 2026 21:10:34 GMT
WORKDIR /home/gradle
# Wed, 30 Sep 2026 21:10:42 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 30 Sep 2026 21:10:42 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 30 Sep 2026 21:10:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 30 Sep 2026 21:10:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 30 Sep 2026 21:10:46 GMT
USER gradle
# Wed, 30 Sep 2026 21:10:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 30 Sep 2026 21:10:46 GMT
USER root
```

-	Layers:
	-	`sha256:8221589aa79a7b59750fc4603e575a71e013e7993fa7c7b201c7c9d75949a900`  
		Last Modified: Wed, 30 Sep 2026 09:10:54 GMT  
		Size: 38.8 MB (38753942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2079e872f80e4138a20c708a8355f81f8f55546487b3df8de0cd01fe331798`  
		Last Modified: Wed, 30 Sep 2026 21:01:11 GMT  
		Size: 27.7 MB (27671190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6833513ce853a18ff7c8289dfa8bf65cd9ae079c7a32808c66321247dd437545`  
		Last Modified: Wed, 30 Sep 2026 21:01:59 GMT  
		Size: 135.9 MB (135878793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91ac4943ab4442c8d7a3e2c8130165334a0644abb6a8e991b9379606518956b`  
		Last Modified: Wed, 30 Sep 2026 21:01:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1347b2706d0f941997f44f334366d57d77e3dbc9bc0793717e96fbe8b8f969e3`  
		Last Modified: Wed, 30 Sep 2026 21:01:51 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e270354cc44512158e9378cf455d9417754ba2d6a486b3ad2abe7361e87157`  
		Last Modified: Wed, 30 Sep 2026 21:11:07 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed247ae37b1a5a252d509e74ae57d8debc81c6ff2d21ba7362b8fa1b6ede9cc`  
		Last Modified: Wed, 30 Sep 2026 21:11:08 GMT  
		Size: 37.5 MB (37477568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f1a1c89579cea20e28cc86dc0138701ce1e8ff22b1899d5db829a2b0103872`  
		Last Modified: Wed, 30 Sep 2026 21:11:10 GMT  
		Size: 138.1 MB (138068540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd768e7741c515ee3f3348452ac5e93072c13dba3672f7625bf46d8b4e6a146`  
		Last Modified: Wed, 30 Sep 2026 21:11:07 GMT  
		Size: 35.0 KB (35002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:7b016f8102ef3a94cb71fbf5bf927744628ca251cb048b1695592ef2e9425da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5416353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd6f834b2c85f93eae6fcf0aba8e9c64471a32fefa9d4c8dbc7ed97acfe01ea`

```dockerfile
```

-	Layers:
	-	`sha256:bfa28699a7a30267f5e5829c3198c5931a2614642f32e18b1b877a10229dbe46`  
		Last Modified: Wed, 30 Sep 2026 21:11:07 GMT  
		Size: 5.4 MB (5392469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c18af1cddefd8d333f59433d473f3bff1ba55a7bc86c02a321402604228ef15a`  
		Last Modified: Wed, 30 Sep 2026 21:11:07 GMT  
		Size: 23.9 KB (23884 bytes)  
		MIME: application/vnd.in-toto+json
