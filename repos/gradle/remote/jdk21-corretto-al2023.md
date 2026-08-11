## `gradle:jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:ecf875f84d0b100c9984e2b9f998589101395bbea910800fff716629a4c371da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:25bdb9e4135fb1f20e0f2784c9dae13fafd94237c1c5796ad3b8c397839957de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.9 MB (461949776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fefc5974d711327abb4b05447f3491aa66e7fbab91dede61198b26fbd9da18`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:13 GMT
ARG version=21.0.12.8-1
# Tue, 04 Aug 2026 00:58:13 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:13 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:13 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 10 Aug 2026 17:45:53 GMT
CMD ["gradle"]
# Mon, 10 Aug 2026 17:45:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Aug 2026 17:45:53 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 10 Aug 2026 17:45:53 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 10 Aug 2026 17:45:53 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Aug 2026 17:45:53 GMT
WORKDIR /home/gradle
# Mon, 10 Aug 2026 17:45:53 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 10 Aug 2026 17:45:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 10 Aug 2026 17:45:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 10 Aug 2026 17:45:56 GMT
USER gradle
# Mon, 10 Aug 2026 17:45:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 10 Aug 2026 17:45:56 GMT
USER root
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a40e30f149715e28b61bbced497841a83ce0cdb9f6b5bc286e4a9ce94aa1ab2`  
		Last Modified: Tue, 04 Aug 2026 00:58:35 GMT  
		Size: 170.4 MB (170440375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec352c588a7990a47c104cda78c81f9b97ee552e371f2433f2101d9675704b61`  
		Last Modified: Mon, 10 Aug 2026 17:46:27 GMT  
		Size: 86.7 MB (86681488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a1b0554d850f5842ced5b64ce7713b61ba323a174282f56a79852fbcf1e6f89`  
		Last Modified: Mon, 10 Aug 2026 17:46:23 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b64e7680a64ab2ffbadf0a51df2546b9b8fbc298e6a09d4eec82a3fd83997cf`  
		Last Modified: Mon, 10 Aug 2026 17:46:28 GMT  
		Size: 150.2 MB (150227947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253b6375be2e54f79a21c93d2d7f4c477e5868d87f1cccee0b1c1c453e1181f9`  
		Last Modified: Mon, 10 Aug 2026 17:46:23 GMT  
		Size: 25.6 KB (25607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:74b252d7e908c4f2f865fa6f69986fb4af986f79a4148cce94828fc574b7fcde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11414304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d661303f41242baede6704e5f61ecfd89e06f30ab39971a71b6e3a57e3a7bf`

```dockerfile
```

-	Layers:
	-	`sha256:4a90b759a3c36fbc91cd7430656edcd05baca8ae7947e377b3caf510a633b631`  
		Last Modified: Mon, 10 Aug 2026 17:46:24 GMT  
		Size: 11.4 MB (11392653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eccc9c5fe80c17817d358b1dd76dca797d908317c15beed9dd3273e343a7887c`  
		Last Modified: Mon, 10 Aug 2026 17:46:23 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9b4d8723118fb476c1a56e436f478487bbccb410be2a3c3fa877d454b47925e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **458.4 MB (458436532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8ff098f378693d60a0ce3154863643093a14715fb7abe345f4a97eb5af94e08`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:02 GMT
ARG version=21.0.12.8-1
# Tue, 04 Aug 2026 00:58:02 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:02 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:02 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 10 Aug 2026 17:46:05 GMT
CMD ["gradle"]
# Mon, 10 Aug 2026 17:46:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Aug 2026 17:46:05 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 10 Aug 2026 17:46:05 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 10 Aug 2026 17:46:05 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Aug 2026 17:46:05 GMT
WORKDIR /home/gradle
# Mon, 10 Aug 2026 17:46:05 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 10 Aug 2026 17:46:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 10 Aug 2026 17:46:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 10 Aug 2026 17:46:08 GMT
USER gradle
# Mon, 10 Aug 2026 17:46:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 10 Aug 2026 17:46:09 GMT
USER root
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4367aa016d239abfeb477b7cb1f6cc4f80e44ab22d950e582cc162e16bfe3866`  
		Last Modified: Tue, 04 Aug 2026 00:58:26 GMT  
		Size: 168.7 MB (168689674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aafc56db08dcffeb7c59c25104285e102e11b51a43b9ead148936ef953c5668d`  
		Last Modified: Mon, 10 Aug 2026 17:46:41 GMT  
		Size: 86.0 MB (86039302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1748568708be59df424b5e309ff6a6a0ab9f70b5f88305bbe23e972938bf0c`  
		Last Modified: Mon, 10 Aug 2026 17:46:37 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b6add7baa4858731f9ed63ffdd0977e99cd74ed006d9efb2a39a367ac94211`  
		Last Modified: Mon, 10 Aug 2026 17:46:42 GMT  
		Size: 150.2 MB (150227879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e154a4e3d11a510633590775c76463a6173bb4d900c92a7dd03653dbcf5c060d`  
		Last Modified: Mon, 10 Aug 2026 17:46:37 GMT  
		Size: 29.3 KB (29343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:43eb2176d2b3ebe1eba25cae44ea1c65132153f14dc685f0c98c0fdbbbc25c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11413504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e433bae83d22e1c9c65890a90dc3a4d0dda66462ef3083801e137c098aec715a`

```dockerfile
```

-	Layers:
	-	`sha256:b15f47df14412286a2aa5c7cdef097e86c56b99efdbcb6e06e21a27e0a3eec26`  
		Last Modified: Mon, 10 Aug 2026 17:46:38 GMT  
		Size: 11.4 MB (11391656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf4f7979d0eba81715b661939963f2024dadf653bde8ffb96211c618465fc587`  
		Last Modified: Mon, 10 Aug 2026 17:46:37 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
