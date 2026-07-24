## `gradle:7-jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:abd02b76ecca39f74de14b1e3a965191deeac45d7bd36d2d41c7b947916467f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:0fd00331c5caffe16f1328dcf83c6b0f7d48f64432b63fee6f5b39daf572e9a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.9 MB (426926251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152b86adff830a5b6f846237d20759105203434617a1890aec99394c6dd08b28`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:03 GMT
ARG version=17.0.20.8-1
# Thu, 23 Jul 2026 23:12:03 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:12:03 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:12:03 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 24 Jul 2026 00:12:26 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:12:26 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:12:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:12:26 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:12:26 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:12:26 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 24 Jul 2026 00:12:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 24 Jul 2026 00:12:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:12:29 GMT
USER gradle
# Fri, 24 Jul 2026 00:12:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 24 Jul 2026 00:12:29 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8310112aa144a10b179ca159ef5f35c4ed750b696185bafbe622406ecc17121d`  
		Last Modified: Thu, 23 Jul 2026 23:12:23 GMT  
		Size: 157.1 MB (157143867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8a882122bea70d1bcf0f2f4731f71a915aba6a22fdf20ae9a3911126016806`  
		Last Modified: Fri, 24 Jul 2026 00:12:57 GMT  
		Size: 86.7 MB (86682124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605d7bc4367f44a5e3d2bd059fe3b90d87c9b2eb76abcf61c1e3b10931f62516`  
		Last Modified: Fri, 24 Jul 2026 00:12:54 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aacfe2315cda4245c07692117324b0e78dfcffc7f878ecdea0f86e934ce47c52`  
		Last Modified: Fri, 24 Jul 2026 00:12:58 GMT  
		Size: 128.5 MB (128469421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd02c6d1e3c9da4346e2664f110f8e14b010799697e4e7d52147f9e7f9b3b53`  
		Last Modified: Fri, 24 Jul 2026 00:12:54 GMT  
		Size: 54.9 KB (54896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:ab6febe76a5eba1e9a0bf76c421758a43a21afb5e3d8077b1bbb508bdbf3c0b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11287617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b0d990d40bcb995837386edf6fb624324ffa534971b9cc657bc9d71937ce966`

```dockerfile
```

-	Layers:
	-	`sha256:1b93bea117ab931adab031764f5cc2a4224f5c6bf33d1458ce66145276cd0cb4`  
		Last Modified: Fri, 24 Jul 2026 00:12:54 GMT  
		Size: 11.3 MB (11266904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb57c3c09291a8336382763769d276fbfc6515cb5db6fde733191cdfaf0965a2`  
		Last Modified: Fri, 24 Jul 2026 00:12:54 GMT  
		Size: 20.7 KB (20713 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:61ba5cd127bb5d66b8f837e0d7b5fe32a91c063d92730f64413b4c79518ad292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.0 MB (423979343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e5d59fdd56f78868eeae5a5684fee37a25396a703899d9351a96c674c39e5e`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:52 GMT
ARG version=17.0.20.8-1
# Thu, 23 Jul 2026 23:13:52 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:52 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:52 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 24 Jul 2026 00:12:30 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:12:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:12:30 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:12:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:12:31 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:12:31 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:12:31 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 24 Jul 2026 00:12:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 24 Jul 2026 00:12:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:12:33 GMT
USER gradle
# Fri, 24 Jul 2026 00:12:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 24 Jul 2026 00:12:34 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39dedf514dc05c4bc71714b6cc360e3e86e09add780da2029f72cf2312227803`  
		Last Modified: Thu, 23 Jul 2026 23:14:15 GMT  
		Size: 155.9 MB (155947461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2452a655b8752e503c9ab0f72632a03aa86afd58fc1cddf1ead2f7dd36225e57`  
		Last Modified: Fri, 24 Jul 2026 00:13:05 GMT  
		Size: 86.1 MB (86052026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5586a253ee1eb356e05561739403dceaf69cff97f0205110fce20b1e53d2ccf4`  
		Last Modified: Fri, 24 Jul 2026 00:13:02 GMT  
		Size: 1.6 KB (1650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a67be47958f4cd307c802db0ba2e83a7ddb2e1e1307c44288605dac20f7b2ba`  
		Last Modified: Fri, 24 Jul 2026 00:13:06 GMT  
		Size: 128.5 MB (128469416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16861d2664e64746333ae6a5fb3a7452c161e440c89d78a1997900b5d20a7a6c`  
		Last Modified: Fri, 24 Jul 2026 00:13:02 GMT  
		Size: 59.5 KB (59526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:6773fba17877e967fb015f1e6e2c84b560927160f3ac72dbe0074ade86a176ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11286766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571b0291e28a307caab687e1020b43ff3c98ceee38737fb7726f7fbeba58c4ab`

```dockerfile
```

-	Layers:
	-	`sha256:9a114d3a3e9862dd4b0f1d84c3ab1e7411a4cf319ded92998241d3009fe93aa8`  
		Last Modified: Fri, 24 Jul 2026 00:13:02 GMT  
		Size: 11.3 MB (11265880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:349f7e654d82f416ce7d5c1fdcf59c2ae8e4f7428fc1b2ea2166621fbf75cd2f`  
		Last Modified: Fri, 24 Jul 2026 00:13:02 GMT  
		Size: 20.9 KB (20886 bytes)  
		MIME: application/vnd.in-toto+json
