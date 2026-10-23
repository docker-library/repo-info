## `gradle:8-jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:457b2f6fce581dc041ddd31c73f0ebf499813c6e1ef6593e0d9cfcd723a3ae3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:7f543fb7691efe3745d433ad714f05c9f8114793c8b23059ed23dc09c6d5d156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.0 MB (408033269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffcb26eef560cb0b0164beb7b6b5f575a5a1353c1b289a940cd0430f17b39cc`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:06:50 GMT
ARG version=1.8.0_512.b08-1
# Fri, 23 Oct 2026 18:06:50 GMT
# ARGS: version=1.8.0_512.b08-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:06:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:06:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 23 Oct 2026 18:20:37 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 18:20:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 18:20:37 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 18:20:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 18:20:37 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 18:20:37 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 18:20:37 GMT
ENV GRADLE_VERSION=8.14.6
# Fri, 23 Oct 2026 18:20:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Fri, 23 Oct 2026 18:20:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 18:20:40 GMT
USER gradle
# Fri, 23 Oct 2026 18:20:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 18:20:41 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f9cec9880d8895f351a9b7fe42fd7a5a2bb722fd862cc90048d4bd257b8617`  
		Last Modified: Fri, 23 Oct 2026 18:07:09 GMT  
		Size: 118.1 MB (118117667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b7c91b33fe9c26ad59e294bceaf4f9d056419f75c3ce33fba52885560130d7`  
		Last Modified: Fri, 23 Oct 2026 18:21:12 GMT  
		Size: 95.8 MB (95782754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8425f85dc5f191a43b6da93f559feb2b59de767c12518bf42628566b4872878d`  
		Last Modified: Fri, 23 Oct 2026 18:21:09 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb8135760832c64e90840803b8f56f36c919e5dcd29a8bb01d6f63f883c36fd`  
		Last Modified: Fri, 23 Oct 2026 18:21:13 GMT  
		Size: 139.4 MB (139427340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb1d60b32801386a36ee9909e3c882c808a6b63948d17f8e8675b89ed7c73f36`  
		Last Modified: Fri, 23 Oct 2026 18:21:09 GMT  
		Size: 54.9 KB (54912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:608e575e696ff7f953d46a18cec4838ebf059f5d330ff241cb0c5535a55d6322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13026194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab56aacbb6b4a3f982dab1cf0e688eca8752ef4dfdbd1fc35997c7e684061e86`

```dockerfile
```

-	Layers:
	-	`sha256:6aae2387d02c59d0ac24c701ab2bed026489722689bb9b2048c791dcc7347a9a`  
		Last Modified: Fri, 23 Oct 2026 18:21:10 GMT  
		Size: 13.0 MB (13004540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1097b0dd183efe48a68b72a589567afbd2aaaef232856967b60fd499864ff237`  
		Last Modified: Fri, 23 Oct 2026 18:21:09 GMT  
		Size: 21.7 KB (21654 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:32d5b04439bf79c0ddf8339f691cad2bedaf00c0917b09f8acfe14803e227854
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.2 MB (406206699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f25091167f199180e3ccb6d5f789d2ee557041e40eb21c6921909fa22a9c1e69`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:06:56 GMT
ARG version=1.8.0_512.b08-1
# Fri, 23 Oct 2026 18:06:56 GMT
# ARGS: version=1.8.0_512.b08-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:06:56 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:06:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 23 Oct 2026 18:20:23 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 18:20:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 18:20:23 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 18:20:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 18:20:23 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 18:20:23 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 18:20:23 GMT
ENV GRADLE_VERSION=8.14.6
# Fri, 23 Oct 2026 18:20:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Fri, 23 Oct 2026 18:20:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 18:20:26 GMT
USER gradle
# Fri, 23 Oct 2026 18:20:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 18:20:27 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e00d21dbcd7705b7cfd2a3020ef6ab481106334b9e5dc74e113bb5e02e8eb4d`  
		Last Modified: Fri, 23 Oct 2026 18:07:16 GMT  
		Size: 118.0 MB (117990312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eafbce1cf8506d7687507acef00c9b895906fbfb3630070bdf5ec992e06f7c0`  
		Last Modified: Fri, 23 Oct 2026 18:20:59 GMT  
		Size: 95.2 MB (95198514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3942d8e196d97a2781feeac14eff63bee41c81034a418f3b0951e5710c6b01`  
		Last Modified: Fri, 23 Oct 2026 18:20:55 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e2763d80b9f186625d339e2d700b58c51180d9e2aea3bc77f40bf8b587ec14`  
		Last Modified: Fri, 23 Oct 2026 18:21:00 GMT  
		Size: 139.4 MB (139427345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b28dd121137ebec9b483fe849938106e7b4435b93ba519d68dbf776eec9b4df`  
		Last Modified: Fri, 23 Oct 2026 18:20:55 GMT  
		Size: 59.5 KB (59535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:4978d4c57870062f6fa293f196ca17576384818d535bf9f20bf61c1420614147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13026713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ac9444320aba39a01e320920e4902cf6802674375c8ee6411a809a40dc97cc`

```dockerfile
```

-	Layers:
	-	`sha256:822cc941a81ab9b0a0dff8584f0711173e0d1e3abc301ed8b44f8c2dbbd797a7`  
		Last Modified: Fri, 23 Oct 2026 18:20:56 GMT  
		Size: 13.0 MB (13004863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17c49e1ccf32b2ab1c778a4289d5cce98a7845d949327cb033113ca811b31195`  
		Last Modified: Fri, 23 Oct 2026 18:20:55 GMT  
		Size: 21.9 KB (21850 bytes)  
		MIME: application/vnd.in-toto+json
