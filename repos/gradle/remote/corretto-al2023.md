## `gradle:corretto-al2023`

```console
$ docker pull gradle@sha256:bb35f016497202d8342ff68fe5d45b74a94a3d9043a3d2cced0061818abebeef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:465cbf4f85cb50973b0ea02319ebb30788e3edc0e5326cafab0b571e017291f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **481.0 MB (480985131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce7e837f77b0630f2220ba704fe034037f8481dffa271da0bb0a995e15296ab`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:51 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:51 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:51 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:51 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 10 Aug 2026 17:45:20 GMT
CMD ["gradle"]
# Mon, 10 Aug 2026 17:45:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Aug 2026 17:45:20 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 10 Aug 2026 17:45:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 10 Aug 2026 17:45:20 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Aug 2026 17:45:20 GMT
WORKDIR /home/gradle
# Mon, 10 Aug 2026 17:45:20 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 10 Aug 2026 17:45:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 10 Aug 2026 17:45:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 10 Aug 2026 17:45:22 GMT
USER gradle
# Mon, 10 Aug 2026 17:45:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 10 Aug 2026 17:45:23 GMT
USER root
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2408eb84527cb80413943a5c5046a2c3ecf630ffa06142e5bc05f3767756c5da`  
		Last Modified: Tue, 04 Aug 2026 00:59:15 GMT  
		Size: 189.5 MB (189475802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b0fb3a735d5133c5871a21ef78f90194ae3ca3615aad9f86c28f8b99fbf6e6`  
		Last Modified: Mon, 10 Aug 2026 17:45:54 GMT  
		Size: 86.7 MB (86681417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb9c79d58b082418bfa0b7480dc493d0cf9a105602b8113d1c870c5b852d915`  
		Last Modified: Mon, 10 Aug 2026 17:45:51 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f22e9bdb288af5aed3e194bca7b8fea2388f598dc02a570c0d0bc96664601f8`  
		Last Modified: Mon, 10 Aug 2026 17:45:56 GMT  
		Size: 150.2 MB (150227945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7d69b80475e078c9d2b263d6377c7d29ea5f87d000465983740118be98a001`  
		Last Modified: Mon, 10 Aug 2026 17:45:51 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:e9c13ff02447f061de35f5f00daaa7fe4152e81ca60d43530421cd73becefd73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11427101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a62afda3fef4b23ff17a3c3eda8e44d8dd4d17a8e40cc0f62f680eec7670b5`

```dockerfile
```

-	Layers:
	-	`sha256:7cf3cbdbc5827c726e2e42cfd79efb3fce3052b04a0f3cb66c40c7152787e274`  
		Last Modified: Mon, 10 Aug 2026 17:45:51 GMT  
		Size: 11.4 MB (11404832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30a12a39a38103fbc1581400c50e03fdf9bb10195fe496e67111809b075ee43d`  
		Last Modified: Mon, 10 Aug 2026 17:45:51 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:8df37d1e7befd5c1ad4337f626dca3ca135a0e05c0676e4733404863b53fde2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.1 MB (477131370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06defb33f4a01a4746dd1010bd43317e9806c1a65f2eb0ee327a386c41c7f0ac`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:09 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:09 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:09 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:09 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 10 Aug 2026 17:45:43 GMT
CMD ["gradle"]
# Mon, 10 Aug 2026 17:45:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Aug 2026 17:45:43 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 10 Aug 2026 17:45:43 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 10 Aug 2026 17:45:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Aug 2026 17:45:43 GMT
WORKDIR /home/gradle
# Mon, 10 Aug 2026 17:45:43 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 10 Aug 2026 17:45:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 10 Aug 2026 17:45:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 10 Aug 2026 17:45:46 GMT
USER gradle
# Mon, 10 Aug 2026 17:45:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 10 Aug 2026 17:45:46 GMT
USER root
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6b841110a2e3ff6dc4a335180c283116cb5b503434736e3a118a33f30ef0fa`  
		Last Modified: Tue, 04 Aug 2026 00:58:34 GMT  
		Size: 187.4 MB (187379559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc5e6524c98d12bfaa99360c8f15a7d1aa27664a371b4f47a8426318a5fa67a8`  
		Last Modified: Mon, 10 Aug 2026 17:46:20 GMT  
		Size: 86.0 MB (86044193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87f4eed0bce731b542cf875af3cbc3c39550931a962d723540ccc98d573b65e`  
		Last Modified: Mon, 10 Aug 2026 17:46:15 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9277ace97a1d8928782f3e3e30139f9309b518d5426ffd00a2e2954d2352de00`  
		Last Modified: Mon, 10 Aug 2026 17:46:21 GMT  
		Size: 150.2 MB (150227945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a72451b871ae0d050ec7e580a8db79f3fdd75b960bdd77915424398f64de24`  
		Last Modified: Mon, 10 Aug 2026 17:46:15 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:50282f7312760c3144225bc0496e69d651aa4155530afa8184c76dd206f89f91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11426360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b16a8a02c65a2e2f1f4cf76c14d7d9092c0733257d7b1b1e53ba16e0cc99bb3`

```dockerfile
```

-	Layers:
	-	`sha256:3e55442a9af1901d37e0011fc391f46840c51fc8ab23314a0f13659abb001b86`  
		Last Modified: Mon, 10 Aug 2026 17:46:16 GMT  
		Size: 11.4 MB (11403870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5de81874e51b9ecfa04d2288d89b9e39a8be2c0e5647ac2db002d9a1d86e6b70`  
		Last Modified: Mon, 10 Aug 2026 17:46:15 GMT  
		Size: 22.5 KB (22490 bytes)  
		MIME: application/vnd.in-toto+json
