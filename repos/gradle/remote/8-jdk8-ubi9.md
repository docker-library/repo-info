## `gradle:8-jdk8-ubi9`

```console
$ docker pull gradle@sha256:ad52bb0b5b85444fa422c9593d00b1433ceeb15c16918c429c50f5c03b698b6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `gradle:8-jdk8-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:6bf49deb633483604901ae8d4182879ec4a64050910df442bb1e5252a352c929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299522530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d802972d687b33dfe37980308921aa1d456e7e8ccf3582b5dcd32c3e450f1df`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:14:47 GMT
ENV container oci
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:b8d2e4702aa4e2e0f81f97ab3a96785119f9cab5f11a12e6f35f97263fc80089 in /      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:14:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:14:20Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:14:20Z" "architecture"="x86_64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:14:20Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:55:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 18:55:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 18:55:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 18:55:07 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 17 Sep 2026 18:55:07 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Thu, 17 Sep 2026 18:55:12 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 17 Sep 2026 18:55:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 18:55:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 18:55:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 19:13:52 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 19:13:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 19:13:52 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 17 Sep 2026 19:13:52 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 19:13:52 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 19:13:57 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 17 Sep 2026 19:13:57 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 17 Sep 2026 19:13:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 17 Sep 2026 19:14:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 19:14:00 GMT
USER gradle
# Thu, 17 Sep 2026 19:14:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 17 Sep 2026 19:14:00 GMT
USER root
```

-	Layers:
	-	`sha256:b66f4afff961364e2b31840faeac9f4cf40a138156bc5adbd4190044ff5160c0`  
		Last Modified: Wed, 16 Sep 2026 09:31:28 GMT  
		Size: 40.7 MB (40703783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fea8821871ef644f093fcdaaf680e7ae59796f94a3fceabb5627f4f27cc8da`  
		Last Modified: Thu, 17 Sep 2026 18:55:26 GMT  
		Size: 27.6 MB (27646547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d489d89ce77c92c0a6362f31876e98ce9b1eabb867c2b2f406663b9ffea2795`  
		Last Modified: Thu, 17 Sep 2026 18:55:26 GMT  
		Size: 55.2 MB (55164908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898516db9985fd24cd6e13c710ab67825606bdaf69d4060af39553e6f9f73414`  
		Last Modified: Thu, 17 Sep 2026 18:55:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7952a6983834aded5a54bf5e6c90c463e320d13693917c128ee86e76620d9c6`  
		Last Modified: Thu, 17 Sep 2026 18:55:24 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d14a5dc330012c350ecca80bd00af8f20ece85cac1a6aa6e60a0bba4e430e1`  
		Last Modified: Thu, 17 Sep 2026 19:14:16 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553bee815352ff78481a03c4ca365ad5daadfd486d22eb92648f8323b45cab95`  
		Last Modified: Thu, 17 Sep 2026 19:14:19 GMT  
		Size: 37.9 MB (37879526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a17dd9dab175593f270f0925d785b65188f18043dd11669e0e8d21ce4903df`  
		Last Modified: Thu, 17 Sep 2026 19:14:21 GMT  
		Size: 138.1 MB (138068536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5ef15565ecce0524d2b801a1a64e9640a5a4d177822b9a6604ee0ce19fe2d5`  
		Last Modified: Thu, 17 Sep 2026 19:14:17 GMT  
		Size: 54.9 KB (54905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:b6b72e10787b48069143fccea07f906a509c766e3f9cb7e75342a98681a98f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc1e4beacde2b806ffbecc28a3b46b1097738f3167c96d2edbbef594a5adbdf5`

```dockerfile
```

-	Layers:
	-	`sha256:298fbfd1b3cd67e32b13d34a1e56596e49e2f5cf791acd3d64e18996faf9de6c`  
		Last Modified: Thu, 17 Sep 2026 19:14:17 GMT  
		Size: 5.5 MB (5528588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4b9955cd3280242e5ec9365476defaee55045487bd61c41105e2d5d280ccdf3`  
		Last Modified: Thu, 17 Sep 2026 19:14:16 GMT  
		Size: 24.5 KB (24453 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk8-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:78413b097ba3c6650b303eb74c8e70707bea18a2c60693fd64c8fa87749b9b00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296419691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3806d455429a083b712e2b1ae54918953201f64aed073b49d9287638d5180987`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:17:25 GMT
ENV container oci
# Wed, 16 Sep 2026 08:17:25 GMT
COPY dir:247e1a1b65ffe42d0e02569b201e0a80c3d58c5012cc85d5fca29e1996ccab32 in /      
# Wed, 16 Sep 2026 08:17:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:17:26 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:17:03Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:17:03Z" "architecture"="aarch64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:17:03Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:54:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 18:54:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 18:54:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 18:54:33 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 17 Sep 2026 18:54:33 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Thu, 17 Sep 2026 18:54:39 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 17 Sep 2026 18:54:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 18:54:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 18:54:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 19:12:46 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 19:12:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 19:12:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 17 Sep 2026 19:12:46 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 19:12:46 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 19:12:50 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 17 Sep 2026 19:12:50 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 17 Sep 2026 19:12:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 17 Sep 2026 19:12:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 19:12:53 GMT
USER gradle
# Thu, 17 Sep 2026 19:12:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 17 Sep 2026 19:12:53 GMT
USER root
```

-	Layers:
	-	`sha256:36e72d37accbc857387599416b2fbab8fba8dd4b3f3b465ab05e57367cbe05fd`  
		Last Modified: Wed, 16 Sep 2026 09:33:21 GMT  
		Size: 38.8 MB (38782783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba007d53cb2c8a9970e1531a58b2ec20126775fad1d7db9e38d7b6c4b47f9fa`  
		Last Modified: Thu, 17 Sep 2026 18:54:53 GMT  
		Size: 28.1 MB (28073402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98ac0e241bd50428f1abfd267d3db728c5d5dd9a190999778b812e6cd3471bb`  
		Last Modified: Thu, 17 Sep 2026 18:54:54 GMT  
		Size: 54.3 MB (54263298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c10d9d5b65fc7bc5b0ef25682b85d23b8f60ab8582622fae551198675b6072`  
		Last Modified: Thu, 17 Sep 2026 18:54:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83781093b8783c7355620f01cfb297c9f9c4cb8764a7a701d4e05b28d0df6d24`  
		Last Modified: Thu, 17 Sep 2026 18:54:53 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2da4be55e9ec85912ba858c80c1ad61309a565e24888942ac98939cd3c84ae`  
		Last Modified: Thu, 17 Sep 2026 19:13:08 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac2b246cdce14ce4b76aded91c1b416c5acd3d8d35be8949e73798bf8841c4d`  
		Last Modified: Thu, 17 Sep 2026 19:13:10 GMT  
		Size: 37.2 MB (37167810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dea1b70f5e4b3bdf3a2527c0b8b56c4c10ea58994eb4f6f97eb095bedc1ef310`  
		Last Modified: Thu, 17 Sep 2026 19:13:13 GMT  
		Size: 138.1 MB (138068550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c37181bd6a74638b369bc9313c09d0fe0685043b61488e2e580a4fd29df9768`  
		Last Modified: Thu, 17 Sep 2026 19:13:08 GMT  
		Size: 59.5 KB (59524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:b5a91f8c4d63798ef244268096c72cf966117758a27305b460d5ae81139c211e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5551585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9105a8a2fb84bf82c262606b042dcb007624f718ace1ea7c5c06ef0858eb6e60`

```dockerfile
```

-	Layers:
	-	`sha256:4de41322f8d59c876ec05490d7f7d38943396efd52b28e3ad2868b74ad5a48c8`  
		Last Modified: Thu, 17 Sep 2026 19:13:08 GMT  
		Size: 5.5 MB (5526936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86deeecb3d9b4e1b118d61b767538c71aa5dc3058b3a62856280e5df45d9dd4e`  
		Last Modified: Thu, 17 Sep 2026 19:13:08 GMT  
		Size: 24.6 KB (24649 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk8-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:df74cc2629534f5ef8b12db261c4f8921458c57fb8dbfa1b5049d22de659048b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.1 MB (305057987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45d86a2ac42fa773f5e5fb22e83c7c2cddabfb1a61b1686e3e1be0308970d0f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 16 Sep 2026 08:16:46 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:16:46 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:16:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:16:46 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:16:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:16:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:16:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:16:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:16:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:16:46 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:16:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:16:46 GMT
ENV container oci
# Wed, 16 Sep 2026 08:16:47 GMT
COPY dir:bda9595d1b363265465ef1c4778057b535ae7246533bc2a6cec4b13ebab7d57d in /      
# Wed, 16 Sep 2026 08:16:47 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:16:47 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:16:47 GMT
COPY dir:4017de0917a6551b631a6f6e94bc0df6c0d91d47f80b9328126b6831f2c2f1eb in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:16:47 GMT
COPY dir:4017de0917a6551b631a6f6e94bc0df6c0d91d47f80b9328126b6831f2c2f1eb in /root/buildinfo/      
# Wed, 16 Sep 2026 08:16:47 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:16:25Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:16:25Z" "architecture"="ppc64le" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:16:25Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 19:29:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 19:29:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 19:29:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 19:29:07 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 17 Sep 2026 19:29:07 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Thu, 17 Sep 2026 19:29:18 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 17 Sep 2026 19:29:19 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 19:29:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 19:29:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 20:12:37 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 20:12:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 20:12:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 17 Sep 2026 20:12:37 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 20:12:38 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 20:12:46 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 17 Sep 2026 20:12:46 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 17 Sep 2026 20:12:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 17 Sep 2026 20:12:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 20:12:56 GMT
USER gradle
# Thu, 17 Sep 2026 20:13:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 17 Sep 2026 20:13:00 GMT
USER root
```

-	Layers:
	-	`sha256:78a3b7734f090e63a43f94ae941e6da245b0c9dea7834d0bf99b74873f3e6398`  
		Last Modified: Wed, 16 Sep 2026 12:14:08 GMT  
		Size: 45.1 MB (45079943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4790f787b24e4cfb76adad7480023cf707613b5c9f85d5dc85aa3f32adfbc5e`  
		Last Modified: Thu, 17 Sep 2026 19:29:53 GMT  
		Size: 30.1 MB (30059228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a1aaf483896023b6b519e73bc20f113561c4239fd7bf82faa6244cfaf1a9ebd`  
		Last Modified: Thu, 17 Sep 2026 19:29:54 GMT  
		Size: 52.7 MB (52671201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1416d33a5971f15763ae8c6b577d4dcfb9e8252f689615af9dcb3acbbdcec893`  
		Last Modified: Thu, 17 Sep 2026 19:29:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41fce2fe5a7ef7c911eb03afe2c273f67e2e67e496f8bdad7fbe2df6b502cc52`  
		Last Modified: Thu, 17 Sep 2026 19:29:52 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b2fdddb91bf5057601edad328fc4a956603619689c7b4d8f1aacf2856a2ddb`  
		Last Modified: Thu, 17 Sep 2026 20:13:44 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e078776ff5c81bfa9b75017e7534a3900b7c529bea432851756084d4aed858b`  
		Last Modified: Thu, 17 Sep 2026 20:13:46 GMT  
		Size: 39.1 MB (39139702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c009c9b2aca001ca034ddf07dbd3175e7146b3c53d8c5caf0853c1eacc91efc`  
		Last Modified: Thu, 17 Sep 2026 20:13:48 GMT  
		Size: 138.1 MB (138068578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c5185cfe05d1aa233fa553397ab0b6366d1ed14b7fc48a751384b8588a49ac`  
		Last Modified: Thu, 17 Sep 2026 20:13:44 GMT  
		Size: 35.0 KB (35009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:0fc964e5a0d5976fb259abbe318fe54b277afccad9c64c82ad527e935725f426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5549300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfe39c3ff4526f907a5df9801132f85145253f23cf9ef88b29304d05433d019c`

```dockerfile
```

-	Layers:
	-	`sha256:103cdffaa3a54e0a059156145a7ded38d8e0b76a4cb010d0c9854606e1920131`  
		Last Modified: Thu, 17 Sep 2026 20:13:44 GMT  
		Size: 5.5 MB (5524774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7639a8a83fd749e6c344da57b20f41fa71df5f0d87a5dc67df68947cd595696c`  
		Last Modified: Thu, 17 Sep 2026 20:13:44 GMT  
		Size: 24.5 KB (24526 bytes)  
		MIME: application/vnd.in-toto+json
