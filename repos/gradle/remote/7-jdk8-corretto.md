## `gradle:7-jdk8-corretto`

```console
$ docker pull gradle@sha256:19d32b38896672b6a27f5057bef8656932cca62bfbc948710e2c9ca423396483
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk8-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:88668a8130c14fdb3b8c20ebac949d36e6dd494d7ac41af158cdd63477c6b000
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.0 MB (397028987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf8522542fe4f254e0afd42d9ee758fee42432da0764633376ded83fe62ef666`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:12 GMT
ARG version=1.8.0_504.b05-1
# Fri, 23 Oct 2026 01:09:12 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:09:12 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 23 Oct 2026 02:10:33 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:10:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:10:33 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:10:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:10:33 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:10:33 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:10:33 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 23 Oct 2026 02:10:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 23 Oct 2026 02:10:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:10:36 GMT
USER gradle
# Fri, 23 Oct 2026 02:10:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 23 Oct 2026 02:10:37 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45275d094db56efe377be53d0900de193deb6be1cfb9954a0f4ecf75eebd5bef`  
		Last Modified: Fri, 23 Oct 2026 01:09:29 GMT  
		Size: 118.1 MB (118071490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04fd4a6320a4f0b5bcdbfdcb16dc95e8e1735182a2d5e6163e2f36274ef5a33`  
		Last Modified: Fri, 23 Oct 2026 02:11:07 GMT  
		Size: 95.8 MB (95782575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42095184a96493e691fae573c7646e93d3fa22221c66b32d7f1204c9a4a3391d`  
		Last Modified: Fri, 23 Oct 2026 02:11:03 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5b20117c8e8290ec536d08df51bfcf34f4a041283a7e8b02481785a28d8a9d`  
		Last Modified: Fri, 23 Oct 2026 02:11:07 GMT  
		Size: 128.5 MB (128469414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ccf87659857bcb81e56a2b36d30c5b3c25e554e4684aeff562267464fb190b`  
		Last Modified: Fri, 23 Oct 2026 02:11:03 GMT  
		Size: 54.9 KB (54909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:f16db205ac3b27d35e8fee57cb4fa0d51b806a2f0081dcdbd76bfd4d73b27544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12936574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e5fbb22fb9de99ccd1a57f1ccb8e4ec0ba22297a00e7df5f437259f11960c0`

```dockerfile
```

-	Layers:
	-	`sha256:00b88ebc6b6f0dad3e964fc25c50e07ab52a7d63521b252b177e7b3372df2fc2`  
		Last Modified: Fri, 23 Oct 2026 02:11:04 GMT  
		Size: 12.9 MB (12915710 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52acfdc035ee195a351a032e65fbd6d9de6097b99b77df03f9f86a44b9e88325`  
		Last Modified: Fri, 23 Oct 2026 02:11:03 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:afcf2c84abf939fcb0883b07bce2aca07444563cc860f1ce44dbef7513dc0caf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395221855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:110757a1f25ab70627dbbf17f39133ee7cc27a7b4bdcf45a5a6b7c01ba14437f`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:05 GMT
ARG version=1.8.0_504.b05-1
# Fri, 23 Oct 2026 01:09:05 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:09:05 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 23 Oct 2026 02:10:48 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:10:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:10:48 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:10:48 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:10:48 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:10:48 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:10:48 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 23 Oct 2026 02:10:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 23 Oct 2026 02:10:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:10:52 GMT
USER gradle
# Fri, 23 Oct 2026 02:10:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 23 Oct 2026 02:10:53 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31e577a47f6b0405a087888eadca26b60870b71c2923deb64163a04e9980d44`  
		Last Modified: Fri, 23 Oct 2026 01:09:24 GMT  
		Size: 118.0 MB (117963352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8e2d41c9d5f358365212619a391b0918e231b44ab91873e560d23ad9b8e531`  
		Last Modified: Fri, 23 Oct 2026 02:11:27 GMT  
		Size: 95.2 MB (95198571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78154c8e8602faa64c0f92558c5d5db7b12dc9661a93da770d63db7ef33a2cb9`  
		Last Modified: Fri, 23 Oct 2026 02:11:23 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8175ab8852f8b307b7a0def5ab070a333c7c0dd4026a778c8c751c75e4f1e8`  
		Last Modified: Fri, 23 Oct 2026 02:11:27 GMT  
		Size: 128.5 MB (128469415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044c982fd88056241f65ffd6efb33f22f85b9f6283a1432015503ebfc6ae9bcb`  
		Last Modified: Fri, 23 Oct 2026 02:11:23 GMT  
		Size: 59.5 KB (59524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:aadc70b72035004b859ce336cb5c31e6ab22cd350bdc8fd836730a2a742090bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12937050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863a8a89c91b38291c622e3bf4207ad93211a2718968b2f1bc290f40845382e1`

```dockerfile
```

-	Layers:
	-	`sha256:00412a6622033186cea1c6ab729960245a901454532499d9b497f6ea2bc9bb8b`  
		Last Modified: Fri, 23 Oct 2026 02:11:23 GMT  
		Size: 12.9 MB (12916013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26ea17441ca472811d8defa1718014dbe3b06ee6b6eaf56830e16a679efb9160`  
		Last Modified: Fri, 23 Oct 2026 02:11:23 GMT  
		Size: 21.0 KB (21037 bytes)  
		MIME: application/vnd.in-toto+json
