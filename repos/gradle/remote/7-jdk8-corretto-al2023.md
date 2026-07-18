## `gradle:7-jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:531c7b5ae7b2d9a84744b16b15ee70cf69228e09666e21ef5008e0a7b4de922d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:3285768ebc5156d57cbcfb50482e1375bac3ead209e9a52714c23ad385b70b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.2 MB (580200026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96644181f1bb31711e553b16e8f06d0367be1bc303f86dba3daddaebdb418c06`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:08:18 GMT
ARG version=1.8.0_492.b09-2
# Sat, 18 Jul 2026 00:08:18 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:08:18 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:08:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Sat, 18 Jul 2026 01:12:28 GMT
CMD ["gradle"]
# Sat, 18 Jul 2026 01:12:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 18 Jul 2026 01:12:28 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Sat, 18 Jul 2026 01:12:28 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Sat, 18 Jul 2026 01:12:28 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 18 Jul 2026 01:12:28 GMT
WORKDIR /home/gradle
# Sat, 18 Jul 2026 01:12:28 GMT
ENV GRADLE_VERSION=7.6.6
# Sat, 18 Jul 2026 01:12:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Sat, 18 Jul 2026 01:12:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Sat, 18 Jul 2026 01:12:30 GMT
USER gradle
# Sat, 18 Jul 2026 01:12:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Sat, 18 Jul 2026 01:12:30 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:810b4352698423a8209e8062c6141a750ec367ac7973bd1c8ebac2f46e38f3ff`  
		Last Modified: Sat, 18 Jul 2026 00:09:11 GMT  
		Size: 331.5 MB (331464254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e6c8d2be7b54a40e2ba24724e9154b8063803435ef50d9c82e09e3c4fa057d`  
		Last Modified: Sat, 18 Jul 2026 01:13:08 GMT  
		Size: 65.6 MB (65635217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11db361e7fa0e2ff2c8b260cce7c22a968a5ef4c2d385394d928182bdcc03bc`  
		Last Modified: Sat, 18 Jul 2026 01:13:05 GMT  
		Size: 1.9 KB (1942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7464dc1e2d64b57ed850ab7c658ad211604ce55d9f0a1b2ffc7b7873631c5f6a`  
		Last Modified: Sat, 18 Jul 2026 01:13:10 GMT  
		Size: 128.5 MB (128469416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78607146a29acbe54a7937938df0b31fd3c05cf6082320f1369d876bb473351e`  
		Last Modified: Sat, 18 Jul 2026 01:13:05 GMT  
		Size: 54.9 KB (54901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:0efc4b99d87c559e4acaa2fea7c854f40d32a17bf5a371fc29600f24fb3003b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18104770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a8b87162c2cfa21b9c9af878265cc6f4d7e9501528fcad7fc811eb0c0fba42`

```dockerfile
```

-	Layers:
	-	`sha256:ebcf2a53c9f82180a5e19b7600494b1da113f5338e78f622b1f738f9ff4c92f0`  
		Last Modified: Sat, 18 Jul 2026 01:13:06 GMT  
		Size: 18.1 MB (18083906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdb7ac51425d811a237f4f6b60bae50627d9ba799ed217f185dc310c90cbe834`  
		Last Modified: Sat, 18 Jul 2026 01:13:05 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:4f50286fe05e61f872d317bc82a7dc54bd3c3cb7aee09891edc40115c7d6cbe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.0 MB (385967695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3682cab6a0e8f2d77f7777dd3da97e253ef81a99e305fded4ad5ca3eb00797a`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:07:57 GMT
ARG version=1.8.0_492.b09-2
# Sat, 18 Jul 2026 00:07:57 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:07:57 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:07:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Sat, 18 Jul 2026 01:12:37 GMT
CMD ["gradle"]
# Sat, 18 Jul 2026 01:12:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 18 Jul 2026 01:12:37 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Sat, 18 Jul 2026 01:12:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Sat, 18 Jul 2026 01:12:37 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 18 Jul 2026 01:12:37 GMT
WORKDIR /home/gradle
# Sat, 18 Jul 2026 01:12:37 GMT
ENV GRADLE_VERSION=7.6.6
# Sat, 18 Jul 2026 01:12:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Sat, 18 Jul 2026 01:12:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Sat, 18 Jul 2026 01:12:39 GMT
USER gradle
# Sat, 18 Jul 2026 01:12:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Sat, 18 Jul 2026 01:12:40 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8031f23ad334f4a473e5c4f4d4d3eee6657372e185729071450dbb2ccd425fe3`  
		Last Modified: Sat, 18 Jul 2026 00:08:16 GMT  
		Size: 118.0 MB (117953556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661daea15c0e1bb2122f9c9718bd80ca5f4865920657f69f3ef26c55e733c1c8`  
		Last Modified: Sat, 18 Jul 2026 01:13:11 GMT  
		Size: 86.0 MB (86034282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d6596581522f0e76cc5aae59b8d9777189e9ddebc97f7e5c99630adc705602`  
		Last Modified: Sat, 18 Jul 2026 01:13:07 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c626a1980fdf321f456b2bc7350fdb3e7ef5d17f3bf3e6ac382d4503e4abbf23`  
		Last Modified: Sat, 18 Jul 2026 01:13:12 GMT  
		Size: 128.5 MB (128469416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86e336adbb30631b7e5069c34a90e78a863bd9927a88a3b22c9d1795406c4e8`  
		Last Modified: Sat, 18 Jul 2026 01:13:08 GMT  
		Size: 59.5 KB (59528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:c667614bd28939d2d065bf4d93a65bc5335ca5b756c47db17fa8c3cd362ad025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11664681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de1e4356cb10b5701731be3d9d44570221efe6cd398ea2c236a28283d3df857`

```dockerfile
```

-	Layers:
	-	`sha256:1d8074c1d18c2648cc268803ffff251e61c34f670eaef24a010f71d59ad63a57`  
		Last Modified: Sat, 18 Jul 2026 01:13:08 GMT  
		Size: 11.6 MB (11643644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8aed95f272788d391c46c414a55cb30e384b180555f6135b33b154d01c5d5931`  
		Last Modified: Sat, 18 Jul 2026 01:13:07 GMT  
		Size: 21.0 KB (21037 bytes)  
		MIME: application/vnd.in-toto+json
