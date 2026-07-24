## `gradle:jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:4847ff8cad8fa8f76999a95194275331ef25e589ccba9e04cf233a89948e92d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:ac842ba94e3ba6c0ed57f1de82937493dfb21b8fc570f4f6c6b4c384258a83be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.4 MB (397441107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48bedfa373fc7e086352c0df38a7706cd5551cbd92f9608abbaadec6882e5452`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:10:47 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:10:47 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:10:47 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 24 Jul 2026 00:12:29 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:12:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:12:29 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:12:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:12:29 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:12:29 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:12:29 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 24 Jul 2026 00:12:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 24 Jul 2026 00:12:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:12:32 GMT
USER gradle
# Fri, 24 Jul 2026 00:12:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 24 Jul 2026 00:12:32 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe57f5f97fde731751f395e310a2724bdce42a4757204a447a89e087c3e4198`  
		Last Modified: Thu, 23 Jul 2026 23:11:06 GMT  
		Size: 118.1 MB (118079398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99783d4c92554fd382ad15104f747095d7648a8d7e98ba230d55d291394db66`  
		Last Modified: Fri, 24 Jul 2026 00:13:04 GMT  
		Size: 86.7 MB (86662333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1195344bbbf3db5afad5a383b147fdf47040b2002b318bff00b7a46ff2ef8982`  
		Last Modified: Fri, 24 Jul 2026 00:13:00 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39a3cd7f91a9a3fc19448b2896e68957970522a82983cc121744d3ab527b0a6`  
		Last Modified: Fri, 24 Jul 2026 00:13:05 GMT  
		Size: 138.1 MB (138068535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471d167be48961bc8ff82827202588689d7956b18be4d1eb5ba1bc0c82e5c3dc`  
		Last Modified: Fri, 24 Jul 2026 00:13:00 GMT  
		Size: 54.9 KB (54898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:b8cbf2b0cd3d45ba554c447ab1462e2d2bdc2fca7cb84bd890b2935fe942a39a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11754979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e84800777a76241eeb642ffc0d9c55bdcf969393655efb306278a1fa9883705`

```dockerfile
```

-	Layers:
	-	`sha256:9fc4e5ed47e97f8e518a0fa0ee3fb6a24cf7c73bb988a4eeabe15c7e4d31b23d`  
		Last Modified: Fri, 24 Jul 2026 00:13:01 GMT  
		Size: 11.7 MB (11733326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5efd80784b5776e815ea5019cf2fce2e847276ae1e07334bf89871e07985eebb`  
		Last Modified: Fri, 24 Jul 2026 00:13:00 GMT  
		Size: 21.7 KB (21653 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9afa01f9eb8ad7a4fded82875c446a120332e6861b5cb578b5bc455840020df9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.6 MB (395578842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b58c804f58a9245f652861455d8765f400278e3a6df8c3a90e09d633ae4bf6cc`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:25 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:12:25 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:12:25 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 24 Jul 2026 00:12:10 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:12:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:12:10 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:12:10 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:12:10 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:12:10 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:12:10 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 24 Jul 2026 00:12:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 24 Jul 2026 00:12:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:12:13 GMT
USER gradle
# Fri, 24 Jul 2026 00:12:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 24 Jul 2026 00:12:13 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e6fc3bc6b9cb04d504bc7d30c32ed9dcdcc8250eb8cff05726547a63efcbee`  
		Last Modified: Thu, 23 Jul 2026 23:12:45 GMT  
		Size: 118.0 MB (117965689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58dd177e5d19b54577c8cb441922c28e5f4bb4ea8e4e35682fd146d2797b251`  
		Last Modified: Fri, 24 Jul 2026 00:12:45 GMT  
		Size: 86.0 MB (86034179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cbd60ea6734aa114554146abb7c5cd4a5419653beeb6fb798b6a5933770734`  
		Last Modified: Fri, 24 Jul 2026 00:12:42 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508f73134af1aca681dcc538d6ca22d87b467091aeb3849f92763f9981c2abb7`  
		Last Modified: Fri, 24 Jul 2026 00:12:47 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28702624a04622f1a28672ef3d226a41ce77dff38b6f2d8468deffb32908fd7d`  
		Last Modified: Fri, 24 Jul 2026 00:12:43 GMT  
		Size: 59.5 KB (59528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:49b1da00ca113b821be598d53ff0a395880cca419b69a616e348041f9c7421d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11755500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b9e86f8f69ff44052d452840ab9dd95704be6b6a4672484740df7b5b258335`

```dockerfile
```

-	Layers:
	-	`sha256:a284e8354f38a87901f8d7375bdd8dbdd9a866d9ef5ada7b48c1f54dc77d756a`  
		Last Modified: Fri, 24 Jul 2026 00:12:42 GMT  
		Size: 11.7 MB (11733649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:647738612c88093d1fb7b18a2504a1236ed63f33a6500b7e4321d21f08e2fb85`  
		Last Modified: Fri, 24 Jul 2026 00:12:42 GMT  
		Size: 21.9 KB (21851 bytes)  
		MIME: application/vnd.in-toto+json
