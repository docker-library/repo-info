## `gradle:jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:418146ea51d60282429d6ee4558268a6fea1a8a84500a595b6f42ce9b78ed587
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:148deba88e1e622e4e7a45bf84438f0c64aefa1638ac79867be6b1cb8737025f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.1 MB (408070819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afca85baf074678fe49c715c3e031f9e64748437e7c8bb3fe77c5613728668c7`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:27 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 19:58:27 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:58:27 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 05 Nov 2026 20:21:10 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 20:21:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 20:21:10 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 20:21:10 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 20:21:10 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 20:21:10 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 20:21:10 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 05 Nov 2026 20:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 05 Nov 2026 20:21:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 20:21:13 GMT
USER gradle
# Thu, 05 Nov 2026 20:21:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 20:21:13 GMT
USER root
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ae5c96774634f9b87d1debc19483086bc2d8d90d36d7b10bbc8b69cf240666`  
		Last Modified: Thu, 05 Nov 2026 19:58:45 GMT  
		Size: 118.1 MB (118121389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad3b967caf61d1c67ab91b77bd65a19aabe30ab36d1fa19f3fcc82669db0ed70`  
		Last Modified: Thu, 05 Nov 2026 20:21:46 GMT  
		Size: 95.9 MB (95895894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdd6f9124fc39351c57c0d9073dc9830cd10af6af3ef9ab08547c8ce1d2df2a`  
		Last Modified: Thu, 05 Nov 2026 20:21:41 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ed6d441140cc846088f80c1fd51ab7479d36cee7e7d2223977243c043fb7b7`  
		Last Modified: Thu, 05 Nov 2026 20:21:47 GMT  
		Size: 139.4 MB (139427345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e94142814200c40c673629b955c1f7ea4b76c963128a84c2cb09e1b8344b2ff`  
		Last Modified: Thu, 05 Nov 2026 20:21:42 GMT  
		Size: 54.9 KB (54899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:70116431ef3b4abef7490092337b514d799f4b10b1fa96bc1450069f95fac8d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13026877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c1343349df5a868e15dd4c6cf76ed671348f38e2e8be66f077136cf851dfa4`

```dockerfile
```

-	Layers:
	-	`sha256:8799531157dcfa947664892de88125a4dd69f6c24db089ed2404dcad27753011`  
		Last Modified: Thu, 05 Nov 2026 20:21:42 GMT  
		Size: 13.0 MB (13005224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d866b98d2cfd23b1bcc3f2352661c37fd22dd0aaf18dfe4b9340004efa7380d7`  
		Last Modified: Thu, 05 Nov 2026 20:21:41 GMT  
		Size: 21.7 KB (21653 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:14c3e253c8ae3f4acf63e11cac5592cec1387de1a8cc330cef385e442435a107
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.3 MB (406252947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c53118cccc848eea67aca17957becbce91dd7ab790f7e967cb66934f4e980d`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:14:52 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 20:14:52 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:14:52 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:14:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 05 Nov 2026 21:30:43 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 21:30:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 21:30:43 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 21:30:43 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 21:30:43 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 21:30:43 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 21:30:43 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 05 Nov 2026 21:30:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 05 Nov 2026 21:30:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 21:30:46 GMT
USER gradle
# Thu, 05 Nov 2026 21:30:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 21:30:46 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60803c0768c9b6335b9d93806ae5ea96a30f751e9c591436f02ae4ad949d3`  
		Last Modified: Thu, 05 Nov 2026 20:15:12 GMT  
		Size: 118.0 MB (118013085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c716fa2e23e44d961947fb3634fd70d7ca379b6ae2ced442523a836ac1bc993`  
		Last Modified: Thu, 05 Nov 2026 21:31:19 GMT  
		Size: 95.3 MB (95295185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08c37759daccf14ce59177cfdbca32bedd7c5d81c2a63cb5633be1455ce3116`  
		Last Modified: Thu, 05 Nov 2026 21:31:16 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a87be0a0ee26ea27cfdf895f4d2f93ceacf72eccf972a434fbc57e4fd4c5e42`  
		Last Modified: Thu, 05 Nov 2026 21:31:20 GMT  
		Size: 139.4 MB (139427351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd7a49e40f787aa6ac889d43ac3197d9e787efd21f7dc9ee97b6bcfeb8b876b`  
		Last Modified: Thu, 05 Nov 2026 21:31:16 GMT  
		Size: 59.5 KB (59526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:9df1974aac35448f9286aa835e0ecd5969d7e3c6f396db7faac23ccc4fcba71c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13027398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9879a88194dca832df5d7325adc81a9fe13e3bb027b326e22a397a26f1d8383f`

```dockerfile
```

-	Layers:
	-	`sha256:39316ca7ab19ab5215d05b50f3c763c09fd8297cb889bd7b81b1d8bd4204082f`  
		Last Modified: Thu, 05 Nov 2026 21:31:16 GMT  
		Size: 13.0 MB (13005547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac5e4fedf53414d7704fd9919e01e2e2d1c6cfb0a9374300d55c8c9f5a826a72`  
		Last Modified: Thu, 05 Nov 2026 21:31:16 GMT  
		Size: 21.9 KB (21851 bytes)  
		MIME: application/vnd.in-toto+json
