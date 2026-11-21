## `gradle:9-jdk27-corretto`

```console
$ docker pull gradle@sha256:556ba1e7faee67cc9ecefcf9f6898d2ecc9eb0207e16ccbad01bebf57b0b794e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk27-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:a3ffe948ded5b1d60f4a8d7f85ea96b7a802c543c813e778ad6ab879765f56b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.5 MB (477489340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66453af32a5224ac6e72b46332bdd6f5dd5a77d3f349e02c356d4a067bf45126`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:31 GMT
ARG version=27.0.1.1.4-1
# Wed, 18 Nov 2026 21:35:31 GMT
ARG resource_version=27.0.1.1.4
# Wed, 18 Nov 2026 21:35:31 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:31 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:31 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 20 Nov 2026 20:02:30 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 20:02:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 20:02:30 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 20:02:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 20:02:31 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 20:02:31 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 20:02:31 GMT
ENV GRADLE_VERSION=9.9.2
# Fri, 20 Nov 2026 20:02:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Fri, 20 Nov 2026 20:02:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 20:02:34 GMT
USER gradle
# Fri, 20 Nov 2026 20:02:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 20:02:35 GMT
USER root
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffe477a1ed07db3f14ac675f731cf24e4339b4284ad1ff715a785e4996bad0e`  
		Last Modified: Wed, 18 Nov 2026 21:35:54 GMT  
		Size: 192.0 MB (192028508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f8ea9ceeebbfa40dbb46aa68a6efc0daa309646d8d4f965303ddb3e04ddebf`  
		Last Modified: Fri, 20 Nov 2026 20:03:06 GMT  
		Size: 96.0 MB (95993699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f44fbb3cba82c73400696f194a1ac9d158d081409cb46413b412ae907773f3e`  
		Last Modified: Fri, 20 Nov 2026 20:03:03 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5549ee4ba4b7298292b7ce3bd5a5703e26dd452322021a2e629512503db858d`  
		Last Modified: Fri, 20 Nov 2026 20:03:07 GMT  
		Size: 134.9 MB (134870748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f26d5224215510b6b40bf04e4bed1a87d292e99447f871435bcd6d53a79d9bb`  
		Last Modified: Fri, 20 Nov 2026 20:03:02 GMT  
		Size: 25.6 KB (25616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:ef440addaed61dd72d9ef1ce1c9ac60ed6453c9b43a870511b06ee8c1b826632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12696426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b512672021e350519fddd492628a77a49ce5efcb70202ec4f22a64b30893d69e`

```dockerfile
```

-	Layers:
	-	`sha256:a0cd0f8ae8fea7757a85cd02786e657937e2c58c35366f9e694a39d863e2e553`  
		Last Modified: Fri, 20 Nov 2026 20:03:03 GMT  
		Size: 12.7 MB (12674775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:101cdb8ff720a77ea90b32e37e060986aaaa6400d6afe508eeb28d790b62f536`  
		Last Modified: Fri, 20 Nov 2026 20:03:03 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d0c9e908d6dced60910181d66ee55b1079ca3c0c5dad7360810f002604dba01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **473.9 MB (473947643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0139d11f76610778451b80a5117635ce5c13220861978d3a68d096b9a72d2c6`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:36:08 GMT
ARG version=27.0.1.1.4-1
# Wed, 18 Nov 2026 21:36:08 GMT
ARG resource_version=27.0.1.1.4
# Wed, 18 Nov 2026 21:36:08 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:36:08 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:36:08 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:36:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 20 Nov 2026 19:59:14 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 19:59:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 19:59:14 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 19:59:14 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 19:59:14 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 19:59:14 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 19:59:14 GMT
ENV GRADLE_VERSION=9.9.2
# Fri, 20 Nov 2026 19:59:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Fri, 20 Nov 2026 19:59:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 19:59:16 GMT
USER gradle
# Fri, 20 Nov 2026 19:59:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 19:59:17 GMT
USER root
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd727c09acb5163eea2abc1faf18df7ea914d85b0d89916d98f11b415896d297`  
		Last Modified: Wed, 18 Nov 2026 21:36:33 GMT  
		Size: 190.2 MB (190195174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7037ab3679011c9ce94ec8b2fe8af3f37b8ae61c0801ea4c0f7ed7a433ab430`  
		Last Modified: Fri, 20 Nov 2026 19:59:50 GMT  
		Size: 95.4 MB (95397154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f35373e12cf7758e66145a84c5051c0f67e9bd93202130c9388e5fa12e6a7180`  
		Last Modified: Fri, 20 Nov 2026 19:59:47 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637f2e6547d2009577deab55fb4fc165a179f6bcb7aa286e0aa31a95eb2db343`  
		Last Modified: Fri, 20 Nov 2026 19:59:51 GMT  
		Size: 134.9 MB (134870750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd73bc80ccb591504d4c1d6903b11f6b4a3b15599b47231cd66254aff1a3454`  
		Last Modified: Fri, 20 Nov 2026 19:59:47 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:f503e119c2ea2d814ac68c2a1d4b5ae1285ca96f1534a7f13dae165808eabd11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12695625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f50c44560828551233f015924af0cda4286c140bb42e88076b4496b632ef47ce`

```dockerfile
```

-	Layers:
	-	`sha256:51b93ac23e8300972a5536e593e5bfa507bb767b2af74becadf5dbf08812a248`  
		Last Modified: Fri, 20 Nov 2026 19:59:47 GMT  
		Size: 12.7 MB (12673779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24a54bc2348c641726029bcc348d52eedbf10cd5986332b078115195d5959c2a`  
		Last Modified: Fri, 20 Nov 2026 19:59:47 GMT  
		Size: 21.8 KB (21846 bytes)  
		MIME: application/vnd.in-toto+json
