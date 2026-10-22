## `gradle:jdk11-corretto`

```console
$ docker pull gradle@sha256:5e53f0f4462b5617ff31bb21eba8d1831034a4ccb449b91a8b3f357704a39132
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk11-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:e29cfa25cbcb0da869ec6aa16f861809495f2a5aba8fed0b9ed0a91663ce5b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.4 MB (443410436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d5b632be81b2ca1a21fa19cf7a2e558cb998e65ea04569aa861cdc8fed6bea`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:27:49 GMT
ARG version=11.0.32.13-1
# Wed, 21 Oct 2026 23:27:49 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:27:49 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:27:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Thu, 22 Oct 2026 00:16:32 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 00:16:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 00:16:32 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 00:16:32 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 00:16:32 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 00:16:32 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 00:16:32 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 22 Oct 2026 00:16:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 22 Oct 2026 00:16:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 00:16:35 GMT
USER gradle
# Thu, 22 Oct 2026 00:16:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 00:16:36 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32110b8b235ca4270f7ee49534eec961205a27c8beac3b7fe61ad5383bb4ef3b`  
		Last Modified: Wed, 21 Oct 2026 23:28:08 GMT  
		Size: 153.5 MB (153509436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fda9f7e504f2639553f06a561065dc8b35e446537fa7768df819ab7961eded6`  
		Last Modified: Thu, 22 Oct 2026 00:17:08 GMT  
		Size: 95.8 MB (95786298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bda98cf3bb5c2602525b01a6983bdc619ff204aaa8a33f1c6d47fb7cec86449`  
		Last Modified: Thu, 22 Oct 2026 00:17:04 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aea7fd44ddc9896b531a862799e8d33a5dc114f836183ca223f5a4b9f467bb6`  
		Last Modified: Thu, 22 Oct 2026 00:17:09 GMT  
		Size: 139.4 MB (139427347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77762767f14eb6fb172bd80fdf58b6d29a10f39b399e58651e524a9f0b171907`  
		Last Modified: Thu, 22 Oct 2026 00:17:04 GMT  
		Size: 54.9 KB (54907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:2724a37b617d88ab9944d4a0e81506c11bf35bf235f7306e636ed757becac566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12674371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ff119e6e519d9055a5e4eddd7fb7729ccce433e4cff43f76d733d0f2a6f9d0`

```dockerfile
```

-	Layers:
	-	`sha256:3e325799fd16a3bc5e568ac8a97e8eb17dec936550ca98a7448a2ea06149b2ba`  
		Last Modified: Thu, 22 Oct 2026 00:17:04 GMT  
		Size: 12.7 MB (12652706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93c65ec6badbbdf3005096b2a7f7708c70be18dcc08527919f96c15a04819e93`  
		Last Modified: Thu, 22 Oct 2026 00:17:04 GMT  
		Size: 21.7 KB (21665 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:83d7a48d1b7532459fe3658e1bd4a4d1d975b59b193cbaa0895e324e2fec8ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 MB (440281184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db5c5ee7cbc671da4ce3de93cbc9e4043a15705f327f03bfec8351905ec6d1a0`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:37 GMT
ARG version=11.0.32.13-1
# Wed, 14 Oct 2026 17:07:37 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:37 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 14 Oct 2026 18:12:07 GMT
CMD ["gradle"]
# Wed, 14 Oct 2026 18:12:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 14 Oct 2026 18:12:07 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 14 Oct 2026 18:12:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 14 Oct 2026 18:12:07 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 14 Oct 2026 18:12:07 GMT
WORKDIR /home/gradle
# Wed, 14 Oct 2026 18:12:07 GMT
ENV GRADLE_VERSION=8.14.6
# Wed, 14 Oct 2026 18:12:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Wed, 14 Oct 2026 18:12:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 14 Oct 2026 18:12:10 GMT
USER gradle
# Wed, 14 Oct 2026 18:12:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 14 Oct 2026 18:12:10 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac40c517dc6a00a5b3425d215e4dc749e354bd52d4f8b0e1e4903ad6f0db6003`  
		Last Modified: Wed, 14 Oct 2026 17:08:00 GMT  
		Size: 152.1 MB (152083230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8baeeffc9a0315eccf2904ebce86c92869c0a6f5525affa446b7a47a7ddb4af`  
		Last Modified: Wed, 14 Oct 2026 18:12:44 GMT  
		Size: 95.2 MB (95205009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadf16d791ca8261eaf59305d541865009a59ffa0e20a08b324eca4317e68778`  
		Last Modified: Wed, 14 Oct 2026 18:12:40 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36c0b2db50a11be4e863df963b57444ebcb32be9a72b1cddd59f70647bead96`  
		Last Modified: Wed, 14 Oct 2026 18:12:44 GMT  
		Size: 139.4 MB (139427344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc588a6d3710156c0ffec8dc272c6b7af060af96f0a6d1492abae1525bd795f6`  
		Last Modified: Wed, 14 Oct 2026 18:12:40 GMT  
		Size: 59.5 KB (59528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:48e4c048dc6cc4329dbdd362a255151fc09c4da31acb5800b3f1d820fa96ef67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12674411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467afc3a1da368f186146198cfa44c329d729fd9b528a2ea025ac9839c2b889d`

```dockerfile
```

-	Layers:
	-	`sha256:006c5b56b033ecba7d980e4d2b2871c5e2c993138140a8547d7bd56efbd5fe87`  
		Last Modified: Wed, 14 Oct 2026 18:12:41 GMT  
		Size: 12.7 MB (12652549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1247aa05badf360a817b7c6e049f31524fbde3d5990bbb07a044d1adf3443648`  
		Last Modified: Wed, 14 Oct 2026 18:12:40 GMT  
		Size: 21.9 KB (21862 bytes)  
		MIME: application/vnd.in-toto+json
