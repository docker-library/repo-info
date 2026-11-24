## `gradle:9-jdk25-ubi`

```console
$ docker pull gradle@sha256:547909176eb16908c146ac6293f48a51ca36f51ba2f8ce3c86ebfda9661d71bd
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

### `gradle:9-jdk25-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:5342a56ffb1fde767bad5b61d08ea8c948c12356fa8e359418213f9d4aa33d65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.8 MB (340807197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603349820698e564a29bc7840dccdcb4b321ac9e44e155b4b8d685fba8944cbb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 20 Nov 2026 17:51:16 GMT
ENV container oci
# Fri, 20 Nov 2026 17:51:17 GMT
COPY dir:fb43f9b318d9eb1385df7a36cdfa57b8acbd84afb7b61664d2e25101a312d55a in /      
# Fri, 20 Nov 2026 17:51:17 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 17:51:17 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:51:17 GMT
COPY dir:9facee0b5cdcedad16ad4e0b1c536c91a058e00f974062e8ebf605fae2363b30 in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 17:51:17 GMT
COPY dir:9facee0b5cdcedad16ad4e0b1c536c91a058e00f974062e8ebf605fae2363b30 in /root/buildinfo/      
# Fri, 20 Nov 2026 17:51:18 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T17:50:47Z" "org.opencontainers.image.revision"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "build-date"="2026-11-20T17:50:47Z" "architecture"="x86_64" "vcs-ref"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "vcs-type"="git" "release"="1795196920"org.opencontainers.image.created=2026-11-20T17:50:47Z,org.opencontainers.image.revision=0b769d32f2673a0a3230de4ecb28b42ea251c690
# Mon, 23 Nov 2026 22:08:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:08:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:08:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:08:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:08:02 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Mon, 23 Nov 2026 22:08:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c37879e0d08eeb1baa69fcbb7758cd455b7b1c0ceab1e2a136ccb1713c530984';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64le)          ESUM='cfffd074eb1fb7a7b38cae9341363c1c35094a5b5f7d49c08b406159dae65872';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        s390x)          ESUM='01da4a2bbc08b3d7afb44de5bb83e2fbd838e06b83aabf3ca0204f916438e339';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='760f91b22c3efc9bd1b64ff950598231be82928cc807e30691a0e7a2995a62c0';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:08:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:08:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:08:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:08:42 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 23:08:54 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 23:08:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 23:08:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 23:08:54 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 23:08:54 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 23:08:59 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 23 Nov 2026 23:08:59 GMT
ENV GRADLE_VERSION=9.9.2
# Mon, 23 Nov 2026 23:08:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Mon, 23 Nov 2026 23:09:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 23:09:02 GMT
USER gradle
# Mon, 23 Nov 2026 23:09:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 23:09:03 GMT
USER root
```

-	Layers:
	-	`sha256:69350ad525f7b897d7ee64aead074bc110259aa291005b87b0609cc9f54f5aac`  
		Last Modified: Fri, 20 Nov 2026 19:50:01 GMT  
		Size: 35.0 MB (34957031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb9e8ce49f4bb64958636aa206c0b5d951b8cd24884516bff9a5f9f025337af`  
		Last Modified: Mon, 23 Nov 2026 22:08:27 GMT  
		Size: 38.0 MB (38038184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f6812814cd37f6308ba20b7f16c1bcde8f9ab6ded9f6bfd1b64cb6cbcbb4c6`  
		Last Modified: Mon, 23 Nov 2026 22:08:59 GMT  
		Size: 92.6 MB (92614084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4edbe3a95889d58342db1573b160cd078efb0839620fd4ccccd8456343bd21`  
		Last Modified: Mon, 23 Nov 2026 22:08:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0505b6a7a7a48c34746f5b2969d0210c85a561a8e85ff9e836db00a9ac1fff`  
		Last Modified: Mon, 23 Nov 2026 22:08:57 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb8218572173bff86824e515a57afab741b9d0c13850100a2658a67b918c9c3`  
		Last Modified: Mon, 23 Nov 2026 23:09:21 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3b6ba62e49833446695a8ff38526280ea40a5987d41dc7d5340fb4bad7af9a`  
		Last Modified: Mon, 23 Nov 2026 23:09:23 GMT  
		Size: 40.3 MB (40297299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e6275eab061fd8563e243bff3c503ad27bf126e137a8a11232bc8adef20a95`  
		Last Modified: Mon, 23 Nov 2026 23:09:25 GMT  
		Size: 134.9 MB (134870751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf05cf0a74d01ae2c3c9b6434e35d3c2f829cabb79a1dc46ce85dba0294a61aa`  
		Last Modified: Mon, 23 Nov 2026 23:09:21 GMT  
		Size: 25.6 KB (25630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:b9766fb2cd3760c0cb01ce52ef69090cb30b8103b6fa66fcac3bf2e99ad6a9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7079124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e863b6ee8fd7be8b9c5259836d9d323e1e15a616092b354df3ab3def7397dc05`

```dockerfile
```

-	Layers:
	-	`sha256:16051ec4d8e74bdd345ae3b5f5d813ba73af09e36f5afd7f729a5afc26abc8e5`  
		Last Modified: Mon, 23 Nov 2026 23:09:21 GMT  
		Size: 7.1 MB (7054107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3921767714d44f2bb1630357da582e5e407cd3742f69c66a4d59a8549a5c6db`  
		Last Modified: Mon, 23 Nov 2026 23:09:21 GMT  
		Size: 25.0 KB (25017 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:44e8fd4eda51fe4a291156f37fe49ac2d30c1791f33075cf91fe9d9cf0c0b4e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.2 MB (337214485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7922d2f51e5622a5e0f6263f03a607e13d23c235ad67f01d4b4a118f46b9e050`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:53:39 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 20 Nov 2026 17:53:39 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 17:53:39 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 20 Nov 2026 17:53:39 GMT
ENV container oci
# Fri, 20 Nov 2026 17:53:40 GMT
COPY dir:3393e986fa09bafe58a0c8dda4610ca6bdfcdf4191fc82a2323e5c063224307b in /      
# Fri, 20 Nov 2026 17:53:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 17:53:40 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:53:41 GMT
COPY dir:49c56089b2ac1702df93cb0b5cda1a4916a11c8c990bbba3f067ed09e9f3883f in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 17:53:41 GMT
COPY dir:49c56089b2ac1702df93cb0b5cda1a4916a11c8c990bbba3f067ed09e9f3883f in /root/buildinfo/      
# Fri, 20 Nov 2026 17:53:41 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T17:53:10Z" "org.opencontainers.image.revision"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "build-date"="2026-11-20T17:53:10Z" "architecture"="aarch64" "vcs-ref"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "vcs-type"="git" "release"="1795196920"org.opencontainers.image.created=2026-11-20T17:53:10Z,org.opencontainers.image.revision=0b769d32f2673a0a3230de4ecb28b42ea251c690
# Mon, 23 Nov 2026 22:07:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:07:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:07:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:07:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:07:35 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Mon, 23 Nov 2026 22:07:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c37879e0d08eeb1baa69fcbb7758cd455b7b1c0ceab1e2a136ccb1713c530984';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64le)          ESUM='cfffd074eb1fb7a7b38cae9341363c1c35094a5b5f7d49c08b406159dae65872';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        s390x)          ESUM='01da4a2bbc08b3d7afb44de5bb83e2fbd838e06b83aabf3ca0204f916438e339';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='760f91b22c3efc9bd1b64ff950598231be82928cc807e30691a0e7a2995a62c0';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:07:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:07:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:07:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:07:42 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 23:08:54 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 23:08:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 23:08:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 23:08:54 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 23:08:54 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 23:09:00 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 23 Nov 2026 23:09:00 GMT
ENV GRADLE_VERSION=9.9.2
# Mon, 23 Nov 2026 23:09:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Mon, 23 Nov 2026 23:09:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 23:09:03 GMT
USER gradle
# Mon, 23 Nov 2026 23:09:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 23:09:04 GMT
USER root
```

-	Layers:
	-	`sha256:16a7622b10038f372ff7d46da684e3e1ab3565f4760320adfafdae2b1af5e869`  
		Last Modified: Sat, 21 Nov 2026 00:28:05 GMT  
		Size: 33.0 MB (33048313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a53967451804d9aa93520f147a5caa183049262d0af6cd414cc573c1d54b2a`  
		Last Modified: Mon, 23 Nov 2026 22:08:01 GMT  
		Size: 38.0 MB (37960592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e9ffdf18adf62402c4c8a88501b956305c8b3d747c8315b888096a1a8e8e81`  
		Last Modified: Mon, 23 Nov 2026 22:08:02 GMT  
		Size: 91.6 MB (91554907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401244894894e88422c6739f998ca48a168f14fdae299ab10f2efab64bc45dbb`  
		Last Modified: Mon, 23 Nov 2026 22:07:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec84955103e717a74810880600e1ac14079cd0c15b5cb32f49c3fba1f7362c8e`  
		Last Modified: Mon, 23 Nov 2026 22:08:00 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58774e8ffbe7c85cd44da80f44d0c2e318fbe9f414fd0bb7c4744fd72bdc6ce`  
		Last Modified: Mon, 23 Nov 2026 23:09:22 GMT  
		Size: 1.6 KB (1587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a49d4e838392351b50abde0888eac4bca26370923b924bd704d2468a69fe33`  
		Last Modified: Mon, 23 Nov 2026 23:09:24 GMT  
		Size: 39.7 MB (39746367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697e3c1a2c81d05810414c1f389b471b7e3985bbef26a66e95f4ef1fdb90b240`  
		Last Modified: Mon, 23 Nov 2026 23:09:26 GMT  
		Size: 134.9 MB (134870749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11062f5fa8e88c3b240f50d252e776efcb41cc14b8dbb54e8c72cdb75917316`  
		Last Modified: Mon, 23 Nov 2026 23:09:22 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:765d70edf3a3e4cd76638fd196b632a8473f0bfe90ac67f378978a870970a3e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7077622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c277efd29a1c976b45b1c982866f40b72a38982158ed4fc41ed706b80d2e079`

```dockerfile
```

-	Layers:
	-	`sha256:606d4138a7efbbc7be6f9364becbbbd1b13daed16b4824a0ac6e7ff6579078d4`  
		Last Modified: Mon, 23 Nov 2026 23:09:23 GMT  
		Size: 7.1 MB (7052384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f63b4d7d5cc0836725af75dbeb4503da1a7c63de4870a1c3153a085a048f53f6`  
		Last Modified: Mon, 23 Nov 2026 23:09:22 GMT  
		Size: 25.2 KB (25238 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:df5130e062b2d873a802900b4809a82d4b9219bca69d50dd45306d6b48f0afb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.0 MB (346004458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c9cbc03e820ad943f8dbea05d17605bae2667842178f9712fcdfc66fe2fff9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 20 Nov 2026 17:55:46 GMT
ENV container oci
# Fri, 20 Nov 2026 17:55:47 GMT
COPY dir:69c4a5f44760f72f6770da9de6633494a9c5e65a69bf4d66269d9de7615fed50 in /      
# Fri, 20 Nov 2026 17:55:47 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 17:55:47 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:55:48 GMT
COPY dir:54af12dbebd09324eb9be769431d0a769e8becf92c0e9ef5a409e55f2686f435 in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 17:55:48 GMT
COPY dir:54af12dbebd09324eb9be769431d0a769e8becf92c0e9ef5a409e55f2686f435 in /root/buildinfo/      
# Fri, 20 Nov 2026 17:55:48 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T17:55:25Z" "org.opencontainers.image.revision"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "build-date"="2026-11-20T17:55:25Z" "architecture"="ppc64le" "vcs-ref"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "vcs-type"="git" "release"="1795196920"org.opencontainers.image.created=2026-11-20T17:55:25Z,org.opencontainers.image.revision=0b769d32f2673a0a3230de4ecb28b42ea251c690
# Mon, 23 Nov 2026 22:05:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:05:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:05:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:05:57 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Mon, 23 Nov 2026 22:14:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c37879e0d08eeb1baa69fcbb7758cd455b7b1c0ceab1e2a136ccb1713c530984';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64le)          ESUM='cfffd074eb1fb7a7b38cae9341363c1c35094a5b5f7d49c08b406159dae65872';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        s390x)          ESUM='01da4a2bbc08b3d7afb44de5bb83e2fbd838e06b83aabf3ca0204f916438e339';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='760f91b22c3efc9bd1b64ff950598231be82928cc807e30691a0e7a2995a62c0';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:14:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:14:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:14:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:14:10 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 23:08:02 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 23:08:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 23:08:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 23:08:02 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 23:08:02 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 23:08:31 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 23 Nov 2026 23:08:31 GMT
ENV GRADLE_VERSION=9.9.2
# Mon, 23 Nov 2026 23:08:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Mon, 23 Nov 2026 23:08:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 23:08:36 GMT
USER gradle
# Mon, 23 Nov 2026 23:08:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 23:08:37 GMT
USER root
```

-	Layers:
	-	`sha256:121f50aaab5447d4df4cfa143b5a88ea3d5b5b6c0115df8351485bd08d79e26a`  
		Last Modified: Sat, 21 Nov 2026 00:28:33 GMT  
		Size: 39.1 MB (39139587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcfa6add2a4091ddf1bd23fd26e972f51e89affa7c7cf602a1120dde37fe1f8f`  
		Last Modified: Mon, 23 Nov 2026 22:06:47 GMT  
		Size: 39.8 MB (39804383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76b88bd2e0c94e65226493afc1f367784293be3ad3ae4ed059c898562c4e174`  
		Last Modified: Mon, 23 Nov 2026 22:14:50 GMT  
		Size: 90.1 MB (90121456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56a715d32845bedaf7101cf8ea4201abff2c57c570d666fc248ad74342e8a2b`  
		Last Modified: Mon, 23 Nov 2026 22:14:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4233f6f4191cc4eb64ff67c777559d9eb4864ebd1e1b119e2c294d132efced12`  
		Last Modified: Mon, 23 Nov 2026 22:14:48 GMT  
		Size: 2.5 KB (2468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef3207f12913fb7c1447283eb60ec29239fd4d659b69738df67c0040ee2bbbe`  
		Last Modified: Mon, 23 Nov 2026 23:09:27 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fb91fc20bbb527b6a7309b7adec193748de75c1017dc704b5ca1154d4d6596`  
		Last Modified: Mon, 23 Nov 2026 23:09:29 GMT  
		Size: 42.1 MB (42063690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5023aa4e02219ef340b38d646bc56983e3692528d45401a7a73a92cda78f66c2`  
		Last Modified: Mon, 23 Nov 2026 23:09:31 GMT  
		Size: 134.9 MB (134870750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d278862dd8fda0ba1d5326c7ce1728fc2b077973a43f6c089d2f81af9853e9`  
		Last Modified: Mon, 23 Nov 2026 23:09:27 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:f0f19cd814fdf45b1ba8488fe9572aa682387df3d49132aa8c11acef316e11a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7052089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:679c93753fe2f68758e5dcbbf3da9169dd13b67422959432984dbf33e1cb6123`

```dockerfile
```

-	Layers:
	-	`sha256:0b005c38dcc6a584145128004bbecc0da12f90ef6558886788a5eb6ae8b47545`  
		Last Modified: Mon, 23 Nov 2026 23:09:27 GMT  
		Size: 7.0 MB (7026988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40fd50a1ff916f77eaae45163780a504d7dc7b2d698d26340f86a86f500e46b0`  
		Last Modified: Mon, 23 Nov 2026 23:09:27 GMT  
		Size: 25.1 KB (25101 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:9fc4658adcde89da3e0d9aefbbf26d0a72c72cb806329997308c86269ddbe232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.7 MB (338674713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2c0770f54573d92950210d5036e2af0fd9ba7df77334fc18d000828c64ee8d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 20 Nov 2026 18:41:35 GMT
ENV container oci
# Fri, 20 Nov 2026 18:41:36 GMT
COPY dir:bb642dabde68ede78a99c44f194b32940f427d53deadbbba1ca1e03d5d70d3f1 in /      
# Fri, 20 Nov 2026 18:41:36 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:41:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:41:37 GMT
COPY dir:ce8c7616fd3133801f989904333a38e0250534168adf63c4608906babe0ddb07 in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:41:37 GMT
COPY dir:ce8c7616fd3133801f989904333a38e0250534168adf63c4608906babe0ddb07 in /root/buildinfo/      
# Fri, 20 Nov 2026 18:41:37 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:40:13Z" "org.opencontainers.image.revision"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "build-date"="2026-11-20T18:40:13Z" "architecture"="s390x" "vcs-ref"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "vcs-type"="git" "release"="1795196920"org.opencontainers.image.created=2026-11-20T18:40:13Z,org.opencontainers.image.revision=0b769d32f2673a0a3230de4ecb28b42ea251c690
# Mon, 23 Nov 2026 22:05:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:05:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:05:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:05:53 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:05:53 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Mon, 23 Nov 2026 22:06:57 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c37879e0d08eeb1baa69fcbb7758cd455b7b1c0ceab1e2a136ccb1713c530984';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64le)          ESUM='cfffd074eb1fb7a7b38cae9341363c1c35094a5b5f7d49c08b406159dae65872';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        s390x)          ESUM='01da4a2bbc08b3d7afb44de5bb83e2fbd838e06b83aabf3ca0204f916438e339';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='760f91b22c3efc9bd1b64ff950598231be82928cc807e30691a0e7a2995a62c0';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:06:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:06:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:06:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:06:59 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 23:07:54 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 23:07:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 23:07:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 23:07:54 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 23:07:54 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 23:07:59 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 23 Nov 2026 23:07:59 GMT
ENV GRADLE_VERSION=9.9.2
# Mon, 23 Nov 2026 23:07:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Mon, 23 Nov 2026 23:08:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 23:08:02 GMT
USER gradle
# Mon, 23 Nov 2026 23:08:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 23:08:03 GMT
USER root
```

-	Layers:
	-	`sha256:960bd244aea4fa3577ec8d25ef21d2c141b091ee1a0d31fb07f26447b87416e9`  
		Last Modified: Sat, 21 Nov 2026 00:28:14 GMT  
		Size: 34.8 MB (34842541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4aeb8656adda87810d5ef682d1a2066b8164851f5776e9090e516f6c3aef11`  
		Last Modified: Mon, 23 Nov 2026 22:06:29 GMT  
		Size: 38.4 MB (38420595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb58ef6ad4e26ceed0fcafc0345a7206d225237ff8d2b003b73cde8816596a6`  
		Last Modified: Mon, 23 Nov 2026 22:07:24 GMT  
		Size: 88.1 MB (88073722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e2c8e385a3ccb93c3141012cce9737d914c546017e655c30d4d061364eb4ee`  
		Last Modified: Mon, 23 Nov 2026 22:07:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8cad056a6727d984a7123003cd984a2e9f61d164865ad9ce13df7910de9d2f`  
		Last Modified: Mon, 23 Nov 2026 22:07:22 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dad7a70eb5a232e7b0298db89272a25240da5f7b957250b03074743c5d4bad9`  
		Last Modified: Mon, 23 Nov 2026 23:08:28 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a443eb436e323b2482756b7be8294f6d071b2b7719447c27ee7f51bb5af51486`  
		Last Modified: Mon, 23 Nov 2026 23:08:29 GMT  
		Size: 42.5 MB (42462510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61ba2dc0356b33ee255d01cefa1e50967dfe0db06b16a4b0ff49a4146126eec`  
		Last Modified: Mon, 23 Nov 2026 23:08:31 GMT  
		Size: 134.9 MB (134870750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b138320d54ccf34a5c8b9a87c4cc9a41e735de0e4f9345a4dacc02fc21df48`  
		Last Modified: Mon, 23 Nov 2026 23:08:28 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:9d5666b48eff2beef4b4c2ee478765f5def4ea6c3c5664c5960768f335866cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7042469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e9ee861febd5a8ce2765567a50b5ea356dd88247d426edfbe3273dc35d8c5b`

```dockerfile
```

-	Layers:
	-	`sha256:648720a18c1443568c302b549ef95857d5ab3cdfe942b79da5be7d390bd924c4`  
		Last Modified: Mon, 23 Nov 2026 23:08:28 GMT  
		Size: 7.0 MB (7017455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:490b997c35c62e84ade085f8bbb8cfcbe9a3a61a879d1e3c51c67d72cfcf198e`  
		Last Modified: Mon, 23 Nov 2026 23:08:28 GMT  
		Size: 25.0 KB (25014 bytes)  
		MIME: application/vnd.in-toto+json
