## `gradle:8-jdk11-ubi`

```console
$ docker pull gradle@sha256:ff97cb37e7bd92f71288166b2bfe1157be111a99aed3a68951480298c6b74b62
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
$ docker pull gradle@sha256:3fb165aedf88cf57e2684ebab6473b9bf7c15ac2b2410f9f0981844243768672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.4 MB (386368418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c299a50e62c802385e4efff0da5972e15a1af1a5d42d17670dbc13477f6218b5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:09:57 GMT
ENV container oci
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:8b42b9fcf597f41b80a8fe199f2bf302332cfc86735eda7e5948c6f2d9073e65 in /      
# Tue, 21 Jul 2026 01:09:58 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:09:58 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:b745d7b8674edb55898cbd7ca84df6b3ac35b32be96c9a6e6425437dd5390ced in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:b745d7b8674edb55898cbd7ca84df6b3ac35b32be96c9a6e6425437dd5390ced in /root/buildinfo/      
# Tue, 21 Jul 2026 01:09:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:09:09Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:09:09Z" "architecture"="x86_64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:09:09Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 17:04:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 17:04:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:04:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 17:04:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:04:13 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 21 Jul 2026 17:04:19 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 17:04:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 17:04:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 17:04:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 17:04:20 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:20:02 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:20:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:20:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:20:02 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:20:02 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:20:07 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:20:07 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 21 Jul 2026 17:20:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 21 Jul 2026 17:20:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:20:10 GMT
USER gradle
# Tue, 21 Jul 2026 17:20:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:20:10 GMT
USER root
```

-	Layers:
	-	`sha256:a03e2de3abb5028372473288295f20855a0a709800a709cde6a88cfbb137abc3`  
		Last Modified: Tue, 21 Jul 2026 04:10:18 GMT  
		Size: 40.7 MB (40697275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0efa247b4f62b2bb1864a4fc1ad1a91c088a98c1bf381f1b983f3f2a3778cde`  
		Last Modified: Tue, 21 Jul 2026 17:04:34 GMT  
		Size: 13.5 MB (13532123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb318c1534d07ef156a9640858c0fd41cb70979efe1124fcf6a42d6d4e2919e4`  
		Last Modified: Tue, 21 Jul 2026 17:04:37 GMT  
		Size: 142.3 MB (142348799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184a3d632ba1e9b1989100aed9637ef5ceedb9f4a0a2b6c28141231202d9ae14`  
		Last Modified: Tue, 21 Jul 2026 17:04:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b76250a2d0130b2f818fef54fdf4721375959c31220ca4db951b32845c70190`  
		Last Modified: Tue, 21 Jul 2026 17:04:34 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860b824a29244a84ae3d9ca801dd4457fee57aa63f7a4ab5595232c5e24738d7`  
		Last Modified: Tue, 21 Jul 2026 17:20:29 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b60e8d4fad49973001831b81aa7547453a9e9873c38873c766b0842ce6b5e7`  
		Last Modified: Tue, 21 Jul 2026 17:20:31 GMT  
		Size: 51.7 MB (51662917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3b6070c6ac0770a8dc6437cee6cb251d42ab5974d5c48f61b3ed399b286e86`  
		Last Modified: Tue, 21 Jul 2026 17:20:33 GMT  
		Size: 138.1 MB (138068535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a2d6a4f86afa458836986bf6032262d37819fa7ca604314a25fadcbbb056ac`  
		Last Modified: Tue, 21 Jul 2026 17:20:29 GMT  
		Size: 54.9 KB (54899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:5fb89bee049141eef2f3da8a69b584b41c7e27be788d6c46fab339f1cab10d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5451095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97aa8a10438696eba2026aaa4717d89cddb0d1ca9584ac87deaf781061e248a5`

```dockerfile
```

-	Layers:
	-	`sha256:010e87b1ee97e9178c5112ed59e6fea1a19bdb96a8e263291ee99cb5e085f04e`  
		Last Modified: Tue, 21 Jul 2026 17:20:29 GMT  
		Size: 5.4 MB (5426605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fe17e7385e7aa5dc883fc59e4206eaf6dc24908a39706aacbb37c62d879ffec`  
		Last Modified: Tue, 21 Jul 2026 17:20:29 GMT  
		Size: 24.5 KB (24490 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:42630067e1ba14cfbcd17a8076e4de44f282a752ffe63211a00c074556df2638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.9 MB (380890665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bffcb8d5ce5128c90b753d52831384f06891400d158995e752b6ad19a0edc31`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:10:52 GMT
ENV container oci
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:91cba88ba8f66a4d62e50f78add4d1fd07a5799e60037509c9ca5a48fefaa091 in /      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:10:53 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:10:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:10:31Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:10:31Z" "architecture"="aarch64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:10:31Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 16:59:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 16:59:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:59:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 16:59:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 16:59:59 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 21 Jul 2026 17:00:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 17:00:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 17:00:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 17:00:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 17:00:08 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:11:00 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:11:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:11:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:11:00 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:11:00 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:11:04 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:11:04 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 21 Jul 2026 17:11:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 21 Jul 2026 17:11:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:11:07 GMT
USER gradle
# Tue, 21 Jul 2026 17:11:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:11:08 GMT
USER root
```

-	Layers:
	-	`sha256:87b99ca60407b5b3044b907de710ecb00dd7222e3a38acbc4a3fc51d11d7c04e`  
		Last Modified: Tue, 21 Jul 2026 05:00:39 GMT  
		Size: 38.8 MB (38807059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795e363a5281958b74b45868982be35a8c8411d0f52e8d2ae7cb2dc8cd67b28f`  
		Last Modified: Tue, 21 Jul 2026 17:00:24 GMT  
		Size: 14.1 MB (14051233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1105cf6311942ed37445e284c7c599e62489b58c146336b0ba718b42ed227c`  
		Last Modified: Tue, 21 Jul 2026 17:00:27 GMT  
		Size: 139.0 MB (139040655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09676de281b2bdd1d36bb301d41f2eb565daf1ae5ea6dbf3aa440e0f26c91a7`  
		Last Modified: Tue, 21 Jul 2026 17:00:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adbc7f8a5bd38249c7fb9d5174e60fec6cb52387827431bf7e3d2fcbf315fd36`  
		Last Modified: Tue, 21 Jul 2026 17:00:23 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be9de1a1c43df273a863f9427698b505eb5aa6676e587071d1f1d7d7af67571`  
		Last Modified: Tue, 21 Jul 2026 17:11:24 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fa358ad006844d4cbdde91c85c1cb02f517acfb92a33490fd4ce44a0eb4a58`  
		Last Modified: Tue, 21 Jul 2026 17:11:26 GMT  
		Size: 50.9 MB (50859783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077b9fa3df480e69fe405bbf3d54830ce2eab72a264e64b6947b2f2ffa609b17`  
		Last Modified: Tue, 21 Jul 2026 17:11:28 GMT  
		Size: 138.1 MB (138068535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5988421693f9f586368938efd9daa748ace79db685c8da661a0ba80f82fc3ca`  
		Last Modified: Tue, 21 Jul 2026 17:11:24 GMT  
		Size: 59.5 KB (59531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:496c3397e1f9d0d91391ea787be00f607e69d97226d6adcfee7c6c0922c969b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5449558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:addaf2546a658110e22dd84719804f2705646d96a416cb6c47f743f0a9579a5b`

```dockerfile
```

-	Layers:
	-	`sha256:cbfb1afa744d23cd879f4360ab22acc36bd100d3ece915d5c19c1d5ffe08a375`  
		Last Modified: Tue, 21 Jul 2026 17:11:25 GMT  
		Size: 5.4 MB (5424871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b9e8faf17406a671cb3143d1c452b69b1a25a8c004ea1664009cd7abdd97807`  
		Last Modified: Tue, 21 Jul 2026 17:11:24 GMT  
		Size: 24.7 KB (24687 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:05018cdc6c539113ba8b147714c3b6ee886c9309894aa7720f08908bd61ff0c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381729845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:634a8b9e1a564d9740ae912664449649a84945e1bdf9fe2464a4db150da87bd2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:10:30 GMT
ENV container oci
# Tue, 21 Jul 2026 01:10:30 GMT
COPY dir:a6f2140a2fe01438c7cedec424555d3db113406c9c5302f562b664a2559696b3 in /      
# Tue, 21 Jul 2026 01:10:30 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:10:30 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:10:30 GMT
COPY dir:0869d3611abdf6916e5ce14328c4b46fcbfd6870491bde8d7c09487e4731e110 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:10:31 GMT
COPY dir:0869d3611abdf6916e5ce14328c4b46fcbfd6870491bde8d7c09487e4731e110 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:10:31 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:10:13Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:10:13Z" "architecture"="ppc64le" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:10:13Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 16:50:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 16:50:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:50:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 16:50:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 16:50:43 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 21 Jul 2026 16:52:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 16:52:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 16:52:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 16:52:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 16:52:52 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:13:51 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:13:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:13:51 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:13:51 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:13:53 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:14:18 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:14:18 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 21 Jul 2026 17:14:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 21 Jul 2026 17:14:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:14:25 GMT
USER gradle
# Tue, 21 Jul 2026 17:14:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:14:27 GMT
USER root
```

-	Layers:
	-	`sha256:a5582cc7ecb947a7b363b8c315634ecd32e9ab06fc9edafac3f8b88d5fcf7582`  
		Last Modified: Tue, 21 Jul 2026 06:11:09 GMT  
		Size: 45.1 MB (45129957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34518ea14982cc6d43f1708ea7c62ee3e4ef6495bad59b170fcd0006baa2625`  
		Last Modified: Tue, 21 Jul 2026 16:51:23 GMT  
		Size: 15.1 MB (15143459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232b43b69f1b75ea36c2572f9c1a1926156e3cb02c421001de1836934ae9575d`  
		Last Modified: Tue, 21 Jul 2026 16:53:31 GMT  
		Size: 129.6 MB (129614217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31a4fe1e706486fa1c21d371861b0589a4a19fd294efbbed8ae430c33fed7fc`  
		Last Modified: Tue, 21 Jul 2026 16:53:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e802c179cd32fea8b01e3db324afa74a1ed9f1ffa676b373de17c54fc80afa4f`  
		Last Modified: Tue, 21 Jul 2026 16:53:27 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7011f9aa9b436fbf6d86c4e0d0858cea02b25b980fa6183013c07c3580fe8c36`  
		Last Modified: Tue, 21 Jul 2026 17:15:08 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a7a445ba4234075292ec8b5145cb38cc7098d5630affc84e879135b07c2776`  
		Last Modified: Tue, 21 Jul 2026 17:15:11 GMT  
		Size: 53.7 MB (53734797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a40a71b09548f1f6896c077ff8d039d2b4ff4471dc9a57d54ea8b3baea1c31`  
		Last Modified: Tue, 21 Jul 2026 17:15:13 GMT  
		Size: 138.1 MB (138068541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3449696575a79e00fa0a7746184abba39796fefd60e87d487e9f224a26977c`  
		Last Modified: Tue, 21 Jul 2026 17:15:08 GMT  
		Size: 35.0 KB (35007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:9ceb7d1ca3918acaa8fd2dc5d91a0e5906add906a1849c55308c34593e65392b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5446145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09fff4ab1ff2bd760ca6290e85c95354d082c4898966e3246cdbfb361333d8b7`

```dockerfile
```

-	Layers:
	-	`sha256:7be790bc731e743df12683a3a0f9249f368ff52ea90f7b3d79807ccf537f1546`  
		Last Modified: Tue, 21 Jul 2026 17:15:08 GMT  
		Size: 5.4 MB (5421581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49a446bd665b178ebe34a65b6238765d643fc965e5d05554ee67130bc06b7410`  
		Last Modified: Tue, 21 Jul 2026 17:15:08 GMT  
		Size: 24.6 KB (24564 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:caa45e1266692348a6882e801252281591bec3d9d1c2dd6e30c3521c7d0168a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.1 MB (365099760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76822b932aa1a7bd732423df6352a7af574d0d70f9b2aa1b0798508fab38c74`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:19:20 GMT
ENV container oci
# Tue, 21 Jul 2026 01:19:20 GMT
COPY dir:bdc996a75c84fc88425f33a7d1bf350e2bc028ff4b4a542a7f650bbe93627c06 in /      
# Tue, 21 Jul 2026 01:19:20 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:19:20 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:19:20 GMT
COPY dir:ff4c148529ae762e64c6addf17dd2488a09966186c1274718d0ec593def9b204 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:19:20 GMT
COPY dir:ff4c148529ae762e64c6addf17dd2488a09966186c1274718d0ec593def9b204 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:18:20Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:18:20Z" "architecture"="s390x" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:18:20Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 16:50:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 16:50:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:50:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 16:50:46 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 16:50:46 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 21 Jul 2026 16:50:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 16:50:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 16:50:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 16:50:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 16:50:54 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:02:34 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:02:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:02:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:02:34 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:02:34 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:02:38 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:02:38 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 21 Jul 2026 17:02:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 21 Jul 2026 17:02:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:02:42 GMT
USER gradle
# Tue, 21 Jul 2026 17:02:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:02:43 GMT
USER root
```

-	Layers:
	-	`sha256:2f7677930089559faf58a771ff6e526985999fa9988089b71e6c02d4cc584f67`  
		Last Modified: Tue, 21 Jul 2026 05:00:39 GMT  
		Size: 38.7 MB (38727940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ec5dccd9f482359568a68fb85d318e98cf940a3a2ba8dea6f60c467ca6997b`  
		Last Modified: Tue, 21 Jul 2026 16:51:17 GMT  
		Size: 27.7 MB (27686297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9365e0105c02af904aab1990c8e0976c39404c0ad13095409ef2df3a6510be95`  
		Last Modified: Tue, 21 Jul 2026 16:51:19 GMT  
		Size: 123.1 MB (123061404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9df72cc5cf528a3adda6e711edc677a9e679dec6f46eaccf77f701f8f26b45`  
		Last Modified: Tue, 21 Jul 2026 16:51:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fb6119e58282d00aebaf3e7a07fcd7880d315677d1004112c498dfc7a6319f`  
		Last Modified: Tue, 21 Jul 2026 16:51:16 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f4aef37509f83b453d0dec77c664343eb70a1ed5c89e197aa85100107c5d16`  
		Last Modified: Tue, 21 Jul 2026 17:03:09 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6103a133c96b3fbb4026800ee52e6f9a7a61072a6dca6064a5643906f33e271`  
		Last Modified: Tue, 21 Jul 2026 17:03:10 GMT  
		Size: 37.5 MB (37516414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ba9932bc77c602a84c63ba47f7516dcce2eac207b52e0254e759b6dd4ee83c`  
		Last Modified: Tue, 21 Jul 2026 17:03:12 GMT  
		Size: 138.1 MB (138068535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428c4a8b7765018094d512ec344a6c327ce67e0235088f0a25dce1a8b4507066`  
		Last Modified: Tue, 21 Jul 2026 17:03:09 GMT  
		Size: 35.0 KB (35009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:dfaa08279d5ac8df38aa07b18dd776ba4af5b27cf466cf8a48d5cf1f189b2cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5435914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e094d74f6eb6802f1fdbc0c79e55ad14b5265c9ca80133602f2c8e7257ff60`

```dockerfile
```

-	Layers:
	-	`sha256:e0e1b7ee301b9106f5693f82300b747ad39e55e085b4d8ee061b598ed63984b5`  
		Last Modified: Tue, 21 Jul 2026 17:03:09 GMT  
		Size: 5.4 MB (5411424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2476685ba797016416064d84e84bd82f846133ac6c0296bc0f47f36d5809aecc`  
		Last Modified: Tue, 21 Jul 2026 17:03:09 GMT  
		Size: 24.5 KB (24490 bytes)  
		MIME: application/vnd.in-toto+json
