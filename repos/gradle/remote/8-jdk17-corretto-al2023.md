## `gradle:8-jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:56e9596a670a465253e3dc2e5ac39633aa2706026c950eed982be8258613d17d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:98c13b9c113789dc2ed8fa4f6942c57cafdd1bb2ee22d2064588919d065bd8ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436518219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be47af045767ebfae6c10d10e00535a93ef0afcfb0e82c4c998ca45e7d17aff`
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
# Mon, 27 Jul 2026 22:02:02 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:02:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:02:02 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:02:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:02:02 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:02:03 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:02:03 GMT
ENV GRADLE_VERSION=8.14.5
# Mon, 27 Jul 2026 22:02:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Mon, 27 Jul 2026 22:02:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:02:06 GMT
USER gradle
# Mon, 27 Jul 2026 22:02:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 27 Jul 2026 22:02:06 GMT
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
	-	`sha256:a20c78122be78b9a4f4391e3e2e18001f55dc6f84cc60e6b1dad9727aa1701fa`  
		Last Modified: Mon, 27 Jul 2026 22:02:36 GMT  
		Size: 86.7 MB (86679486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5054d859aa9f5dcca91b212a48a2c8124fab3b991c0170f7cae86a773edd54f3`  
		Last Modified: Mon, 27 Jul 2026 22:02:32 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9136dd7368456e20d5d9769f445d900584110490a21aa8047041689e392c872f`  
		Last Modified: Mon, 27 Jul 2026 22:02:37 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77e29afc5e294283cecd454abf9605548ecac477ed8945cd9809f33daab5cbb`  
		Last Modified: Mon, 27 Jul 2026 22:02:32 GMT  
		Size: 54.9 KB (54899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:9b9be6befc24916c0cbec1c115bfa16e771aa2d043d008069c18aa218f94ba5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11377192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8293aee932546d22cba6a390c8d2e707240f28afb4fd865069c2db1c91ae42c`

```dockerfile
```

-	Layers:
	-	`sha256:8e3ab29524d5e4c126941068d2831b92f230653ba85c66fd46f0c6a8659ba16e`  
		Last Modified: Mon, 27 Jul 2026 22:02:32 GMT  
		Size: 11.4 MB (11356327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:638bfaac449ce9e3330a3cbfa8bd376aa041ccf588b4e76b28af5d1588561395`  
		Last Modified: Mon, 27 Jul 2026 22:02:32 GMT  
		Size: 20.9 KB (20865 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:869674c94f598bfccb449e02501aa6f2112814d1bdbb4ed5cf6c3971a7f02e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.6 MB (433567759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6385e2ed284ce2c38996a1b3c117603ffa19f6820fd2d7634703fad0c9a68466`
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
ENV GRADLE_VERSION=8.14.5
# Mon, 27 Jul 2026 22:00:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Mon, 27 Jul 2026 22:00:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:00:20 GMT
USER gradle
# Mon, 27 Jul 2026 22:00:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 27 Jul 2026 22:00:20 GMT
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
	-	`sha256:aca26ad19ad6274c5bada070d0645110f792b1eb06e418fb6a5d5a0284cb646d`  
		Last Modified: Mon, 27 Jul 2026 22:00:53 GMT  
		Size: 86.0 MB (86038720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afec77711c61896d92f5445e1a3d2a2c45be5cb5b988c076a626aa52adf14fa7`  
		Last Modified: Mon, 27 Jul 2026 22:00:49 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1310623d5641079373f05bb2ab93c66868b6a0055ccdb09f30bed0c2f4dce665`  
		Last Modified: Mon, 27 Jul 2026 22:00:53 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b586fc58a0ea06671d1c070b701e027b88913cdf715a83eb7454c1484878c9`  
		Last Modified: Mon, 27 Jul 2026 22:00:50 GMT  
		Size: 59.5 KB (59522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:955793520dab7c0f1fc9f0302e194e9b59a9d6534a31f4281c605cc5cd807da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11376341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3db63b4956e1faa380c7ea5d476e07b151c70c94da6166693a54fd0f626b37`

```dockerfile
```

-	Layers:
	-	`sha256:a276588b7a676dce02018f4e9df3de1f750e5f641eecb90d6805df69dc1fafa9`  
		Last Modified: Mon, 27 Jul 2026 22:00:49 GMT  
		Size: 11.4 MB (11355303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63836744b1317fc0e17ac1fe443c100a2bb3832e4d33828355dc74f3fd0efab2`  
		Last Modified: Mon, 27 Jul 2026 22:00:49 GMT  
		Size: 21.0 KB (21038 bytes)  
		MIME: application/vnd.in-toto+json
