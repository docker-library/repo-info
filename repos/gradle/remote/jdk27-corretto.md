## `gradle:jdk27-corretto`

```console
$ docker pull gradle@sha256:79b7435034571974689224ebb05d571bfccce250e8d0f0833d12a6b8678dfa1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk27-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:62a4f85360c76a9c15b8a884cbba59ef4d7c66054a025d9e3db5e2de2889f376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.0 MB (494029879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23122c13a65564cec549a67de23234e4d49a397a37f8c74b9d1457f034fb3639`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:10:25 GMT
ARG version=27.0.1.0.10-1
# Fri, 23 Oct 2026 18:10:25 GMT
ARG resource_version=27.0.1.0.10
# Fri, 23 Oct 2026 18:10:25 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:10:25 GMT
# ARGS: version=27.0.1.0.10-1 resource_version=27.0.1.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:10:25 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 23 Oct 2026 18:19:42 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 18:19:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 18:19:42 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 18:19:42 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 18:19:42 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 18:19:42 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 18:19:42 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 18:19:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 18:19:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 18:19:45 GMT
USER gradle
# Fri, 23 Oct 2026 18:19:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 18:19:46 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea31719f8faa1cf2f80d53fa2e27f2dd091db22fabf822f259a8328a3e0af18`  
		Last Modified: Fri, 23 Oct 2026 18:10:47 GMT  
		Size: 192.0 MB (192028374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208a87ce3f0d72411a5c1cc44f97626b9e84b5ce1327e12a93a9186692883050`  
		Last Modified: Fri, 23 Oct 2026 18:20:19 GMT  
		Size: 95.8 MB (95791672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d3b10c82b68e70738b92e85040212f3eedf43ea8d4b679a33fe02681309140`  
		Last Modified: Fri, 23 Oct 2026 18:20:15 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1563c9e99e4e5a4b0d7b2e998d6b8b789e97a1cdb167de1739f146382413c94f`  
		Last Modified: Fri, 23 Oct 2026 18:20:20 GMT  
		Size: 151.5 MB (151533615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd741e35535dcdde4589142730efc24d2632d8996bf1a2764112981fa42a8d63`  
		Last Modified: Fri, 23 Oct 2026 18:20:15 GMT  
		Size: 25.6 KB (25620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:df98be83cfe4280f2ae0659244ad7541ff1f8ff2a2dde3a7bbbf082fce846d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12688332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06cdef66b1f0b7cac671b03297297a9345bf1c285829db4b3be623f5378a4af4`

```dockerfile
```

-	Layers:
	-	`sha256:41ad88ffeb5d3bed134056e78c838d0699a4f63d121cbc13608417c27f3a560c`  
		Last Modified: Fri, 23 Oct 2026 18:20:15 GMT  
		Size: 12.7 MB (12666681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:193627d3b0d4bd130d39af2bc70c128293a594ea46ee1c448ffc1fead4bfc771`  
		Last Modified: Fri, 23 Oct 2026 18:20:15 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:8fbc910d03274c71f31047537b5125bbcafd45bc0a555282f7513e11add866a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.5 MB (490495719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c7d2bd4e3932d313e1cac3e4a550aa05b6b8ccc338bdf37d2b39c499926861f`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:10:28 GMT
ARG version=27.0.1.0.10-1
# Fri, 23 Oct 2026 18:10:28 GMT
ARG resource_version=27.0.1.0.10
# Fri, 23 Oct 2026 18:10:28 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:10:28 GMT
# ARGS: version=27.0.1.0.10-1 resource_version=27.0.1.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:10:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 23 Oct 2026 18:19:24 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 18:19:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 18:19:24 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 18:19:24 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 18:19:24 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 18:19:24 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 18:19:24 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 18:19:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 18:19:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 18:19:28 GMT
USER gradle
# Fri, 23 Oct 2026 18:19:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 18:19:28 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2c9ac9af1ba4de8f210c7d0abbbf5e087ed4ea0fefd97c7dc42ebb179219a7`  
		Last Modified: Fri, 23 Oct 2026 18:10:54 GMT  
		Size: 190.2 MB (190188582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec8ca2baba61dc036b173f94c304149248969f23edda77ca8636b008474637c`  
		Last Modified: Fri, 23 Oct 2026 18:20:03 GMT  
		Size: 95.2 MB (95213196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fee8acb95ad0f3aaa9df351b428457aaafa98833b830bf969fd3e5473d81a9`  
		Last Modified: Fri, 23 Oct 2026 18:19:58 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1213bca05654d8536119a4544dc5a75eb2f0b52d280fc100ba0a260ddd9f48`  
		Last Modified: Fri, 23 Oct 2026 18:20:05 GMT  
		Size: 151.5 MB (151533612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbfd61668dc94ff576c34bb4e01a1d2f281f6a6cd88c499b4865e3c7385de79a`  
		Last Modified: Fri, 23 Oct 2026 18:19:58 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:948669353490eebaba23f19dfe2f4d697fcced06b82dcc38fdecad9be1244ad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12687533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c09367145c48953c1cbb01836199dcabdd1d8493a6ea1fc1fe97892fd653e3f`

```dockerfile
```

-	Layers:
	-	`sha256:00a0f50392e6300d4fe9116bc36fea5ca9c62e8f81928f100731b2045ff72ccb`  
		Last Modified: Fri, 23 Oct 2026 18:19:59 GMT  
		Size: 12.7 MB (12665685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:754edfdba24cee434b48cd0d49f0ff834620322dcd36af7928b9528d56d36e9e`  
		Last Modified: Fri, 23 Oct 2026 18:19:58 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
