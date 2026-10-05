## `gradle:9-jdk17-corretto`

```console
$ docker pull gradle@sha256:69ff62ca11d03c5a94d6480daa5cd5e5266f7915220460d142f9f81b6a6bbcb1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:42895a2ec250f232c8a105ad84148d0d4da746c838100b0415f2f71ddd841c1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.1 MB (459140021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:925fe99615a65d6961b2b07d52a6b122637f587d8e35c85367d016b8fc8b5299`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:42:51 GMT
ARG version=17.0.20.12-1
# Mon, 05 Oct 2026 18:42:51 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:42:51 GMT
# ARGS: version=17.0.20.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:42:51 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:42:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 05 Oct 2026 19:04:23 GMT
CMD ["gradle"]
# Mon, 05 Oct 2026 19:04:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 05 Oct 2026 19:04:23 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 05 Oct 2026 19:04:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 05 Oct 2026 19:04:23 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 05 Oct 2026 19:04:23 GMT
WORKDIR /home/gradle
# Mon, 05 Oct 2026 19:04:23 GMT
ENV GRADLE_VERSION=9.8.0
# Mon, 05 Oct 2026 19:04:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Mon, 05 Oct 2026 19:04:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 05 Oct 2026 19:04:26 GMT
USER gradle
# Mon, 05 Oct 2026 19:04:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 05 Oct 2026 19:04:26 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb0ae79c9e00d1dd745d4bacfb7fef8946b416645635d23de0dc3340a763400`  
		Last Modified: Mon, 05 Oct 2026 18:43:11 GMT  
		Size: 157.2 MB (157167857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dcff242bc7db9fec8b8929c9c0222633c1cf8914374a6a5200d8e583f4ffc2`  
		Last Modified: Mon, 05 Oct 2026 19:04:56 GMT  
		Size: 95.8 MB (95789854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836d8869cf32f2b0a9ffede9cd48b4605e59fe0283ce2469af8f207280b23c68`  
		Last Modified: Mon, 05 Oct 2026 19:04:53 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73705eabc72dea2bc39aabd6c18dfdd1d83f658eed4a5be4f1838faa0e3d7dd`  
		Last Modified: Mon, 05 Oct 2026 19:04:57 GMT  
		Size: 151.5 MB (151524259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74f3d8fbeccc71896965ec23b29cec19067d12fe83599c47d6751c3f262cf8a`  
		Last Modified: Mon, 05 Oct 2026 19:04:53 GMT  
		Size: 25.6 KB (25604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:141d68d1b7756738ab66e78f4cb00bae441bd76eac1dca372732bc7a5f85611a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12682294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6a8bd63bcd3bf9179b45b27e7b3040f795e13b612947d8d2bdc6c3723dd7d2`

```dockerfile
```

-	Layers:
	-	`sha256:712c4ccffca3929afe20b3a8d9ee03bd46a0852dfe198db8de95fc3779979374`  
		Last Modified: Mon, 05 Oct 2026 19:04:53 GMT  
		Size: 12.7 MB (12660797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d924cc586fb634b047ab672420e97d17009c13a0a2cc3dcef227a7f26441d393`  
		Last Modified: Mon, 05 Oct 2026 19:04:53 GMT  
		Size: 21.5 KB (21497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:883d559bb6af4738894e30ca3bf3d626778cb3fef992082d74c7ca28fb3364d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.2 MB (456236473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988aa2a3cac28c0f78c1b5cb631e2607de50c287cca6ceda1cd6b83a5e56111b`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:02 GMT
ARG version=17.0.20.12-1
# Mon, 05 Oct 2026 18:43:02 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:02 GMT
# ARGS: version=17.0.20.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:02 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 05 Oct 2026 19:02:05 GMT
CMD ["gradle"]
# Mon, 05 Oct 2026 19:02:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 05 Oct 2026 19:02:05 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 05 Oct 2026 19:02:05 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 05 Oct 2026 19:02:05 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 05 Oct 2026 19:02:05 GMT
WORKDIR /home/gradle
# Mon, 05 Oct 2026 19:02:05 GMT
ENV GRADLE_VERSION=9.8.0
# Mon, 05 Oct 2026 19:02:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Mon, 05 Oct 2026 19:02:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 05 Oct 2026 19:02:09 GMT
USER gradle
# Mon, 05 Oct 2026 19:02:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 05 Oct 2026 19:02:09 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c525f023c2e92c5ce5846f5d10b6e27def62d7c18096092a21dac3f25c8d2949`  
		Last Modified: Mon, 05 Oct 2026 18:43:32 GMT  
		Size: 156.0 MB (155969520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b679488859225cc4758b6d5ca00bb2ef36d23f106e4ed8efe0d97ec53afd82af`  
		Last Modified: Mon, 05 Oct 2026 19:02:43 GMT  
		Size: 95.2 MB (95207287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b2d47de649e42f84316b48a53468f6e3eb4fbbe9d1ac594a65f423b7713c71`  
		Last Modified: Mon, 05 Oct 2026 19:02:39 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba92102d63962d3affda65524f6a3d02b6cde2af8a5cbca815f14947785837e7`  
		Last Modified: Mon, 05 Oct 2026 19:02:44 GMT  
		Size: 151.5 MB (151524262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4a374045c8a39016d967b03b07e6a8ceb65ff01fbd3a91223729b458fb7289`  
		Last Modified: Mon, 05 Oct 2026 19:02:39 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:aca3fa39a4adeaff765b85e766c7091f564908a575f7de9b48e7c9e3d5daae2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12681489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0725db6e59280336e11d2944a2b1fd69bb6cf57422a31770c1ec7e4ba7e1bb6`

```dockerfile
```

-	Layers:
	-	`sha256:e8396a8419e2281e24eb2a9bc4f186659b40a0c6bf1382bebb94108dc35e5831`  
		Last Modified: Mon, 05 Oct 2026 19:02:40 GMT  
		Size: 12.7 MB (12659797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdb05e6a5ee968c62f11ecf75f8234e56ee51a1bdc32d680fdb9bd3d5158c491`  
		Last Modified: Mon, 05 Oct 2026 19:02:39 GMT  
		Size: 21.7 KB (21692 bytes)  
		MIME: application/vnd.in-toto+json
