## `gradle:6-jdk11-ubi`

```console
$ docker pull gradle@sha256:118ddd0265608d207725bf8849467e335f52b4706bf16ed954a891c2f441681f
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

### `gradle:6-jdk11-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:98bca04be9d937c4676054f0a07d9ddc4ac4cd1166dc118a7b5b6f6f55d63b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.8 MB (356754437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b210c61eb61b13196107661ee26fd15b1769799f7b1cd06b2df293ae0fc4b2f`
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
# Thu, 16 Jul 2026 01:14:54 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:14:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:14:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:14:54 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:14:54 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:14:58 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:14:58 GMT
ENV GRADLE_VERSION=6.9.4
# Thu, 16 Jul 2026 01:14:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Thu, 16 Jul 2026 01:15:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:15:00 GMT
USER gradle
# Thu, 16 Jul 2026 01:15:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 16 Jul 2026 01:15:00 GMT
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
	-	`sha256:12f76fe09034836ea035465df919f5105130fd1594e126555e24920606b7f06f`  
		Last Modified: Thu, 16 Jul 2026 01:15:16 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742c00c7e3e1b2bccbbdbbecbc4a3ed22add4264392b4a5f70835d1090b532d3`  
		Last Modified: Thu, 16 Jul 2026 01:15:17 GMT  
		Size: 37.9 MB (37924497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0f45ec7c7815572ccc744f94a98b2819ae31a893bcfb9f671061e7e6373cf3`  
		Last Modified: Thu, 16 Jul 2026 01:15:19 GMT  
		Size: 107.7 MB (107696668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f5b86b909687dd85d019c5c8593c17b0c6f442f1e961b5bb2166e01d6247428`  
		Last Modified: Thu, 16 Jul 2026 01:15:16 GMT  
		Size: 431.3 KB (431267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:5531b16ed2a74a866c5804b9aa725cdfb1559eca351b5eac03a2f5e5de851a33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5342291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e67b40c45bb51a01b3529529038800533d9079e480c28dc55392daddb6aba3`

```dockerfile
```

-	Layers:
	-	`sha256:93a9363daf8ba697cc5401a9953a7ed475a8c1dd7a2eeec3ba5bd9efc81b9b7f`  
		Last Modified: Thu, 16 Jul 2026 01:15:16 GMT  
		Size: 5.3 MB (5318744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4418ad234757274ba8e98ac6417be7837a6072110d983cd4df8fca73d1e003b7`  
		Last Modified: Thu, 16 Jul 2026 01:15:15 GMT  
		Size: 23.5 KB (23547 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:bb7119f7ea672e751a5a769015a2a0a4acc10d596129fb410ea0e858478f5ad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.3 MB (351295279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f293378f81922109910e62a8e0c6f6de2b46e30a35399023c82bf0f08901a6`
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
# Thu, 16 Jul 2026 01:14:55 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:14:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:14:55 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:14:55 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:14:55 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:14:59 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:14:59 GMT
ENV GRADLE_VERSION=6.9.4
# Thu, 16 Jul 2026 01:14:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Thu, 16 Jul 2026 01:15:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:15:02 GMT
USER gradle
# Thu, 16 Jul 2026 01:15:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 16 Jul 2026 01:15:02 GMT
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
	-	`sha256:ac998ee119d8def566d0826ecb55ca3d48dfcd30613261e0aaa17da3d7d60a32`  
		Last Modified: Thu, 16 Jul 2026 01:15:18 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359147a329ed4993322c77da1edf02e17e94331503d72a4ef4c1e5d613044e31`  
		Last Modified: Thu, 16 Jul 2026 01:15:19 GMT  
		Size: 37.2 MB (37205483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d248a06d41723eb2224ced7571234d9626caf5befd106b6a2223e220a6fc031`  
		Last Modified: Thu, 16 Jul 2026 01:15:21 GMT  
		Size: 107.7 MB (107696674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60d908e7672ee43a648d8957a5eb6856e2b62447f9f9fa747ba0d2ecf3649b9`  
		Last Modified: Thu, 16 Jul 2026 01:15:18 GMT  
		Size: 425.0 KB (425021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:0962e3c8b2efd3c08194491b2004126b92333dd8969f217eb9e27bcbeeccf519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5340707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137b516d37d6b8b5bc60148e36da9a1e30da394007d5d824318e295ccb80de5e`

```dockerfile
```

-	Layers:
	-	`sha256:d7e16d79b060630ba66c161d9ae28c15f4cf25716d336da1cd3462bdd7aa14f6`  
		Last Modified: Thu, 16 Jul 2026 01:15:18 GMT  
		Size: 5.3 MB (5316986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e2cc9cac92235bd89e0ac6178565bb20bd8a1ffeb2f2a890c6472f4f52f2f86`  
		Last Modified: Thu, 16 Jul 2026 01:15:17 GMT  
		Size: 23.7 KB (23721 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:943b23d4e6984a59eb418534f3137e53fd2353b73ec69034c05ec8d94c5d906a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.7 MB (351694867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a467e23b5eab48d8fd65b11d924ae34ef1f0bc87653264bf13b7d0115953866`
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
# Thu, 16 Jul 2026 01:24:26 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:24:26 GMT
ENV GRADLE_VERSION=6.9.4
# Thu, 16 Jul 2026 01:24:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Thu, 16 Jul 2026 01:24:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:24:32 GMT
USER gradle
# Thu, 16 Jul 2026 01:24:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 16 Jul 2026 01:24:33 GMT
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
	-	`sha256:047fadd8eafb4c55bedf72692f583b2771de682ddbf6442889332c899da71767`  
		Last Modified: Thu, 16 Jul 2026 01:25:10 GMT  
		Size: 39.2 MB (39187756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e1df2e44a0d4e2a57717dbac908ec413f66430c9edfd3a80512fd11349bb46`  
		Last Modified: Thu, 16 Jul 2026 01:25:11 GMT  
		Size: 107.7 MB (107696672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c52e4f028e283f5a202e9fd0312c4c1210633aa37ada041c5cf0f55a435f9a`  
		Last Modified: Thu, 16 Jul 2026 01:25:08 GMT  
		Size: 35.0 KB (34984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:695bf01f652473af2b7b858071b09cd6048d72449bc441b002e91262d697ac10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5337353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d2f09ef73a2d4591460610701c2773390693d2ee613dad36f5eb257e6e2eba`

```dockerfile
```

-	Layers:
	-	`sha256:bf2d2adb14f585a7852434b7d084136e1fc71c66c330f5f4291fa929f5a2c78c`  
		Last Modified: Thu, 16 Jul 2026 01:25:08 GMT  
		Size: 5.3 MB (5313708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d6509908109168c8f00619cb1e1a11b7c7dbb26543c018f8a6676ee8320d225`  
		Last Modified: Thu, 16 Jul 2026 01:25:07 GMT  
		Size: 23.6 KB (23645 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:033e900928d0fb1b0f1973aa2c73dce7283cc7ebbecb81bc78e7f37ba0e360fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.7 MB (334723761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:960df08b941dfcf3165603e48a5f42c06c3bdf9594ab5240ebf08ed0e99f3120`
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
# Thu, 16 Jul 2026 00:29:01 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 00:29:01 GMT
ENV GRADLE_VERSION=6.9.4
# Thu, 16 Jul 2026 00:29:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Thu, 16 Jul 2026 00:29:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 00:29:04 GMT
USER gradle
# Thu, 16 Jul 2026 00:29:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 16 Jul 2026 00:29:05 GMT
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
	-	`sha256:f26b673bd3188f81a1594f5afea551220ef3f1ef04c5341cbc10b86c24a76d19`  
		Last Modified: Thu, 16 Jul 2026 00:29:27 GMT  
		Size: 37.5 MB (37515274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fe39a3839b4ad0acebf57781dd6ec2d78ef41e063810c33f307b3690cf4f1e`  
		Last Modified: Thu, 16 Jul 2026 00:29:28 GMT  
		Size: 107.7 MB (107696586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9869ab9a90ae93ceda2f3730e862e1c4486beeea0b63133ed111eb681045c24c`  
		Last Modified: Thu, 16 Jul 2026 00:29:26 GMT  
		Size: 35.0 KB (34984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:49f4b5d31517ec7bba48a9643b5fcd9b76727387284c5ade62fa21ed450a1800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5327153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d79b4dfd8ef1fc2f49fbf973c1a1f5793f563469e8afd3a65ba181d780b3bf`

```dockerfile
```

-	Layers:
	-	`sha256:96aeb1589948e0afddb74c87a6bcfc85da73e6e479975d3e20270b40af0a7883`  
		Last Modified: Thu, 16 Jul 2026 00:29:26 GMT  
		Size: 5.3 MB (5303571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5f2b5914f40f1520a22b98d7a93f6c97242584f5b0cfb8bbb9131d664377a10`  
		Last Modified: Thu, 16 Jul 2026 00:29:26 GMT  
		Size: 23.6 KB (23582 bytes)  
		MIME: application/vnd.in-toto+json
