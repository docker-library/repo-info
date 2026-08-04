## `gradle:8-jdk11-corretto`

```console
$ docker pull gradle@sha256:0f5ae1efe24743b38ff4c1c64b5959575942ac9e038901052d85fd21d9507adc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk11-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:559b4532d0017cdb24e8ee4803221d0a9633323f5f361d521f0e183db766504a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.8 MB (432846752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34da0f5c6077c93524fd7689c6d898e8b7395c457073df04471278de836a1b4`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:25 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:25 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:25 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 04 Aug 2026 01:32:09 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:32:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:32:09 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:32:09 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:32:09 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:32:09 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:32:09 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 04 Aug 2026 01:32:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 04 Aug 2026 01:32:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:32:12 GMT
USER gradle
# Tue, 04 Aug 2026 01:32:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 01:32:12 GMT
USER root
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65b4d939eb36e1b241115abf3fd2b8e59a07310c0aea8ee5d768bb7bbd9565d`  
		Last Modified: Tue, 04 Aug 2026 00:57:45 GMT  
		Size: 153.5 MB (153470096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168d08127f43dca37b0476037d9a58335f8b1bcb24a649123681ffcbfc10c72b`  
		Last Modified: Tue, 04 Aug 2026 01:32:43 GMT  
		Size: 86.7 MB (86678858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fcf207f151a80b6cb312ac529b463f9c8d401caf42d199a7029285e68d6b64`  
		Last Modified: Tue, 04 Aug 2026 01:32:39 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f4d7489103d45a5d195b0dbde880977a69e41255fda304a782f7b77f7f82b1`  
		Last Modified: Tue, 04 Aug 2026 01:32:44 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15682f2bec3fe7d993f66e22dd58f23c945d7352c34f8a7cea90bf943d7efd9`  
		Last Modified: Tue, 04 Aug 2026 01:32:40 GMT  
		Size: 54.9 KB (54906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:4ce1ff6efb5c42542c371bd0543893aa28a0d8d33ed94b6f11333934c10c6785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11403325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514f2e3c1900a20a9f6750f7204f40f455cd99cc348d52836d64f9c77534ca50`

```dockerfile
```

-	Layers:
	-	`sha256:0f552b7169d3b55808ef171c8d8c6ea5c0b81c515df83253525f10a9bbc50d3c`  
		Last Modified: Tue, 04 Aug 2026 01:32:40 GMT  
		Size: 11.4 MB (11381660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91d3c9983f7044eee5752344bce78a6d884c0ac929c4bb46be9a40a72a0d44c6`  
		Last Modified: Tue, 04 Aug 2026 01:32:39 GMT  
		Size: 21.7 KB (21665 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c2cc1b9f70231e75a221cf2fdcb64143faa6a43865d4567a307cebf961ed953e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.7 MB (429664584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d0cdc5d41725745ccd31525f0641afdf3fb8ec76d10f019fd1cd90f5aadb0c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:10 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:10 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:10 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 04 Aug 2026 01:32:34 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:32:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:32:34 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:32:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:32:34 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:32:34 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:32:34 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 04 Aug 2026 01:32:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 04 Aug 2026 01:32:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:32:37 GMT
USER gradle
# Tue, 04 Aug 2026 01:32:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 01:32:38 GMT
USER root
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27a3d81687d5a8e482e74098568a47768bea8f87d5d4f7b4bdd67670d0f7e84`  
		Last Modified: Tue, 04 Aug 2026 00:57:32 GMT  
		Size: 152.0 MB (152043082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce5711f7296d59d213f243d2847ecc03f8bf58bd8327dd4bcd439b35e4548aa`  
		Last Modified: Tue, 04 Aug 2026 01:33:09 GMT  
		Size: 86.0 MB (86043100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b60e7e60898d7f8bb7f8cbb2ef1f379b5bd0e00a9deb746c1d1381821352b76`  
		Last Modified: Tue, 04 Aug 2026 01:33:06 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e93574d0229715989ee39d698d248ae29062d1d3caa6ab70936798f0c7c4755`  
		Last Modified: Tue, 04 Aug 2026 01:33:10 GMT  
		Size: 138.1 MB (138068531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7639c56076d5c1a6fa3712e635eaf56774e990dc587b8f3e9dcbce830f67829e`  
		Last Modified: Tue, 04 Aug 2026 01:33:06 GMT  
		Size: 59.5 KB (59535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:bfc82b297e174f3074298f6facd2acee1faa3d93d89e6f9d3aaf3a21a686cbe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11403365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:befaaef649ee2dd767b9c16285a9bd4ba3ba83c85e6ab469f55458270279ea50`

```dockerfile
```

-	Layers:
	-	`sha256:2d8debdef9c005200ebf68be95630b7a34c16d57fec0f196ba69faa79258878b`  
		Last Modified: Tue, 04 Aug 2026 01:33:06 GMT  
		Size: 11.4 MB (11381503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7c21abb451cda507ec75a8ae369b6952c809e00d2a62014fb1a13a3809797c3`  
		Last Modified: Tue, 04 Aug 2026 01:33:06 GMT  
		Size: 21.9 KB (21862 bytes)  
		MIME: application/vnd.in-toto+json
