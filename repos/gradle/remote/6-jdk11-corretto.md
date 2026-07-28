## `gradle:6-jdk11-corretto`

```console
$ docker pull gradle@sha256:bf964270c2c3b7e70e18268231b5160d8cff5142319f214f0bb0a32944fe4140
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:6-jdk11-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:839dadebc5a8c5c14b116c1887ed51981d7c5265cfbd88a6969f98965e7ce338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.9 MB (402851179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830e81a2b4c023527c627fbc01cc85b5c4c41d253e22a843fca8c105a5e90ac8`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:15 GMT
ARG version=11.0.32.9-1
# Mon, 27 Jul 2026 21:36:15 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:15 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Mon, 27 Jul 2026 22:02:43 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:02:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:02:43 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:02:43 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:02:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:02:43 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:02:43 GMT
ENV GRADLE_VERSION=6.9.4
# Mon, 27 Jul 2026 22:02:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Mon, 27 Jul 2026 22:02:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:02:45 GMT
USER gradle
# Mon, 27 Jul 2026 22:02:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Mon, 27 Jul 2026 22:02:45 GMT
USER root
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5cd77d8e8114d946b18d3ff4f9567d42b7fe42be61f7367c0c74edf322439fd`  
		Last Modified: Mon, 27 Jul 2026 21:36:36 GMT  
		Size: 153.5 MB (153470148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c0bacf44f756fc60613de9232e6445f1b52557a1db82f2bcaa630756c60816`  
		Last Modified: Mon, 27 Jul 2026 22:03:12 GMT  
		Size: 86.7 MB (86678731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3660a0b55a8503755a7a415a737306a5115d3e675f4045d3c0d713a98a5426b`  
		Last Modified: Mon, 27 Jul 2026 22:03:09 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3ce9c06b5243cd7a40bb4450d67120a6815684a1f2be518cd9a02919fe76c9`  
		Last Modified: Mon, 27 Jul 2026 22:03:13 GMT  
		Size: 107.7 MB (107696664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c035101426eccd4e25b5fe3168541601fe5e5701107a277ce916531b61ba25ca`  
		Last Modified: Mon, 27 Jul 2026 22:03:09 GMT  
		Size: 431.3 KB (431271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:9ed8da940b3ab8e7f83d43a87d707fd738e61e8d50a385fdd2231a366817d950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11294647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:942da793e8fe4b5f491435818e1dcac9c240cd24ac5d347281c7187c62620e7a`

```dockerfile
```

-	Layers:
	-	`sha256:01d6dad821857f52751cf754d9d5608a57af38389fcf882bb156996c0f6ae76f`  
		Last Modified: Mon, 27 Jul 2026 22:03:10 GMT  
		Size: 11.3 MB (11273775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95d0e9fe8c7430df2b7774ee14939a42534a7671b353c622ed6ebc4ae8ffa1b5`  
		Last Modified: Mon, 27 Jul 2026 22:03:09 GMT  
		Size: 20.9 KB (20872 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:1ef5b643bdcaf911dc838da8c38060df7f5733958b1e57d66a2a8c5c327f7959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.7 MB (399659109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f9d8b3d879fadaf179fb2b43a77f0cc5bfc1edc5ac853a551ed4f70fa2959b4`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:34 GMT
ARG version=11.0.32.9-1
# Mon, 27 Jul 2026 21:35:34 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:34 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Mon, 27 Jul 2026 22:01:35 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:01:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:01:35 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:01:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:01:35 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:01:35 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:01:35 GMT
ENV GRADLE_VERSION=6.9.4
# Mon, 27 Jul 2026 22:01:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Mon, 27 Jul 2026 22:01:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:01:37 GMT
USER gradle
# Mon, 27 Jul 2026 22:01:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Mon, 27 Jul 2026 22:01:38 GMT
USER root
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4137c23a1dd4741809824194e95a1238b180b8ca81201f27433566c2325e9695`  
		Last Modified: Mon, 27 Jul 2026 21:35:56 GMT  
		Size: 152.0 MB (152043109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bbf998ff78079398d9e79ddaef40b6defb44cb44268294d3649d8f1247b999`  
		Last Modified: Mon, 27 Jul 2026 22:02:08 GMT  
		Size: 86.0 MB (86043017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d603b21a16e01bd3dc2a387378fa6732b979a72008cdb5927d12cbc78fbe444`  
		Last Modified: Mon, 27 Jul 2026 22:02:05 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ea6a335232ccb10bc6eafca775f466635db77b523d0e652ae75921a2b790b3`  
		Last Modified: Mon, 27 Jul 2026 22:02:09 GMT  
		Size: 107.7 MB (107696662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4426a1e009759a1eea6c8fb1151db7dc214ce5e23e8c6bcdcb644a6bf817d13`  
		Last Modified: Mon, 27 Jul 2026 22:02:05 GMT  
		Size: 425.0 KB (425032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:3b2106cad151bc39bd968f4ac91310d227ff89dbd639c8066b4b035b1a6b27c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11294639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2145f42703c5f5fcb7700a51e89901ecf6d787a235426fe3ff4d59179f6ab9c4`

```dockerfile
```

-	Layers:
	-	`sha256:ffc3989a48579fe238b9cf1a33483facd76edade8ec024341510e099ddfb91a7`  
		Last Modified: Mon, 27 Jul 2026 22:02:06 GMT  
		Size: 11.3 MB (11273594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d224659f7a253b566b1be147737645782ea1700b9650e567237189789069e0d`  
		Last Modified: Mon, 27 Jul 2026 22:02:05 GMT  
		Size: 21.0 KB (21045 bytes)  
		MIME: application/vnd.in-toto+json
