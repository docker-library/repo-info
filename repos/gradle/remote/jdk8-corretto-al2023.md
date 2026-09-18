## `gradle:jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:1df02ad99ce46c56d50fd5bd92bfffd1182f6038d1c6c74c68ff782613a435db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:60e778dbe069f5d4e4bf6103840a743020c00524002ac0a07f6c66244d5304a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.7 MB (397666277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18e9570354f157e957221d258e802a80482db542cf7f18a48607ae78b56bdc53`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:21:16 GMT
ARG version=1.8.0_504.b01-1
# Thu, 17 Sep 2026 22:21:16 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:21:16 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:21:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 17 Sep 2026 23:22:00 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 23:22:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 23:22:00 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 17 Sep 2026 23:22:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 17 Sep 2026 23:22:00 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 23:22:00 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 23:22:00 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 17 Sep 2026 23:22:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 17 Sep 2026 23:22:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 23:22:03 GMT
USER gradle
# Thu, 17 Sep 2026 23:22:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 17 Sep 2026 23:22:03 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e715ef171f7dd2d91fa3e5369725e04544a8c19019fa2f85ee0bafa9209a6890`  
		Last Modified: Thu, 17 Sep 2026 22:21:34 GMT  
		Size: 118.1 MB (118089220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:404e3c00596e35521cbe2445c566f264fbd3665c70ce81353307403d1b95c911`  
		Last Modified: Thu, 17 Sep 2026 23:22:36 GMT  
		Size: 86.9 MB (86865657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62ec99ea16447426f8a436c801711d20166021120fd094b766ccddc40e307bd`  
		Last Modified: Thu, 17 Sep 2026 23:22:31 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59a82ca04b58f28db7d49f66de03532c6e91dd80cb1c2f224cf78dd782bc62f`  
		Last Modified: Thu, 17 Sep 2026 23:22:37 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea337b94c4e973f11c591735418be0887db3b05f657c9c9bc638f1adb43c22e0`  
		Last Modified: Thu, 17 Sep 2026 23:22:32 GMT  
		Size: 54.9 KB (54907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:2f77949963e6ebb77870860bc40763ba85aab2b1fbb890c2f6d49596653cf4e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11755360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b07d716ca21bda47cde647374949713fc380925538d6740550a21b2c8d864d`

```dockerfile
```

-	Layers:
	-	`sha256:27e0ad63fc8cdc69a1e4c0e5e65482c6455f4253a0795080b0a9433da5e487b9`  
		Last Modified: Thu, 17 Sep 2026 23:22:32 GMT  
		Size: 11.7 MB (11733706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfa4fc7709a4aad5f92a720508002a7edacc8bf8983e7a240e337790c79b0cf4`  
		Last Modified: Thu, 17 Sep 2026 23:22:31 GMT  
		Size: 21.7 KB (21654 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a30c5873c27ad70f6515e2fba6ad2603ab3083a2f08f0c47253f872d4525d4a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.8 MB (395784206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:577d2fedbebf9e8a3a0799c44d96be77bff546f7f3874dcc8d0bf4956e52d2c0`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:45:40 GMT
ARG version=1.8.0_504.b01-1
# Thu, 17 Sep 2026 22:45:40 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:45:40 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:45:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 17 Sep 2026 23:22:02 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 23:22:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 23:22:02 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 17 Sep 2026 23:22:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 17 Sep 2026 23:22:02 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 23:22:02 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 23:22:02 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 17 Sep 2026 23:22:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 17 Sep 2026 23:22:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 23:22:05 GMT
USER gradle
# Thu, 17 Sep 2026 23:22:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 17 Sep 2026 23:22:05 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e44be5ec76073fa5d9148cdc116fe83f9fd92191a47a8a45a43fd14f78db0d`  
		Last Modified: Thu, 17 Sep 2026 22:46:04 GMT  
		Size: 118.0 MB (117970310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec207784485e6eea4d13d4df18318b359a02ac11c433d3f9673e72b4f41b1f1`  
		Last Modified: Thu, 17 Sep 2026 23:22:37 GMT  
		Size: 86.2 MB (86231543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d2b923745eeea89507cbd7b44f5b016d1729d57847a983e84c317846795831`  
		Last Modified: Thu, 17 Sep 2026 23:22:33 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e62992b01fefe60f231fd77f45011b963e74ba055e4fa9175a6c309adfaedc`  
		Last Modified: Thu, 17 Sep 2026 23:22:38 GMT  
		Size: 138.1 MB (138068573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c6590d4c298baf747a864e8a87a9fb557d6ada7c4993af0643a4b917393692`  
		Last Modified: Thu, 17 Sep 2026 23:22:33 GMT  
		Size: 59.5 KB (59532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:b4984109707006011b19f0f547af1f1d486205e425883c18ee245d9addeab145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11755880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9d0503c75ea676b778f1a998c5b6369eb0d081036f36056d44ece61e96c6ad`

```dockerfile
```

-	Layers:
	-	`sha256:2fcd38a460ad65dcea8ee96f424f39636e5221929efbef440d6c4238f71dd37a`  
		Last Modified: Thu, 17 Sep 2026 23:22:33 GMT  
		Size: 11.7 MB (11734029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5268da4121fcec1a50fabd358f65e24062a445a6349fdabffe00c5d745aa2e0`  
		Last Modified: Thu, 17 Sep 2026 23:22:33 GMT  
		Size: 21.9 KB (21851 bytes)  
		MIME: application/vnd.in-toto+json
