## `gradle:6-jdk11-ubi9`

```console
$ docker pull gradle@sha256:6b19f6c85ec8f0e41d99def8ccb9de92f1b437c9786c96a144f693d20e20a836
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

### `gradle:6-jdk11-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:57cf7c5107c17556d26dc66384e01e668a3712833c1b5573eff5c1abdd9d54b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.4 MB (356372929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751f7632bb7724f5e5dac98c4cea9b645e3d0c5320817c26f67d59f752af942d`
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
# Tue, 21 Jul 2026 17:20:45 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:20:45 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 21 Jul 2026 17:20:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 21 Jul 2026 17:20:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:20:47 GMT
USER gradle
# Tue, 21 Jul 2026 17:20:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 21 Jul 2026 17:20:48 GMT
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
	-	`sha256:8588bbe96d77cce0ef6ec25bb2ca9363e5254a9f95a611674bba8dd7de361dea`  
		Last Modified: Tue, 21 Jul 2026 17:21:06 GMT  
		Size: 51.7 MB (51662916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f7f8440b983b107b571cbd7e41d24ca48152ee061a885c094afff8ecaefa05`  
		Last Modified: Tue, 21 Jul 2026 17:21:07 GMT  
		Size: 107.7 MB (107696671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0013825ad4e2bb395d483b37ae7f53dbd6e857510dd5316e785434bf54106af2`  
		Last Modified: Tue, 21 Jul 2026 17:21:04 GMT  
		Size: 431.3 KB (431275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:a5925a6aae2540f7b555976defa9f91b090e77a57bc6d4a75c88cf118b784335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5342336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b39a306d6d822681827ffc3a4e83ac5030208953b59a5ac98ffee5bfd8358b`

```dockerfile
```

-	Layers:
	-	`sha256:6a5485ede50415180a0c9b404633c829d0f0864ff64ad034c130aebfbd2e9bae`  
		Last Modified: Tue, 21 Jul 2026 17:21:04 GMT  
		Size: 5.3 MB (5318752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0404062c7c8af7a61af30690bb0230aa6cd2925e0ef8f20b5bab9d9979317a3`  
		Last Modified: Tue, 21 Jul 2026 17:21:04 GMT  
		Size: 23.6 KB (23584 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:7bf3ac46e8d5c6f5070eb7968163ceddddc9c7a2e43904cdcaa71363c45a174b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.9 MB (350884494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9124dd5bcb2a77ffc724388b7c0b15bc5870a23c9064d8c2e057a441c86e829`
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
# Tue, 21 Jul 2026 17:11:32 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:11:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:11:32 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:11:32 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:11:32 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:11:36 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:11:36 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 21 Jul 2026 17:11:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 21 Jul 2026 17:11:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:11:38 GMT
USER gradle
# Tue, 21 Jul 2026 17:11:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 21 Jul 2026 17:11:39 GMT
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
	-	`sha256:113f5926b52159d91639df22a68d9eb4d52040d49e6242088d1bf6fe9b8c0cbe`  
		Last Modified: Tue, 21 Jul 2026 17:11:55 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48cddb9c7b74dff0466b3446e243f28afede200b9007884db8e876ffb9af4b1`  
		Last Modified: Tue, 21 Jul 2026 17:11:57 GMT  
		Size: 50.9 MB (50859986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84033ef12a03001af15a8f35acead3d16f02cbaf36b26e2e55d77b84ac8aeb51`  
		Last Modified: Tue, 21 Jul 2026 17:11:59 GMT  
		Size: 107.7 MB (107696671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9053f6338fdd5ffb8c9354c118909c51e0f376f4739d2fd1a43dcf37b8d378ae`  
		Last Modified: Tue, 21 Jul 2026 17:11:55 GMT  
		Size: 425.0 KB (425022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:bd6fa2a96aedeed55dfd8227fcf9bf122a11fe9c3606ded3fa0f51c5c80e8be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5340751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3a9f4295affe482bbd7065926b6d71f4163e5aa7b94a7834cf59c9f23b3630`

```dockerfile
```

-	Layers:
	-	`sha256:c65ac973ec2903aad5b3b43b5f31e3b90418065d06a8e5a6c2850fd3cc918cb4`  
		Last Modified: Tue, 21 Jul 2026 17:11:55 GMT  
		Size: 5.3 MB (5316994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de98637ac10235cddf111b2f1188262770d87fe56e6bf400698459e7d1ee822f`  
		Last Modified: Tue, 21 Jul 2026 17:11:55 GMT  
		Size: 23.8 KB (23757 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:3142196249e5b60b2aee9d2b30be15abee250e704e66f0e8518dddae44342e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.4 MB (351358061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f63f315b3f72dba2eeef2c2faea4d1189b961fea7d0753c8ea59c9e92ba0d2c`
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
# Tue, 21 Jul 2026 17:15:39 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:15:39 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 21 Jul 2026 17:15:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 21 Jul 2026 17:16:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:16:40 GMT
USER gradle
# Tue, 21 Jul 2026 17:16:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 21 Jul 2026 17:16:41 GMT
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
	-	`sha256:96592a1c2a76cbf08f1e82c4e38ba5e9cba138247d6922d677228cf71d7e796c`  
		Last Modified: Tue, 21 Jul 2026 17:16:23 GMT  
		Size: 53.7 MB (53734903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07244db70158d559b9ba9e5a9b4db91dda95430ff9480bc6e9cbc9fb73800696`  
		Last Modified: Tue, 21 Jul 2026 17:17:17 GMT  
		Size: 107.7 MB (107696674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f14841a3d586872bd40bfa652bb67b1b7c1fec7c2bc986aa0d5ffc57f08f85c0`  
		Last Modified: Tue, 21 Jul 2026 17:17:15 GMT  
		Size: 35.0 KB (34984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:c02750151ba52df51eeeb969e1b79bd50f7e9bd470138484ec0de8901a9094b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5337361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e758a08ed98b08596f80b29daff23a861177dc719419910a4b231e280b01ea`

```dockerfile
```

-	Layers:
	-	`sha256:b581eb03b2e5058c5c9a62734836338912ed5decb29ec695288c6980566cfd29`  
		Last Modified: Tue, 21 Jul 2026 17:17:15 GMT  
		Size: 5.3 MB (5313716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebbd27f301640d3b1c5a4c821c5f5fb1bc46c89d4740d9d16befa53221ebbb9c`  
		Last Modified: Tue, 21 Jul 2026 17:17:14 GMT  
		Size: 23.6 KB (23645 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:bd0c09299e678e4cfed9007351ebb93e9f115751ae5c0968c6cb05d5cee89ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.7 MB (334728456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f7c11ffa0a50a3f56edc9fbaae861af63ce8a02f58b260c097423e9eadeba1`
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
# Tue, 21 Jul 2026 17:02:47 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:02:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:02:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:02:47 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:02:47 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:02:51 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:02:51 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 21 Jul 2026 17:02:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 21 Jul 2026 17:02:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:02:55 GMT
USER gradle
# Tue, 21 Jul 2026 17:02:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 21 Jul 2026 17:02:56 GMT
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
	-	`sha256:8cfdfb59dd4ff9e4df2bd6a84c3795e975ada0aa82c4ec8fd85b9e5bc322f3ad`  
		Last Modified: Tue, 21 Jul 2026 17:03:22 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c170db3dc8470ae5556a812d4737c7f94bc983541184fe373c14c3553d5718`  
		Last Modified: Tue, 21 Jul 2026 17:03:23 GMT  
		Size: 37.5 MB (37517008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6892bc38c243b4aedbab72d7461876f2ce27ad57413c82718fda91bfc03e610`  
		Last Modified: Tue, 21 Jul 2026 17:03:25 GMT  
		Size: 107.7 MB (107696667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff14c9a8e9c369e03c279c8ed1ef9f4364c00f310d7b510c5f09e2a66bf2eb74`  
		Last Modified: Tue, 21 Jul 2026 17:03:22 GMT  
		Size: 35.0 KB (34980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:e102232791f5367c5f2738cf912be71f34e4e9db9d3c7584747d20cfbb80fa02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5327154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4ce0904755208988d941508b29836c339e79c02d76680d71ff39945ce5f12e`

```dockerfile
```

-	Layers:
	-	`sha256:e6dba000166b6b853c31929f851331c2893f60e50caeeb3bd24ebbc28cbd9898`  
		Last Modified: Tue, 21 Jul 2026 17:03:22 GMT  
		Size: 5.3 MB (5303571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9527148547f778940d79f5398970d2b3cd6949f0249799276d6c62363652fa23`  
		Last Modified: Tue, 21 Jul 2026 17:03:22 GMT  
		Size: 23.6 KB (23583 bytes)  
		MIME: application/vnd.in-toto+json
