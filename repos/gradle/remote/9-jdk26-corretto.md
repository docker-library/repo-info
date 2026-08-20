## `gradle:9-jdk26-corretto`

```console
$ docker pull gradle@sha256:c119fe3a671bad43d5efbde64646e811d138f70e972255ddacd25b86bc8355a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk26-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:5a18a559127e6a2e1350efafcdd289494c0e076246a0c8cf9d404a7d419e463b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.5 MB (486470471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1825edfe6091b7982d73e5259b2072faf0bb6da075d9a0d3ef6b47f7a3de21f0`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:21:52 GMT
ARG version=26.0.2.11-1
# Thu, 20 Aug 2026 17:21:52 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:21:52 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Thu, 20 Aug 2026 18:02:23 GMT
CMD ["gradle"]
# Thu, 20 Aug 2026 18:02:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 20 Aug 2026 18:02:23 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 20 Aug 2026 18:02:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 20 Aug 2026 18:02:23 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 20 Aug 2026 18:02:24 GMT
WORKDIR /home/gradle
# Thu, 20 Aug 2026 18:02:24 GMT
ENV GRADLE_VERSION=9.7.1
# Thu, 20 Aug 2026 18:02:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Thu, 20 Aug 2026 18:02:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 20 Aug 2026 18:02:26 GMT
USER gradle
# Thu, 20 Aug 2026 18:02:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 20 Aug 2026 18:02:26 GMT
USER root
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed34a0bf0b57352c5c09e7abfa2bdd6b6d8849488b8837eee054f58cc8b1bee`  
		Last Modified: Thu, 20 Aug 2026 17:22:18 GMT  
		Size: 193.6 MB (193619485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c9cf8adf53eb41823e4dc5fc4cce19e7ad79d78eef8a3d793849e6fd573333`  
		Last Modified: Thu, 20 Aug 2026 18:02:57 GMT  
		Size: 86.9 MB (86885839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd76da6bd47cb4098b0ae05ceb6ea92cf2d171b04991a1532d7efc8bc62d01e7`  
		Last Modified: Thu, 20 Aug 2026 18:02:53 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0c467d2e54814f814df054c97fb97cd17c076353b116e8ab37a47c34496cc5`  
		Last Modified: Thu, 20 Aug 2026 18:02:58 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7861e9d7a3609c9a990e6d82fb77735c337a7fb34e36a7ec61d8b8d44c4495e`  
		Last Modified: Thu, 20 Aug 2026 18:02:53 GMT  
		Size: 25.6 KB (25608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:b17acd12eb68a8112a2e0d4253a659256f40374259e309f2531fc6f2bb41f7ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11423189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa3770df440977ccd2ea8ff9ae1810d92c0a3d6d5137735c82453c80b2b6512`

```dockerfile
```

-	Layers:
	-	`sha256:bb6f17564c3a898b7e105f5550529be84c7f6e89806f95d95df0a4b1a493df45`  
		Last Modified: Thu, 20 Aug 2026 18:02:54 GMT  
		Size: 11.4 MB (11401538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af493f2ff6ee1bbe8bc6bccfc82ff8e8592ee32418578bed6581b1d875165828`  
		Last Modified: Thu, 20 Aug 2026 18:02:53 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk26-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:348f571048efa4a2284bc999edff2f78968e3fe66befb8fcfab922dc162939b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.5 MB (482524332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b7a118fe9712328a661d064c67e0a6f562a9aa2f4666e5089a7f1e5d5018d9`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:18:52 GMT
ARG version=26.0.2.11-1
# Thu, 20 Aug 2026 17:18:52 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:18:52 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:18:52 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Thu, 20 Aug 2026 17:58:25 GMT
CMD ["gradle"]
# Thu, 20 Aug 2026 17:58:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 20 Aug 2026 17:58:25 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 20 Aug 2026 17:58:25 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 20 Aug 2026 17:58:25 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 20 Aug 2026 17:58:25 GMT
WORKDIR /home/gradle
# Thu, 20 Aug 2026 17:58:25 GMT
ENV GRADLE_VERSION=9.7.1
# Thu, 20 Aug 2026 17:58:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Thu, 20 Aug 2026 17:58:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 20 Aug 2026 17:58:28 GMT
USER gradle
# Thu, 20 Aug 2026 17:58:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 20 Aug 2026 17:58:29 GMT
USER root
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4ef2adf40ba15c5374ab12f7e8cea0c02a7553e035fa716ea9c492954e63117`  
		Last Modified: Thu, 20 Aug 2026 17:19:18 GMT  
		Size: 191.4 MB (191440005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f11f580883790ae6b380606dce31816a6e4f37d0cbaad5c2bee1e41fc49234f`  
		Last Modified: Thu, 20 Aug 2026 17:59:01 GMT  
		Size: 86.2 MB (86248391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1136c6360515d743305e21cfa2d3318199e69cfd737cc151c54ee081ab35166d`  
		Last Modified: Thu, 20 Aug 2026 17:58:58 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34b960eb5e81fd645076fa2b37b691584aa05e8673997e852f8333222bbe9ee`  
		Last Modified: Thu, 20 Aug 2026 17:59:02 GMT  
		Size: 151.4 MB (151354013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151a66f9d070809c7ddba68aa8cefba9f461212a1d9eb869b16361dc5de7a4a4`  
		Last Modified: Thu, 20 Aug 2026 17:58:58 GMT  
		Size: 29.4 KB (29355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:2b98090f53477afd640fcb8f6a2762f7434a2e62acf0be4482fcef5d95b02e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11422395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213f090c2ddc8b10754aee2357e9c1043b3ac66f9bbd9cb1473a507f1ee89e01`

```dockerfile
```

-	Layers:
	-	`sha256:9be3c347b6bcc222b8fee45017907d3b9010d1a1dcb28c294fd69f71aa9131df`  
		Last Modified: Thu, 20 Aug 2026 17:58:58 GMT  
		Size: 11.4 MB (11400547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fb908cda6fb0b24afcde8fca4a36243d5e1b4dda66c2430b1b8cd6a75b39ff5`  
		Last Modified: Thu, 20 Aug 2026 17:58:57 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
