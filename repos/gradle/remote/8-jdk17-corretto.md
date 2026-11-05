## `gradle:8-jdk17-corretto`

```console
$ docker pull gradle@sha256:7fabde5f3b2e9b3a0fa5a01ea6b66322aef1ecc1db8d460f5cb37c1264bc08d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:098ac46f4a90cf1e9bae21f91e7875d876f2b2dae431a5890390c8fabd8a0b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.4 MB (447392360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5ae0d4e194024f4cb83d4a712bf27b6dd55af321c6f4b09cd21bf473a2134a`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:19 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 19:59:19 GMT
ARG resource_version=17.0.21.0.11
# Thu, 05 Nov 2026 19:59:19 GMT
ARG package_version=1
# Thu, 05 Nov 2026 19:59:19 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:59:19 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 05 Nov 2026 20:20:41 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 20:20:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 20:20:41 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 20:20:42 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 20:20:42 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 20:20:42 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 20:20:42 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 05 Nov 2026 20:20:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 05 Nov 2026 20:20:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 20:20:44 GMT
USER gradle
# Thu, 05 Nov 2026 20:20:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 20:20:45 GMT
USER root
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249fe1f1aa0ad3732a040d863e872ca4873ccf20d111100e5bb3a876c5d66a9d`  
		Last Modified: Thu, 05 Nov 2026 19:59:39 GMT  
		Size: 157.4 MB (157424999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72d4b5bc8380deb7f76241bfd58f4b04ecd404044e5d0e1e713d520c27a7a12`  
		Last Modified: Thu, 05 Nov 2026 20:21:21 GMT  
		Size: 95.9 MB (95913827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3245819f924cc46c6d97c1d5c7863bcb74470d31e679da13c99c49286ee9243a`  
		Last Modified: Thu, 05 Nov 2026 20:21:17 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada417190adbd012f4a65890d74a0a48fbf5a305cf6ce7c14daccbb18775324`  
		Last Modified: Thu, 05 Nov 2026 20:21:22 GMT  
		Size: 139.4 MB (139427344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f094bbb5203dfa99acb03d5869148354d5f501341e89eb9568ad02177960c44`  
		Last Modified: Thu, 05 Nov 2026 20:21:17 GMT  
		Size: 54.9 KB (54897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:8d391668c5fa80dfd0c15b63d415885a379afb08060e239aa85ae055c40f8153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12649034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce748ea2e570c0abec03cabc3eb851aa5836562aaa499e9a9f0690bfae1a8a6`

```dockerfile
```

-	Layers:
	-	`sha256:becf08a34916f29063e640976117dd3e3acf0017b4189fefa57d9317014c48ce`  
		Last Modified: Thu, 05 Nov 2026 20:21:18 GMT  
		Size: 12.6 MB (12628169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8385144a8b83502522dea69dfb5f32efc0a6cace318b8ba736a349fb9f944b3e`  
		Last Modified: Thu, 05 Nov 2026 20:21:17 GMT  
		Size: 20.9 KB (20865 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:84b2e867b6a904a20acee5cd9235bd3faae0be84985d5ebc2ece7f26ddb8ebee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.5 MB (444546302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a295f66f0f28396d8ca6dab945cc415877700126280bef9f8c46b077bd11790b`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:19 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:10:19 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:10:19 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:10:19 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:10:19 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 02 Nov 2026 20:44:41 GMT
CMD ["gradle"]
# Mon, 02 Nov 2026 20:44:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 02 Nov 2026 20:44:41 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 02 Nov 2026 20:44:41 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 02 Nov 2026 20:44:41 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 02 Nov 2026 20:44:41 GMT
WORKDIR /home/gradle
# Mon, 02 Nov 2026 20:44:41 GMT
ENV GRADLE_VERSION=8.14.6
# Mon, 02 Nov 2026 20:44:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Mon, 02 Nov 2026 20:44:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 02 Nov 2026 20:44:44 GMT
USER gradle
# Mon, 02 Nov 2026 20:44:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 02 Nov 2026 20:44:45 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d2be6781a9c3e02dd7a813a63a217383fd661de4342d350e94f23698e53c86`  
		Last Modified: Mon, 02 Nov 2026 20:10:42 GMT  
		Size: 156.3 MB (156294835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642c13f912f1b7f2941156a26ad051a5a2378407ab1ec5ffd0b5eada23195704`  
		Last Modified: Mon, 02 Nov 2026 20:45:18 GMT  
		Size: 95.3 MB (95306794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfaf309a7f518e696bcb5abc8a97dc880f5e8f9ad3c56853596882f4a6817b8`  
		Last Modified: Mon, 02 Nov 2026 20:45:15 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73fdaa5b7cef809d310f61ae95421d88178addb690701bf497fc8a7667ba3082`  
		Last Modified: Mon, 02 Nov 2026 20:45:19 GMT  
		Size: 139.4 MB (139427348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b31be70dcf2e89dc850ff46eb58ec6415d64f64e5e3fe04f6a719de30292ab`  
		Last Modified: Mon, 02 Nov 2026 20:45:15 GMT  
		Size: 59.5 KB (59526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:1ceb7ce0d06efd183c31e86cf4b44e267fd155ba7168f9406a2521e87b84ef26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12648182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d2c28bb3640969ae56c6dd12f2955f2acf2b01690b6d02ed620899321ea862c`

```dockerfile
```

-	Layers:
	-	`sha256:b0991e8566209d65fb423beb0ec466ecbed7027392ec22cf98627ce4b80ef67b`  
		Last Modified: Mon, 02 Nov 2026 20:45:15 GMT  
		Size: 12.6 MB (12627145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a96fe1e6e53232beb9c83ed0699715f4aaefde74627247d179239bf9109809b9`  
		Last Modified: Mon, 02 Nov 2026 20:45:15 GMT  
		Size: 21.0 KB (21037 bytes)  
		MIME: application/vnd.in-toto+json
