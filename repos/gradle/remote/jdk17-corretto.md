## `gradle:jdk17-corretto`

```console
$ docker pull gradle@sha256:e3cdcbb1a4a32eab1f9a4b63cd34d028dcab1533ac452ae82b809ac4c9d0d054
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk17-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:3c505b36b9ad8d597b48621351fd61c8586a376438b2c87341a514e94ec347a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **450.0 MB (449991536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90cad256d6a226cf57317cc02c7cf722b277638e3a60aa5e3ba7b4edc308c19e`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:43 GMT
ARG version=17.0.20.10-1
# Tue, 15 Sep 2026 00:11:43 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:11:43 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:11:43 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 15 Sep 2026 01:11:09 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:11:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:11:09 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:11:09 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
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
# Tue, 15 Sep 2026 01:11:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 01:11:12 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9172ca7eb648104c43ba813af879921bb175118a352560fe42a2825a38c728c6`  
		Last Modified: Tue, 15 Sep 2026 00:12:05 GMT  
		Size: 157.1 MB (157139763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d7429d0642b0ee76921c0694b726b17bf66f7589c289e8ad4707220879194f`  
		Last Modified: Tue, 15 Sep 2026 01:11:44 GMT  
		Size: 86.9 MB (86884198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d58944fedf3cd5da082d7a0f4ae8e02ac16f86cac034f3d46818840186f4f7e`  
		Last Modified: Tue, 15 Sep 2026 01:11:40 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d1c0f26964a7c4635d1d0cdcf080dc41237e60312acce5121f51fad7884d3b1`  
		Last Modified: Tue, 15 Sep 2026 01:11:45 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487561ee52a636e78d16ab053d1cae7b8e996ebefe3c66f06d12c345d25090d`  
		Last Modified: Tue, 15 Sep 2026 01:11:40 GMT  
		Size: 25.6 KB (25601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:994345a3586e20e938b4ebdb306875dbf694075357ee3df0a3e2082e40f25dac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11413457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f03ad0fda8e6a393fbc78d53c9405a59cbade0e3f65ca1d64a5518da4eece9bb`

```dockerfile
```

-	Layers:
	-	`sha256:30a3a017896e9c46c18fd2a8eb8ae617f4baed18f965a4da517b153420162c25`  
		Last Modified: Tue, 15 Sep 2026 01:11:40 GMT  
		Size: 11.4 MB (11391960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd60971bdc32f377c003704331f6608edc68c46d9eb8fd6b076e21aa5e6045bf`  
		Last Modified: Tue, 15 Sep 2026 01:11:40 GMT  
		Size: 21.5 KB (21497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:fc64c440f42b007c5fb065774d68cbe0943b46aca4c9f25f535fe03a724319ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.0 MB (447039052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a76a79ec42ff22c64093d0e2a7959371b4fa6d369921ae8a8de75ad3bf8078`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:20 GMT
ARG version=17.0.20.10-1
# Tue, 15 Sep 2026 00:11:20 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:11:20 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:11:20 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 15 Sep 2026 01:11:06 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:11:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:11:06 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:11:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 01:11:06 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:11:06 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:11:06 GMT
ENV GRADLE_VERSION=9.7.1
# Tue, 15 Sep 2026 01:11:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Tue, 15 Sep 2026 01:11:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:11:10 GMT
USER gradle
# Tue, 15 Sep 2026 01:11:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 01:11:10 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:830a1cc08558e3f18dfea3fba4d99136e39fa5330007d042dbec6a4a4a60c702`  
		Last Modified: Tue, 15 Sep 2026 00:11:43 GMT  
		Size: 156.0 MB (155950551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2daf3b41be3a1c6ba38e9ed55e7be80221c9724537f3b3b691a7b46b528f44ec`  
		Last Modified: Tue, 15 Sep 2026 01:11:43 GMT  
		Size: 86.3 MB (86250931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6d63722ac31a3904b0f31aeae73d9ad1a581dc5a1427be65b3169579078890`  
		Last Modified: Tue, 15 Sep 2026 01:11:38 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8fb44f998d1bbd765affecf6becc05e03caa1fc0cfdb2d8a71d1377e5e90b7d`  
		Last Modified: Tue, 15 Sep 2026 01:11:44 GMT  
		Size: 151.4 MB (151353990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c50a4304d2386f82597826d1afd826b675014c0ac54bd89e5995fd26e0052e`  
		Last Modified: Tue, 15 Sep 2026 01:11:39 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:4c2614ad644290860120982df77855fa63e11f778d77f0adf767a3577ed06989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11412654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cb20a48586f3707310a1e9866aea28c55a5865a3d889d9537d505994ca3a1e`

```dockerfile
```

-	Layers:
	-	`sha256:f4c89d307e0b1b3327eb5df0e6caa0b605ba21a18323bbc5f040bf1a67bb0523`  
		Last Modified: Tue, 15 Sep 2026 01:11:39 GMT  
		Size: 11.4 MB (11390960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:665aa0ddd136a5c016e8b8c01eb51859eaec85c5578a039c2e167bdcd9ab404e`  
		Last Modified: Tue, 15 Sep 2026 01:11:38 GMT  
		Size: 21.7 KB (21694 bytes)  
		MIME: application/vnd.in-toto+json
