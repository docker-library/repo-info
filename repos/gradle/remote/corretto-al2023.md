## `gradle:corretto-al2023`

```console
$ docker pull gradle@sha256:7a4927cbb443e8a2d56774a4e197ed4fc5d5fa559f93f1db841921b3ffc36fd9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:b6a1fbb6f70ffee7d297f60a164285295511b8ff4ca9cd5cbe84ab742251eb66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.4 MB (471352941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:178829397e1f0046339276d835ef2dd358db343b8d5d98eeae13103deb5ac37a`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:37:31 GMT
ARG version=25.0.4.7-1
# Mon, 27 Jul 2026 21:37:31 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:37:31 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:37:31 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:37:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 27 Jul 2026 22:01:15 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:01:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:01:15 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:01:15 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:01:15 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:01:16 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:01:16 GMT
ENV GRADLE_VERSION=9.6.1
# Mon, 27 Jul 2026 22:01:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Mon, 27 Jul 2026 22:01:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:01:18 GMT
USER gradle
# Mon, 27 Jul 2026 22:01:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 27 Jul 2026 22:01:19 GMT
USER root
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbdb6c8dad59235970ac7c61166bf121924813ce2c9ecb3db9e0a30b27cc77ef`  
		Last Modified: Mon, 27 Jul 2026 21:37:56 GMT  
		Size: 189.5 MB (189475747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537c2a754d60e1092e94f8290a033d53b2e0b57859f29f52f0bf70d1353701fc`  
		Last Modified: Mon, 27 Jul 2026 22:01:51 GMT  
		Size: 86.7 MB (86681236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90f5efb6ca49750eed23de4a9c9989f82b006858ccef1a6af8aaea602e57b3ae`  
		Last Modified: Mon, 27 Jul 2026 22:01:47 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a4eba2a9b6e17967a8dbe6fe73c6f0f0e76c1f37acbd93c6a86cb92d3a3b9a`  
		Last Modified: Mon, 27 Jul 2026 22:01:53 GMT  
		Size: 140.6 MB (140595970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8657429b93f182b713766218307b175a72f7207d37aa859928c84f35edf619b`  
		Last Modified: Mon, 27 Jul 2026 22:01:47 GMT  
		Size: 25.6 KB (25625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:a2bd280aebd7c809f8615c913da10799efdc568cad38d3e3082c71c1b4c58c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11420358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff31295bd71530ffddb8adb1da9c317686f4358ee064f8cce0bb9aed81a6bc1`

```dockerfile
```

-	Layers:
	-	`sha256:b3579e64932689e545fee5e0cbe766a581d9a83ebcdd4618bd21d867b165126c`  
		Last Modified: Mon, 27 Jul 2026 22:01:48 GMT  
		Size: 11.4 MB (11398090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f008ab3cb34f2825868eac009855f087aa17876672892c76074d254641e821c5`  
		Last Modified: Mon, 27 Jul 2026 22:01:47 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:e2a676cee520d663b3db8cbf09d046f6c9dcd292c75be3c7eb9e0f2964c347a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.5 MB (467500235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1911d016d9e0e2e58d3137928652df58a2f371e0238cb8d3468209199d773b`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:59 GMT
ARG version=25.0.4.7-1
# Mon, 27 Jul 2026 21:36:59 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:59 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:59 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 27 Jul 2026 22:00:18 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:00:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:00:18 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:00:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:00:18 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:00:19 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:00:19 GMT
ENV GRADLE_VERSION=9.6.1
# Mon, 27 Jul 2026 22:00:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Mon, 27 Jul 2026 22:00:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:00:21 GMT
USER gradle
# Mon, 27 Jul 2026 22:00:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 27 Jul 2026 22:00:22 GMT
USER root
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14169b689fdfbc206547a34d0b19e88570648aac3ab99ebe08bb22fa1cfdb87b`  
		Last Modified: Mon, 27 Jul 2026 21:37:24 GMT  
		Size: 187.4 MB (187379540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a64bb0f3e1a2e0102df39b5cc9800a037d777df3466f5d6cf97eaeab9d7e75`  
		Last Modified: Mon, 27 Jul 2026 22:00:55 GMT  
		Size: 86.0 MB (86044097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24c4bccb302cd57811aa96b477ae9870fc5e42d675dc41a24b63e11d2b36d84d`  
		Last Modified: Mon, 27 Jul 2026 22:00:51 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea268d329ce8cdb8d76691dcd317e4e0d2ea4509bb8a686f74c884e77779ee25`  
		Last Modified: Mon, 27 Jul 2026 22:00:56 GMT  
		Size: 140.6 MB (140595974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f163a502fa8ac50560813da331d3c49a986e23e1817ea0229c03aa7414f877`  
		Last Modified: Mon, 27 Jul 2026 22:00:51 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:123bfa1321a32fcecd4280a4dcab2f7efa4de3f9820b0a1e0a95a0b5abd29feb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11419618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4170cca3f50185ea14999e90d8995e37de5e82dbdec395ca6d0c7885a0409a`

```dockerfile
```

-	Layers:
	-	`sha256:2517e741885fcae039944d417875fe6b58f3bfd1fcefb505fdbec9df93a015cd`  
		Last Modified: Mon, 27 Jul 2026 22:00:52 GMT  
		Size: 11.4 MB (11397128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a89adb595c66173fc330f0c01ed7e7fcfc5c6696c7385548a4835e6abe384a60`  
		Last Modified: Mon, 27 Jul 2026 22:00:51 GMT  
		Size: 22.5 KB (22490 bytes)  
		MIME: application/vnd.in-toto+json
