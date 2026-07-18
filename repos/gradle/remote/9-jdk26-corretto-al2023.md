## `gradle:9-jdk26-corretto-al2023`

```console
$ docker pull gradle@sha256:2044d9f084cb6e49e315abbcc033e784a8a00f4277168576cb1ff1fe0adc817a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk26-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:4c065abf91b3dd093f2b051fbf70aa75ddb8de5b13acc9e1aeaa7c40503c326c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.3 MB (475327224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fbdde42ec7e516f9bb4032b57394e88df85d5ddb4377c5471d3bea6c70c064c`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:19 GMT
ARG version=26.0.1.8-1
# Sat, 18 Jul 2026 00:13:19 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:19 GMT
# ARGS: version=26.0.1.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:19 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Sat, 18 Jul 2026 01:11:48 GMT
CMD ["gradle"]
# Sat, 18 Jul 2026 01:11:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 18 Jul 2026 01:11:48 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Sat, 18 Jul 2026 01:11:48 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Sat, 18 Jul 2026 01:11:48 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 18 Jul 2026 01:11:48 GMT
WORKDIR /home/gradle
# Sat, 18 Jul 2026 01:11:48 GMT
ENV GRADLE_VERSION=9.6.1
# Sat, 18 Jul 2026 01:11:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Sat, 18 Jul 2026 01:11:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Sat, 18 Jul 2026 01:11:51 GMT
USER gradle
# Sat, 18 Jul 2026 01:11:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Sat, 18 Jul 2026 01:11:51 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba43242e56112696d1cb18b5271fce482ca651ee751009e7264c5f2b51a59ec`  
		Last Modified: Sat, 18 Jul 2026 00:13:45 GMT  
		Size: 193.4 MB (193445802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba851545fc1dad449dc5b6bd5faa87419dcc0251aa10967f01834f57300008a`  
		Last Modified: Sat, 18 Jul 2026 01:12:24 GMT  
		Size: 86.7 MB (86683848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddceb79c36077ce6e6fceb6aabf07f1a6c31862d24acf9d72fe9e8e7022cc35`  
		Last Modified: Sat, 18 Jul 2026 01:12:20 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da3d477924f0278a098297bc5823a49ced35c11cf87d0ce9052c04cf8cf4e2d`  
		Last Modified: Sat, 18 Jul 2026 01:12:25 GMT  
		Size: 140.6 MB (140596022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d134fff63e5d14c8215ce470c357947bd2de5a0a9a2adeb55838ed95df18ed`  
		Last Modified: Sat, 18 Jul 2026 01:12:20 GMT  
		Size: 25.6 KB (25610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:b6dbe57bf38df06ff288da12e2adfde289a7a24902c406c060b9f6511ecc2f7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11414956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b18c9c55137c59eff5229fa4b641dc48979b9acf5da0bc4f991b8b040e245be`

```dockerfile
```

-	Layers:
	-	`sha256:9ec5762707f6c13d52779380b9f345d22b83daf479856b0b660b1d35edce0b7f`  
		Last Modified: Sat, 18 Jul 2026 01:12:21 GMT  
		Size: 11.4 MB (11393305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9b793569d689be0eabc987c97fa0b207d2cb71d3536fe84ae5e7f41547f66c9`  
		Last Modified: Sat, 18 Jul 2026 01:12:20 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk26-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:410d63e06e459ee1b166917c23390ecb40d620f9c0a82985a1f8b3801feb68ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.4 MB (471393712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ed49964b74e259d2bb60f96ff377b666211678057084cd93a5c33733502396`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:01 GMT
ARG version=26.0.1.8-1
# Sat, 18 Jul 2026 00:13:01 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:01 GMT
# ARGS: version=26.0.1.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:01 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Sat, 18 Jul 2026 01:11:46 GMT
CMD ["gradle"]
# Sat, 18 Jul 2026 01:11:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 18 Jul 2026 01:11:46 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Sat, 18 Jul 2026 01:11:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Sat, 18 Jul 2026 01:11:46 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 18 Jul 2026 01:11:46 GMT
WORKDIR /home/gradle
# Sat, 18 Jul 2026 01:11:46 GMT
ENV GRADLE_VERSION=9.6.1
# Sat, 18 Jul 2026 01:11:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Sat, 18 Jul 2026 01:11:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Sat, 18 Jul 2026 01:11:49 GMT
USER gradle
# Sat, 18 Jul 2026 01:11:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Sat, 18 Jul 2026 01:11:50 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e131bd407f067981cc132fae4b7c7a4ebefb638c3061a477c4c0fbdcae9f690`  
		Last Modified: Sat, 18 Jul 2026 00:13:27 GMT  
		Size: 191.3 MB (191268864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e581a7e7b19f3eec17ddf9a859c7fc86f550f33794732c1a51d69edc0f3482`  
		Last Modified: Sat, 18 Jul 2026 01:12:22 GMT  
		Size: 86.0 MB (86048572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d7c072fcf30b8bad47f9f585413258f1a79f2eda34c8ff4080046a71371fa4`  
		Last Modified: Sat, 18 Jul 2026 01:12:18 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d23f431f788e5be8912399c5d855e349000e3c2cf5b0b3b3c67bd22514362a5a`  
		Last Modified: Sat, 18 Jul 2026 01:12:23 GMT  
		Size: 140.6 MB (140596023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f9581e82075350f9728144035d8a3485e10a689bc7f29829f70ac7613102be5`  
		Last Modified: Sat, 18 Jul 2026 01:12:19 GMT  
		Size: 29.3 KB (29341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:ab624f0f72280a691affe5cfb3bf868a433cc1192e3ef89c44e8dd358448e2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11414162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181c6bd29374d9c81dc4c5c3ad8a608e5eb3455a251200e9b552c32a277b0dd8`

```dockerfile
```

-	Layers:
	-	`sha256:c45988456dfd9c02c1291df4558c3e5a60c6a30c5114126c916794cccab47f86`  
		Last Modified: Sat, 18 Jul 2026 01:12:19 GMT  
		Size: 11.4 MB (11392314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3c0bded8edd34c5cc4ddb2faf91d343c01f1a5ace0aa00856e44376d088f33b`  
		Last Modified: Sat, 18 Jul 2026 01:12:19 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
