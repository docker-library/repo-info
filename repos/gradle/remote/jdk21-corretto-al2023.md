## `gradle:jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:86bf8799ab7cac5418a091bd9660401e23292f7425101f40d96efb1568998630
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:64ffc0a459e3a7bf673fe9b9a66507dda87a92f5144205b4439bd4c7b8d0a3b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.2 MB (456202609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5f3ff8c2f9ab5c850fce2d92a67b591011a3e5b80458199e15d39527f01418`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:34:45 GMT
ARG version=21.0.13.1.2-1
# Wed, 18 Nov 2026 21:34:45 GMT
ARG resource_version=21.0.13.1.2
# Wed, 18 Nov 2026 21:34:45 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:34:45 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:34:45 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:34:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 20 Nov 2026 19:58:47 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 19:58:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 19:58:47 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 19:58:48 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 19:58:48 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 19:58:48 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 19:58:48 GMT
ENV GRADLE_VERSION=9.9.2
# Fri, 20 Nov 2026 19:58:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Fri, 20 Nov 2026 19:58:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 19:58:51 GMT
USER gradle
# Fri, 20 Nov 2026 19:58:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 19:58:52 GMT
USER root
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3b37b567ba37447551098e207cac872bc7a58e4f0b180820e734a23f5b3200`  
		Last Modified: Wed, 18 Nov 2026 21:35:08 GMT  
		Size: 170.7 MB (170743289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012367139e27e96fcbb13469dc7a80be75e7bc745626ce400d3fc7c1930f7ae5`  
		Last Modified: Fri, 20 Nov 2026 19:59:26 GMT  
		Size: 96.0 MB (95992184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30f21bd50aaf35328832b708bff328e49528309ffb02d949a777fd63745491bf`  
		Last Modified: Fri, 20 Nov 2026 19:59:21 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f063f270ca3b5e3afc311d0e90121b7f5a8db72bb531e86514aecc5feeb66ce`  
		Last Modified: Fri, 20 Nov 2026 19:59:27 GMT  
		Size: 134.9 MB (134870750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62d545b1979e0195ec1e80b71ce16eb791f1d1be7a94e7317d436144c1154b7`  
		Last Modified: Fri, 20 Nov 2026 19:59:21 GMT  
		Size: 25.6 KB (25618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:eb75a9c189712511a4dd01d75a1ebe4402e70944aaf40050e8149bc4d5de3007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12693080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ecec48f708bae8ed479dd6585c0c6297d7c82376718a6206add2c22aa254ae6`

```dockerfile
```

-	Layers:
	-	`sha256:aee7c6a3eb6be75d50a1308616429dd2b78c0b8078ad6d1ae5a9f96cb8111d44`  
		Last Modified: Fri, 20 Nov 2026 19:59:22 GMT  
		Size: 12.7 MB (12671429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7675dce6bd6f4c9eeb53448c243c48cd335554ba1ebe7b18f4acf6b9f38974bc`  
		Last Modified: Fri, 20 Nov 2026 19:59:21 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:36a0c4d691535d8724294ed47f9ee5f36d6ba18fc247f91e66646b728ee5004e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.8 MB (452785468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:261d9b0eaed5783c9334629230327df36c478b8cc9801fe7d8254a5b1d86f5b9`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:24 GMT
ARG version=21.0.13.1.2-1
# Wed, 18 Nov 2026 21:35:24 GMT
ARG resource_version=21.0.13.1.2
# Wed, 18 Nov 2026 21:35:24 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:24 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:24 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 20 Nov 2026 19:57:05 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 19:57:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 19:57:05 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 19:57:05 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 19:57:05 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 19:57:05 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 19:57:05 GMT
ENV GRADLE_VERSION=9.9.2
# Fri, 20 Nov 2026 19:57:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Fri, 20 Nov 2026 19:57:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 19:57:11 GMT
USER gradle
# Fri, 20 Nov 2026 19:57:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 19:57:12 GMT
USER root
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f300ae6bc19c11a6f167b2d270c42dacc545845a1bd945c60ab38bb4c87ea4ad`  
		Last Modified: Wed, 18 Nov 2026 21:35:47 GMT  
		Size: 169.0 MB (169034352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6c00c2d8aa2a6786da0d6a588ed1fbdde9157bb54d22ef1ed58f0b7448d8f5`  
		Last Modified: Fri, 20 Nov 2026 19:57:46 GMT  
		Size: 95.4 MB (95395794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e059ec6b54ee1072a16d59c152e581c5a6bfb07ea1998853c6b3f1e80b1de4`  
		Last Modified: Fri, 20 Nov 2026 19:57:42 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d1872f0429645a3ddf6fef5cc473362e21f9291fa5d820399953fe725ab3e4e`  
		Last Modified: Fri, 20 Nov 2026 19:57:46 GMT  
		Size: 134.9 MB (134870753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc36951eb6b022c472f842180dbcce2471daefd5522a9320b28dc70912c5bfe7`  
		Last Modified: Fri, 20 Nov 2026 19:57:42 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:ce62b0ce3c19c34a9a3e6b260a9c37a5e18ffb6a401fca7aae9ff17562fbbf54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12692279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b87c34caedc233fa528df410273947954d3d6e30302db068d180c023dda886`

```dockerfile
```

-	Layers:
	-	`sha256:5572880d8bc0b1af228a2066c3bc8902a207977b339db5c836bb5578c4099202`  
		Last Modified: Fri, 20 Nov 2026 19:57:42 GMT  
		Size: 12.7 MB (12670432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d94df4984e25e6528951f5bfc2b860d7312ddbc50221cda709aa0df77a31eaf`  
		Last Modified: Fri, 20 Nov 2026 19:57:41 GMT  
		Size: 21.8 KB (21847 bytes)  
		MIME: application/vnd.in-toto+json
