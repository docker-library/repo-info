## `gradle:jdk26-corretto-al2023`

```console
$ docker pull gradle@sha256:181cd23546d112207d155ca07780a16912046b4c95fe02c3d5fd28fcac687f8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk26-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:6e649ba1e727678c83ee375bb4ad88aabb242aa04a6cc83fbff256e2c320d921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.5 MB (475505793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:530528c59893df32f4f60b4db868f7537753b77c44575b13547fb5991433cc84`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:38 GMT
ARG version=26.0.2.10-1
# Thu, 23 Jul 2026 23:13:38 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:38 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:38 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Fri, 24 Jul 2026 00:12:06 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:12:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:12:06 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:12:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:12:06 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:12:06 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:12:06 GMT
ENV GRADLE_VERSION=9.6.1
# Fri, 24 Jul 2026 00:12:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Fri, 24 Jul 2026 00:12:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:12:09 GMT
USER gradle
# Fri, 24 Jul 2026 00:12:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 24 Jul 2026 00:12:09 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90945cce337bd671460d73dbf71c0421b1916eb2ba5c4c46290b6f2488bc876`  
		Last Modified: Thu, 23 Jul 2026 23:14:02 GMT  
		Size: 193.6 MB (193632726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef5ff34af00b3e267f3244f127bbfb803a1254d63cbee9a656467ecf26f1b18e`  
		Last Modified: Fri, 24 Jul 2026 00:12:41 GMT  
		Size: 86.7 MB (86675498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468acd28694685c68a1fd06913eb57be6126e623934b8539eded5698a8934cd3`  
		Last Modified: Fri, 24 Jul 2026 00:12:37 GMT  
		Size: 1.6 KB (1641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0516b78fe8df36eba5c6db4a7e4ce67e6db91d1511ad5cfbc1821415fcffd6e`  
		Last Modified: Fri, 24 Jul 2026 00:12:41 GMT  
		Size: 140.6 MB (140596023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3996915de7ac33fb6b9148649f0d9ab9cfd84186219ac84aaaeaf7b3a6fcceb`  
		Last Modified: Fri, 24 Jul 2026 00:12:36 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:6015bd22aa3cb7fbe34797ee588aaaa2047a38dbaa903b672b98f1170aa6b2d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11414966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add98f295783f29cd0824ac0599ad67c43bbf5026d4f54a6160b246a82a0c1a4`

```dockerfile
```

-	Layers:
	-	`sha256:9b3fb439ef8759b1987361d68dfabf223c3c23f4200aaf16c5b2ee8cd8440975`  
		Last Modified: Fri, 24 Jul 2026 00:12:38 GMT  
		Size: 11.4 MB (11393315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb6577b872f44d521cfe221c2fd59f93ba4944dda5cb3bc8ed8a6e5d736edb64`  
		Last Modified: Fri, 24 Jul 2026 00:12:37 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:0b248a056a7c7e180ca44b471315fc9900751f93f964cba5ce57c9d55c0879ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.6 MB (471574192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a637f5b3c5b46dcf15452672cbed2c0152da02d870e90fc79008e0492a36349`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:15:29 GMT
ARG version=26.0.2.10-1
# Thu, 23 Jul 2026 23:15:29 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:15:29 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:15:29 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:15:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Fri, 24 Jul 2026 00:11:50 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:11:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:11:50 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:11:50 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:11:50 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:11:50 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:11:50 GMT
ENV GRADLE_VERSION=9.6.1
# Fri, 24 Jul 2026 00:11:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Fri, 24 Jul 2026 00:11:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:11:53 GMT
USER gradle
# Fri, 24 Jul 2026 00:11:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 24 Jul 2026 00:11:53 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d0d160aaf684951ecf6872e94f66a518a5d5c37702bdcecbfe4ef7fb16efde`  
		Last Modified: Thu, 23 Jul 2026 23:15:55 GMT  
		Size: 191.4 MB (191448855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c58b0e49c46eab03990bd7a78bb0d60bae64f4c2f4adba92c7508832559698`  
		Last Modified: Fri, 24 Jul 2026 00:12:27 GMT  
		Size: 86.0 MB (86049118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ae2801e449f3e6d13c7f60401bb0e8b3196eb35c022fb0790ca2c26daebeff`  
		Last Modified: Fri, 24 Jul 2026 00:12:23 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80356f3dced5be2f71b5a63eb7203e2a74742e873d873627920b2e62f7fdea0`  
		Last Modified: Fri, 24 Jul 2026 00:12:28 GMT  
		Size: 140.6 MB (140595972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:516266873fcc68b9e3865406e9297809605e0b038bde8cfdd7b93b86f9478fb0`  
		Last Modified: Fri, 24 Jul 2026 00:12:23 GMT  
		Size: 29.3 KB (29334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:e44b786880482f88a8895a18bf250a592dcec15acefc674bb5986924c40c15e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11414172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0fb95f90460ef8cccb0b3ac1adf02eb5fc003e73caed87d9d835777fe5c4727`

```dockerfile
```

-	Layers:
	-	`sha256:d1cb00c792656baaa04c6026d1cc82742a33f52ba6d595ecd9d8bdcbc0594d90`  
		Last Modified: Fri, 24 Jul 2026 00:12:23 GMT  
		Size: 11.4 MB (11392324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08aa156445ba5b3b0ac8459e02afc8e3e7e4448c7c8e45601f544949b49d369b`  
		Last Modified: Fri, 24 Jul 2026 00:12:23 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
