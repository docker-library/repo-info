## `gradle:8-jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:8e4c8f24fb5e2cd7f5002544f711935e421e79e3534cdd3b529431d9b08b5758
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:04c0cbaf8729c601a14645d82ff8cdb238d0811635d79d45aeb12aa270fde42b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.1 MB (447081161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fed57b9bf45d1fdfd2561b916e836e8149c533fcb970a9ba74606652f8010261`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:28:11 GMT
ARG version=17.0.20.13-1
# Wed, 21 Oct 2026 23:28:11 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:28:11 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:28:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:28:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 22 Oct 2026 00:16:30 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 00:16:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 00:16:30 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 00:16:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 00:16:31 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 00:16:31 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 00:16:31 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 22 Oct 2026 00:16:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 22 Oct 2026 00:16:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 00:16:33 GMT
USER gradle
# Thu, 22 Oct 2026 00:16:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 00:16:34 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1ae9487769b73c0896ee595f50ecbab13247197fb2c1c330f0ec1dfda0b5f6`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 157.2 MB (157176465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3985ab72a9b734024152fc1ba7107040e436f729c785401609e5bddd66d535`  
		Last Modified: Thu, 22 Oct 2026 00:17:07 GMT  
		Size: 95.8 MB (95789993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c77fbfe78e6d03aef30177152511e8c610cc1eff7f96c26dde53f8be5fe313`  
		Last Modified: Thu, 22 Oct 2026 00:17:02 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8286688aa1e4b40cda31176262f65ddbcaca0f42d6f6d4fcb4647369a7d1b778`  
		Last Modified: Thu, 22 Oct 2026 00:17:07 GMT  
		Size: 139.4 MB (139427351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af55219525605cea39a2a4f6628e066b8f5fa3bf81a9cab64d4fe9b540da429d`  
		Last Modified: Thu, 22 Oct 2026 00:17:02 GMT  
		Size: 54.9 KB (54905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:821d2d776ad673a981f4c28ef2981c2de71d67ba6c045146877d62ec1dd720ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12648237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346bbf6c5989c03377ec2b076c0cb377cb581e94f35465882c8fa679452d3d11`

```dockerfile
```

-	Layers:
	-	`sha256:2b76511afbb88ce65c48812c9a8f813cd1c5dcd4c1e5a51b38651bcb6eb8f6fa`  
		Last Modified: Thu, 22 Oct 2026 00:17:03 GMT  
		Size: 12.6 MB (12627373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1637db6c53c75d257bb8aad00c443e9700d7abd1afa605bfc8f09105e84b68cb`  
		Last Modified: Thu, 22 Oct 2026 00:17:02 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9f155129d65265840417cafbb4553ed9e22718d035122634a2ab977c0dd30f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.2 MB (444177875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4fe8115ba527f0fe750a32abf4c6ffeb1dbff65bdd809fe68a4df1200a3d8b1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:57 GMT
ARG version=17.0.20.13-1
# Wed, 14 Oct 2026 17:07:57 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:07:57 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:57 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 14 Oct 2026 18:11:56 GMT
CMD ["gradle"]
# Wed, 14 Oct 2026 18:11:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 14 Oct 2026 18:11:56 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 14 Oct 2026 18:11:56 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 14 Oct 2026 18:11:56 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 14 Oct 2026 18:11:56 GMT
WORKDIR /home/gradle
# Wed, 14 Oct 2026 18:11:56 GMT
ENV GRADLE_VERSION=8.14.6
# Wed, 14 Oct 2026 18:11:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Wed, 14 Oct 2026 18:11:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 14 Oct 2026 18:11:59 GMT
USER gradle
# Wed, 14 Oct 2026 18:12:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 14 Oct 2026 18:12:00 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154b2b63e41b8926d75f93d6a93dc46b91678d65e12e27ba0185b9c627a6eca8`  
		Last Modified: Wed, 14 Oct 2026 17:08:19 GMT  
		Size: 156.0 MB (155978404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc29e6362a03a46736508354fbbb7c8bb37d404ac825123165ef20e9935ebab`  
		Last Modified: Wed, 14 Oct 2026 18:12:33 GMT  
		Size: 95.2 MB (95206502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a7a8340772d99cf3f685ac5d2efa33c8d47de0e96807b5e741ba983ec1f3db`  
		Last Modified: Wed, 14 Oct 2026 18:12:29 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6af4a189eb37e728027d632ba869757ff40cf82478ec267b917bd1cb136f6f3`  
		Last Modified: Wed, 14 Oct 2026 18:12:35 GMT  
		Size: 139.4 MB (139427363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc71a980b79c7b509d001388d00fc53f87d0ece90e307150841d943ecd0aeca`  
		Last Modified: Wed, 14 Oct 2026 18:12:30 GMT  
		Size: 59.5 KB (59533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:2ce990a6af70a43277e6e710a59e12d52165bdbe00cb5b5bd217aea82998220b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12647387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:933096e326ad50d2a502be477db4353a53b3c80a0c72951ed8daec09eeecf060`

```dockerfile
```

-	Layers:
	-	`sha256:356b796c96ce98473acefdf96d9f56def651e74b3242013a83f4f3ea636f9808`  
		Last Modified: Wed, 14 Oct 2026 18:12:30 GMT  
		Size: 12.6 MB (12626349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb6577ae13337a5515fa9df40fc90698fe735052a8d52e5403079f6b52d63c5e`  
		Last Modified: Wed, 14 Oct 2026 18:12:29 GMT  
		Size: 21.0 KB (21038 bytes)  
		MIME: application/vnd.in-toto+json
