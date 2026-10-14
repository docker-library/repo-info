## `gradle:7-jdk17-corretto`

```console
$ docker pull gradle@sha256:8e6e6b5af8fea5c9f62a261392252da4978e0267f49798418e454f0fb0581386
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk17-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:05ed4dd83c1cb8575fc7410d16d37dbe9789045bf03c808d0afa586d4cebcf25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.1 MB (436122721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7daf9d5e974b68f7473db46e5e6dad215ed83d83ea733ce4270264f8d8412326`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:50 GMT
ARG version=17.0.20.13-1
# Wed, 14 Oct 2026 17:07:50 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:07:50 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:50 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 14 Oct 2026 18:12:23 GMT
CMD ["gradle"]
# Wed, 14 Oct 2026 18:12:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 14 Oct 2026 18:12:23 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 14 Oct 2026 18:12:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 14 Oct 2026 18:12:23 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 14 Oct 2026 18:12:24 GMT
WORKDIR /home/gradle
# Wed, 14 Oct 2026 18:12:24 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 14 Oct 2026 18:12:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 14 Oct 2026 18:12:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 14 Oct 2026 18:12:26 GMT
USER gradle
# Wed, 14 Oct 2026 18:12:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 14 Oct 2026 18:12:27 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5eaea8a08b486a3b19b02bfb89dab42746a1696549ec27ce97eb0fadecefc93`  
		Last Modified: Wed, 14 Oct 2026 17:08:10 GMT  
		Size: 157.2 MB (157176476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6665564219d86f1eff041a17980ed704a8857082008cd63f86ddaa0e28f617`  
		Last Modified: Wed, 14 Oct 2026 18:12:58 GMT  
		Size: 95.8 MB (95789479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91e80b6903d5c6605f6acae78924197660c0c22f0a0ff5a8adda2d35ebc5cf1`  
		Last Modified: Wed, 14 Oct 2026 18:12:55 GMT  
		Size: 1.6 KB (1641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:633286ecad33679edfebb1e90a734fa0729251432ce9e5dafb7f401927c56734`  
		Last Modified: Wed, 14 Oct 2026 18:12:59 GMT  
		Size: 128.5 MB (128469416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1bd8514adc380af32b4a03a3e2c4f11128b50dba1d9d2efd8f981d117e2058`  
		Last Modified: Wed, 14 Oct 2026 18:12:55 GMT  
		Size: 54.9 KB (54907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:1fe1acd80bbfa1b64700ef65c348d009ffc0222c7a4a4ba8220a4c2edc55e9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12559898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5ef89c60491b09ad9bdbfd767a5200b3ecad85648043bde4634d8d7832b8f7a`

```dockerfile
```

-	Layers:
	-	`sha256:f0035aec01cf80947f4a1c3f2ca1e756d05e6a6041cf12f0fe7ce4c6510a3879`  
		Last Modified: Wed, 14 Oct 2026 18:12:55 GMT  
		Size: 12.5 MB (12539185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a286557c6f099b0acbbc96d997abd4816faf3a515e5f82fc7eaab5c5b345eb7`  
		Last Modified: Wed, 14 Oct 2026 18:12:54 GMT  
		Size: 20.7 KB (20713 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk17-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:75c54ee6d65364680db5885cf17b8590bb0b176dba3857b6104d39d67cf903a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.2 MB (433218591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c26734304b1d442bb5dd4fdce7cbf562fbc2212fa222213df17d9a8498698407`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:57 GMT
ARG version=17.0.20.13-1
# Wed, 14 Oct 2026 17:07:57 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:07:57 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:57 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 14 Oct 2026 18:12:13 GMT
CMD ["gradle"]
# Wed, 14 Oct 2026 18:12:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 14 Oct 2026 18:12:13 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 14 Oct 2026 18:12:13 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 14 Oct 2026 18:12:13 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 14 Oct 2026 18:12:13 GMT
WORKDIR /home/gradle
# Wed, 14 Oct 2026 18:12:13 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 14 Oct 2026 18:12:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 14 Oct 2026 18:12:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 14 Oct 2026 18:12:16 GMT
USER gradle
# Wed, 14 Oct 2026 18:12:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 14 Oct 2026 18:12:16 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154b2b63e41b8926d75f93d6a93dc46b91678d65e12e27ba0185b9c627a6eca8`  
		Last Modified: Wed, 14 Oct 2026 17:08:19 GMT  
		Size: 156.0 MB (155978404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c7f8521348755abc2480dfc7f9e2c7f106b7f9cc220bf509dc03b84b2e3a07`  
		Last Modified: Wed, 14 Oct 2026 18:12:49 GMT  
		Size: 95.2 MB (95205161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2cffa00a1e758a27ed7e8656265d5206dd3b6bef70209b174a8d29a9089048`  
		Last Modified: Wed, 14 Oct 2026 18:12:45 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407ce39b292ef60c4b6bec333ce3bc8aa832b75d5450e1ff98388a50b45a41b1`  
		Last Modified: Wed, 14 Oct 2026 18:12:50 GMT  
		Size: 128.5 MB (128469441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d061ae71272dba27ec88de06fc5592dd0173a47e8cd0cf2bcb94f2247914279d`  
		Last Modified: Wed, 14 Oct 2026 18:12:45 GMT  
		Size: 59.5 KB (59510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:74f013edda919b36ccdb9ac038a54de7efec4d4494f5a2fc45d95fa06ae9eb84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12559042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0046f023e063f47fa8dff6f5d8daf28547691fccc394642ec793e0211325745`

```dockerfile
```

-	Layers:
	-	`sha256:de3ab797774d4419cf1c6386b457e33cd6b1c248716437d4fedb88be3a1c6100`  
		Last Modified: Wed, 14 Oct 2026 18:12:46 GMT  
		Size: 12.5 MB (12538157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6b3dfeb248ffa921467149f5b35b76a151d93b2864d34037f7d51770b87cded`  
		Last Modified: Wed, 14 Oct 2026 18:12:45 GMT  
		Size: 20.9 KB (20885 bytes)  
		MIME: application/vnd.in-toto+json
