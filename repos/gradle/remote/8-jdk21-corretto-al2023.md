## `gradle:8-jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:310b33bac4d79c5405cfe74a86b727538b7c5a42ffaa77c797d10e7e87155625
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:4357cafb1a888dd3ae29b5da0281cd0abf6bb492fe2d651f14fdddc9f4a960a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **449.8 MB (449821335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc8c269cad51874fd49b577510ae47e6fda6c5534a8d4ffb939ae7461f2fc0c`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:03 GMT
ARG version=21.0.11.10-1
# Sat, 18 Jul 2026 00:13:03 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:03 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:03 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Sat, 18 Jul 2026 01:11:53 GMT
CMD ["gradle"]
# Sat, 18 Jul 2026 01:11:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 18 Jul 2026 01:11:53 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Sat, 18 Jul 2026 01:11:53 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Sat, 18 Jul 2026 01:11:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 18 Jul 2026 01:11:53 GMT
WORKDIR /home/gradle
# Sat, 18 Jul 2026 01:11:53 GMT
ENV GRADLE_VERSION=8.14.5
# Sat, 18 Jul 2026 01:11:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Sat, 18 Jul 2026 01:11:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Sat, 18 Jul 2026 01:11:56 GMT
USER gradle
# Sat, 18 Jul 2026 01:11:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Sat, 18 Jul 2026 01:11:56 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab6bb9de96f344f45f343bb3d665eef1c0a7efc48d63d27cfe871019c513315`  
		Last Modified: Sat, 18 Jul 2026 00:13:26 GMT  
		Size: 170.4 MB (170443315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90024c45f5f55383b2d0d444f7de136464699cf677b3c5f727ca33967b5e539`  
		Last Modified: Sat, 18 Jul 2026 01:12:26 GMT  
		Size: 86.7 MB (86678640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db370a327932fc8b472f3da92c3b3ff6ab5ba2a6cfe81e845807f44d55ea572d`  
		Last Modified: Sat, 18 Jul 2026 01:12:22 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e5f23e623388275915a3dc658f657790f104f08628ab4253d47c3682f358bd`  
		Last Modified: Sat, 18 Jul 2026 01:12:27 GMT  
		Size: 138.1 MB (138068532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04a7824f46a7cccfadf4d9487f831315a3d7db4111a39dbc1ef8ded65491730`  
		Last Modified: Sat, 18 Jul 2026 01:12:23 GMT  
		Size: 54.9 KB (54904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:3cc37d273a5a093e97f1e4544ff5cfc99f1593cd47e3cdaff6caf11800d38f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11379710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e903d01691aebdefaaf8de832d4e65b25ba5d92246a64c4e01980345ce88d715`

```dockerfile
```

-	Layers:
	-	`sha256:85449b6c276afcf90ce0e2d5da82f2c23f99496f6c12260eeaa211b84c0ab9e0`  
		Last Modified: Sat, 18 Jul 2026 01:12:23 GMT  
		Size: 11.4 MB (11358687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1947dc2812032223343e61c7742b8fad5fc2cd20dd086d3315520f377fe6559`  
		Last Modified: Sat, 18 Jul 2026 01:12:22 GMT  
		Size: 21.0 KB (21023 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c02b2b88c4df3f5801cdb5aa7fd47d9dd6ba1869d92bd53cccd30ab7befe1f60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.3 MB (446346692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8104eaff291465da61f475c0b580944d642561bd9f7a37d9972439792a1ea36a`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:15 GMT
ARG version=21.0.11.10-1
# Sat, 18 Jul 2026 00:12:15 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:12:15 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:12:15 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Sat, 18 Jul 2026 01:11:49 GMT
CMD ["gradle"]
# Sat, 18 Jul 2026 01:11:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 18 Jul 2026 01:11:49 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Sat, 18 Jul 2026 01:11:50 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Sat, 18 Jul 2026 01:11:50 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 18 Jul 2026 01:11:50 GMT
WORKDIR /home/gradle
# Sat, 18 Jul 2026 01:11:50 GMT
ENV GRADLE_VERSION=8.14.5
# Sat, 18 Jul 2026 01:11:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Sat, 18 Jul 2026 01:11:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Sat, 18 Jul 2026 01:11:52 GMT
USER gradle
# Sat, 18 Jul 2026 01:11:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Sat, 18 Jul 2026 01:11:53 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c715a56b6d192c0e3a303d97cd78e2d1dee5376b25e25daaec28221ab030c1fd`  
		Last Modified: Sat, 18 Jul 2026 00:12:38 GMT  
		Size: 168.7 MB (168719279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c9086b6349204958a1d538c0da59c09d70c11dd7dd8b53b25c9de55321e8ea`  
		Last Modified: Sat, 18 Jul 2026 01:12:24 GMT  
		Size: 86.0 MB (86048395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bcbd51142bd0cc4f847de5927fed4c93fc45afed2e3050566c439f1657abec0`  
		Last Modified: Sat, 18 Jul 2026 01:12:21 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5408a900346b5c7b8a4436a62e3756570bbdcce600d6d79c8bc0547b289c6ada`  
		Last Modified: Sat, 18 Jul 2026 01:12:26 GMT  
		Size: 138.1 MB (138068573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44364e8673c4f7a8cb8207069883c62682cb1f4577d25ba15e08bf2c60b1bd9f`  
		Last Modified: Sat, 18 Jul 2026 01:12:21 GMT  
		Size: 59.5 KB (59532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:3dd5cc92bf843069ad49dab202dfb2f61b822da3d7f911575e75e9dc1f7d88da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11378862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdc026c1058811203a28238f2a55460d3006abb82c6c39760f83abe3f122208`

```dockerfile
```

-	Layers:
	-	`sha256:a394e79607abfc5acf5578e8dfe7ee55f72d3e5ffb06c797cc89d5e3e286bd24`  
		Last Modified: Sat, 18 Jul 2026 01:12:22 GMT  
		Size: 11.4 MB (11357666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29624010055394a1acee62e5436423d09a1cdbe24668b47e288e159090f88ecd`  
		Last Modified: Sat, 18 Jul 2026 01:12:21 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.in-toto+json
