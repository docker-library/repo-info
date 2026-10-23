## `gradle:6-jdk11-corretto`

```console
$ docker pull gradle@sha256:b299dfd123881c0cb0950e639901bfaf41e9c83a489162939053206410656345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:6-jdk11-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:82b80e3f0e23954180f05779726330f4ad133ab04d1e418442180642be7e11f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.1 MB (412084590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8470ca47e2219513181cb1389a2543f6dd61eddfa0058149cc47bcb7aad3c54d`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:49 GMT
ARG version=11.0.32.13-1
# Fri, 23 Oct 2026 01:09:49 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:09:49 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 23 Oct 2026 02:10:36 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:10:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:10:36 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:10:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:10:36 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:10:36 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:10:36 GMT
ENV GRADLE_VERSION=6.9.4
# Fri, 23 Oct 2026 02:10:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Fri, 23 Oct 2026 02:10:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:10:38 GMT
USER gradle
# Fri, 23 Oct 2026 02:10:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 23 Oct 2026 02:10:39 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418a238aa5530f7b96ac60bba940b6101df3b89be81e9a704a20c3fdf54fff5a`  
		Last Modified: Fri, 23 Oct 2026 01:10:10 GMT  
		Size: 153.5 MB (153508042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e531b807133d8bbeff063ce3fb201d87fb65ab74060b31389a1e55615003f3f1`  
		Last Modified: Fri, 23 Oct 2026 02:11:07 GMT  
		Size: 95.8 MB (95798005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c0b0e283593009785baecca9ec34c684212c6c89836247449c5a13987ac988`  
		Last Modified: Fri, 23 Oct 2026 02:11:03 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ae7f356ed81934d127be1abab35d2a9abc5b629b7341b91afa2a54092f1ccc`  
		Last Modified: Fri, 23 Oct 2026 02:11:07 GMT  
		Size: 107.7 MB (107696663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105b2f606c87e6b6438e430402cd8e01ba7c4bbe9eae1423e0c5193c2bf5679b`  
		Last Modified: Fri, 23 Oct 2026 02:11:03 GMT  
		Size: 431.3 KB (431284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:009f9f4e26059e3fb3e6239ea109956e548f30e0af12e0041092f0abc85f3680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12566954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc4febcc50edb7abd92b845a2a59e7573a0fa6821255baae7b1c8b5430e0aeb`

```dockerfile
```

-	Layers:
	-	`sha256:267165fc44905f70bcb298ae8ab1ff3a971dcd3f7804aef033876d6d12909400`  
		Last Modified: Fri, 23 Oct 2026 02:11:03 GMT  
		Size: 12.5 MB (12546082 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a807006b801fffccef1023c02d39cf44c7e852665916a86804fbf2064286d629`  
		Last Modified: Fri, 23 Oct 2026 02:11:03 GMT  
		Size: 20.9 KB (20872 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:aa93e7b4db890b07f004fba89687e7a10b5198cb60863878cdd6b931e97ec76f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.9 MB (408949978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08d5c40ed9c8844d01608c3f1eb2ce17bd1298d5376384806384ba6457b5bf6`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:41 GMT
ARG version=11.0.32.13-1
# Fri, 23 Oct 2026 01:09:41 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:09:41 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 23 Oct 2026 02:10:54 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:10:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:10:54 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:10:55 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:10:55 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:10:55 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:10:55 GMT
ENV GRADLE_VERSION=6.9.4
# Fri, 23 Oct 2026 02:10:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Fri, 23 Oct 2026 02:10:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:10:58 GMT
USER gradle
# Fri, 23 Oct 2026 02:10:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 23 Oct 2026 02:10:58 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42a884ab574196d516fe39d594a2d34a48754fb7bbd204b96bd2e83f0c8c36bb`  
		Last Modified: Fri, 23 Oct 2026 01:10:02 GMT  
		Size: 152.1 MB (152082226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ac8581121bfb43faf78821e5cc7c663604f4372ca9ca33ec7e3ed23b004c92`  
		Last Modified: Fri, 23 Oct 2026 02:11:31 GMT  
		Size: 95.2 MB (95215076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a0962d4d591d3d16c2fe806c1db9fd6d2f5623b8969512d34a0146e25c21b65`  
		Last Modified: Fri, 23 Oct 2026 02:11:27 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b73bf84ea2cef47149d8f1d23d09256bbe330e3cb40b3c7567c062aea670a6`  
		Last Modified: Fri, 23 Oct 2026 02:11:32 GMT  
		Size: 107.7 MB (107696661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a56a736a74d5024fff1963d0613e41e66c5d3ebeb55cf7180331a1a229f8c3f`  
		Last Modified: Fri, 23 Oct 2026 02:11:28 GMT  
		Size: 425.0 KB (425021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:ca4931c83b56278f4b705a57f43435814fd477bd304fced4795d725ac16dd5f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12566946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d797ee11b77ab979793e1f38ead46441699a5ddf7df6bc287148ddc1eafbec`

```dockerfile
```

-	Layers:
	-	`sha256:bb7d3b2e69354f147dd34746d8955b69441e68e3136fcba725c28ed7a2724e07`  
		Last Modified: Fri, 23 Oct 2026 02:11:28 GMT  
		Size: 12.5 MB (12545901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a64c9ca08739190d7483f6eab0c86f1ea0fa0a66c0cb85e10f4c72c4f99cd8e`  
		Last Modified: Fri, 23 Oct 2026 02:11:28 GMT  
		Size: 21.0 KB (21045 bytes)  
		MIME: application/vnd.in-toto+json
