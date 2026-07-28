## `gradle:9-jdk17-corretto`

```console
$ docker pull gradle@sha256:7df1f37feb618e241290bb22cbbc7896b440734b7769b667812322b0f9b10c6e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:a5c1ba10bcb10b8c6878407df9756dcaf4630e70cdae80ab538ee33937c25438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.0 MB (439016307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f3f941d44f6dda827f724651b3d39cd3425a6a4d480b6fb885f1b8d982a446d`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:36 GMT
ARG version=17.0.20.8-1
# Mon, 27 Jul 2026 21:36:36 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:36 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:36 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 27 Jul 2026 22:01:37 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:01:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:01:37 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:01:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:01:37 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:01:37 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:01:37 GMT
ENV GRADLE_VERSION=9.6.1
# Mon, 27 Jul 2026 22:01:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Mon, 27 Jul 2026 22:01:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:01:39 GMT
USER gradle
# Mon, 27 Jul 2026 22:01:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 27 Jul 2026 22:01:40 GMT
USER root
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7b240575f47ae80ef1903e099015f3267246f58572cdca17f0148171030381`  
		Last Modified: Mon, 27 Jul 2026 21:36:57 GMT  
		Size: 157.1 MB (157140940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed839476456a4b9e4d5b7c3743a474b37a14d1299c705652e4d56916fce9706`  
		Last Modified: Mon, 27 Jul 2026 22:02:09 GMT  
		Size: 86.7 MB (86679411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4656dc98c45017ab68c3e3b15a24eee9301fc68b1c193ed86353d7ea2378615`  
		Last Modified: Mon, 27 Jul 2026 22:02:05 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a286ed351cd91a3a2314e1788ea1f049980fd42b9d3566ef7b2b7575c88ae8b`  
		Last Modified: Mon, 27 Jul 2026 22:02:10 GMT  
		Size: 140.6 MB (140595975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1cd3bebb4f80d21f865203a8d89145851920ee852c01aa9fbba4c227361632`  
		Last Modified: Mon, 27 Jul 2026 22:02:05 GMT  
		Size: 25.6 KB (25618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:3ea22f3ceff81ecdfa00aaa82ff573945b8a74af51f3ef8ff196f1c44fba792b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11404982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890731fa9e8958f9b931140fc3d129c9924f33838a0a9d00278265ebe1d87bdc`

```dockerfile
```

-	Layers:
	-	`sha256:8768fd04c1cda9de8a928616876bf91f1efa40a08c8814adfa30431ba165814c`  
		Last Modified: Mon, 27 Jul 2026 22:02:05 GMT  
		Size: 11.4 MB (11383485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d75d9409d8aa76a5c8a7cd92d720ea79c02a63c0ad80fa1ce8498ee43b9b263`  
		Last Modified: Mon, 27 Jul 2026 22:02:05 GMT  
		Size: 21.5 KB (21497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9664cdb5cfee46d6d075b874ea97ee455d9d874bf6002691b68f0d0267c8d836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.1 MB (436065077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3385dff36de8f6b07f3e0b40adce7c552e69d6d288456645ff38584aa78846d9`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:04 GMT
ARG version=17.0.20.8-1
# Mon, 27 Jul 2026 21:36:04 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:04 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:04 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 27 Jul 2026 22:00:17 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:00:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:00:17 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:00:17 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:00:17 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:00:17 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:00:17 GMT
ENV GRADLE_VERSION=9.6.1
# Mon, 27 Jul 2026 22:00:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Mon, 27 Jul 2026 22:00:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:00:20 GMT
USER gradle
# Mon, 27 Jul 2026 22:00:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 27 Jul 2026 22:00:21 GMT
USER root
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3e9c2b676d848a1529d1cbb19a021729d4ac625beaafce177625fb6504ad37`  
		Last Modified: Mon, 27 Jul 2026 21:36:26 GMT  
		Size: 155.9 MB (155949698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad279fd849af233e19e03657be735ba038e6dff1eb6599634a6ae1f28093998`  
		Last Modified: Mon, 27 Jul 2026 22:00:54 GMT  
		Size: 86.0 MB (86038783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afec77711c61896d92f5445e1a3d2a2c45be5cb5b988c076a626aa52adf14fa7`  
		Last Modified: Mon, 27 Jul 2026 22:00:49 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f928213c350d1398e9f3b81d8b329c36da3386f9db435a7b969cc8e04ceda4d8`  
		Last Modified: Mon, 27 Jul 2026 22:00:54 GMT  
		Size: 140.6 MB (140595975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17257a6f19cd801f9b81d71a0809557870689efee3a74ec03e6cef058a69091`  
		Last Modified: Mon, 27 Jul 2026 22:00:50 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:4805c5c7757823b7b509a05c9041269b85208e5b7265f76b875cf5cf72bf834f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11404179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fe70396cf1ffff4d0160ed2803e261a72145c47f9d78ea6c4298713be73be9`

```dockerfile
```

-	Layers:
	-	`sha256:9d0ae46930ad94745f6081842e09431e84e60a272c15ff76f858d0c8cab238d1`  
		Last Modified: Mon, 27 Jul 2026 22:00:50 GMT  
		Size: 11.4 MB (11382485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0d3f5d5e66f5697f770b4054b7b60502ed27788387df5f12e6ee6a769b165c6`  
		Last Modified: Mon, 27 Jul 2026 22:00:50 GMT  
		Size: 21.7 KB (21694 bytes)  
		MIME: application/vnd.in-toto+json
