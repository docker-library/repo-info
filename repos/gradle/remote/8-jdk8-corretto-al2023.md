## `gradle:8-jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:93cdaaf4689750135fb26020ec27786d6fb323eca3b1e2caec15ba2176a71b64
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:3842e1bfe2a54df9475281d3ed46dacbfbe0d1bac127be46ed986af86a9d7272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.0 MB (408032761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4fbc76c82b9f02fc2fe5e5f2190a04205e71593ca60e0d6a3ad95165e9e10cf`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:24 GMT
ARG version=1.8.0_512.b09-1
# Fri, 30 Oct 2026 19:43:24 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:43:24 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 30 Oct 2026 20:10:29 GMT
CMD ["gradle"]
# Fri, 30 Oct 2026 20:10:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 30 Oct 2026 20:10:29 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 30 Oct 2026 20:10:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 30 Oct 2026 20:10:29 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 30 Oct 2026 20:10:29 GMT
WORKDIR /home/gradle
# Fri, 30 Oct 2026 20:10:29 GMT
ENV GRADLE_VERSION=8.14.6
# Fri, 30 Oct 2026 20:10:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Fri, 30 Oct 2026 20:10:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 30 Oct 2026 20:10:33 GMT
USER gradle
# Fri, 30 Oct 2026 20:10:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 30 Oct 2026 20:10:34 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a309843a3bbd2c3b4e1920f6f978157d35759e91d7e2d689906db2204e1c77`  
		Last Modified: Fri, 30 Oct 2026 19:43:45 GMT  
		Size: 118.1 MB (118117263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01409c18f6a99fb39e2587fd61b604aecc8cf232d1bfb14d43891e22f90731a`  
		Last Modified: Fri, 30 Oct 2026 20:11:07 GMT  
		Size: 95.8 MB (95782647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69162716e4d4600dc797a19321dff23534612ebd485904c7b232ff9be22b54a`  
		Last Modified: Fri, 30 Oct 2026 20:11:03 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b0e2ac985870bb1515edf678562342465c187047b79c90ff5e3501093b3257`  
		Last Modified: Fri, 30 Oct 2026 20:11:08 GMT  
		Size: 139.4 MB (139427347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8510c230dc242caf7a9ae2b7cd492a1620d235462da41455ec238134d673d922`  
		Last Modified: Fri, 30 Oct 2026 20:11:03 GMT  
		Size: 54.9 KB (54908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:458a02340a254efcc281325375cf2d7948120e2f73e034c9afcf8f43409adabe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13026194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05597931d84dda464d73fbfa25e7b784c8e531a6bb2c710c417bf6726ce6f96`

```dockerfile
```

-	Layers:
	-	`sha256:5832de3f7462d5ea3a347cab68ac44b7f5b2a7261c0881926f3fc0f2767e8c1a`  
		Last Modified: Fri, 30 Oct 2026 20:11:04 GMT  
		Size: 13.0 MB (13004540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:141a5c888a6df86ea57637d298854e45a9c17a49599455b65fe4432987a43e27`  
		Last Modified: Fri, 30 Oct 2026 20:11:03 GMT  
		Size: 21.7 KB (21654 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:3ad28b8b47763cdf543c1ab7b72eb4029e73504240549bc0c7ef9912b08a3962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.2 MB (406229130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1a1cb07fceeb7fdde99ff11d6759c06dbc417fff8a5a3ba61335ca10c8ce7f5`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:23 GMT
ARG version=1.8.0_512.b09-1
# Fri, 30 Oct 2026 19:43:23 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:43:23 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 30 Oct 2026 20:10:31 GMT
CMD ["gradle"]
# Fri, 30 Oct 2026 20:10:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 30 Oct 2026 20:10:31 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 30 Oct 2026 20:10:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 30 Oct 2026 20:10:31 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 30 Oct 2026 20:10:31 GMT
WORKDIR /home/gradle
# Fri, 30 Oct 2026 20:10:31 GMT
ENV GRADLE_VERSION=8.14.6
# Fri, 30 Oct 2026 20:10:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Fri, 30 Oct 2026 20:10:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 30 Oct 2026 20:10:35 GMT
USER gradle
# Fri, 30 Oct 2026 20:10:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 30 Oct 2026 20:10:36 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ecfa070abe237f0f5775ad418dfc668a7a5c6e6cf55f73907449b40ba7594f`  
		Last Modified: Fri, 30 Oct 2026 19:43:43 GMT  
		Size: 118.0 MB (118009667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:422f5c6c175a8b1122f59388707d2aa571a7ef1e5d1611b316986c9205bc1fd8`  
		Last Modified: Fri, 30 Oct 2026 20:11:09 GMT  
		Size: 95.2 MB (95201591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64610f89d7f3f837485c1d8fd73956834c2ddcb6b77f578e3ec99bd80cad0e9`  
		Last Modified: Fri, 30 Oct 2026 20:11:05 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5354c809058e6e7e157669d9d1b4f965203fb9ce75cce1deadd2f99974992cda`  
		Last Modified: Fri, 30 Oct 2026 20:11:10 GMT  
		Size: 139.4 MB (139427344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fb2846595df4fe426736365eb1a0da5665f803388d8b70c3be2108e720118f`  
		Last Modified: Fri, 30 Oct 2026 20:11:05 GMT  
		Size: 59.5 KB (59536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:d736cade38584d8342f3bb84ea4fa6d9864f4aae1f1b0e8861f235c237d77a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13026714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dee47619f60838923f773bc084bfac21d42c2ed1a04077f5b606f1294b9d1b1`

```dockerfile
```

-	Layers:
	-	`sha256:01b90d2b8a076eabb5e1d36d02c6efe5b35e03b8486c13b18167c8d56f79d2e1`  
		Last Modified: Fri, 30 Oct 2026 20:11:06 GMT  
		Size: 13.0 MB (13004863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0386fe953da70df515cb16be5bb632a2fbd63b963b6e23124c9fcd6df5e6ff7d`  
		Last Modified: Fri, 30 Oct 2026 20:11:05 GMT  
		Size: 21.9 KB (21851 bytes)  
		MIME: application/vnd.in-toto+json
