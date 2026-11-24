## `gradle:9-jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:84be1eda67cda25e316b1a2676184be38be39e0b8f3d23f458bb58f2d96b2d89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:4dfc304d570e1e095770571e2a37799be214b7f93a6b6519fcce9a6b66a17945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.2 MB (456187472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef05948ae8186c683b7f44a5417a4863161a3639b0ade39b99b7d6e69061f15`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:10 GMT
ARG version=21.0.13.1.2-1
# Mon, 23 Nov 2026 21:11:10 GMT
ARG resource_version=21.0.13.1.2
# Mon, 23 Nov 2026 21:11:10 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:10 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:10 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 23 Nov 2026 21:26:45 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 21:26:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 21:26:45 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 23 Nov 2026 21:26:45 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 21:26:45 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 21:26:45 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 21:26:45 GMT
ENV GRADLE_VERSION=9.9.2
# Mon, 23 Nov 2026 21:26:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Mon, 23 Nov 2026 21:26:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 21:26:48 GMT
USER gradle
# Mon, 23 Nov 2026 21:26:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 21:26:48 GMT
USER root
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e73054eee66204c4cdf6fd0bc50066ac938949202dc045d51a5fb24558d98e`  
		Last Modified: Mon, 23 Nov 2026 21:11:31 GMT  
		Size: 170.7 MB (170740292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c40271655654261382b2530db35f5f0bb18f5d16a6ffe7355abf9151463ec11`  
		Last Modified: Mon, 23 Nov 2026 21:27:17 GMT  
		Size: 96.0 MB (95983972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612dfd2b4d13363f78d265b8545311932af2814b558604c5baf30f38b8c89df5`  
		Last Modified: Mon, 23 Nov 2026 21:27:13 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc810d0225176283298dddfa3344a355c385aa2a2251bc995ebfe426e25efe77`  
		Last Modified: Mon, 23 Nov 2026 21:27:18 GMT  
		Size: 134.9 MB (134870748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50298e036896af7f5189937f1f6342d25d9f748e47291723c2467e1c7c522c39`  
		Last Modified: Mon, 23 Nov 2026 21:27:13 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:bcc4d71cc7044bbde9779de137a3180d4863c18811f02eba59f9fa14e63c00c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12693080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e837cdc10547c6a928f7a983d72194067d9b25361eefd637a6203a05402bd2`

```dockerfile
```

-	Layers:
	-	`sha256:18c2a9470d5648eb4b17063c01bc6da087a63bfebf6cc56606c9f28b95a20f24`  
		Last Modified: Mon, 23 Nov 2026 21:27:14 GMT  
		Size: 12.7 MB (12671429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cd0a8ae138469b9f52ec0129c4b1979fdd2f7496412550e9cc2adb47925775f`  
		Last Modified: Mon, 23 Nov 2026 21:27:13 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:21891f76884d623f072eb5617ba88bab1117995a4dee27e17ff4385fa6379c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.8 MB (452773994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be02419d84639739483f7e0d66888955d7efc3ee999e5586087e2bbcb4079566`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:33 GMT
ARG version=21.0.13.1.2-1
# Mon, 23 Nov 2026 21:11:33 GMT
ARG resource_version=21.0.13.1.2
# Mon, 23 Nov 2026 21:11:33 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:33 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:33 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 23 Nov 2026 21:25:39 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 21:25:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 21:25:39 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 23 Nov 2026 21:25:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 21:25:39 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 21:25:39 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 21:25:39 GMT
ENV GRADLE_VERSION=9.9.2
# Mon, 23 Nov 2026 21:25:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Mon, 23 Nov 2026 21:25:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 21:25:43 GMT
USER gradle
# Mon, 23 Nov 2026 21:25:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 21:25:43 GMT
USER root
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c5906de93097486d58f51f3713562f2ab1fdaaf15d9ffc6925f4d84d7760b6`  
		Last Modified: Mon, 23 Nov 2026 21:11:57 GMT  
		Size: 169.0 MB (169031685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7845874c62b5e16cf0b5248399686ef1f78628570aff36d04a8d9aa250f01757`  
		Last Modified: Mon, 23 Nov 2026 21:26:16 GMT  
		Size: 95.4 MB (95390945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eaffb8f6c0c8e43310b4a8882f83ee31a0e5b61e4bafafe614483379f4a78c4`  
		Last Modified: Mon, 23 Nov 2026 21:26:12 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b950460926b09a151226ddf167e59e13e4d9e27017b41b6c3232954064a666bd`  
		Last Modified: Mon, 23 Nov 2026 21:26:17 GMT  
		Size: 134.9 MB (134870765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee8f16d91508957960f111c78efb0a5eef665003890b5ec87c89ee76d43553f`  
		Last Modified: Mon, 23 Nov 2026 21:26:12 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:18db4946e34f587f1166ee633d10b442701c9a65471909dbc1184eecda58db6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12692280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f095051f2901aaf5a5db1bbb0dd7570b4b98065f78376ab07fcdb951dd9b0cfa`

```dockerfile
```

-	Layers:
	-	`sha256:d3c292ac03e0e235d57b8398264a77ef60713477516822ca11777787b8b531ad`  
		Last Modified: Mon, 23 Nov 2026 21:26:13 GMT  
		Size: 12.7 MB (12670432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4925b8ee9c9ab90f0db5c815f9ec462ae3f7a9f35b5d3b8349bb818f3928f27`  
		Last Modified: Mon, 23 Nov 2026 21:26:12 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
