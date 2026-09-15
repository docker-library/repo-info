## `gradle:8-jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:842a0aaceb09c9f80351181416df314ed6d8db1c90a2709b73be44e430ba564b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:ea4128893c808193f1ebb23c58c3edf10acdb7659389a3cb3f3197822fb2eecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.7 MB (436735572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e02478ed43c52c14d4b38a963dc63ee97efcbdf2fe8ca86f655ccfd3d7cd472`
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
# Tue, 15 Sep 2026 01:11:34 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:11:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:11:34 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:11:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 01:11:35 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:11:35 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:11:35 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 15 Sep 2026 01:11:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 15 Sep 2026 01:11:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:11:37 GMT
USER gradle
# Tue, 15 Sep 2026 01:11:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 01:11:38 GMT
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
	-	`sha256:6a70acf270ab4098fdd47b08010577f8aa7c14756d379a54afebf558f34344e2`  
		Last Modified: Tue, 15 Sep 2026 01:12:07 GMT  
		Size: 86.9 MB (86884401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0fa8786d843abf12608100f84f45fe4716600da353d57c1f30e594f6a88d64`  
		Last Modified: Tue, 15 Sep 2026 01:12:03 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117d3c7d47c1ae5a77dbb81a05874044f21a8f8c2fa3457138b2e7ff928497ba`  
		Last Modified: Tue, 15 Sep 2026 01:12:08 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba68ab8be2f790263f74dec448e79e28bf3106c448aae6d69da66b986cd4e75e`  
		Last Modified: Tue, 15 Sep 2026 01:12:03 GMT  
		Size: 54.9 KB (54913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:acaee375b8cb47e5c3d110bdef36eb0b7e631a183eda34cf839679cb929bfb0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11377509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1660a0c0dc0d18562bbd5688e192091a98e000905b79bdd077d67a1c02c6410b`

```dockerfile
```

-	Layers:
	-	`sha256:a2d4822b8c8248a8d086a18d2abb0722336298b936a700f0b5b66123ba4db33d`  
		Last Modified: Tue, 15 Sep 2026 01:12:04 GMT  
		Size: 11.4 MB (11356645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:516afdaeef6b223b8f37264d8ddd7d8e8bcc3847bdcbe410803a2e61c69b13a3`  
		Last Modified: Tue, 15 Sep 2026 01:12:03 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:8192f762fe4b7c75f555bb27e8800b8b3f3fe9c020b775724b28579002b5afd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.8 MB (433784112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d4042696468d3a65356a632b43d333b98b81a3eb80b17ebe2d39f4276cc79a`
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
# Tue, 15 Sep 2026 01:11:26 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:11:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:11:26 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:11:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 01:11:26 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:11:26 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:11:26 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 15 Sep 2026 01:11:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 15 Sep 2026 01:11:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:11:29 GMT
USER gradle
# Tue, 15 Sep 2026 01:11:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 01:11:29 GMT
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
	-	`sha256:8036ffc227085c706484cf7eb28e37a91ef0ef90b0398849ce52cd1bce2ff5d8`  
		Last Modified: Tue, 15 Sep 2026 01:12:01 GMT  
		Size: 86.3 MB (86251254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efacca78e852850ad59bd00f579b1831854d69ee4030c2a74f3e384e25616eb4`  
		Last Modified: Tue, 15 Sep 2026 01:11:57 GMT  
		Size: 1.6 KB (1641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc05fc9a636e906e397a2954f4f5a9ac976a1ace42d31c8e9ea309f2657979f3`  
		Last Modified: Tue, 15 Sep 2026 01:12:02 GMT  
		Size: 138.1 MB (138068536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a0f4756a84ee714f781d995fdb4d89ab0b9806e95432e5f14c570004eea261a`  
		Last Modified: Tue, 15 Sep 2026 01:11:58 GMT  
		Size: 59.5 KB (59525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:2202026a8b46f2c3db08423397eeca4fb2657bb8f3db7053cd81be3d6d931704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11376657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0459d9570a6afceb44f0dd10c5734116dac0f6b4227f5094cd7319d34da0da5`

```dockerfile
```

-	Layers:
	-	`sha256:7616c9afbfbebc01de9c5d1fa7a3d2484ee30385638876d60af9c1008ebcfcd1`  
		Last Modified: Tue, 15 Sep 2026 01:11:58 GMT  
		Size: 11.4 MB (11355621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:288125247d0ea1d35b3c2e27375aa018bace5f8b279d45f9575c11bf187dee9e`  
		Last Modified: Tue, 15 Sep 2026 01:11:57 GMT  
		Size: 21.0 KB (21036 bytes)  
		MIME: application/vnd.in-toto+json
