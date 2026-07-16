## `gradle:7-jdk11-ubi9`

```console
$ docker pull gradle@sha256:3436adebabca2574b9b2ab421272951f48986be8f462d7e2775231601ce069ce
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

### `gradle:7-jdk11-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:cfefb0c609fd175f614fa7e767ba873e197e4e92a40ddf837c92514a55dfd845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.2 MB (377150790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e50be2e1c4849dac1018dd1a7caeccf9058a81840762c2fb12e03e7b4f5331d`
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
# Thu, 16 Jul 2026 01:14:44 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:14:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:14:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:14:44 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:14:44 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:14:47 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:14:47 GMT
ENV GRADLE_VERSION=7.6.6
# Thu, 16 Jul 2026 01:14:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Thu, 16 Jul 2026 01:14:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:14:50 GMT
USER gradle
# Thu, 16 Jul 2026 01:14:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 16 Jul 2026 01:14:50 GMT
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
	-	`sha256:7d437b17acbfe18d1fccaf33dfb63e31ec42db599c6edc2cbf6eee4b82d1be7b`  
		Last Modified: Thu, 16 Jul 2026 01:15:05 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a693ca39e8e20a054c6610e8bf2ce58f5842e925b63642c171bf99d69e3ebd09`  
		Last Modified: Thu, 16 Jul 2026 01:15:07 GMT  
		Size: 37.9 MB (37924466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea9d410089cb130768056b844fc572d42c8d777ebee537f5134e6034190ad20`  
		Last Modified: Thu, 16 Jul 2026 01:15:09 GMT  
		Size: 128.5 MB (128469419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a222a4059a48f567a2c113d0435ece0203404173d27c8003ede5e1a71e41cc9`  
		Last Modified: Thu, 16 Jul 2026 01:15:05 GMT  
		Size: 54.9 KB (54901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:263d83167128309fadd145560ab1d184719b761d6cc64f0a06c82c4244e71876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5360191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ff11088785ae67ce5762b8bb8cfbc6e014a37eafe9244b7f1535d5461fc18a`

```dockerfile
```

-	Layers:
	-	`sha256:11a46b92f8aaaa9fed9cf9c9cd2dcd16b4edd097a19c1678d066f320dfd53148`  
		Last Modified: Thu, 16 Jul 2026 01:15:06 GMT  
		Size: 5.3 MB (5336644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:586bbf5663ee834bef97b1adbba050a8dd7f08541a033a3ed3bf8f7aecc5d820`  
		Last Modified: Thu, 16 Jul 2026 01:15:05 GMT  
		Size: 23.5 KB (23547 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk11-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:cfe6f687488efbc8eeab8fac8e3e5a747e83c58e3313218f9caa425f2c4cc1bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.7 MB (371702487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71480f74c68096cf62bf991394ad834a78fc3b5c5a761b1200f20f55d1349d4`
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
# Thu, 16 Jul 2026 01:13:47 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:13:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:13:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:13:47 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:13:47 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:13:51 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:13:51 GMT
ENV GRADLE_VERSION=7.6.6
# Thu, 16 Jul 2026 01:13:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Thu, 16 Jul 2026 01:13:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:13:53 GMT
USER gradle
# Thu, 16 Jul 2026 01:13:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 16 Jul 2026 01:13:54 GMT
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
	-	`sha256:c1eae6c01474e938b4e3db675e9c1033a28dc59b4a547b9bb985a473a63e84e8`  
		Last Modified: Thu, 16 Jul 2026 01:14:10 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c7ccdf31f95a39ea9c16eeaa5a00586bdc2d833bf05122368487a1d5ca3d3e`  
		Last Modified: Thu, 16 Jul 2026 01:14:12 GMT  
		Size: 37.2 MB (37205436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e70071e98bd85d6c293a1319e7b20a7eb68d7176fe8e663871ce9994be5f2ab`  
		Last Modified: Thu, 16 Jul 2026 01:14:14 GMT  
		Size: 128.5 MB (128469420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29f29bd659d0b6ad11cfabd5a7054f7def240433f55d3d545d7b93b3f73f6f4`  
		Last Modified: Thu, 16 Jul 2026 01:14:10 GMT  
		Size: 59.5 KB (59529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:37a7948b4fa1bd76c13b7e73d1c7e384ae3ffcba5e56f4e79d1346632e3f182b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5358606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ecffbc5f17593c0a951e833bfff75bb5405eb5ea7ad4913e2e5496c2620411`

```dockerfile
```

-	Layers:
	-	`sha256:9d4964f97186e936ef060de35b9c486b093e876c8fa4fb22ae1be42b01f8ec54`  
		Last Modified: Thu, 16 Jul 2026 01:14:10 GMT  
		Size: 5.3 MB (5334886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a28183e8d0ef358f99846ec321bf4dba889a6e80fd8a1562df05189fbd1e6442`  
		Last Modified: Thu, 16 Jul 2026 01:14:10 GMT  
		Size: 23.7 KB (23720 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk11-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:ad1f5f82ea66caf90de066403000a3883a6f445f73ca7a28a4b39e7857cb5a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.5 MB (372467667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50870247334001638d753eddbf6ecd94106ad9635b26216d8486fc285deab3a1`
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
ENV GRADLE_VERSION=7.6.6
# Thu, 16 Jul 2026 01:24:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Thu, 16 Jul 2026 01:24:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:24:32 GMT
USER gradle
# Thu, 16 Jul 2026 01:24:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
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
	-	`sha256:aced5fbe25fd0a7b7af7a7cfb59f667169f9c1dd3d4aecb06348813fb54ec919`  
		Last Modified: Thu, 16 Jul 2026 01:25:12 GMT  
		Size: 128.5 MB (128469446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d730abd7b9b56c5d7121ff168a27bf4fb3915a8f04ffaa9a75b63b62d9a3e60a`  
		Last Modified: Thu, 16 Jul 2026 01:25:08 GMT  
		Size: 35.0 KB (35010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:78024baed19737c8af12ce1752fc2476c96d823091cbc59743da3ed58f496d9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13c6715329113084dc1b4acdccaced434e6a1f1fec6a86423196dbd16aa5d31`

```dockerfile
```

-	Layers:
	-	`sha256:eb4db3829203beec93595f4f6a5a6d66970ad3ba43897890d48ecd583310b222`  
		Last Modified: Thu, 16 Jul 2026 01:25:08 GMT  
		Size: 5.3 MB (5331608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e679cfd7edfaa70399ff1d9991880fcf0a09235c04d3a87b5068653398a67ed`  
		Last Modified: Thu, 16 Jul 2026 01:25:08 GMT  
		Size: 23.6 KB (23643 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk11-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:546f3a833b495980aba8ba3bd5891cefaab73a9e575f730da9405ed18ee91408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.5 MB (355496714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43a6fe8568b0e375d5779fde2d83de370e5f917b88d9ab334b7f9c9d0ee6a87`
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
# Thu, 16 Jul 2026 00:28:42 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 00:28:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 00:28:42 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 00:28:42 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 00:28:42 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 00:28:47 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 00:28:47 GMT
ENV GRADLE_VERSION=7.6.6
# Thu, 16 Jul 2026 00:28:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Thu, 16 Jul 2026 00:28:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 00:28:51 GMT
USER gradle
# Thu, 16 Jul 2026 00:28:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 16 Jul 2026 00:28:51 GMT
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
	-	`sha256:3dfe045f5a1defc78a36909d1e81f8eafc41bd23a1dd9b08e0489a1b32cb82c6`  
		Last Modified: Thu, 16 Jul 2026 00:29:13 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1abff91e9df464dc3c0809d6d33414948a5d22c0e91c41c1308b308d9f3db8d8`  
		Last Modified: Thu, 16 Jul 2026 00:29:15 GMT  
		Size: 37.5 MB (37515350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f9457399d43e6b7f6eb2c04a40fa5241646a2b0b2bca5aafdbeba192f70de2a`  
		Last Modified: Thu, 16 Jul 2026 00:29:16 GMT  
		Size: 128.5 MB (128469446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45be072fbf0a9f130bb3d373550ab34fa1974cf5f6b1e6a1bc50a747c4da54e1`  
		Last Modified: Thu, 16 Jul 2026 00:29:14 GMT  
		Size: 35.0 KB (35002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:df52143dae9a39d7d907962c6e4781a57f933bc82a16cdf4693d8617e2bedbe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5345050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83953526d063edafc9d103a782a0e20f331a83a8ff6b2563a85f4fc3271c20f8`

```dockerfile
```

-	Layers:
	-	`sha256:897a07f893f62e2ace2b2b084b642d43530cb737157756597e12fd67e07bf942`  
		Last Modified: Thu, 16 Jul 2026 00:29:14 GMT  
		Size: 5.3 MB (5321467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5dccce4737dc2b431546e77854fe40a47eb3a3f575c00f8edbd9b3c72aac96`  
		Last Modified: Thu, 16 Jul 2026 00:29:14 GMT  
		Size: 23.6 KB (23583 bytes)  
		MIME: application/vnd.in-toto+json
