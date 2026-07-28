## `gradle:8-jdk11-corretto-al2023`

```console
$ docker pull gradle@sha256:61c2fadfbe0646d7d1514c3fd0e5fb46b0fbdedb97f3d4ebba93411306c8069b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk11-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:e86c73f559f379fabe17773679d284f4a9bf3d94255cab5bddde610306687b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.8 MB (432846788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb3d38840e884d8ed37f203cdec127aa46580f0fd28008ff3599a6c0402f17f`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:15 GMT
ARG version=11.0.32.9-1
# Mon, 27 Jul 2026 21:36:15 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:15 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Mon, 27 Jul 2026 22:02:06 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:02:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:02:06 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:02:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:02:06 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:02:06 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:02:06 GMT
ENV GRADLE_VERSION=8.14.5
# Mon, 27 Jul 2026 22:02:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Mon, 27 Jul 2026 22:02:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:02:09 GMT
USER gradle
# Mon, 27 Jul 2026 22:02:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 27 Jul 2026 22:02:09 GMT
USER root
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5cd77d8e8114d946b18d3ff4f9567d42b7fe42be61f7367c0c74edf322439fd`  
		Last Modified: Mon, 27 Jul 2026 21:36:36 GMT  
		Size: 153.5 MB (153470148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80987a01d1ce12b29616120d8cc005cecc0b9dfb846eba45cda04eb9fd2cbbef`  
		Last Modified: Mon, 27 Jul 2026 22:02:37 GMT  
		Size: 86.7 MB (86678842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a18beac4cb6e4430b292310e5c7f98323b67c420004793e0777cb97f603952`  
		Last Modified: Mon, 27 Jul 2026 22:02:34 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4168183e1673078692c494d6636bddf280104894e4c7eb4a81dd01d4c899059b`  
		Last Modified: Mon, 27 Jul 2026 22:02:39 GMT  
		Size: 138.1 MB (138068531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95533ed95713125f947948b004146c68253298fed55693357719ef1f319f6af1`  
		Last Modified: Mon, 27 Jul 2026 22:02:34 GMT  
		Size: 54.9 KB (54905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:8ea5a9f292ba52dec108a67a9a96ee6d4ee92ac3a109b576943e607837c76d9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11403325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a066bd8b9ad9307961eb1f69c33de4f911d3658923b9fab0bcb1995da53e9dca`

```dockerfile
```

-	Layers:
	-	`sha256:9d1754f4897cce51b6abef437632fb319d2001bc44b1e7830a8e0d136228443c`  
		Last Modified: Mon, 27 Jul 2026 22:02:35 GMT  
		Size: 11.4 MB (11381660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56404980201a24e69ad74032b77dbf361f9693a3d5f919c6faa398f7e9328a4f`  
		Last Modified: Mon, 27 Jul 2026 22:02:34 GMT  
		Size: 21.7 KB (21665 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:97fef954de42330aa7ef3dcd41610b71feedf3e7f973ae99b1e424ec1607b2ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.7 MB (429665742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f01137e4d7fe87652cadf125031b883cc41bff2ccbf4c8fc2e255597728be888`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:34 GMT
ARG version=11.0.32.9-1
# Mon, 27 Jul 2026 21:35:34 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:34 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Mon, 27 Jul 2026 22:00:26 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:00:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:00:26 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:00:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:00:26 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:00:26 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:00:26 GMT
ENV GRADLE_VERSION=8.14.5
# Mon, 27 Jul 2026 22:00:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Mon, 27 Jul 2026 22:00:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:00:28 GMT
USER gradle
# Mon, 27 Jul 2026 22:00:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 27 Jul 2026 22:00:29 GMT
USER root
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4137c23a1dd4741809824194e95a1238b180b8ca81201f27433566c2325e9695`  
		Last Modified: Mon, 27 Jul 2026 21:35:56 GMT  
		Size: 152.0 MB (152043109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aac3d82b3034911d01ae6bf6c1cb924314907d87a2012c9567ca0a064c4afb8`  
		Last Modified: Mon, 27 Jul 2026 22:01:03 GMT  
		Size: 86.0 MB (86043278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4240db15af8317e4b3aa3e4d94dc50eb7b6ab6f02ab9c26d350c53d03380358`  
		Last Modified: Mon, 27 Jul 2026 22:00:57 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da5c869e9957ab6dcb0f71a33033e065342583640bb0c6b354462e0c108a3511`  
		Last Modified: Mon, 27 Jul 2026 22:01:05 GMT  
		Size: 138.1 MB (138068531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551205bec9839ca5aed727fe6a8578cf9223c66773ff0a4dcdf41df577f7cafc`  
		Last Modified: Mon, 27 Jul 2026 22:00:58 GMT  
		Size: 59.5 KB (59538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:0224b8098ae0234d202186669467fd4568fd7085a8fc037724a8d8295dd18b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11403365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9dc362d1974a379f05dd030e3ed4da292cf1bd943f85c1acaae56d51bac31ad`

```dockerfile
```

-	Layers:
	-	`sha256:5d259550d94de8431d5d28ff0b2d7d78bfb0f07d4d5822eb8a1b4072e84ec99a`  
		Last Modified: Mon, 27 Jul 2026 22:00:58 GMT  
		Size: 11.4 MB (11381503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:799dce0e03749c5d0e198fbd7e6765b999d428535b1b9d71fc5ccac49d85b6fc`  
		Last Modified: Mon, 27 Jul 2026 22:00:57 GMT  
		Size: 21.9 KB (21862 bytes)  
		MIME: application/vnd.in-toto+json
