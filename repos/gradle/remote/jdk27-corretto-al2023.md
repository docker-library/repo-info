## `gradle:jdk27-corretto-al2023`

```console
$ docker pull gradle@sha256:7740d4ee00558d3e7f85a3a0df5f8a2ec84ced3b098f15a132f059c0be0e4660
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk27-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:def50822cec4ad421564107e86fb78b91f8a899f8313302d6fae21f04f26f162
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.6 MB (493578530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbae9c7ed78c24126232b32def232815871b9ade78ac9cf6c54c4c7282f212d`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:50 GMT
ARG version=27.0.0.35-1
# Mon, 05 Oct 2026 18:44:50 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:50 GMT
# ARGS: version=27.0.0.35-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:50 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 08 Oct 2026 16:41:43 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:41:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:41:43 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:41:43 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:41:43 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:41:43 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:41:43 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:41:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:41:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:41:46 GMT
USER gradle
# Thu, 08 Oct 2026 16:41:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:41:47 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9fecedb083f8db9b0efc4e1a78119cd12e20a5b54ece0868cf0b84ec1b2fa9`  
		Last Modified: Mon, 05 Oct 2026 18:45:13 GMT  
		Size: 191.6 MB (191600990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cdbda6c4ce8c3baf355390f3ac65be58a0b459aa6df7cd373f870ecf053f33`  
		Last Modified: Thu, 08 Oct 2026 16:42:18 GMT  
		Size: 95.8 MB (95785866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:212a5061fc9c6e5f0f1db9c64321b16119620d374ea97293e3629568482b6614`  
		Last Modified: Thu, 08 Oct 2026 16:42:14 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb9509de7efc1551f93f65ceb9296c35a7c3d6b7d81fd70d85ce9cdf178137a`  
		Last Modified: Thu, 08 Oct 2026 16:42:19 GMT  
		Size: 151.5 MB (151533609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b426cdade663b90413fd11bb4afd0c6c8f5e816b609a461a017bbc706269573`  
		Last Modified: Thu, 08 Oct 2026 16:42:14 GMT  
		Size: 25.6 KB (25618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:66397c97e0b80da15bbd3d78c4a1cc90f80193d5ae9829cb431db8711f938e8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12688208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b811e1d70ae162bd016154c8036e0347b45f6d94e5f481c0e87814ab3daf7f0`

```dockerfile
```

-	Layers:
	-	`sha256:11b394a0c063d189f68a613b3e201fd2839c0f33aa4cf4d53b1f17db5fd723be`  
		Last Modified: Thu, 08 Oct 2026 16:42:15 GMT  
		Size: 12.7 MB (12666557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be5988dbd4ad27443811f0fc186cfbd87d7a666f305c342cd57a7d6b1210c7a9`  
		Last Modified: Thu, 08 Oct 2026 16:42:14 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:727ab4e51d7aeb7a711f4fbe34056ab241d6110f38209afade1f23b370154afa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.7 MB (489739456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e991c8e7d00fb7e5a2fc2706e1083994aa1fb20f63bb1cccb89b9deb81cd76`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:09 GMT
ARG version=27.0.0.35-1
# Mon, 05 Oct 2026 18:44:09 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:09 GMT
# ARGS: version=27.0.0.35-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:09 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 08 Oct 2026 16:41:54 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:41:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:41:54 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:41:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:41:54 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:41:54 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:41:54 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:41:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:41:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:41:57 GMT
USER gradle
# Thu, 08 Oct 2026 16:41:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:41:58 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea642f3ab24024dfd9a45a27b54f0911a3224cb29a60f6e27a4ed65eb137162`  
		Last Modified: Mon, 05 Oct 2026 18:44:34 GMT  
		Size: 189.5 MB (189461229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7a8ab3f250416f0fd148451953e236bfe2befcdd48160268b48bbda719351f`  
		Last Modified: Thu, 08 Oct 2026 16:42:36 GMT  
		Size: 95.2 MB (95209205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b55eecc13d33fac2e083485e40b9e30e527e1d416234eb208e04631473bdec`  
		Last Modified: Thu, 08 Oct 2026 16:42:29 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a9f7a7deced3d42a3dc9e91bba4fbaed7413997cd179762051c17ff71379d4`  
		Last Modified: Thu, 08 Oct 2026 16:42:37 GMT  
		Size: 151.5 MB (151533611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f013aa23380d9d690a0ed1f6e6405a9735f5471b48cf19b02a84b13a9c95a82f`  
		Last Modified: Thu, 08 Oct 2026 16:42:29 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:97841f011cb42bf78e16fe224813fd01898a7d29e7188c2b317e03656271b1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12687409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ce5cf0fd41f67235fe35728f330f7237d616d292cead576af043429da9d5bb2`

```dockerfile
```

-	Layers:
	-	`sha256:1d10c85d05c93df39d503d0fd37f99d50f26f1072b88d48a29a6a9c4a49f8f3e`  
		Last Modified: Thu, 08 Oct 2026 16:42:30 GMT  
		Size: 12.7 MB (12665561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30cdd0bc241313c5be7b47a135673c10d6d8fc07440d1eb3596c9d79c4813450`  
		Last Modified: Thu, 08 Oct 2026 16:42:28 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
