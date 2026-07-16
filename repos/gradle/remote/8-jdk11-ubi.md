## `gradle:8-jdk11-ubi`

```console
$ docker pull gradle@sha256:6d87d7b2ea37c2542a322485b4506648004f2345dadf8b9266201796e5c1be80
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

### `gradle:8-jdk11-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:092144cb572a869f0e348dd67ba7f64f254a5ef2087562df43a31dd43dec534b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.7 MB (386749659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecf7dfbefded5d62b1dc013d77fc483e5d350c8c845dfcc79ed8a5f2e18aa7f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:21:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:21:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:21:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:21:44 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:21:44 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 16 Jul 2026 00:21:50 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:21:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:21:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:21:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:21:51 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:14:37 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:14:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:14:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:14:37 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:14:37 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:14:40 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:14:40 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 16 Jul 2026 01:14:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 16 Jul 2026 01:14:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:14:42 GMT
USER gradle
# Thu, 16 Jul 2026 01:14:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:14:43 GMT
USER root
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f78da0c37a54568349d8a5d54e21382e59120111e9ad1ccc70a18936da9fb1f`  
		Last Modified: Thu, 16 Jul 2026 00:22:07 GMT  
		Size: 27.7 MB (27660916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00645f8239455df54369a40a373978b2061cb2292fc709f1a41db9b60554cee7`  
		Last Modified: Thu, 16 Jul 2026 00:22:09 GMT  
		Size: 142.3 MB (142348793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6143c1d78ea941af49d3624bc708c6e0139639f552fcbc71e6e58741732fad62`  
		Last Modified: Thu, 16 Jul 2026 00:22:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96679292100eaae8f8b7999373802282f6de9b19b9fef9503d217831dde433a7`  
		Last Modified: Thu, 16 Jul 2026 00:22:05 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73720229493bd45374e2394882f79d6c88a4ab8563069b8a890d93e7cc41c567`  
		Last Modified: Thu, 16 Jul 2026 01:14:58 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddc36938a535eb2b5ad8f1f54b3c3e34e191599588f38f8ed2c6a9a3ac99daf`  
		Last Modified: Thu, 16 Jul 2026 01:15:00 GMT  
		Size: 37.9 MB (37924216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc5039ea010fca94da2db395710ed592f20edd4bcf1fc28fa42f894b5d152523`  
		Last Modified: Thu, 16 Jul 2026 01:15:02 GMT  
		Size: 138.1 MB (138068537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ae5a9bb1f3fb47cdf43014350d2c164c4e5d8ecf38994680970d2f3d4f6830`  
		Last Modified: Thu, 16 Jul 2026 01:14:58 GMT  
		Size: 54.9 KB (54902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:e5dbca235d07b39341f3893160bbd4027e37550b442dbd2697c144a74acb19c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5451049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d0d43b4ee3ef3ff0cf7559e4c772b9ddde01680bed241a544171c5ebd59d35`

```dockerfile
```

-	Layers:
	-	`sha256:ee149242095964ee06adc445c0e064ccca35cd71ee2e52283505933385e6c349`  
		Last Modified: Thu, 16 Jul 2026 01:14:59 GMT  
		Size: 5.4 MB (5426597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:084dd5488f4be46f5726593aeee4cf9ca6eb81024d63595bd726d5de9df1703b`  
		Last Modified: Thu, 16 Jul 2026 01:14:58 GMT  
		Size: 24.5 KB (24452 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:0c1a1cc9b2c2bf0c866a2b4052965c20c4bcbc16063c4a56f3ce486d1ebe62cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.3 MB (381301645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1271e23d73a0590d01a4770a474e9f36ef9daad48b624dd3278038a072a3b047`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:24:50 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:f7c8e662c3292e2603100c327cf13d8efc9fc2dd911fb477df032cb5542cc0e4 in /      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:51 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:24:27Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:24:27Z" "architecture"="aarch64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:24:27Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:22:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:22:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:22:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:22:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:22:13 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 16 Jul 2026 00:22:20 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:22:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:22:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:22:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:22:21 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:14:35 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:14:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:14:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:14:35 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:14:36 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:14:40 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:14:40 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 16 Jul 2026 01:14:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 16 Jul 2026 01:14:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:14:43 GMT
USER gradle
# Thu, 16 Jul 2026 01:14:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:14:44 GMT
USER root
```

-	Layers:
	-	`sha256:7ce9fd1dd40cd1b3485743f9ba234221d41bec07d83f53e3336c641264fc8211`  
		Last Modified: Wed, 15 Jul 2026 06:14:31 GMT  
		Size: 38.8 MB (38829586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86661114c9bd0b9c9f79587aa3e4247ba8c542e62110d9afab66d402b22ba44f`  
		Last Modified: Thu, 16 Jul 2026 00:22:39 GMT  
		Size: 28.1 MB (28093707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6996b28958069ee2cce163ca5e9bda169a38cdcf48cb5dc17d8f40a91d6482`  
		Last Modified: Thu, 16 Jul 2026 00:22:41 GMT  
		Size: 139.0 MB (139040652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae06474869158c675148911fe30cc9a62a4f5f25de2a6f7643734bbeafd2f52`  
		Last Modified: Thu, 16 Jul 2026 00:22:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e0b6c7961154a15340f0cb0449cd182ec491300ce102bb555cd0b0145b0a139`  
		Last Modified: Thu, 16 Jul 2026 00:22:27 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f2c9bc3aa8e3c3ab2c5c1487d1520221394a32ef5cb9a14da7bbeb80272969`  
		Last Modified: Thu, 16 Jul 2026 01:15:00 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9b03e935987378381dbc43d05f83574849beec08adce30da9fa33a3af9f50b`  
		Last Modified: Thu, 16 Jul 2026 01:15:02 GMT  
		Size: 37.2 MB (37205475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffb6e7ecd5809dd14a47f5075229f0dc4be1cc5e72911de1758224560234de1c`  
		Last Modified: Thu, 16 Jul 2026 01:15:04 GMT  
		Size: 138.1 MB (138068540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd38b472eae5006488fa76ccdab457f938daabbad5f75a4aeff27649b4a3a83`  
		Last Modified: Thu, 16 Jul 2026 01:15:00 GMT  
		Size: 59.5 KB (59530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:1b4148eccd7c5ce27b3262a69905c99788a61a883db22820a576098f50994560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5449512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b41d0f0599501a5e6c6f5b7da40e94831208643a5a74e34547b948f970ca6f`

```dockerfile
```

-	Layers:
	-	`sha256:79866707614072fc44cf9be39962d380644b8cd1521f9f16ad74c4fcf289b004`  
		Last Modified: Thu, 16 Jul 2026 01:15:00 GMT  
		Size: 5.4 MB (5424863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abd6cb7a36c930662849c166cae607001f991d8a677906e303ac6634ed35668d`  
		Last Modified: Thu, 16 Jul 2026 01:15:00 GMT  
		Size: 24.6 KB (24649 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:8a7616b598c92acd2cd578809e2666ad1e2eb32cb0d1c024b1aa86f07c9ff286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.1 MB (382066722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0f1ab34cc38232e2ef3696be165b0f58544d5b5f44b67cb8f83d115ca5b7a2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:26:45 GMT
ENV container oci
# Wed, 15 Jul 2026 05:26:46 GMT
COPY dir:1bdd6eb7357eefc120202f7e51c21e591c6baf5f7f7f06c5f481a4a64a785a60 in /      
# Wed, 15 Jul 2026 05:26:46 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:26:46 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:26:46 GMT
COPY dir:3a665f1b37b3154c8af087937dd890b8519b76b10ce182dee7eb4ca162486202 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:26:46 GMT
COPY dir:3a665f1b37b3154c8af087937dd890b8519b76b10ce182dee7eb4ca162486202 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:26:47 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:26:27Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:26:27Z" "architecture"="ppc64le" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:26:27Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:19:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:19:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:19:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:19:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:19:35 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 16 Jul 2026 00:21:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:21:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:21:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:21:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:21:33 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:22:58 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:22:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:22:58 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:22:58 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:22:58 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:23:12 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:23:12 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 16 Jul 2026 01:23:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 16 Jul 2026 01:23:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:23:16 GMT
USER gradle
# Thu, 16 Jul 2026 01:23:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:23:18 GMT
USER root
```

-	Layers:
	-	`sha256:212a5704ab9a81496c2efada993e59b76d91e099f3325fb2266dceceb957afa7`  
		Last Modified: Wed, 15 Jul 2026 06:14:49 GMT  
		Size: 45.1 MB (45077772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5880c5329e0027773d62dc1524b28c7139c4ef8913d68bb24ae48cd8ea58afc`  
		Last Modified: Thu, 16 Jul 2026 00:20:16 GMT  
		Size: 30.1 MB (30079317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b1c67c71c3e2660710e7180d088014615746b2ad0da2f2f03d60d4340a6bf4`  
		Last Modified: Thu, 16 Jul 2026 00:22:09 GMT  
		Size: 129.6 MB (129614203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eabc0a00f417ed8208fb1eec28da7e6db53bba7535125572cc80f77d595428c`  
		Last Modified: Thu, 16 Jul 2026 00:22:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3a98bf8f0ff125af4ed4dd133cc93541e86dfc58463c917431609084231b55`  
		Last Modified: Thu, 16 Jul 2026 00:22:06 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85df833e0754af188a5a04a3e42f651f07ce311743ac4fad6f7c9f8227c8e80`  
		Last Modified: Thu, 16 Jul 2026 01:23:55 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0770d4ae5fdc3f4874a8bd9badf08d4afdc489a6cdebe934e088a3e8eb1e02`  
		Last Modified: Thu, 16 Jul 2026 01:23:57 GMT  
		Size: 39.2 MB (39187714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a929d8d9bcc922a77992462a14b84abaa675a3534ef0cea8eec93db428bf07`  
		Last Modified: Thu, 16 Jul 2026 01:23:59 GMT  
		Size: 138.1 MB (138068547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08d1b2259219a9fc2bd4b862ca471d784c08116f9f378ce73b513508549b029`  
		Last Modified: Thu, 16 Jul 2026 01:23:55 GMT  
		Size: 35.0 KB (35006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:5f5f01a1633711bfd4ca1802faf6ec7a40548959aa1fc3750c8a78286b2ed49c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5446136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1bbbd15d700de0b2238c5cd2ecd4aaceece7b53ced159cbdb6aff10c440837`

```dockerfile
```

-	Layers:
	-	`sha256:ee944c53f59cb3adfae4a3db2429b7acbb2204a9d1e8566c7a821006be07de13`  
		Last Modified: Thu, 16 Jul 2026 01:23:55 GMT  
		Size: 5.4 MB (5421573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bad0eeeae5f98decbfa407743c9322e7e3273105d24edffeec85d1e79c1eb3b8`  
		Last Modified: Thu, 16 Jul 2026 01:23:55 GMT  
		Size: 24.6 KB (24563 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:fe59eaa01c076d9db41eb1e689bae475a20101b45bab7992caf526c9634869ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.1 MB (365095716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c7e8972533c568b53303d070f832e424e0f22c9256fff7e74287cb7ac6e568`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 Jul 2026 05:32:28 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:32:28 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:32:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:32:28 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:32:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:32:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:32:28 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:32:28 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:32:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:32:28 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:32:28 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:32:28 GMT
ENV container oci
# Wed, 15 Jul 2026 05:32:29 GMT
COPY dir:daffa1ee98af6c9f76cd1144bc41c17c6569ae0c88ad9f749c4925a38185c7df in /      
# Wed, 15 Jul 2026 05:32:29 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:32:29 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:32:29 GMT
COPY dir:74bdab3c32a8d63e77dca5fda823480a5cdb49023a96684ef4f94da0485ecd0a in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:32:29 GMT
COPY dir:74bdab3c32a8d63e77dca5fda823480a5cdb49023a96684ef4f94da0485ecd0a in /root/buildinfo/      
# Wed, 15 Jul 2026 05:32:30 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:31:23Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:31:23Z" "architecture"="s390x" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:31:23Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:18:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:18:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:18:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:18:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:18:43 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 16 Jul 2026 00:18:50 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:18:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:18:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:18:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:18:51 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 00:28:04 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 00:28:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 00:28:04 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 00:28:04 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 00:28:04 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 00:28:10 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 00:28:10 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 16 Jul 2026 00:28:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 16 Jul 2026 00:28:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 00:28:14 GMT
USER gradle
# Thu, 16 Jul 2026 00:28:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 00:28:14 GMT
USER root
```

-	Layers:
	-	`sha256:f369a7f675eb8ded74d907a09acda3d3691701bc1302e978bfeda9bbb7486c00`  
		Last Modified: Wed, 15 Jul 2026 06:14:39 GMT  
		Size: 38.7 MB (38727498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399f35b7e77a4bb7d092f3e47c1cd681e94cd087ca3fee47229665e0664acb96`  
		Last Modified: Thu, 16 Jul 2026 00:19:15 GMT  
		Size: 27.7 MB (27683818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851568bfbbf219e176a1f1d54a4e136064e35f603028a0ac481f1c18c717d8c1`  
		Last Modified: Thu, 16 Jul 2026 00:19:17 GMT  
		Size: 123.1 MB (123061440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f99b90cfe03cb9aab7393cbde001fdab06fb9b858ca3cab8870fec8671ad90`  
		Last Modified: Thu, 16 Jul 2026 00:19:14 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9fd485005e032e32bfa5c2c9f82b831f39e00ed1b896b01162f4daeaa3a32`  
		Last Modified: Thu, 16 Jul 2026 00:19:14 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fea7a38c616288765fbe4fa953ae52482217c4d7138c18e73fd1ba5417ba33`  
		Last Modified: Thu, 16 Jul 2026 00:28:39 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf88b7e0af5a235fbeb129e59ddfe718f04d228bf7b711f270875a32635c6665`  
		Last Modified: Thu, 16 Jul 2026 00:28:40 GMT  
		Size: 37.5 MB (37515258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9569a6419b1b8feae99b34d8e98bec1d7917c9ad9918691e2595f46803740ef`  
		Last Modified: Thu, 16 Jul 2026 00:28:42 GMT  
		Size: 138.1 MB (138068536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:915dc70414f0a778a6d285adce8742c2eeb36decb52e8ebbac16bc3dd02f09cb`  
		Last Modified: Thu, 16 Jul 2026 00:28:39 GMT  
		Size: 35.0 KB (35005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:307c4caead25d31cb3ea6ffa6fe16f919967c37fbd7b2c6178c5ea82fcd65e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5435914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9a7e6792c187d0023bfed3d48da60f830b4bdb08d4083849054187634264a4`

```dockerfile
```

-	Layers:
	-	`sha256:6d2d02f9ae92ff4e11b13d1cd087bd60b54f2e97ecbe6f4e2c5ef52212059aef`  
		Last Modified: Thu, 16 Jul 2026 00:28:39 GMT  
		Size: 5.4 MB (5411424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52ac72df9d04f706fd7f35f716b111bf7e99e41aeae3c28efa74338d55915344`  
		Last Modified: Thu, 16 Jul 2026 00:28:39 GMT  
		Size: 24.5 KB (24490 bytes)  
		MIME: application/vnd.in-toto+json
