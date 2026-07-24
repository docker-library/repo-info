## `gradle:6-jdk11-corretto`

```console
$ docker pull gradle@sha256:14c473735a5bf88ff0c5c79355b3e0ff78ea437c6d7119d737ddef05e1dcd22f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:6-jdk11-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:b2163cad54f64a6329bdfd341e0305f290012263fa82ee6915b316bf1ac1d238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.8 MB (402849638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b7e27d2e803f7b1d144409fdea076bdbe7fd472614672b65467b0e4a7d78a50`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:11:21 GMT
ARG version=11.0.32.9-1
# Thu, 23 Jul 2026 23:11:21 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:11:21 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:11:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 24 Jul 2026 00:13:09 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:13:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:13:09 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:13:09 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:13:09 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:13:09 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:13:09 GMT
ENV GRADLE_VERSION=6.9.4
# Fri, 24 Jul 2026 00:13:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Fri, 24 Jul 2026 00:13:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:13:11 GMT
USER gradle
# Fri, 24 Jul 2026 00:13:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 24 Jul 2026 00:13:12 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82072a792c9182ec045378bf27c10d76531f8d35989d292837595575cc8a6c61`  
		Last Modified: Thu, 23 Jul 2026 23:11:40 GMT  
		Size: 153.5 MB (153469282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67cc5758a264aa5ea459d3b01a2026a13398dd7429fffe18d7d7cc8812954d82`  
		Last Modified: Fri, 24 Jul 2026 00:13:41 GMT  
		Size: 86.7 MB (86676464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4586046e5dd485b88babc01c3d91413707079fadc2a2dd218eba0d5221076582`  
		Last Modified: Fri, 24 Jul 2026 00:13:37 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42c9466ec20cd2832e2e813195d763618767cc53ade1ba63c94f0c7290e2a18`  
		Last Modified: Fri, 24 Jul 2026 00:13:42 GMT  
		Size: 107.7 MB (107696662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f59cd30e422691a12aa75099f8fae7f55a144ebe4470b0cb7ba5c208a05da82b`  
		Last Modified: Fri, 24 Jul 2026 00:13:37 GMT  
		Size: 431.3 KB (431285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:c7f9033407ca451e85e42d954ec3b06c615ec0ead40128ad3afa761b7e3f4ce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11294571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aada743f66d18fc5872f80a3f8975b2186709998e7868447cf7f54b100747d63`

```dockerfile
```

-	Layers:
	-	`sha256:ae411375d6d023e2b5615ee88266343d2cd3dced08d38eb332fe9b7015eee5da`  
		Last Modified: Fri, 24 Jul 2026 00:13:38 GMT  
		Size: 11.3 MB (11273699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26341a5944fd0176647cd3131eac2565dce5f491e0e914ead69da315396c098a`  
		Last Modified: Fri, 24 Jul 2026 00:13:38 GMT  
		Size: 20.9 KB (20872 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ec5bf34b0968e1923d3fd080e63f7bd85370dc29f001aab21627299a1b1eec3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.7 MB (399664114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ec511961abde5ae670b6599d7fab444db4feda10033a9fd950da09c0d93a8aa`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:08 GMT
ARG version=11.0.32.9-1
# Thu, 23 Jul 2026 23:13:08 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:08 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 24 Jul 2026 00:12:53 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:12:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:12:53 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:12:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:12:54 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:12:54 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:12:54 GMT
ENV GRADLE_VERSION=6.9.4
# Fri, 24 Jul 2026 00:12:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Fri, 24 Jul 2026 00:12:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:12:56 GMT
USER gradle
# Fri, 24 Jul 2026 00:12:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 24 Jul 2026 00:12:56 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8931d21061bc0c544e1a6408978501ca368fc66619cab5f2d56bf3a2ba7aa6d8`  
		Last Modified: Thu, 23 Jul 2026 23:13:32 GMT  
		Size: 152.0 MB (152046425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6a9ee925f215f6bc634ee6afa6382b88dcbe5c49b7650f99e866e47a2bb00b`  
		Last Modified: Fri, 24 Jul 2026 00:13:28 GMT  
		Size: 86.0 MB (86045085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1446efb3f98d9358e37afa7c40acbc091f11d1839cd9dff06455f89f0572965d`  
		Last Modified: Fri, 24 Jul 2026 00:13:24 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a231cf92563fd2360f2e3bdc4c2344ec017ec02207b7bfcad27f1fb315b4c1c5`  
		Last Modified: Fri, 24 Jul 2026 00:13:27 GMT  
		Size: 107.7 MB (107696666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a337fe308d4691343226daa7ef1f0d4cc559fd54bebc36a261b970dc401f8dbe`  
		Last Modified: Fri, 24 Jul 2026 00:13:24 GMT  
		Size: 425.0 KB (425020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:51839e82c15b12ebcd8501c83c07955ef044df168fde2bd606bc2e7737b168a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11294563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac8afeedc6a4b5617a31e2aa03c3e73f216aae2c5f5e3ce9bcd5f676661d8708`

```dockerfile
```

-	Layers:
	-	`sha256:d2541615da08ccc62291a3c1208ce8fc7d3dc8847dd77349e7b2557aa84040c9`  
		Last Modified: Fri, 24 Jul 2026 00:13:25 GMT  
		Size: 11.3 MB (11273518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c2fd41ee1de85e51967a1246a54dc1ff91a217e2df4b1f17c463535fcf308c`  
		Last Modified: Fri, 24 Jul 2026 00:13:23 GMT  
		Size: 21.0 KB (21045 bytes)  
		MIME: application/vnd.in-toto+json
