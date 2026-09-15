## `gradle:jdk26-corretto`

```console
$ docker pull gradle@sha256:a226f68c888b31a495626b793b08b5bc883f70e17199e09e52c9327d6013c89d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk26-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:1f2131bb9c2c731bf99067c898e0bcdb4bc4a0aa56c4a1af552fb48717781fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.5 MB (486472322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11cb78d8da6a7980c5c9950014bb8965011e329c7baf5a0aa512bf4d5818bc60`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:45 GMT
ARG version=26.0.2.11-1
# Tue, 15 Sep 2026 00:12:45 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:45 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:45 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Tue, 15 Sep 2026 01:11:28 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:11:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:11:28 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:11:28 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 01:11:28 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:11:28 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:11:28 GMT
ENV GRADLE_VERSION=9.7.1
# Tue, 15 Sep 2026 01:11:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Tue, 15 Sep 2026 01:11:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:11:31 GMT
USER gradle
# Tue, 15 Sep 2026 01:11:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 01:11:32 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619bc8f2556f699f53d13fce478eea86c19837596276367e32bd9ea0b316585a`  
		Last Modified: Tue, 15 Sep 2026 00:13:08 GMT  
		Size: 193.6 MB (193619838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5f2f5a0e3f2eea76a11d50654c89f4b7c4b0c44803fbbcab27c1fb7adaa32f`  
		Last Modified: Tue, 15 Sep 2026 01:12:05 GMT  
		Size: 86.9 MB (86884899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6951c629df53c4627c5f38ae680eaa7c94ff1503120ffa43dbc66a6fe7fe60c`  
		Last Modified: Tue, 15 Sep 2026 01:12:01 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05ca698b1c221375f647240bd68a883d21117b9f733a97b0984b6f3d47a06da`  
		Last Modified: Tue, 15 Sep 2026 01:12:06 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06759fe46e54681ea6f597a0da5facac26f07bca78e6843fc0ba089c1a690b8`  
		Last Modified: Tue, 15 Sep 2026 01:12:02 GMT  
		Size: 25.6 KB (25606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:89ec65296d8dcefa1768a0d61f172414344e73d555d8cba08a6238c7a587ccf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11423507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d04dc23df881b87bc58d1a14f33d5fe2a7ad817c15064cc919e54383d150dc`

```dockerfile
```

-	Layers:
	-	`sha256:cf34d94667970afbc5f9a9eed52328be0fb1e4aa2e66b46366e9975b75e4eef3`  
		Last Modified: Tue, 15 Sep 2026 01:12:02 GMT  
		Size: 11.4 MB (11401856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15a82e8dd368b3b5d31b601c75ef822e80e39c2392c5981bd06fe5f6311cec7f`  
		Last Modified: Tue, 15 Sep 2026 01:12:01 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:1ae54240758b67b3abd3556d24bcddb2b1004e753ec74aee841737d673846a39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.5 MB (482528224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79660c12b8a31b0743cb69b7c0c7352fa14bfd4b81803c1d63785e220b7afe8c`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:25 GMT
ARG version=26.0.2.11-1
# Tue, 15 Sep 2026 00:12:25 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:25 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:25 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Tue, 15 Sep 2026 01:11:09 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:11:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:11:09 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:11:09 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 01:11:09 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:11:09 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:11:09 GMT
ENV GRADLE_VERSION=9.7.1
# Tue, 15 Sep 2026 01:11:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Tue, 15 Sep 2026 01:11:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:11:12 GMT
USER gradle
# Tue, 15 Sep 2026 01:11:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 01:11:13 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e7b846f0fe8bfd4c2cdf4263434150857b467ded26ab58bdc78b2f295fc6b4`  
		Last Modified: Tue, 15 Sep 2026 00:12:52 GMT  
		Size: 191.4 MB (191440910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a077a2475c58c47266a3e87637f81ba0b43ee346d0a05292f88560ce7b8e04a`  
		Last Modified: Tue, 15 Sep 2026 01:11:45 GMT  
		Size: 86.2 MB (86249708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a253257327657bfd0a8b17d374c758d49d71ab4a30ec98b61b2b6e16059f804`  
		Last Modified: Tue, 15 Sep 2026 01:11:41 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d468a7a4c739d5136e195be8e78aed348a8b82ca2f7d25a1d9a5360c5ea11ada`  
		Last Modified: Tue, 15 Sep 2026 01:11:46 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21903a5dded6ba20b2855dc70d62e07d4eb6eb49876c4f5010da4a45c07432a`  
		Last Modified: Tue, 15 Sep 2026 01:11:42 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:5d2db2d33eec5a73ac5a4b8b56ef4cd5795fa54745066a4da09c7568efcc593b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11422712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fe1f63943fcf0d36b18cb1ae1abb86d9477dc7f4a397b4c42f34a4f11cb1bc`

```dockerfile
```

-	Layers:
	-	`sha256:bc88480cb54b880526661335a32e221921893693bf4f01059f24c4b8913f07a7`  
		Last Modified: Tue, 15 Sep 2026 01:11:42 GMT  
		Size: 11.4 MB (11400865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7139d57b2edca6ee3cfec1ff4c6dd4a27bc7c6c6e55be43923670cef334f6c9`  
		Last Modified: Tue, 15 Sep 2026 01:11:41 GMT  
		Size: 21.8 KB (21847 bytes)  
		MIME: application/vnd.in-toto+json
