## `gradle:jdk-25-and-27-corretto`

```console
$ docker pull gradle@sha256:ec33493401fa345fd6e34a851bd7fb863ea456d7c8addc1d7f73fc8de872925e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk-25-and-27-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:57f8ce8b4a3deaff361543e8e8cf0204ac32a7db7c3a6ff312d2c49363bc1967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.9 MB (652933875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07432f8329ce2e46ce0cd2ea9493b052bda079aad72373447a96e6c8b07a0b44`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:02 GMT
ARG version=25.0.5.1.2-1
# Wed, 18 Nov 2026 21:35:02 GMT
ARG resource_version=25.0.5.1.2
# Wed, 18 Nov 2026 21:35:02 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:02 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:02 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 20 Nov 2026 20:03:09 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Fri, 20 Nov 2026 20:03:37 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 20 Nov 2026 20:03:37 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 20 Nov 2026 20:03:37 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 20:03:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 20:03:37 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 20:03:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Fri, 20 Nov 2026 20:03:37 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 20:03:37 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 20:03:37 GMT
ENV GRADLE_VERSION=9.9.2
# Fri, 20 Nov 2026 20:03:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Fri, 20 Nov 2026 20:03:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 20:03:40 GMT
USER gradle
# Fri, 20 Nov 2026 20:03:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 20:03:41 GMT
USER root
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7253d83a09e2ae79638b408da93783d31466366f84a741c08f5eb5067206564f`  
		Last Modified: Wed, 18 Nov 2026 21:35:26 GMT  
		Size: 189.7 MB (189652266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d503c37cd53f835ffb4633459d8b3297941e9a3b93ba0c6656c2d1ae1a6f2550`  
		Last Modified: Fri, 20 Nov 2026 20:04:20 GMT  
		Size: 177.8 MB (177820801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d217bc5e87c79c10e6ac6578836de5cb1c9e519cb61da5efb8856fdc1434f8`  
		Last Modified: Fri, 20 Nov 2026 20:04:18 GMT  
		Size: 96.0 MB (95993565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e948c2577bcd8afbc86fcb2ff5caa22c2d63bbf2abee84c5e19573c61fcf355`  
		Last Modified: Fri, 20 Nov 2026 20:04:12 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85657e8c441b2601a4b307fe34377cad5ceb6ecd9173cf6ef09b8cd52e205c1d`  
		Last Modified: Fri, 20 Nov 2026 20:04:20 GMT  
		Size: 134.9 MB (134870749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f2d371ac4b43cd3bcdbe919e1bc7b5e5414dd242ec080b7b5f5ded107339a1f`  
		Last Modified: Fri, 20 Nov 2026 20:04:13 GMT  
		Size: 25.6 KB (25613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:932804d82ce0da3c6b1d295078aced3e5487827576411c2fcd44044c13fb8f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12892280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4656cb1c187bd2b7c806422f5ba5a71d40354a9e9a16ad29248a7e0ee5ca18ec`

```dockerfile
```

-	Layers:
	-	`sha256:d338667949cfe0422ac8d2d5fb2d99981ae66f7f81fb29fdbb3cff849328486f`  
		Last Modified: Fri, 20 Nov 2026 20:04:13 GMT  
		Size: 12.9 MB (12862771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5708f4f643c080e45a9bb02901774685f3e7d2ec814f3e261c11878f66f9d86a`  
		Last Modified: Fri, 20 Nov 2026 20:04:12 GMT  
		Size: 29.5 KB (29509 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-25-and-27-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:948da5ae41196269aaa5d002f59272685786540d63b3ec58ff4d497a0c135e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647318385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb6598977aabcb6f3b6404ca208b67701f82cbfb35f18c1abfe5f4bffeba8c6`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:57 GMT
ARG version=25.0.5.1.2-1
# Wed, 18 Nov 2026 21:35:57 GMT
ARG resource_version=25.0.5.1.2
# Wed, 18 Nov 2026 21:35:57 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:57 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:57 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 20 Nov 2026 19:58:54 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Fri, 20 Nov 2026 19:59:30 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 20 Nov 2026 19:59:30 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 20 Nov 2026 19:59:30 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 19:59:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 19:59:30 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 19:59:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Fri, 20 Nov 2026 19:59:31 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 19:59:31 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 19:59:31 GMT
ENV GRADLE_VERSION=9.9.2
# Fri, 20 Nov 2026 19:59:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Fri, 20 Nov 2026 19:59:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 19:59:33 GMT
USER gradle
# Fri, 20 Nov 2026 19:59:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 19:59:34 GMT
USER root
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642ea915cc43453759395e7c803ccc6e101d99f76e34680e871567e6d58c01fb`  
		Last Modified: Wed, 18 Nov 2026 21:36:23 GMT  
		Size: 187.5 MB (187540189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a46c88ea743cf99302fefe940e45a06961543f70037407bd45dcded7783ac65`  
		Last Modified: Fri, 20 Nov 2026 20:00:17 GMT  
		Size: 176.0 MB (176023690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8ae7ebdb3b08a0a99fccaa984f6a294d55b4bcdc92b93b7ebce1fbe022aa1c`  
		Last Modified: Fri, 20 Nov 2026 20:00:15 GMT  
		Size: 95.4 MB (95399086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523dcac988cfeb5a8f74d23f481b1675038c25abe17d6d7f5647fc6aab24d817`  
		Last Modified: Fri, 20 Nov 2026 20:00:10 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c765d9a9ca09f8a7231d5766b1f7fd5d67ce0abd862fb68e9fd0012e0961193`  
		Last Modified: Fri, 20 Nov 2026 20:00:17 GMT  
		Size: 134.9 MB (134870749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666a11a43828a757272bc408b44ad53386e20e1cdacceabd35cdf0296685ca16`  
		Last Modified: Fri, 20 Nov 2026 20:00:12 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:9d1dbe5900fa186b12c72c1ba64f20789798a9630e724b2519e1d9c02632b2d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12890818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9032c9e080305ee86b614c8c1c2ce09ce7fdc8c6e93177d1799a2d970555988f`

```dockerfile
```

-	Layers:
	-	`sha256:6a7b284c996a6de547af1d9539568853c0011e30501d48a8bd23d9d8be02c562`  
		Last Modified: Fri, 20 Nov 2026 20:00:12 GMT  
		Size: 12.9 MB (12860989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53c50a3d520fb2339c7a3332b0969980da4ef38470641890654f84c17189e1f6`  
		Last Modified: Fri, 20 Nov 2026 20:00:10 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
