## `gradle:9-jdk21-corretto`

```console
$ docker pull gradle@sha256:cf4a702924cf2e3e71730f6c2759d4d791ab8bf3eddef05ea4425a2e985532a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:6078d36c5c3bb8c95225bc8c4156a01ab7f5f8cec0eb04b3a0cc3c5f07d9b2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.3 MB (463285021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5bcff0cc6feb7185304d469d5e052772abc624b62a358a6be9dc0da33d6bfee`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:28 GMT
ARG version=21.0.12.9-1
# Tue, 15 Sep 2026 00:12:28 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:28 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:28 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 15 Sep 2026 01:11:05 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:11:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:11:05 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:11:05 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 01:11:05 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:11:05 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:11:05 GMT
ENV GRADLE_VERSION=9.7.1
# Tue, 15 Sep 2026 01:11:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Tue, 15 Sep 2026 01:11:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:11:08 GMT
USER gradle
# Tue, 15 Sep 2026 01:11:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 01:11:09 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aabe83a1b6f319f59d1ab8b8de8ae739cd285e3baf9391f1ec0d1cb96d5075c`  
		Last Modified: Tue, 15 Sep 2026 00:12:50 GMT  
		Size: 170.4 MB (170436461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73d3d165db4b98836cf5643db8eba5ee75c71ac77e1e174b2753963e17679d4`  
		Last Modified: Tue, 15 Sep 2026 01:12:35 GMT  
		Size: 86.9 MB (86880967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcae8b7fd5c37bec127e834d778956909656906d3bb67a3187248aa436627d8`  
		Last Modified: Tue, 15 Sep 2026 01:11:39 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701afb9afd4bbdf6d1cfa7a5b1247f9d1268766a091ce6f3ecb20ba777285a1f`  
		Last Modified: Tue, 15 Sep 2026 01:12:40 GMT  
		Size: 151.4 MB (151354019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df97bad3c71eec887ae919392fb5d9f11f2586fac6be44145e6efdc17954dbf4`  
		Last Modified: Tue, 15 Sep 2026 01:11:39 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:cef25a75b81866be235bc0a7be58825783314f4d0a707ecd0968536e9ce66794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11416027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7532e2563e7aee009295cb2e4e6de181aad5625f9eb994611208040920d8cc72`

```dockerfile
```

-	Layers:
	-	`sha256:018c2a4186cc5d4381daabb57f090b58910e5bcd1db006df916e3e934e22a5ce`  
		Last Modified: Tue, 15 Sep 2026 01:11:59 GMT  
		Size: 11.4 MB (11394376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f1b0bd0a902e505fe58559130d6c0d411b53d0e7bf2d35ffd8f58d7b6a18295`  
		Last Modified: Tue, 15 Sep 2026 01:11:38 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:3c6a4a9f7b8655292b65efca9c470b68fb78b08907ffee9520023a45863f140f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.8 MB (459774637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da5bae88beb9f69ee8f141fa1f4de112094136159e7d6d680e2d4dc3c36786e`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:05 GMT
ARG version=21.0.12.9-1
# Tue, 15 Sep 2026 00:12:05 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:05 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:05 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 15 Sep 2026 01:11:00 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:11:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:11:00 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:11:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 01:11:00 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:11:00 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:11:00 GMT
ENV GRADLE_VERSION=9.7.1
# Tue, 15 Sep 2026 01:11:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Tue, 15 Sep 2026 01:11:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:11:03 GMT
USER gradle
# Tue, 15 Sep 2026 01:11:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 01:11:04 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5fb1f4dba5c82b104bac792d11a75a29127e69aa846bbd18b2ca5f728f655e`  
		Last Modified: Tue, 15 Sep 2026 00:12:28 GMT  
		Size: 168.7 MB (168685717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93a3ba7d3f21b08b0f957aabd45d527616b6089c2d4d0dd21f490527a7776805`  
		Last Modified: Tue, 15 Sep 2026 01:11:36 GMT  
		Size: 86.3 MB (86251312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbf7267b2e2e89de0fea0c88ceb64227f4c5cbbaf716010925be7f5b0e23035`  
		Last Modified: Tue, 15 Sep 2026 01:11:32 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6c88bfce3529a92b8f2bebfeed42efc96cdb042a1e69edea6128ecd6918496`  
		Last Modified: Tue, 15 Sep 2026 01:11:37 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9401f0aa444afc642e584e75f4fcf6b7c7a886ecfe9d0845c38987a1320d5bef`  
		Last Modified: Tue, 15 Sep 2026 01:11:32 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:1c1a914c3016c92620f8b84f9442d2ba6b4371c410c2618da06903f650bb3a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11415227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6cf692021bf5d887bdb913376b180c6fd94ae32801c9b9fcd99254e4d711e16`

```dockerfile
```

-	Layers:
	-	`sha256:5389cc6e1212c077f4636d8d0810e69fd7f25bbc0e632c30f3f79564898e47fa`  
		Last Modified: Tue, 15 Sep 2026 01:11:33 GMT  
		Size: 11.4 MB (11393379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be48154127c47f659c1c210a0cd88ea19f19513305e1fbb384d80cd4e56affa7`  
		Last Modified: Tue, 15 Sep 2026 01:11:32 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
