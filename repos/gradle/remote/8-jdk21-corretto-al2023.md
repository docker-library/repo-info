## `gradle:8-jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:375b6b6694bcd57e6a602bc6d9fa763cea7ac12eee464befee80b7657ac799b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:72a794872ac08ee0befdb47ee2676330d579535d175b84ad01b270e17f1f5958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **449.8 MB (449819726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1737eb9ccda521b77eb1f7daef5315d916b9cc6f5f83983d34b5b2d94977130a`
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
# Tue, 04 Aug 2026 01:31:16 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:31:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:31:16 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:31:17 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:31:17 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:31:17 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:31:17 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 04 Aug 2026 01:31:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 04 Aug 2026 01:31:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:31:19 GMT
USER gradle
# Tue, 04 Aug 2026 01:31:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 01:31:20 GMT
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
	-	`sha256:a23b86912aa8276d5385523fd57b2dee1554a281e9d5bf334ae81ffc68788cd7`  
		Last Modified: Tue, 04 Aug 2026 01:31:51 GMT  
		Size: 86.7 MB (86681553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c2d1cff0dd2bb2a4d3b7c5fcfd58b5f2ca291142907b8e517a49735732b2814`  
		Last Modified: Tue, 04 Aug 2026 01:31:47 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d2df363485bd6e787446b5232e1d305888d66cd37cb2344ebb73434aadba75`  
		Last Modified: Tue, 04 Aug 2026 01:31:52 GMT  
		Size: 138.1 MB (138068533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa98d2d972f4e2fbf5b1643f7c29ba3110901b9e4851e0ef066d29217e238aff`  
		Last Modified: Tue, 04 Aug 2026 01:31:47 GMT  
		Size: 54.9 KB (54901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:1615b30fae639bfe7235987919ac2b7aad92f90c6958eb1613719b4a501e2f93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11379776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb69f9850bdd0971636970f55228d7f32f0db6470bb333fb87a44ca8bd2413d4`

```dockerfile
```

-	Layers:
	-	`sha256:8ea06f19af6e10bc8b9d59d9338ef07b87d742f54db262c4aef96c1c97d429b5`  
		Last Modified: Tue, 04 Aug 2026 01:31:48 GMT  
		Size: 11.4 MB (11358753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f35b86f972807aab97b53692e4147b04c1027a66766fb89e52c326e4b4a8ad35`  
		Last Modified: Tue, 04 Aug 2026 01:31:47 GMT  
		Size: 21.0 KB (21023 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:7d21e6c17199d748e8db1b59a349fdb61d467e042c26bc02bad38ec84e113713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.3 MB (446307473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfa4eb862f574185f4d8a9a755dc9cc5767b3039839414441a8e154007c5ab9`
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
# Tue, 04 Aug 2026 01:31:44 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:31:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:31:44 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:31:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:31:44 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:31:44 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:31:44 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 04 Aug 2026 01:31:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 04 Aug 2026 01:31:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:31:47 GMT
USER gradle
# Tue, 04 Aug 2026 01:31:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 01:31:47 GMT
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
	-	`sha256:d07213c015902fcb12b6b7238a46eaa16fc45cc339b65bb904255e19f0dc1140`  
		Last Modified: Tue, 04 Aug 2026 01:32:19 GMT  
		Size: 86.0 MB (86039409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c146a63ae7bf1b5873823e7779e6fdc0777519ae9eb2bfc5a290848b73ffb0`  
		Last Modified: Tue, 04 Aug 2026 01:32:15 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad41fa46e1dfa05b54372cfc713d8c9160b160b422deb775e601a0786a840ca`  
		Last Modified: Tue, 04 Aug 2026 01:32:20 GMT  
		Size: 138.1 MB (138068532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e834395db4e7703080754f688d632910135358012b6eca697f225fee7a18de`  
		Last Modified: Tue, 04 Aug 2026 01:32:16 GMT  
		Size: 59.5 KB (59522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:072ea20a89a2e3925f27260ead6df933aa454a142da186a5258525eeac97c380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11378927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7cec9d3e69dedbd19044efd85b1b59049232c7f9eb8ff0c8176055f32dac8a1`

```dockerfile
```

-	Layers:
	-	`sha256:0bfc28005568673366607c029b2f80ece0a863dd36aba5473dc68d1fbc23154f`  
		Last Modified: Tue, 04 Aug 2026 01:32:16 GMT  
		Size: 11.4 MB (11357732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f48cf2bc9e4e5ab5864e1dea46060a6e3d72fd769be421b959e435ac52268ef`  
		Last Modified: Tue, 04 Aug 2026 01:32:16 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.in-toto+json
