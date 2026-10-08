## `gradle:jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:7c3e74b585b5f75b0363759587efa0162559b50828ae298cd592489f8125a764
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:ae4447bb9bbec5f8037a1b426bf50e60db0e2711a5a5a1abff7fe3d8d09b2eb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.4 MB (472439482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44fcdc535b7cdda56c94c446135abdc1631b09b6a8ce56c7e06ecebf52d2fef5`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:10 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:44:10 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:10 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:10 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 08 Oct 2026 16:39:48 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:39:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:39:48 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:39:48 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:39:48 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:39:48 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:39:48 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:39:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:39:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:39:51 GMT
USER gradle
# Thu, 08 Oct 2026 16:39:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:39:51 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f45e4391e22f1759d68e1a3a7a295d0366f595ceb417fa62afc5870b3aa4d56`  
		Last Modified: Mon, 05 Oct 2026 18:44:34 GMT  
		Size: 170.5 MB (170461125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f927e1124b704f8f8b72e4cc556c9d166d39071befd00cafc1522b11beeaa74e`  
		Last Modified: Thu, 08 Oct 2026 16:40:26 GMT  
		Size: 95.8 MB (95786689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d91a41413218ecef6d7ffb0f66231f80d68c8d9bdf46a421674b5012edead42`  
		Last Modified: Thu, 08 Oct 2026 16:40:22 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a30231f73dc61ac5bc3696119972eae0288d6841ca78a5cc9cd7c52b8ae16cd`  
		Last Modified: Thu, 08 Oct 2026 16:40:27 GMT  
		Size: 151.5 MB (151533610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e34eca956e12e9acccc72615145d9a002046fd4a36cc75df5833b1d025fcb8a0`  
		Last Modified: Thu, 08 Oct 2026 16:40:23 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:12409c3f175a7fae21815998fa34279ab7d971b7d74ccfe81190ee4728957899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12684874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31cbfe8cec029a48b6c45dc432b6ce538e9587c4ad85d50cd861815a660c8d98`

```dockerfile
```

-	Layers:
	-	`sha256:5033e2a3cf960f33ab78fc1fe3a32a7e5c19f0545ededfe8fd57c520286e9081`  
		Last Modified: Thu, 08 Oct 2026 16:40:23 GMT  
		Size: 12.7 MB (12663223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97a8414fd2007f2d9b6ebca492522086956ce01c874168ebb15cf0cd92ab9012`  
		Last Modified: Thu, 08 Oct 2026 16:40:22 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:fb9b3cd1c4071c15b8ab5d74ecba4f8dfeb91697821a54c967f43c7ef997a39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.0 MB (469021931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc0cfad1d7d0c8d84880691fb1adae9c6087550cfad24db4c117de7e2064c9b0`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:19 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:43:19 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:19 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:19 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 08 Oct 2026 16:39:46 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:39:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:39:46 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:39:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:39:46 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:39:46 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:39:46 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:39:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:39:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:39:49 GMT
USER gradle
# Thu, 08 Oct 2026 16:39:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:39:49 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a44d8ff57bcba40c933a2843db84b8c8a4ace48d600a72ccd6270282860850`  
		Last Modified: Mon, 05 Oct 2026 18:43:43 GMT  
		Size: 168.7 MB (168743482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b254e8585261d6b8d077809837901111506cfcef23e3c2b0c5f7c6656e410f2b`  
		Last Modified: Thu, 08 Oct 2026 16:40:24 GMT  
		Size: 95.2 MB (95209399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1ec6e32cfc6c216b1dfa527b863b43c0aa7a03ed1a9c2754b2167f6e98642a`  
		Last Modified: Thu, 08 Oct 2026 16:40:21 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92dc3e1c26d6289c37d1214d57c84daca3c4a5929ee4a1fdf16dbdf7d772744`  
		Last Modified: Thu, 08 Oct 2026 16:40:25 GMT  
		Size: 151.5 MB (151533643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903f41a2c369b7e574b98c69cc9d283325dbbbe61f7c2d20c7f870bb80d8f117`  
		Last Modified: Thu, 08 Oct 2026 16:40:20 GMT  
		Size: 29.3 KB (29333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:3655e425fde03ebb829c31b93274dfbf74dbd678cc831326d90257c2dd1cac9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12684074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d174a789ce800cd74e98e4c7b83d44875e46d38a127d90c02aa736e5a6bb2df5`

```dockerfile
```

-	Layers:
	-	`sha256:bedfdbc3a191210bf969d1d52910bfdca0932302d168f6559029dd68545cd561`  
		Last Modified: Thu, 08 Oct 2026 16:40:21 GMT  
		Size: 12.7 MB (12662226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b97f50151f6f1141e5d6844362185a6e7378c1621ba784a3a83a7171ab954b73`  
		Last Modified: Thu, 08 Oct 2026 16:40:20 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
