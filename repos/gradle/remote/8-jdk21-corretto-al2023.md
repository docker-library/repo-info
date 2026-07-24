## `gradle:8-jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:268c844ed42dfa5ab52920f7c15f6fc8d4beaa1dd7793d195a193049ba65933b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:426121d22381a0de3bf98dc624369ace4c784f222a72c7b5e480b48d33153837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **449.8 MB (449822286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f525ecbc93c4e8cd9233faf1372c79c5406b230dd9a571570e469e5f75ea74`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:47 GMT
ARG version=21.0.12.8-1
# Thu, 23 Jul 2026 23:12:47 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:12:47 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:12:47 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 24 Jul 2026 00:12:15 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:12:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:12:15 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:12:15 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:12:15 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:12:15 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:12:15 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 24 Jul 2026 00:12:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 24 Jul 2026 00:12:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:12:18 GMT
USER gradle
# Fri, 24 Jul 2026 00:12:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 24 Jul 2026 00:12:19 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06e2a0bbbb294b15c57ade0204a3c4e6a1af3bb85dfee1a263948d6a37c396e`  
		Last Modified: Thu, 23 Jul 2026 23:13:08 GMT  
		Size: 170.4 MB (170443195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba0d22a7316d04d55d23c88f2a3b4a2af1ed9a5aa04628fa5eacb1ed571a926`  
		Last Modified: Fri, 24 Jul 2026 00:12:50 GMT  
		Size: 86.7 MB (86679709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2267a0407a84fabc95fab8f399d22e91b2411ca920b2f114095524caa3ab2744`  
		Last Modified: Fri, 24 Jul 2026 00:12:45 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4869893a174b2ec87ca019d546c1c725f713bca7a2fe2b05ff27cce57e265d85`  
		Last Modified: Fri, 24 Jul 2026 00:12:51 GMT  
		Size: 138.1 MB (138068533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b018051a702a56a561cb2d5663335bf2e86eff580ed8df72f1c8a8b1a4c36402`  
		Last Modified: Fri, 24 Jul 2026 00:12:45 GMT  
		Size: 54.9 KB (54904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:23d460eea1417155dc7062d7bc1d3d9144bb13d120c0e2e52950bb559bf81fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11379700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a46f8cd3bc4bcbc0af86c127b42a9009e59a896cc8ba7250da0b4d76d55ea9`

```dockerfile
```

-	Layers:
	-	`sha256:269278386835a72d0b766303b5628561d9f2da27f1afcc82e63c0b6753f74cd0`  
		Last Modified: Fri, 24 Jul 2026 00:12:46 GMT  
		Size: 11.4 MB (11358677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41693ac07a101711c7366b5d286750443eff337c48c899926153e5b45c3d23ee`  
		Last Modified: Fri, 24 Jul 2026 00:12:45 GMT  
		Size: 21.0 KB (21023 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b941da992307eee6d4e244fdfad07cd09d9440a9ef0a29c9cdccb9efaa8b6d73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.3 MB (446318671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13bdaa395a26e93c09926a62b5b9b478bbb5edfa84fed9832777e359e59b2f7d`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:14:36 GMT
ARG version=21.0.12.8-1
# Thu, 23 Jul 2026 23:14:36 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:14:36 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:14:36 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 24 Jul 2026 00:12:07 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:12:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:12:07 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:12:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:12:07 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:12:07 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:12:07 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 24 Jul 2026 00:12:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 24 Jul 2026 00:12:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:12:10 GMT
USER gradle
# Fri, 24 Jul 2026 00:12:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 24 Jul 2026 00:12:10 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5b854219e2e5d48c3335eb51ff302705e71608fa34b13c8775f414cc912dcb`  
		Last Modified: Thu, 23 Jul 2026 23:14:59 GMT  
		Size: 168.7 MB (168689095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220bffe0324b92038424d8504bd705ec7fbba27bb3655e6db2f6dce0d09604ac`  
		Last Modified: Fri, 24 Jul 2026 00:12:43 GMT  
		Size: 86.1 MB (86050602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a612629b45096cd20a7307366cd9837564ab1acff398539755478b4b2569e97`  
		Last Modified: Fri, 24 Jul 2026 00:12:39 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38bad0eab283d1ac5a79d48233c5329be2c0e2925c85ceb35e2e6e902132d0c9`  
		Last Modified: Fri, 24 Jul 2026 00:12:44 GMT  
		Size: 138.1 MB (138068535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a06a0f6fdb6a6045f934c60ab722a131eb5f6fd49f8fdf0ca100ac6aa786abc`  
		Last Modified: Fri, 24 Jul 2026 00:12:39 GMT  
		Size: 59.5 KB (59529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:b8217495370696709e0de754741b22f7cf2457e25a6634422da306a8ea78689c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11378852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3826eaf6df2991306b1e94c300652257c7f06e4796aa61fe24adef091bfe774e`

```dockerfile
```

-	Layers:
	-	`sha256:005c109020ba93a0a332fd2dbe17db340eb5c4d014a16832abd4f0122d03c257`  
		Last Modified: Fri, 24 Jul 2026 00:12:40 GMT  
		Size: 11.4 MB (11357656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1835d5670fbb3d8d2eefe3736ebb6ee1d4ee74767a89d08bb2df59720e01b6d`  
		Last Modified: Fri, 24 Jul 2026 00:12:40 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.in-toto+json
