## `gradle:jdk25-corretto`

```console
$ docker pull gradle@sha256:0ef80a2e8a924bc0ca9e4b51ddf41020344edbf2389d992f7d240a1f2131781b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk25-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:8d07b335efa79c956dfd9cec317ac8bb5e304dfcdfc99bba2619f1ff455436dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.5 MB (491489416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79080c30129f446a30069c1daf5151e5278eaaac1ac84ec5777009135c418430`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:29:05 GMT
ARG version=25.0.4.11-1
# Wed, 21 Oct 2026 23:29:05 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:29:05 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:29:05 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:29:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 22 Oct 2026 00:16:07 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 00:16:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 00:16:07 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 00:16:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 00:16:07 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 00:16:07 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 00:16:07 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 22 Oct 2026 00:16:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 22 Oct 2026 00:16:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 00:16:11 GMT
USER gradle
# Thu, 22 Oct 2026 00:16:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 00:16:12 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4e6708bb3c2eb8b1ac23333e7d4d26ff5097ca6cf894aaaab1211de7796a98`  
		Last Modified: Wed, 21 Oct 2026 23:29:29 GMT  
		Size: 189.5 MB (189508297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae63b86a3676c1979b3b2a170f7c17fd81442f491ed16521af6a7a2815bcb75`  
		Last Modified: Thu, 22 Oct 2026 00:16:57 GMT  
		Size: 95.8 MB (95789444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc1ff17bc0e8eebc41678c774e2654f572e2ca315a1517d41948ba38c2db418`  
		Last Modified: Thu, 22 Oct 2026 00:16:41 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69893c7ec5599e5967c14403ff04ae95d6f0e68b99b3599c1e2127f29b9bcbc0`  
		Last Modified: Thu, 22 Oct 2026 00:17:04 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24498f15950897544a5a5498f4683cb7f4dff8f2d53850b5d6fc1d3bc6e2967e`  
		Last Modified: Thu, 22 Oct 2026 00:16:41 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:57fa6fa2d458bf15437caafe54fa448da727d3a928b4830b15fe7a09f21f6b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12697670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feb3aec4d9cae606e3763139ed982a5814ca5226c40ac0f418d9a8d1bcfc81da`

```dockerfile
```

-	Layers:
	-	`sha256:b6fc5520d75396c7732c1aa9d1635b4c4591e5a1e1149a0b2534bcd3053ca17f`  
		Last Modified: Thu, 22 Oct 2026 00:16:42 GMT  
		Size: 12.7 MB (12675402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15559f44d7987e83de2cb7bf0207a71cf7bb94591526163d028592158583850f`  
		Last Modified: Thu, 22 Oct 2026 00:16:41 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:5843b67d6ae1350b60f6f762164bdec6bb5ce1d40ea2f116eefddaf38673a9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.7 MB (487679797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d508eb1740a55ed2623e7c63b400f221c4c6db1162308682040005a2e022738e`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:18 GMT
ARG version=25.0.4.11-1
# Wed, 14 Oct 2026 17:08:18 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:18 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 20 Oct 2026 17:51:50 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:51:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:51:50 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:51:50 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:51:50 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:51:50 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:51:50 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:51:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:51:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:51:54 GMT
USER gradle
# Tue, 20 Oct 2026 17:51:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:51:54 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c310118339d3542c48a0583b5af7aa6497b43a4e3e8f8615d25822b0de6042c8`  
		Last Modified: Wed, 14 Oct 2026 17:08:44 GMT  
		Size: 187.4 MB (187405086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c9c7ca3aae32af52fba3498a0b20da2e5028c4f2e9083e723d207314acf00f`  
		Last Modified: Tue, 20 Oct 2026 17:52:29 GMT  
		Size: 95.2 MB (95205690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e8bd5063dee3c5d341af09ed925bfeddc152f6b9b9cbffe4d895be97ea1b21`  
		Last Modified: Tue, 20 Oct 2026 17:52:25 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09dbb45c45a1556df1863dc5a47b398527cbff81d4a18eedac77c0defc642b13`  
		Last Modified: Tue, 20 Oct 2026 17:52:31 GMT  
		Size: 151.5 MB (151533610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72509dd1f444bc0afbfd1ddba213b1ede0c46b31acfba2a1130b32af7136ed3`  
		Last Modified: Tue, 20 Oct 2026 17:52:26 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:65b5764f621f607a873331bbfae09af6620e778f5cdf11beaec6c5b45187130e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12696930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69111871401eaeaeb35f40a369e885aff934cf15feda2ac3e48649b723fdd441`

```dockerfile
```

-	Layers:
	-	`sha256:9cab4b636de6fc83c4058d87a8c68ae4c1951002a4a454ad46ac8bd001cb70ac`  
		Last Modified: Tue, 20 Oct 2026 17:52:26 GMT  
		Size: 12.7 MB (12674440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b7e951402b4c3fe88b2762e267331295d05e4628591375af6ac894196750652`  
		Last Modified: Tue, 20 Oct 2026 17:52:26 GMT  
		Size: 22.5 KB (22490 bytes)  
		MIME: application/vnd.in-toto+json
