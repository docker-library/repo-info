## `gradle:jdk21-corretto`

```console
$ docker pull gradle@sha256:4b00dcc714bba62a2de3195c5a5e0c721a3d915db791159fd7083c27d179218c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:59cc62bd33cb37b4306364f1e33f376c2562ae36942a6386b6d9ece720d68f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.3 MB (452317622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46078537f125848e424893008d0b04c42a148ec63c97c25ab03f917e2c3d4f3a`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:37:14 GMT
ARG version=21.0.12.8-1
# Mon, 27 Jul 2026 21:37:14 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:37:14 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:37:14 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:37:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 27 Jul 2026 22:01:32 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:01:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:01:32 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:01:32 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:01:32 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:01:32 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:01:32 GMT
ENV GRADLE_VERSION=9.6.1
# Mon, 27 Jul 2026 22:01:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Mon, 27 Jul 2026 22:01:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:01:35 GMT
USER gradle
# Mon, 27 Jul 2026 22:01:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 27 Jul 2026 22:01:36 GMT
USER root
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929317333d831dec9413d42ba502f47cd36ccd15dddba2c57cea1c777dfdeb83`  
		Last Modified: Mon, 27 Jul 2026 21:37:35 GMT  
		Size: 170.4 MB (170440382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6122949e65029dbc8840aee6a080ab5ab1c0c1f1a3c3045b2076b69aa04685b5`  
		Last Modified: Mon, 27 Jul 2026 22:02:08 GMT  
		Size: 86.7 MB (86681276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9f111ede6c38d8a5e90b2c81726b25d7953b09c950abfe0ccaa40eb9c876d7`  
		Last Modified: Mon, 27 Jul 2026 22:02:04 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee4d96628d72afaea71dc71951fa110ab49ab78247bcfbdc114d33b84b2c16b`  
		Last Modified: Mon, 27 Jul 2026 22:02:09 GMT  
		Size: 140.6 MB (140595978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1376cbb022b7d00f8d7be457729406f56e481e400cc1676b656683bf9df3e22`  
		Last Modified: Mon, 27 Jul 2026 22:02:05 GMT  
		Size: 25.6 KB (25621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:80c1618296a41ce317394ded5811c9a5a6b9777a3748e82140c960c4dad62b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11407561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eaa033767b2390dd1e61962a53f5525e96002cf61a467ab78363858aff65c1`

```dockerfile
```

-	Layers:
	-	`sha256:a5496cd8ee931431d066a6496eaab03103dac7f12953d3bc22f067bc90541b09`  
		Last Modified: Mon, 27 Jul 2026 22:02:05 GMT  
		Size: 11.4 MB (11385911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1916b295a23214bf2ff85f48946a16aa7edb1747d47e749a61157012593b18c0`  
		Last Modified: Mon, 27 Jul 2026 22:02:04 GMT  
		Size: 21.6 KB (21650 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:75c3b6c122e4ee4840a84370f308108ad596c845a552b193829fe7d6bcdc8929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.8 MB (448805616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0421ddef3010e79825096ceb6ffc2a809883fd14af69603444432ffe6d225ef`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:38 GMT
ARG version=21.0.12.8-1
# Mon, 27 Jul 2026 21:36:38 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:38 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:38 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 27 Jul 2026 22:00:18 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:00:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:00:18 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:00:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:00:18 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:00:18 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:00:18 GMT
ENV GRADLE_VERSION=9.6.1
# Mon, 27 Jul 2026 22:00:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Mon, 27 Jul 2026 22:00:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:00:21 GMT
USER gradle
# Mon, 27 Jul 2026 22:00:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 27 Jul 2026 22:00:21 GMT
USER root
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12adbe966dc608c316526ea322c1e94100519b7f1d8cec6bb73374d1dba0a908`  
		Last Modified: Mon, 27 Jul 2026 21:37:02 GMT  
		Size: 168.7 MB (168689656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992a98eb8b9f53798d47af1ead444a56b6c7c685ad15ec7e6e31306ac56673f4`  
		Last Modified: Mon, 27 Jul 2026 22:00:53 GMT  
		Size: 86.0 MB (86039362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9e6020b6fff19f0d0568c3d62d4d25e3bbe87b1b4dc8d915ebb4e5b76d40dc`  
		Last Modified: Mon, 27 Jul 2026 22:00:50 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc82c24751e5d15f5e1ac99745671dbc4bc91f976610611ed69285b16a8ec644`  
		Last Modified: Mon, 27 Jul 2026 22:00:55 GMT  
		Size: 140.6 MB (140595974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829b90a4ebcc3f7f4b29169ed31d9473e9588f5e57600af62d4c40929edd4b8d`  
		Last Modified: Mon, 27 Jul 2026 22:00:51 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:d6bd5ca3c41e296c2d1fa082386144ae6d48b24c9f920a944f9b5d16b878b24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11406762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c76ad4e3f9195de78b8f3a3c7323c33781d12937b22769fa2195f70a746c7ea0`

```dockerfile
```

-	Layers:
	-	`sha256:471b55c2c693a558fcaf4ad171271d7a6289646e33fc9700d8947f7bca7c09e7`  
		Last Modified: Mon, 27 Jul 2026 22:00:50 GMT  
		Size: 11.4 MB (11384914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12f89530c50a77caf0657c01525a3a0109683846736d30b0fe2d4c731dab3f00`  
		Last Modified: Mon, 27 Jul 2026 22:00:50 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
