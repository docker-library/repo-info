## `gradle:jdk27-corretto-al2023`

```console
$ docker pull gradle@sha256:5cc543cd10339e4d3531e3a707eccfc6648337691e21065489ab3df12b0ca459
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk27-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:8428353f71162387b1521e8a28a8d781d0b389a972da0a6820e1d17392c0fded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.0 MB (494034521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d17f49348a3e92d04fab2fb4d9293c8def3e4e82bf601affdae51419adfc227`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:45:21 GMT
ARG version=27.0.1.0.11-1
# Fri, 30 Oct 2026 19:45:21 GMT
ARG resource_version=27.0.1.0.11
# Fri, 30 Oct 2026 19:45:21 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:45:21 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:45:21 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:45:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 30 Oct 2026 20:09:56 GMT
CMD ["gradle"]
# Fri, 30 Oct 2026 20:09:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 30 Oct 2026 20:09:56 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 30 Oct 2026 20:09:56 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 30 Oct 2026 20:09:56 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 30 Oct 2026 20:09:56 GMT
WORKDIR /home/gradle
# Fri, 30 Oct 2026 20:09:56 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 30 Oct 2026 20:09:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 30 Oct 2026 20:09:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 30 Oct 2026 20:09:59 GMT
USER gradle
# Fri, 30 Oct 2026 20:09:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 30 Oct 2026 20:09:59 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695f6648a0c59d9393c69da195e3abf07096082e9c3ca07b53d09b3f49fe8a14`  
		Last Modified: Fri, 30 Oct 2026 19:45:46 GMT  
		Size: 192.0 MB (192032898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2483f400effd7eb7d57eea0cfa9319d69eabf4434eb4f388a00b1df329e2d0d`  
		Last Modified: Fri, 30 Oct 2026 20:10:30 GMT  
		Size: 95.8 MB (95791812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9777bc7cd94af29d4d549c5328d3b1e3d221073df8492eb57f9e946484dd40cb`  
		Last Modified: Fri, 30 Oct 2026 20:10:26 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81d61af0bcecbcdd2a9904ee1773f80a612ffb822a86465fb95f13d39fc5c68`  
		Last Modified: Fri, 30 Oct 2026 20:10:31 GMT  
		Size: 151.5 MB (151533611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c885f001db7bd2da32ac32414cc8df8b607702bf98c061fd68fd6a1d5371c3`  
		Last Modified: Fri, 30 Oct 2026 20:10:26 GMT  
		Size: 25.6 KB (25605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:30fac1b1c5f8ab27da338eec05842f6c63108b4fb7addaeed090bf5299d37a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12688330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2121c14b00eff53ba6f81583e6d146c5c8f0944768f28860d6020a2c20c003a0`

```dockerfile
```

-	Layers:
	-	`sha256:f842535babfbe21c60ac5ea0a23dda303a132b59fd841ad63aaa20ce2264314e`  
		Last Modified: Fri, 30 Oct 2026 20:10:27 GMT  
		Size: 12.7 MB (12666681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15e31d4177c8e051ae6001e299d12eef40d3992145a0031f3f887949f1c75385`  
		Last Modified: Fri, 30 Oct 2026 20:10:26 GMT  
		Size: 21.6 KB (21649 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:4395b6bc7b166f2cd5c2f32b80fdf94c7278d79096546907cc66195aaf58e0f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.5 MB (490495659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1dcc39cb6ae0f1a674e949345f642941f55c3c66aa52728519de95d706f4a1`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:45:18 GMT
ARG version=27.0.1.0.11-1
# Fri, 30 Oct 2026 19:45:18 GMT
ARG resource_version=27.0.1.0.11
# Fri, 30 Oct 2026 19:45:18 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:45:18 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:45:18 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:45:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 30 Oct 2026 20:10:13 GMT
CMD ["gradle"]
# Fri, 30 Oct 2026 20:10:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 30 Oct 2026 20:10:13 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 30 Oct 2026 20:10:14 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 30 Oct 2026 20:10:14 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 30 Oct 2026 20:10:14 GMT
WORKDIR /home/gradle
# Fri, 30 Oct 2026 20:10:14 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 30 Oct 2026 20:10:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 30 Oct 2026 20:10:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 30 Oct 2026 20:10:17 GMT
USER gradle
# Fri, 30 Oct 2026 20:10:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 30 Oct 2026 20:10:17 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7674ae511a8b17cab191c3dc5fa5c2c4cedb4797010a8cc6bde4149aceab7bb9`  
		Last Modified: Fri, 30 Oct 2026 19:45:43 GMT  
		Size: 190.2 MB (190187448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55f3f7c481cd473871218f17746934e186d15c0568fd48cc5fa244aba53b35b`  
		Last Modified: Fri, 30 Oct 2026 20:10:51 GMT  
		Size: 95.2 MB (95214261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ace3d12571421a8cec10b6c671cb886cb9a7edd45f08d16b3986bf1eeaa143`  
		Last Modified: Fri, 30 Oct 2026 20:10:48 GMT  
		Size: 1.7 KB (1651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6753ca00e6e1f3ec3776878f7650ef0f8ee1360b2cfdabed45698809fd14e154`  
		Last Modified: Fri, 30 Oct 2026 20:10:52 GMT  
		Size: 151.5 MB (151533618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e155234333e8297faee6178af85be4f2ba30013ebe70ef71a87a1b053aa53e`  
		Last Modified: Fri, 30 Oct 2026 20:10:48 GMT  
		Size: 29.3 KB (29333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:654f7a7c449c1f2f691aea2637924fa6322c187a3d3bd8e28c713cb795d5b56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12687533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96e5c1d6ffde4e446c1f6c8b1b1bb4976d81a3d6085375f7b3e76bcc6052f49`

```dockerfile
```

-	Layers:
	-	`sha256:3aa24ad157838962bc6acc55e25929d53f97ef84763b76e206f2f683604417ca`  
		Last Modified: Fri, 30 Oct 2026 20:10:48 GMT  
		Size: 12.7 MB (12665685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ef16b79a5a9f8d233f800c6e83dda9c032f5bbd27514d2d07f6bf758f47fa65`  
		Last Modified: Fri, 30 Oct 2026 20:10:48 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
