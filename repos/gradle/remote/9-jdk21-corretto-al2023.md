## `gradle:9-jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:0dff2bdea7d4965d13abb0865041b29d5d3205bc7b3b130fbf64ecd0ddeabe65
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:7d261c0fe874e20e0836c632de4bfa728888372df5592120a87b34af81de5aed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.5 MB (472463600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d087088d853fb3271e1b24c11c1ea9732a6b5d2cdb3cd01104fc73f6c88ee9ed`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:44 GMT
ARG version=21.0.12.13-1
# Fri, 23 Oct 2026 01:10:44 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:44 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 23 Oct 2026 02:09:16 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:09:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:09:16 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:09:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:09:16 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:09:16 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:09:16 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 02:09:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 02:09:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:09:19 GMT
USER gradle
# Fri, 23 Oct 2026 02:09:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 02:09:19 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e06472a1f8c4fe29c2f0ef70dfacfb28e165aec0dff6b4c14750500a615c0e`  
		Last Modified: Fri, 23 Oct 2026 01:11:06 GMT  
		Size: 170.5 MB (170460438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74302875c7cd350ce5acb535f964bb70e4e63fcc066f5813a9ede2b412503c8`  
		Last Modified: Fri, 23 Oct 2026 02:09:52 GMT  
		Size: 95.8 MB (95793349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e3f4d6e54afaa7759f7fee913243039b60aca5d16dbde2325d5a5651bbba2d`  
		Last Modified: Fri, 23 Oct 2026 02:09:47 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d6ddc080824cc9e10b459bf63066997cc2060fe1fe1013a5b5e8ff152d3075`  
		Last Modified: Fri, 23 Oct 2026 02:09:53 GMT  
		Size: 151.5 MB (151533613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4e719caf1ccdf4930c607b1451c8ec5883617851874f3faacf2d960d4e2594`  
		Last Modified: Fri, 23 Oct 2026 02:09:47 GMT  
		Size: 25.6 KB (25603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:d58575164414df1c827b5e3885d27c617b1bf51cde3d8a9e85dc77c56b5d05f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12684980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99849ec1b11060f6397622849125de4b2eecca239464a5992d9e0d51dfefbdb`

```dockerfile
```

-	Layers:
	-	`sha256:023682bb2bccd6e80abf540f65137f1c8f34e4168d461ca1961d7a6fbf66684a`  
		Last Modified: Fri, 23 Oct 2026 02:09:48 GMT  
		Size: 12.7 MB (12663329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3045c697f6855b1d9fe3d3ba490c35216c34bfa721864cf2bf0684a113842041`  
		Last Modified: Fri, 23 Oct 2026 02:09:47 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:cf73fc42045fc183095c7e9d57ab9ba153b6e9d0d7411f969dfc7d2e40d13135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.0 MB (469049253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160e53c46d88636101275a0d491c5b03a7ae8de30e0ca284b64b73a83a5ac31b`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:43 GMT
ARG version=21.0.12.13-1
# Fri, 23 Oct 2026 01:10:43 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:43 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:43 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 23 Oct 2026 02:09:23 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:09:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:09:23 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:09:24 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:09:24 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:09:24 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:09:24 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 02:09:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 02:09:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:09:27 GMT
USER gradle
# Fri, 23 Oct 2026 02:09:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 02:09:28 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3020bea4d59090c77e0b78e7419748cd2a3cd8ab6da5f91d3208fd58c27977`  
		Last Modified: Fri, 23 Oct 2026 01:11:06 GMT  
		Size: 168.7 MB (168745541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ddd0d12f5bc54e35a0730302f93aec6ddf8ae3904ec999096f98ebed2bc93c`  
		Last Modified: Fri, 23 Oct 2026 02:10:04 GMT  
		Size: 95.2 MB (95209769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2257354960eb247c55c4d4799f82f6eb815fb3920d6095d727d30339fe8540b2`  
		Last Modified: Fri, 23 Oct 2026 02:09:58 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a21443549190b346ea4cd118f1fc39b9ac56faefc7cc003a3bd8cd7af062b6`  
		Last Modified: Fri, 23 Oct 2026 02:10:06 GMT  
		Size: 151.5 MB (151533609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d7a9ef1daa6b49e005140b6beb7ff195124655bf6fa12b7ee826289e8565776`  
		Last Modified: Fri, 23 Oct 2026 02:09:58 GMT  
		Size: 29.3 KB (29341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:d98be6f6483589c659bd8a5c3d87dd382663197d3f07fd6b75e7a35500e4a933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12684180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1a3c366659df95eac88e430e4216de4b3f86c3f8f651ef904fc2073615dc140`

```dockerfile
```

-	Layers:
	-	`sha256:36361028cf82432adf354ef9b4347e88de54a4ee6bba7da60f7cd12dbbea0111`  
		Last Modified: Fri, 23 Oct 2026 02:09:59 GMT  
		Size: 12.7 MB (12662332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:952e5a6b25ecc90b1e61ab40806f8f417851b5b25be0da59b4646803a32bd4c9`  
		Last Modified: Fri, 23 Oct 2026 02:09:58 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
