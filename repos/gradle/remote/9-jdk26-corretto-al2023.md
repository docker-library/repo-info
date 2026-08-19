## `gradle:9-jdk26-corretto-al2023`

```console
$ docker pull gradle@sha256:c5c760034342993e4d74f8666ce62f0d40b7e5d9668228bd12dbfb77adc208a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk26-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:3403e2badb5707b76544d660eb95ec4939cc7f90e0f16262ee1f5c32098fd837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.3 MB (486268713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9fe13d038258ff770319409e2e1b73d26ae2abfd71868a8a867a6ff99b40d7`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:53 GMT
ARG version=26.0.2.10-1
# Tue, 04 Aug 2026 00:58:53 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:53 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:53 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Wed, 19 Aug 2026 17:41:59 GMT
CMD ["gradle"]
# Wed, 19 Aug 2026 17:41:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 19 Aug 2026 17:41:59 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 19 Aug 2026 17:41:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 19 Aug 2026 17:41:59 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 19 Aug 2026 17:42:00 GMT
WORKDIR /home/gradle
# Wed, 19 Aug 2026 17:42:00 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 19 Aug 2026 17:42:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 17:42:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 17:42:02 GMT
USER gradle
# Wed, 19 Aug 2026 17:42:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 17:42:03 GMT
USER root
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747d7a61250941d0983530cfa68deabbdc34bcb3058d252140997ef8b8d3c669`  
		Last Modified: Tue, 04 Aug 2026 00:59:16 GMT  
		Size: 193.6 MB (193630258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71fcb6571cebf393c72e1cbfd33a7ff20cc0d942caafdd67675b8ffa7ea3deb`  
		Last Modified: Wed, 19 Aug 2026 17:42:35 GMT  
		Size: 86.7 MB (86684467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c48ddef620ed5b85d49701a99103be499a1b823c196354b01f979750a6a995c`  
		Last Modified: Wed, 19 Aug 2026 17:42:31 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674f7a77f64d5f6a70e5495c132332950c49abb254c230adfe5e1d31dfc689d1`  
		Last Modified: Wed, 19 Aug 2026 17:42:36 GMT  
		Size: 151.4 MB (151354014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9505cbe8c68039a1f472813805b92390b208ebc43d54af8a6ecc83de0f6adc25`  
		Last Modified: Wed, 19 Aug 2026 17:42:31 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:57f188b3060ca2cc68ca57755e49b88a8e78504ffd51c13832a527f238e20e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11423199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2df05fe7316664357a350ebf4184bf930634d902428136afacf7052215f19d`

```dockerfile
```

-	Layers:
	-	`sha256:1156254bf30e911deebabfede0d118a45b90ad013fa2422baaddea4aa2aacc23`  
		Last Modified: Wed, 19 Aug 2026 17:42:32 GMT  
		Size: 11.4 MB (11401548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:216b526b2b1dd30a339fce0e9f50a365007d7de1bf5397c39e63b48edfd0cf87`  
		Last Modified: Wed, 19 Aug 2026 17:42:31 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk26-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b029e31058d7529814daa6ae2da41974a1d105dd08985c9cb714e9ef4c71a49b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.3 MB (482326096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c2e33d26b759a3c3014133911b4ee2553724b361e6161e5937fa349d53d462`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:34 GMT
ARG version=26.0.2.10-1
# Tue, 04 Aug 2026 00:58:34 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:34 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:34 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Wed, 19 Aug 2026 17:42:19 GMT
CMD ["gradle"]
# Wed, 19 Aug 2026 17:42:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 19 Aug 2026 17:42:19 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 19 Aug 2026 17:42:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 19 Aug 2026 17:42:20 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 19 Aug 2026 17:42:20 GMT
WORKDIR /home/gradle
# Wed, 19 Aug 2026 17:42:20 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 19 Aug 2026 17:42:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 17:42:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 17:42:22 GMT
USER gradle
# Wed, 19 Aug 2026 17:42:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 17:42:23 GMT
USER root
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54aa034ee269a16d2d4d65b736386b1d67bd7e775503ffdc65e6ae4d84a45742`  
		Last Modified: Tue, 04 Aug 2026 00:58:59 GMT  
		Size: 191.4 MB (191447500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd54699fefe8cb7becf828eeae29e706d5c8797e79b332ba8168420998eb6692`  
		Last Modified: Wed, 19 Aug 2026 17:42:56 GMT  
		Size: 86.0 MB (86044906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335b393dd4686c37d4beae4baa0edd5c5d03216a9737b27265d85d139767ade4`  
		Last Modified: Wed, 19 Aug 2026 17:42:52 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0980f792280fe31ba2cb19d7a5445aef233f8eec625d52268462612e9c7b0667`  
		Last Modified: Wed, 19 Aug 2026 17:42:57 GMT  
		Size: 151.4 MB (151354019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00965a12eb8948f35b8d2677e04b5b31c11d79b26f88cc47ddddfd62be1a1e10`  
		Last Modified: Wed, 19 Aug 2026 17:42:53 GMT  
		Size: 29.3 KB (29334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:ffbbf96d93979f1ccfa91fd519232ed706051592c845330b72509a9031dc8a73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11422405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a1eda5e6e8b4c7206a8dc9387dbc0e5e176410c86f544f20d0e0b4a3cb1e6a6`

```dockerfile
```

-	Layers:
	-	`sha256:e6a7bc444b96066c1ddf6d98beaf6ddfcd4f91899b53e57bea6f986d6959dc04`  
		Last Modified: Wed, 19 Aug 2026 17:42:53 GMT  
		Size: 11.4 MB (11400557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:989c6e7a657701b80ce44f0838a07b57a583c7b6cd4bf785fab6e93816b0b475`  
		Last Modified: Wed, 19 Aug 2026 17:42:52 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
