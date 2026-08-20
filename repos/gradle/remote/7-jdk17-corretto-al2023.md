## `gradle:7-jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:2dea0ffe392694f0f83d7ad0b956de9d889ccdf07e5e3ddfa3b835a25edd27b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:91ebc82e96a9f1418e95c8a041fb1bec50fe630986eabddbb56b5b69eca80aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.1 MB (427132115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9c6ac0fd55baadad1d8fff36ce655de1e57a1ffa3928dbcfdb8037908c725b`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:20:18 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:20:18 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:20:18 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:20:18 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 20 Aug 2026 18:02:21 GMT
CMD ["gradle"]
# Thu, 20 Aug 2026 18:02:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 20 Aug 2026 18:02:21 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 20 Aug 2026 18:02:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 20 Aug 2026 18:02:21 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 20 Aug 2026 18:02:21 GMT
WORKDIR /home/gradle
# Thu, 20 Aug 2026 18:02:21 GMT
ENV GRADLE_VERSION=7.6.6
# Thu, 20 Aug 2026 18:02:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Thu, 20 Aug 2026 18:02:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 20 Aug 2026 18:02:24 GMT
USER gradle
# Thu, 20 Aug 2026 18:02:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 20 Aug 2026 18:02:24 GMT
USER root
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfead4a6ee7773d2dbc579b59ce8c1135ecf004db916308e9802df9eb8fe9f5a`  
		Last Modified: Thu, 20 Aug 2026 17:20:40 GMT  
		Size: 157.1 MB (157139355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0b1b2846d4faf5a9041a4c398b57023ae19fd01cb7587c2761849aa0d6d896`  
		Last Modified: Thu, 20 Aug 2026 18:02:54 GMT  
		Size: 86.9 MB (86882904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc085bcd0d5702f86151e9bc31833706645e6d1db6053fc7b017ff33b402fbe7`  
		Last Modified: Thu, 20 Aug 2026 18:02:49 GMT  
		Size: 1.6 KB (1641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba2ee2743eeafedb1ffe89a63b97cfec68c2c21ab3ac4adb48e18fabd7aa24e`  
		Last Modified: Thu, 20 Aug 2026 18:02:53 GMT  
		Size: 128.5 MB (128469442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20ae27cab19da352600c978ddecc7a35e13701e95516dd9f8dbb35c31b3b29b`  
		Last Modified: Thu, 20 Aug 2026 18:02:50 GMT  
		Size: 54.9 KB (54894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:eaf17a1f452190f891f8aed20c90c36f23f2fb99925e24c2a5c9e3c829c7239e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11287692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28868740a263f15dc938aca4d5bd230ece26bc98b03f310e017c2c1f39f113b1`

```dockerfile
```

-	Layers:
	-	`sha256:9ced14b71f51579edf73e3198e2030004fe77d72da18f3bc37ad587ecef071ee`  
		Last Modified: Thu, 20 Aug 2026 18:02:50 GMT  
		Size: 11.3 MB (11266980 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1479a439969c8bb74aa5b0002743a09daf729ab5a82adf4b0ca41d07ec555e9`  
		Last Modified: Thu, 20 Aug 2026 18:02:49 GMT  
		Size: 20.7 KB (20712 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d677d707a389ef2d78dff448d292c50c1f9a018a1b5968c8e16fc96e113f1077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.2 MB (424181627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a947bb85e01b13ad7886e5a0e8161b5fcf9d2cc1ae9f17051d3e75ed0cd7bc45`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:00 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:17:00 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:17:00 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:17:00 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 20 Aug 2026 17:59:18 GMT
CMD ["gradle"]
# Thu, 20 Aug 2026 17:59:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 20 Aug 2026 17:59:18 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 20 Aug 2026 17:59:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 20 Aug 2026 17:59:18 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 20 Aug 2026 17:59:18 GMT
WORKDIR /home/gradle
# Thu, 20 Aug 2026 17:59:18 GMT
ENV GRADLE_VERSION=7.6.6
# Thu, 20 Aug 2026 17:59:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Thu, 20 Aug 2026 17:59:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 20 Aug 2026 17:59:21 GMT
USER gradle
# Thu, 20 Aug 2026 17:59:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 20 Aug 2026 17:59:22 GMT
USER root
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2898f49accdb0dda82fec0027f06a1977c5014ad3d546b41c09dbf32cbb1028`  
		Last Modified: Thu, 20 Aug 2026 17:17:23 GMT  
		Size: 156.0 MB (155950280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50040aa8c1108f57f3e4fd008858fc2df1e363328e83a048845dcbee8c4ff31`  
		Last Modified: Thu, 20 Aug 2026 17:59:52 GMT  
		Size: 86.2 MB (86249847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1d3dcd891eb5ed4d192f77db556d1530761a9f2e6a259f64fd9376228f45d1`  
		Last Modified: Thu, 20 Aug 2026 17:59:48 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f685a46e33e50c6b1cd10ab3788cd20cb5b2b9f05a285956079a22da2a1e78f1`  
		Last Modified: Thu, 20 Aug 2026 17:59:53 GMT  
		Size: 128.5 MB (128469418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe0bafae38a4b5a5d2dea20e74a5b417325b811008fc005f068324bec2726d1`  
		Last Modified: Thu, 20 Aug 2026 17:59:49 GMT  
		Size: 59.5 KB (59519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:07314549f199d79fb138f410d30f64350d9032b16900edec559b9553c5aa0c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11286846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896d78857d44fa04a8d13d23580e422e0955054e4071f95930c51722c4457d13`

```dockerfile
```

-	Layers:
	-	`sha256:aecb738d0492ba670bddeb5f46ce912c01cb4b8051ed183b8292d9775d9a6368`  
		Last Modified: Thu, 20 Aug 2026 17:59:49 GMT  
		Size: 11.3 MB (11265960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91be230e4edfb95116f1b2e709683cbb1dfe74b90beb649c2a53b8871da8d6f9`  
		Last Modified: Thu, 20 Aug 2026 17:59:48 GMT  
		Size: 20.9 KB (20886 bytes)  
		MIME: application/vnd.in-toto+json
