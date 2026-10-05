## `gradle:9-jdk-25-and-27-corretto-al2023`

```console
$ docker pull gradle@sha256:b265fd51f983379937f9a3559a69bdfdb72f306fcc3ff3a436861a0cb6ed09d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-25-and-27-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:0b8498ed4534d4fee93ecd8882a597d0b4cecc7e94ec08399e299f27662941fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **668.9 MB (668872774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4bfcd98e2917b36fbd0da43bf6748eb2e1d008ce1649a600788b5bd5239240f`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:22 GMT
ARG version=25.0.4.10-1
# Mon, 05 Oct 2026 18:44:22 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:22 GMT
# ARGS: version=25.0.4.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:22 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 21:15:02 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Mon, 05 Oct 2026 21:15:33 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 21:15:33 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Mon, 05 Oct 2026 21:15:33 GMT
CMD ["gradle"]
# Mon, 05 Oct 2026 21:15:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 05 Oct 2026 21:15:33 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 05 Oct 2026 21:15:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Mon, 05 Oct 2026 21:15:33 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 05 Oct 2026 21:15:33 GMT
WORKDIR /home/gradle
# Mon, 05 Oct 2026 21:15:33 GMT
ENV GRADLE_VERSION=9.8.0
# Mon, 05 Oct 2026 21:15:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Mon, 05 Oct 2026 21:15:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 05 Oct 2026 21:15:36 GMT
USER gradle
# Mon, 05 Oct 2026 21:15:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 05 Oct 2026 21:15:36 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4992f1cf7532669201e3d7da8ba0a07a8ffdfc0b13a84bb98552488b86eae9`  
		Last Modified: Mon, 05 Oct 2026 18:44:46 GMT  
		Size: 189.5 MB (189511554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c5759a722fc9ea1dff2139ba32b8b3e1418784e9b85ac779a194f8567538aa`  
		Last Modified: Mon, 05 Oct 2026 21:16:20 GMT  
		Size: 177.4 MB (177389793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2da52894b5b10e84430e078338a4a0db638c70b66aee46fd405f83972892d7f`  
		Last Modified: Mon, 05 Oct 2026 21:16:17 GMT  
		Size: 95.8 MB (95789005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448dee098b3228962c112db95cc6d02e775263f7571668f0f2064d0fabfcc367`  
		Last Modified: Mon, 05 Oct 2026 21:16:12 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a7f3f48fec6c845fd8fda4d3573465475aeff6cf5e85d43b08281b2358ac5e`  
		Last Modified: Mon, 05 Oct 2026 21:16:19 GMT  
		Size: 151.5 MB (151524264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae767c97dff4eace585d597081d2228d55f14cdf036d74e3ce92e4a5e8fdc3a`  
		Last Modified: Mon, 05 Oct 2026 21:16:13 GMT  
		Size: 25.6 KB (25602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-25-and-27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:247cc9027e560f6d2851e93bdff3b0d4deab6c388062b8107bf50af52fcec360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12866037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c1d5b72780eea0830d12721a91a9b4ebaae8476b9a7a9e3be867bce6823c47`

```dockerfile
```

-	Layers:
	-	`sha256:f67846aaf39eabc22ccba7bcb1a512ef58de41a1070cc84ae6cde0288195ce09`  
		Last Modified: Mon, 05 Oct 2026 21:16:13 GMT  
		Size: 12.8 MB (12836527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fec12e3b46b025e216b04cc0f3ff66c205bcf210e8c8c11a4f166487f6975428`  
		Last Modified: Mon, 05 Oct 2026 21:16:12 GMT  
		Size: 29.5 KB (29510 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-25-and-27-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:1594ff01a8e2e3f6e7d19ab730d9400786396c9e715a04e784f33537ef277872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **663.0 MB (662969332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e47a25c48a9ad4ddc814e84c81594d47b073e068690d1fda5f85d2c339251c`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:52 GMT
ARG version=25.0.4.10-1
# Mon, 05 Oct 2026 18:43:52 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:52 GMT
# ARGS: version=25.0.4.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:52 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 21:14:41 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Mon, 05 Oct 2026 21:15:16 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 21:15:16 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Mon, 05 Oct 2026 21:15:16 GMT
CMD ["gradle"]
# Mon, 05 Oct 2026 21:15:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 05 Oct 2026 21:15:16 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 05 Oct 2026 21:15:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Mon, 05 Oct 2026 21:15:16 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 05 Oct 2026 21:15:16 GMT
WORKDIR /home/gradle
# Mon, 05 Oct 2026 21:15:16 GMT
ENV GRADLE_VERSION=9.8.0
# Mon, 05 Oct 2026 21:15:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Mon, 05 Oct 2026 21:15:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 05 Oct 2026 21:15:19 GMT
USER gradle
# Mon, 05 Oct 2026 21:15:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 05 Oct 2026 21:15:19 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8f82cdd25a7c12179799666029dc0bc5720c430be45fa6650d3aba439c5853`  
		Last Modified: Mon, 05 Oct 2026 18:44:16 GMT  
		Size: 187.4 MB (187409864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3574e7fe46a59055c7b8646e2fd9d8c22e71ab19ee7058cf520ae68dc2b3aca3`  
		Last Modified: Mon, 05 Oct 2026 21:16:01 GMT  
		Size: 175.3 MB (175293577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abafaa25937048127dc472d915ef1b9a5338cb6c475b57daacb1220ccdffaeb`  
		Last Modified: Mon, 05 Oct 2026 21:15:59 GMT  
		Size: 95.2 MB (95206116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7aae0dd6693ed5032f15aada0945b179957b320e2a33f5709712709b779e0a2`  
		Last Modified: Mon, 05 Oct 2026 21:15:53 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aa7fec081d6216488cd1042e8aca2756cf02e7e033e9788de39f2eed30c771b`  
		Last Modified: Mon, 05 Oct 2026 21:16:00 GMT  
		Size: 151.5 MB (151524258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502d5bbe2b603412eedf541c545457ee66772f3cd8fe0d7ecfab6597d5d98519`  
		Last Modified: Mon, 05 Oct 2026 21:15:55 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-25-and-27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:73a7e6b75feabeb6d9f42964a2e5b7de0ac0ebba5dbc1d7929c5e081029e0f5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12864825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca3a73ccbede3a85a67539bf9fa541304ccd3def74a4feae1d2ccfb53b7e4e0`

```dockerfile
```

-	Layers:
	-	`sha256:c694e93e90e4d6a6291b7d5f2da7912df247ad671503787c606b3e2fdf3eab7d`  
		Last Modified: Mon, 05 Oct 2026 21:15:54 GMT  
		Size: 12.8 MB (12834997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dde2f4e14989d7c4602a1bed650182251060ca2fff1ee1e09e012bbaa95ce5a6`  
		Last Modified: Mon, 05 Oct 2026 21:15:53 GMT  
		Size: 29.8 KB (29828 bytes)  
		MIME: application/vnd.in-toto+json
