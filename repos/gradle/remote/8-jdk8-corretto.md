## `gradle:8-jdk8-corretto`

```console
$ docker pull gradle@sha256:fcc72100a25b9d034f8285a504d3d35948e10a640da694e8dbae618f2777b3ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk8-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:a2e933859b78541f34ea690218c8618b43d4397ed3f8664553fc7cf67b4a244d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.7 MB (397663521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007003e2f501951ae6129380298f28ea62838c79933cee899e9be46f52b9d2c5`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:18:51 GMT
ARG version=1.8.0_504.b01-1
# Thu, 20 Aug 2026 17:18:51 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:18:51 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 20 Aug 2026 18:02:24 GMT
CMD ["gradle"]
# Thu, 20 Aug 2026 18:02:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 20 Aug 2026 18:02:24 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 20 Aug 2026 18:02:24 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 20 Aug 2026 18:02:24 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 20 Aug 2026 18:02:24 GMT
WORKDIR /home/gradle
# Thu, 20 Aug 2026 18:02:24 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 20 Aug 2026 18:02:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 20 Aug 2026 18:02:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 20 Aug 2026 18:02:26 GMT
USER gradle
# Thu, 20 Aug 2026 18:02:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 20 Aug 2026 18:02:27 GMT
USER root
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61165ddf680cb88b1ed4eb9f8c1535db661569f12d8f999a90178fcaa385b0a0`  
		Last Modified: Thu, 20 Aug 2026 17:19:09 GMT  
		Size: 118.1 MB (118088873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6a8e46be511ae4287e564b9c2ddee391d19353dd6992d12f2a694434369ed5`  
		Last Modified: Thu, 20 Aug 2026 18:02:56 GMT  
		Size: 86.9 MB (86865683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40a9c1e2c4542ab765dc3c1a4eb9cb864a77a199429350a94c323b22a806688`  
		Last Modified: Thu, 20 Aug 2026 18:02:52 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff69c7cc973112685cc154b33af477e412d6b902450862e0bccd0ddf55920b7e`  
		Last Modified: Thu, 20 Aug 2026 18:02:57 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da09db90c5c636ae45671ca0ab8eff55cc527bd41f0542171b1a12de1e49643`  
		Last Modified: Thu, 20 Aug 2026 18:02:52 GMT  
		Size: 54.9 KB (54904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:1b03e6711bcbe8273cd28776437e674cd9082f5e18dc65e34b8705a9851290c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11755042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a5591c283b4bbcd65bdb69a3a1de9731852dce1e5306c548e8ee9eececc526`

```dockerfile
```

-	Layers:
	-	`sha256:44ddf56048b0ead05e1dc46f1f9a3b923dbd5c7973b5e186c5e4b2d8c2d26771`  
		Last Modified: Thu, 20 Aug 2026 18:02:53 GMT  
		Size: 11.7 MB (11733388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0527b54bc0b114fbdd2aa938be28af92ceeefca4a99de74136b149139bf6442b`  
		Last Modified: Thu, 20 Aug 2026 18:02:52 GMT  
		Size: 21.7 KB (21654 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk8-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:bb3a3f85c4f2fa5c1c8805c2eb3fcaa4a3fd040eec8dfbb17181e1803b6ebbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.8 MB (395785465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e4ba8c1fe39f2b6e3443fa7eb6f33a3dcff008c9733226d7fc41e0297e4b8ac`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:15:43 GMT
ARG version=1.8.0_504.b01-1
# Thu, 20 Aug 2026 17:15:43 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:15:43 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 20 Aug 2026 17:21:15 GMT
CMD ["gradle"]
# Thu, 20 Aug 2026 17:21:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 20 Aug 2026 17:21:15 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 20 Aug 2026 17:21:15 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 20 Aug 2026 17:21:15 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 20 Aug 2026 17:21:15 GMT
WORKDIR /home/gradle
# Thu, 20 Aug 2026 17:21:15 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 20 Aug 2026 17:21:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 20 Aug 2026 17:21:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 20 Aug 2026 17:21:18 GMT
USER gradle
# Thu, 20 Aug 2026 17:21:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 20 Aug 2026 17:21:19 GMT
USER root
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a72e131d81c175ba4592da48c9792aae54d1a0c647f345b9dd291bb0510da203`  
		Last Modified: Thu, 20 Aug 2026 17:16:02 GMT  
		Size: 118.0 MB (117970317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71d627ad60ce5f244f99b79b0dbcbe6f27df09df9e43f16305e8e490e29e762`  
		Last Modified: Thu, 20 Aug 2026 17:21:51 GMT  
		Size: 86.2 MB (86234514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1702e545ec82b8c5793adab65b4a2832fc32396bfe8d819599da1df9e318c333`  
		Last Modified: Thu, 20 Aug 2026 17:21:46 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50fe3cab0203fa539c257b304be91ff15f872e1f4bdf03746fa1f39b4c6ce65`  
		Last Modified: Thu, 20 Aug 2026 17:21:52 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2beaec693c99beebdb1d9803d9b13bc08ba1860d89dd89bf72c97f164f094c5`  
		Last Modified: Thu, 20 Aug 2026 17:21:46 GMT  
		Size: 59.5 KB (59537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:dfd57bbe7167f50a2840f8a8812c0d8bcb2a4021f520fbe6c1be3657561c1bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11755562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be16c2eef166d6589d6ccee67849f31712f4877d60816f1fdc2bdc30932542aa`

```dockerfile
```

-	Layers:
	-	`sha256:73db8a3c46603f247c22c57b1ea012d006bcba34841edf43bbf893e2740899e2`  
		Last Modified: Thu, 20 Aug 2026 17:21:47 GMT  
		Size: 11.7 MB (11733711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75a39fb631057f4ed43b00c76b40f2c46049463b0b929fa04a0575983bf73ed7`  
		Last Modified: Thu, 20 Aug 2026 17:21:46 GMT  
		Size: 21.9 KB (21851 bytes)  
		MIME: application/vnd.in-toto+json
