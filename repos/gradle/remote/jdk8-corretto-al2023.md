## `gradle:jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:9ac5951038fa9140e0851b03a20390b6c263d81e57cc5894f7a023211646436b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:97e95a4997ccbd27733d65c9491be8aa6bdb7178506155f1008e5900c41409f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.2 MB (408244183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6418bc4226747b35d5bf45a45b8671b0ca54e32acb9b9d59d23680db8292c55`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:19 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:19 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:32:19 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 20 Nov 2026 20:05:55 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 20:05:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 20:05:55 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 20:05:55 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 20:05:55 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 20:05:55 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 20:05:55 GMT
ENV GRADLE_VERSION=8.14.8
# Fri, 20 Nov 2026 20:05:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Fri, 20 Nov 2026 20:05:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 20:05:59 GMT
USER gradle
# Fri, 20 Nov 2026 20:05:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 20:05:59 GMT
USER root
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695be0e5bcb274fe7403faf612438cb9c196668c09fe2794a0d01339b2d6cde9`  
		Last Modified: Wed, 18 Nov 2026 21:32:36 GMT  
		Size: 118.1 MB (118131328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39f5f3e730fe35a0aaebfa5ddfb0ee61449f77803ee9f3e7eb98383073e9cf7`  
		Last Modified: Fri, 20 Nov 2026 20:06:29 GMT  
		Size: 96.0 MB (95987873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab9c13758b479b449aefe5232c4ac7a53d6ca7d60f110c2320d9cac54b372b2`  
		Last Modified: Fri, 20 Nov 2026 20:06:25 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda3fdd552b713bb69e8249d9f1d5716005a005c09b43ad52510030ecbe1c000`  
		Last Modified: Fri, 20 Nov 2026 20:06:30 GMT  
		Size: 139.5 MB (139499314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02608319994b53f9084611c95622946c389d413727e1a74883699074e0250fe5`  
		Last Modified: Fri, 20 Nov 2026 20:06:25 GMT  
		Size: 54.9 KB (54900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:feb99b3a17f9da59d8d55e9f41113ab2ea0a083bbae8b6c366eabec3685cf965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13031683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738b959adc66056bc66e1e8f36a1d97fd3eaf9bf0cfb5330414d9bbd34b1f0da`

```dockerfile
```

-	Layers:
	-	`sha256:70b82b12cf29b67b213425fbfbcb540fb36e99bc362d2bb3a31da41f89e1581b`  
		Last Modified: Fri, 20 Nov 2026 20:06:25 GMT  
		Size: 13.0 MB (13010029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ae7238224bc4d7e80ed6f3ffc3e979897d1fbc356823f51d11c827158f99be3`  
		Last Modified: Fri, 20 Nov 2026 20:06:25 GMT  
		Size: 21.7 KB (21654 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:873031798b2eecf271954d3e907c05fb1ea5bb4c90ecff419a5d43f9aac668a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.4 MB (406428199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c097e660bd992bf4c7e153ecdd7062169d051cdb487718887ffd7f526410f5c4`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:43 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:43 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 20 Nov 2026 20:01:03 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 20:01:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 20:01:03 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 20:01:03 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 20:01:03 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 20:01:03 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 20:01:03 GMT
ENV GRADLE_VERSION=8.14.8
# Fri, 20 Nov 2026 20:01:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Fri, 20 Nov 2026 20:01:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 20:01:06 GMT
USER gradle
# Fri, 20 Nov 2026 20:01:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 20:01:06 GMT
USER root
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b085efbc5a54f246168cc1fbc37f3ec680693539724b402242c61bdcf760da`  
		Last Modified: Wed, 18 Nov 2026 21:33:03 GMT  
		Size: 118.0 MB (118017359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef496db09d698ecc50b6e2cc1a5cd3ca4980ba059281aa67c322e3f4946a7b25`  
		Last Modified: Fri, 20 Nov 2026 20:01:40 GMT  
		Size: 95.4 MB (95396769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:848688aa215d3086ced20e1dc70b1210ed8bcdb2cc3702f88a02b3ec636e04fc`  
		Last Modified: Fri, 20 Nov 2026 20:01:36 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8b8dac1596ec84bcf815a3c5a677b3239d1926d2288a146515318274396a31`  
		Last Modified: Fri, 20 Nov 2026 20:01:40 GMT  
		Size: 139.5 MB (139499313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517f90db2a53980a2a872856b77bef7127151368c28cfc3511add22e3e04da8f`  
		Last Modified: Fri, 20 Nov 2026 20:01:36 GMT  
		Size: 59.5 KB (59530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:aa07d93bf55b10bb4fde092d71a88a1fc6ff2efda429286704d2af0847841a44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13032203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a05b7203eff92075012163f70f5489b80e6458ad7932acda24cb6f339c002a1`

```dockerfile
```

-	Layers:
	-	`sha256:64568fec417877c6f58c9378d9751551fbebfdb6eb76ae363c391fc6bafc4ff6`  
		Last Modified: Fri, 20 Nov 2026 20:01:37 GMT  
		Size: 13.0 MB (13010352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9f81844e35e920e7fc5e0cc9c4d24362f0d89544de79a98bf698d67512d4011`  
		Last Modified: Fri, 20 Nov 2026 20:01:36 GMT  
		Size: 21.9 KB (21851 bytes)  
		MIME: application/vnd.in-toto+json
