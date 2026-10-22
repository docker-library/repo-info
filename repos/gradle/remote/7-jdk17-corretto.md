## `gradle:7-jdk17-corretto`

```console
$ docker pull gradle@sha256:c87c9a8678e072e9e4f1e4c8aa7228967b1a420adc591ddafeff84368cbe0722
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk17-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:6e8d0013dcc5590615bbcc41a4dcd4e1d55ca205f6927fd7b3abeb0045e0096f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.1 MB (436123168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37de58a8ef236a9001c62caced048f608ef54ac352408a5d4a584f0235a577f1`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:28:11 GMT
ARG version=17.0.20.13-1
# Wed, 21 Oct 2026 23:28:11 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:28:11 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:28:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:28:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 22 Oct 2026 00:16:31 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 00:16:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 00:16:31 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 00:16:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 00:16:31 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 00:16:31 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 00:16:31 GMT
ENV GRADLE_VERSION=7.6.6
# Thu, 22 Oct 2026 00:16:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Thu, 22 Oct 2026 00:16:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 00:16:35 GMT
USER gradle
# Thu, 22 Oct 2026 00:16:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 22 Oct 2026 00:16:36 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1ae9487769b73c0896ee595f50ecbab13247197fb2c1c330f0ec1dfda0b5f6`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 157.2 MB (157176465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0561358fce50d9e2b608082c63f839634b7f1f3c42de6724c99a55f6cefd4f66`  
		Last Modified: Thu, 22 Oct 2026 00:17:07 GMT  
		Size: 95.8 MB (95789934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c77fbfe78e6d03aef30177152511e8c610cc1eff7f96c26dde53f8be5fe313`  
		Last Modified: Thu, 22 Oct 2026 00:17:02 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bd5d98632dbbd43c2fd60a898b37498754e8fb06989c222392ba0b27a65dd4`  
		Last Modified: Thu, 22 Oct 2026 00:17:08 GMT  
		Size: 128.5 MB (128469421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424eda15370e6e5d02ddd9c88cead8c9e86f54920d9340b43962dbe1ee699c85`  
		Last Modified: Thu, 22 Oct 2026 00:17:04 GMT  
		Size: 54.9 KB (54901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:97c5e26e252a5973d28a25d60fe43de00ee46e79c88e3471dc7fab0d6fef0e71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12559898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff16510753a5203c3a9865e9e4be66221ae57f63ee520a1c3a569275b9b640a`

```dockerfile
```

-	Layers:
	-	`sha256:4df23c0206620704e9e2b9c399261ff8c287591e90f23c26a13a53570fd14ec1`  
		Last Modified: Thu, 22 Oct 2026 00:17:04 GMT  
		Size: 12.5 MB (12539185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9cef4254065afd9f6e26ec367a372f0ca2f7468ad761df021574e15f2f728ac`  
		Last Modified: Thu, 22 Oct 2026 00:17:03 GMT  
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
