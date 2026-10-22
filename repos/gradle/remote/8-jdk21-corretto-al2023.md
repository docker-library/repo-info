## `gradle:8-jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:fdb4780e6cd2b42554edca20ce5e341c182efca010b09d48926809dbaa89f6c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:23d5266d7919c3c6e6bb6c3f3f534aa91e715865c36da7cffe73d7d812250927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.4 MB (460363320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618d989a3ab4dc6845fc767aa7d29eaf0177f09767f2a6c48de1124c9f347128`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:28:46 GMT
ARG version=21.0.12.13-1
# Wed, 21 Oct 2026 23:28:46 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:28:46 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:28:46 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:28:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 22 Oct 2026 00:16:26 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 00:16:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 00:16:26 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 00:16:27 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 00:16:27 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 00:16:27 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 00:16:27 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 22 Oct 2026 00:16:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 22 Oct 2026 00:16:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 00:16:30 GMT
USER gradle
# Thu, 22 Oct 2026 00:16:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 00:16:30 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69e771ce941f5b6eecd0935a142528c16f1b8296b2ebfb3659b930364109a4a`  
		Last Modified: Wed, 21 Oct 2026 23:29:08 GMT  
		Size: 170.5 MB (170461930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b1a442c61852f828bd0f7eed525071ca9ff688940cf24b3545323703cff427`  
		Last Modified: Thu, 22 Oct 2026 00:17:04 GMT  
		Size: 95.8 MB (95786696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7c7868ec6431731011a89e6a4b7af4ab4c23c0fb5797022208984ed208f6fb9`  
		Last Modified: Thu, 22 Oct 2026 00:17:00 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c037f2771a88e7dd98e32a9c31ff51d82cb73e1819668ebc298d55e7629cf659`  
		Last Modified: Thu, 22 Oct 2026 00:17:05 GMT  
		Size: 139.4 MB (139427343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9e0ab62a1307052b2fd40386e0639d4db2d9f1aeaa4b3dfc4981df98c0d7e6`  
		Last Modified: Thu, 22 Oct 2026 00:17:00 GMT  
		Size: 54.9 KB (54905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:7757d411531c4a74b07953c0b6c0ff5ef53aa821f61a58617e4a6a2b3bc436d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12650822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed78b6da54347ba0252db1e4f82ea53777632e03537ff9db2f20b09cace24cf1`

```dockerfile
```

-	Layers:
	-	`sha256:bc740efef378a4988808ae3050452aed2f25ecc3db86fb4432ecc279892c200e`  
		Last Modified: Thu, 22 Oct 2026 00:17:01 GMT  
		Size: 12.6 MB (12629799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bbe9a8a6630bc15ec1572352bb6a36f497cad34186c346b92fab563d8a6fee7`  
		Last Modified: Thu, 22 Oct 2026 00:17:00 GMT  
		Size: 21.0 KB (21023 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:7a08a470a78a2ccb31c6643b3092eb138b188db04eaaf831b17857cee1be208f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.9 MB (456946125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0efb14f118eb153cbf80e93ac03b754f82e873f99fd0ef36c8fac6e9e453729`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:20:31 GMT
ARG version=21.0.12.13-1
# Thu, 22 Oct 2026 00:20:31 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:20:31 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:20:31 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:20:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 22 Oct 2026 01:18:31 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 01:18:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 01:18:31 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 01:18:32 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 01:18:32 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 01:18:32 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 01:18:32 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 22 Oct 2026 01:18:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 22 Oct 2026 01:18:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 01:18:35 GMT
USER gradle
# Thu, 22 Oct 2026 01:18:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 01:18:36 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542142d6f6c0a5c14eb4a5ffd8afad7a596be76567755ce16e9d35c214b9e9e3`  
		Last Modified: Thu, 22 Oct 2026 00:20:56 GMT  
		Size: 168.7 MB (168745392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763f9d30a4724d4a9d82337530e75ddbc182ee12a84a57f0a5f1130d867c14ab`  
		Last Modified: Thu, 22 Oct 2026 01:19:09 GMT  
		Size: 95.2 MB (95207786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f34252201f5253d51caea92e6d9eeba0ea81f902686709668d0bf66a2ee429`  
		Last Modified: Thu, 22 Oct 2026 01:19:05 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e7724986cd176e598d663045a17621c2ddb71d4739a6e8fe58e44b44a5bb4d`  
		Last Modified: Thu, 22 Oct 2026 01:19:10 GMT  
		Size: 139.4 MB (139427343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa3b296a1a82a55844de077dadb365146692cbab477c7616d3266462958cee2a`  
		Last Modified: Thu, 22 Oct 2026 01:19:05 GMT  
		Size: 59.5 KB (59530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:6e343fb393dfd9949b93cb3f79e5abe4513e6a71f122b95938e5a6af99e69fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12649974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7e77ecce7d5c6785b4bc373aae4f59dec73f8d06a725ae0ad11ff5c1664615`

```dockerfile
```

-	Layers:
	-	`sha256:3d963803b7ad4f1bce0ab6dc859415508ba73d06c81bf1d70cbb3d6710538b71`  
		Last Modified: Thu, 22 Oct 2026 01:19:06 GMT  
		Size: 12.6 MB (12628778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:668ee166ae9d9838fa05701c6253ef43cf600936c60c1cc57c6fe6841221fe90`  
		Last Modified: Thu, 22 Oct 2026 01:19:05 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.in-toto+json
