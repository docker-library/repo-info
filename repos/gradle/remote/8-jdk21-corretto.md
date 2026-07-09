## `gradle:8-jdk21-corretto`

```console
$ docker pull gradle@sha256:d283590cd161c92828672f5db05c24d4eefd48383837b35745f21e3033d1bbea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk21-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:7dbb2e9a3e35ecc4195056a818cc7b09f01311e9a56f9409d7d1cfa17b674e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **449.8 MB (449821655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b8e5a2e09a4d216606896757f53b065efde1417b096bd34335ded9673f1a32`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:30 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:30 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:26 GMT
ARG version=21.0.11.10-1
# Wed, 08 Jul 2026 21:12:26 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:12:26 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:12:26 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 08 Jul 2026 22:11:15 GMT
CMD ["gradle"]
# Wed, 08 Jul 2026 22:11:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Jul 2026 22:11:15 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 08 Jul 2026 22:11:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 08 Jul 2026 22:11:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Jul 2026 22:11:16 GMT
WORKDIR /home/gradle
# Wed, 08 Jul 2026 22:11:16 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 08 Jul 2026 22:11:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 08 Jul 2026 22:11:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 08 Jul 2026 22:11:18 GMT
USER gradle
# Wed, 08 Jul 2026 22:11:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 08 Jul 2026 22:11:19 GMT
USER root
```

-	Layers:
	-	`sha256:7cc32cc3c75aa0d5acde5091a935996653f4e5538d4cea6ce80a19441163b9f1`  
		Last Modified: Wed, 08 Jul 2026 02:05:17 GMT  
		Size: 54.6 MB (54574155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b619e5be0269b10603476ca6f4063bff803374451922272bb88986e553bee05b`  
		Last Modified: Wed, 08 Jul 2026 21:12:50 GMT  
		Size: 170.4 MB (170443269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d1f0eba2a073d23acef015fc73fb070f1b3696a42afc2bdc9014ce05d82323`  
		Last Modified: Wed, 08 Jul 2026 22:11:49 GMT  
		Size: 86.7 MB (86679086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1cca45b7d41dc69b29f64028334a604d79875dbe2041cb9d70ee2e1f3c677a`  
		Last Modified: Wed, 08 Jul 2026 22:11:45 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1823424f98a4990b5e9300b3d7d720de56f3b209dcd20985ae35a395246b35`  
		Last Modified: Wed, 08 Jul 2026 22:11:50 GMT  
		Size: 138.1 MB (138068544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4daad897f8eebd6cb695bb3359ec2c9e2da2e23e9eb3cefb9af340f5d47ced`  
		Last Modified: Wed, 08 Jul 2026 22:11:45 GMT  
		Size: 54.9 KB (54921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:7e0f6e54b4b7a814c0461c1468dd732c61480920bf9ac33fcf043ce071f9fa03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11379710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12b600747123ecd7f9d07e33b520352d4dc1952c6952caaf1af21ce55cdd7092`

```dockerfile
```

-	Layers:
	-	`sha256:572d2bd17cc78121f23076b13673b11392260adb2dd63927f1fb598e2ff242fb`  
		Last Modified: Wed, 08 Jul 2026 22:11:46 GMT  
		Size: 11.4 MB (11358687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46debcb7aca9905629e40e89391e8f903ae9b62da98f4e78c5f707e84cbfe175`  
		Last Modified: Wed, 08 Jul 2026 22:11:45 GMT  
		Size: 21.0 KB (21023 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk21-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:fdffea354b25400051cf48f1a5217e77c885875ccaf7b26c70fa4b8ff5f49cb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.3 MB (446346508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947f0d5f8ef3571d12c7cc5436c5a9377fba27468acd12cc11593ce93c3c75fd`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 08 Jul 2026 20:24:48 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:24:48 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:21 GMT
ARG version=21.0.11.10-1
# Wed, 08 Jul 2026 21:12:21 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:12:21 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:12:21 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 08 Jul 2026 22:11:25 GMT
CMD ["gradle"]
# Wed, 08 Jul 2026 22:11:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Jul 2026 22:11:25 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 08 Jul 2026 22:11:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 08 Jul 2026 22:11:26 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Jul 2026 22:11:26 GMT
WORKDIR /home/gradle
# Wed, 08 Jul 2026 22:11:26 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 08 Jul 2026 22:11:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 08 Jul 2026 22:11:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 08 Jul 2026 22:11:28 GMT
USER gradle
# Wed, 08 Jul 2026 22:11:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 08 Jul 2026 22:11:29 GMT
USER root
```

-	Layers:
	-	`sha256:d30c7cda96612bb38923feeb2e2027a5cbb8eab71cebfe3aad536791644c7ebf`  
		Last Modified: Wed, 08 Jul 2026 02:05:16 GMT  
		Size: 53.4 MB (53448934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c17250871cc0a8d8fdbf0f189699db337c40f68f5cf30aa81ae111495c9ba300`  
		Last Modified: Wed, 08 Jul 2026 21:12:45 GMT  
		Size: 168.7 MB (168719127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57da19fb6ec3c95e7a8a5621c1bb45c3e2bd442e582a5b8bc3987558eeef8171`  
		Last Modified: Wed, 08 Jul 2026 22:12:02 GMT  
		Size: 86.0 MB (86048659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2513cc500ac0e5da1a464af53cf12047e851aa9c995e37760a53fe8171b1e7ef`  
		Last Modified: Wed, 08 Jul 2026 22:11:57 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ef78a36e9d452d857fb7fab303e1a1c76d8e5fc4a25308b0d0a157cbc4f6a9`  
		Last Modified: Wed, 08 Jul 2026 22:12:04 GMT  
		Size: 138.1 MB (138068572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454dc8e064169485241d4efe32c6e546ef98307f5a4a07dcde5ae98063d7a2dc`  
		Last Modified: Wed, 08 Jul 2026 22:11:57 GMT  
		Size: 59.5 KB (59539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:3417da3ea7de998bbc02347f6956be40f1d99cee97aaa267f229f4c78bd30630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11378862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b3c18fe839911a5dbc1327d19015f0a6558ac42de0b6bbcbebbe4437e136e3`

```dockerfile
```

-	Layers:
	-	`sha256:6f36db4b5a134271f61c82d1a753eaa4d59840aa507e86d468791e5a0a0492ec`  
		Last Modified: Wed, 08 Jul 2026 22:11:58 GMT  
		Size: 11.4 MB (11357666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac785bdfe0ddf07b7d10af8e5a0ccc7ae671e33e56dc79e14f1640531e1fc137`  
		Last Modified: Wed, 08 Jul 2026 22:11:57 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.in-toto+json
