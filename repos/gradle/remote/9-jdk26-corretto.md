## `gradle:9-jdk26-corretto`

```console
$ docker pull gradle@sha256:dbfb2143f2522b764c1751eb1a88f63d4394d166a6590af2771dd6815b18851e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk26-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:511ba0d16aae47f3013ecea1b8265c31a35bf746f84817a581230458533b0713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.5 MB (475510807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682c3140a4ef79748c1cf4797963bd845ad142687e0104aeed7ffaa175cbf7d9`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:37:44 GMT
ARG version=26.0.2.10-1
# Mon, 27 Jul 2026 21:37:44 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:37:44 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:37:44 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Mon, 27 Jul 2026 22:01:50 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:01:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:01:50 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:01:50 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:01:50 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:01:50 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:01:50 GMT
ENV GRADLE_VERSION=9.6.1
# Mon, 27 Jul 2026 22:01:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Mon, 27 Jul 2026 22:01:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:01:53 GMT
USER gradle
# Mon, 27 Jul 2026 22:01:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 27 Jul 2026 22:01:53 GMT
USER root
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd5499e072fe67990e9724d4ee0f506ca032e74eef6288cab6e0574e812c9c4e`  
		Last Modified: Mon, 27 Jul 2026 21:38:09 GMT  
		Size: 193.6 MB (193630691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5cb0c6fa77d5782d24a7cbbd48f2e96c77a971d78f07a7f9c00961c4f086d2d`  
		Last Modified: Mon, 27 Jul 2026 22:02:25 GMT  
		Size: 86.7 MB (86684165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473b4d988c079699c83dfccc0425087293b7eb9657ba2a569a9942d07be14555`  
		Last Modified: Mon, 27 Jul 2026 22:02:20 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88075bc9f62adfa10c379f120900a1e9d3d76cccf44b7fc6315a0216375c691`  
		Last Modified: Mon, 27 Jul 2026 22:02:26 GMT  
		Size: 140.6 MB (140595978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c0d0731a86b85ddda8af8aa78c10da52f5d2ce15da3cb35090771a3319ba63`  
		Last Modified: Mon, 27 Jul 2026 22:02:20 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:8c5a36304bcf99b54366e9754ff4e3513b8575c44edac66c3fd2dee7ec564e7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11415042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6d8b290678ecfb9e632e5e342625631b6e6de2a96ed4ceb4301b4b9f03eb71`

```dockerfile
```

-	Layers:
	-	`sha256:4a68c70dcbb8d4d2538ddeed4dde1b2931f16cd2e65c02357e4c54ad5ccd70b1`  
		Last Modified: Mon, 27 Jul 2026 22:02:21 GMT  
		Size: 11.4 MB (11393391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4e18a4b5f4e45498e85ef83618cb1e672afdc1cc9b75adca8044983aa0c658b`  
		Last Modified: Mon, 27 Jul 2026 22:02:20 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk26-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:65afe4a1cfc08622c65ad28bc7d4e3fb9a67b36d1cb810e90d680d97c146e2d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.6 MB (471568726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04dd94e5a045736c76249aada123c973892c2777e62eeb5167326a94f260e0eb`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:57 GMT
ARG version=26.0.2.10-1
# Mon, 27 Jul 2026 21:36:57 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:57 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:57 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Mon, 27 Jul 2026 22:00:21 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:00:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:00:21 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:00:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:00:21 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:00:21 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:00:21 GMT
ENV GRADLE_VERSION=9.6.1
# Mon, 27 Jul 2026 22:00:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Mon, 27 Jul 2026 22:00:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:00:24 GMT
USER gradle
# Mon, 27 Jul 2026 22:00:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 27 Jul 2026 22:00:24 GMT
USER root
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f23bf7c514f014f2402772f327f567c9bc93e5a8f1fdd8ff4a757eccd70d18c`  
		Last Modified: Mon, 27 Jul 2026 21:37:23 GMT  
		Size: 191.4 MB (191447449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0734cedc39f73da8cc70ab19272fc5718f4e6996d535e5fde006a11a8b4205a`  
		Last Modified: Mon, 27 Jul 2026 22:00:58 GMT  
		Size: 86.0 MB (86044678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7825cec71fdb9a45b3a632a0eb7edbe2b7f0b6472b975aac8ac836f8c1a60da`  
		Last Modified: Mon, 27 Jul 2026 22:00:54 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690d90f90fe41e5665d70887bfc71059de916c46977e9562c3df9fdce5de1a6d`  
		Last Modified: Mon, 27 Jul 2026 22:00:59 GMT  
		Size: 140.6 MB (140595974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edda06f14d379a0caea188421989b434716e68cb7afdc9ae7dc33c33d4022a9`  
		Last Modified: Mon, 27 Jul 2026 22:00:54 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:38f3d41c4ea25a61fc9387ac7985507fd38f8f5a7a50ce0ef34c4ae0af35b595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11414248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd52ac80785ee1766c1ed6fddd1a3de1f536ac2a43e2b4c9303b0a30dfc929f`

```dockerfile
```

-	Layers:
	-	`sha256:12e6c5d6848f075ed4e003037fa41917cebb01b823cf47d2448e1b00dbecb395`  
		Last Modified: Mon, 27 Jul 2026 22:00:55 GMT  
		Size: 11.4 MB (11392400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccd5b6c87f5b9b069b419f290438fdca8a91ffe5579d8c3a2fcf6bc9ab204773`  
		Last Modified: Mon, 27 Jul 2026 22:00:55 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
