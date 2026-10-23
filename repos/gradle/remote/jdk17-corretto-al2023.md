## `gradle:jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:ba5cb1ca362333add022cffe37977793ce3db136f1938a263699fd2584c995b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:397b3d90300f3ab54c531a7fe5fbdbd39f0fd45189c066ee024261f5669c1835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.2 MB (459180141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468b7aa12ad9e7d0d9f6d5a79002c1b59e4450d1b99306ea6bedd78e495aefbf`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:00 GMT
ARG version=17.0.20.13-1
# Fri, 23 Oct 2026 01:10:00 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:00 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:00 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 23 Oct 2026 02:09:24 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:09:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:09:24 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:09:24 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
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
# Fri, 23 Oct 2026 02:09:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 02:09:27 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7b79035ffc412a6874ed4a9d4605e12bed37000174652a74018d15cccd9c7e`  
		Last Modified: Fri, 23 Oct 2026 01:10:20 GMT  
		Size: 157.2 MB (157175129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b34a2201e26ff459b6d9371300f70c9564caaf64abc828ff5362f7eccec44a1`  
		Last Modified: Fri, 23 Oct 2026 02:09:56 GMT  
		Size: 95.8 MB (95795203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fe058abb343de85c92250e18793c89e0388ccd92a4dd1945f0bfbb3abedc00`  
		Last Modified: Fri, 23 Oct 2026 02:09:53 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d578cd76a6479af8938e56c06aeda19149d2e413aea27e5a257a0a2abeacc22`  
		Last Modified: Fri, 23 Oct 2026 02:09:57 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28f7688f87b8f176bb9dec97b9e075f6a4d1ac66682146ebf50a4531e2d03c2`  
		Last Modified: Fri, 23 Oct 2026 02:09:53 GMT  
		Size: 25.6 KB (25601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:055f65757949a93cb1a326cc5fe86655f26dd267b5abedd589a497744cc76a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12682400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:893b5f99c727ed489b7fe957bacff02978083d5064a95a1ccae9a02f25492811`

```dockerfile
```

-	Layers:
	-	`sha256:edb3b140b186023187c1a703044f7eb5eb91396bc133694b8902ffd1ab407d57`  
		Last Modified: Fri, 23 Oct 2026 02:09:54 GMT  
		Size: 12.7 MB (12660903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7dea3829be5a7ab12e3b45a98ce6380fe518e9df061872c7273c5c3e633c770`  
		Last Modified: Fri, 23 Oct 2026 02:09:53 GMT  
		Size: 21.5 KB (21497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:963227b2030168841aa564b3876db20e26026d841b807c7212aa01c7a623e334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.3 MB (456281754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435554c60c9d0f80840ea103ada38733fb2cc83e3f7407955520eb96d3e416a6`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:08 GMT
ARG version=17.0.20.13-1
# Fri, 23 Oct 2026 01:10:08 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:08 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:08 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 23 Oct 2026 02:09:21 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:09:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:09:21 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:09:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:09:21 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:09:21 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:09:21 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 02:09:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 02:09:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:09:24 GMT
USER gradle
# Fri, 23 Oct 2026 02:09:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 02:09:25 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965bddf223d9fee8acbc70f35723cc95a5be9daab0ef3af34a23bff9da1b1d9f`  
		Last Modified: Fri, 23 Oct 2026 01:10:31 GMT  
		Size: 156.0 MB (155978532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66adc8f380d6de02ad254ec86b07d87e25e93a8fc296529c0f335f873a8a21d5`  
		Last Modified: Fri, 23 Oct 2026 02:09:59 GMT  
		Size: 95.2 MB (95209291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c5f08eabb0266eaee2190f2ac525f14f581ced092511bdb9e5af31377ac4da`  
		Last Modified: Fri, 23 Oct 2026 02:09:55 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15cf490693ab9e5e3da426b2793f9d237dd0f964ee28be7ff5e1fa1d0e9f6fd4`  
		Last Modified: Fri, 23 Oct 2026 02:10:00 GMT  
		Size: 151.5 MB (151533610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d9059d70eb2a6f15b4e4cd5c48daeed53cbeeaaeae9056ec927ce89552572fd`  
		Last Modified: Fri, 23 Oct 2026 02:09:55 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:d418645219d569b990f254bc6de1f0f695b3a49c209ac36b8ea58f592c508f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12681597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c62de21334ade666e2b21573ecefa5698ba3290ab9ca82313d28b60a1fbc82`

```dockerfile
```

-	Layers:
	-	`sha256:d1389c5beb64408217c0679b1d8578e5e19fb4ac247ec62158863fb7875d20f5`  
		Last Modified: Fri, 23 Oct 2026 02:09:56 GMT  
		Size: 12.7 MB (12659903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16e3dbada429212154618870136acbe275912b48c5bd20c1b2551182579529d6`  
		Last Modified: Fri, 23 Oct 2026 02:09:55 GMT  
		Size: 21.7 KB (21694 bytes)  
		MIME: application/vnd.in-toto+json
