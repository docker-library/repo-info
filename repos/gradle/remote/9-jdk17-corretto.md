## `gradle:9-jdk17-corretto`

```console
$ docker pull gradle@sha256:1e80a6ff4d79b1ead390c661d137539c1d28781da625d96415ffdde3188aeabd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:78e6a460a2eadb662d2aec78c12127838dfbb14d87bc318ce34ba14a96c2f2a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.2 MB (459158257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e357c4690d5bcb5c7f165a79f9e98e032e0cba70d4d70d67c50d3bc3a9fe6a0`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:50 GMT
ARG version=17.0.20.13-1
# Wed, 14 Oct 2026 17:07:50 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:07:50 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:50 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 20 Oct 2026 17:53:47 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:53:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:53:47 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:53:48 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:53:48 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:53:48 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:53:48 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:53:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:53:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:53:50 GMT
USER gradle
# Tue, 20 Oct 2026 17:53:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:53:51 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5eaea8a08b486a3b19b02bfb89dab42746a1696549ec27ce97eb0fadecefc93`  
		Last Modified: Wed, 14 Oct 2026 17:08:10 GMT  
		Size: 157.2 MB (157176476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a53fe615396c6832d4006707729d900294f81a9b301ea8204447cfec3546206`  
		Last Modified: Tue, 20 Oct 2026 17:54:22 GMT  
		Size: 95.8 MB (95790117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e2b80de52730a459bdf3fc03b944cd4e9e6455525eb708ce7a48e3ff9c7d07`  
		Last Modified: Tue, 20 Oct 2026 17:54:18 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a7768e9d26910c416f6c03d086281530ef4e90c8b9cf2fdf1efd6c1e68bec2`  
		Last Modified: Tue, 20 Oct 2026 17:54:23 GMT  
		Size: 151.5 MB (151533611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2697464a11fb5124614a9b0639107b5d8ed110c5a3140e9c7452c5d5e24e299`  
		Last Modified: Tue, 20 Oct 2026 17:54:18 GMT  
		Size: 25.6 KB (25608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:3c1f277b309195beda858f71e8bedf1420e95aa7fa90b5181290a9f169c25c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12682294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e886da69562b1860790453b0d88450faa6e473a4b4ecd5c8f99e0fdc39a395`

```dockerfile
```

-	Layers:
	-	`sha256:6d4a1d26a70dba7fa4c520f7cfef2e3d32e1db8bfdd1e7ebe987c35c55555b88`  
		Last Modified: Tue, 20 Oct 2026 17:54:19 GMT  
		Size: 12.7 MB (12660797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90fe0551ca766a1c773839662b5c97baa6554f799df7a7a094f33366bfe94d80`  
		Last Modified: Tue, 20 Oct 2026 17:54:18 GMT  
		Size: 21.5 KB (21497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:e7e58192a67becea2e65b15eab91931a71c7b6cfd189566fad86504f7f33e935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.3 MB (456253191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaeeffbc3d0b8a5e3af44f1d00bb0b9312196ea7eb7e25a17ed12c62d01b84d9`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:57 GMT
ARG version=17.0.20.13-1
# Wed, 14 Oct 2026 17:07:57 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:07:57 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:57 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 20 Oct 2026 17:55:18 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:55:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:55:18 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:55:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:55:18 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:55:18 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:55:18 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:55:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:55:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:55:21 GMT
USER gradle
# Tue, 20 Oct 2026 17:55:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:55:22 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154b2b63e41b8926d75f93d6a93dc46b91678d65e12e27ba0185b9c627a6eca8`  
		Last Modified: Wed, 14 Oct 2026 17:08:19 GMT  
		Size: 156.0 MB (155978404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f27977e97940a6a2fd754d1afa670dacced4127c3dd746b2dcd5b73023cecd7`  
		Last Modified: Tue, 20 Oct 2026 17:55:56 GMT  
		Size: 95.2 MB (95205771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799f7b6b9a15914c2bdec544cf092c9eb606784fe075483a1fb597d42acc679f`  
		Last Modified: Tue, 20 Oct 2026 17:55:51 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6fd7a5078d217eddc4bf88a8ba32716199820412e9bf864074371b8ae9554cc`  
		Last Modified: Tue, 20 Oct 2026 17:55:57 GMT  
		Size: 151.5 MB (151533615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:383b28ede293a3dd154c81df020370a951e680428c37b8896bf12a94c21228e2`  
		Last Modified: Tue, 20 Oct 2026 17:55:51 GMT  
		Size: 29.3 KB (29326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:43f973ad63d69e8e45da0042b727618d04b6e202bcd6c3dc1bf0fc066c7c0c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12681490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0d11e074952a8cab128fddaadc97a60b57df3ebfba12af8d56b677e4c8785f`

```dockerfile
```

-	Layers:
	-	`sha256:753c52c104778c53fb39b7230065b1ae994f2934f3560666731bce1ee55153cd`  
		Last Modified: Tue, 20 Oct 2026 17:55:52 GMT  
		Size: 12.7 MB (12659797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cf1dbb834d87e799c39e1c1172bdef892adfbd33d6b7b3f6e33bc2da2defcbe`  
		Last Modified: Tue, 20 Oct 2026 17:55:51 GMT  
		Size: 21.7 KB (21693 bytes)  
		MIME: application/vnd.in-toto+json
