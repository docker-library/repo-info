## `gradle:9-jdk21-corretto`

```console
$ docker pull gradle@sha256:3e3274c524177da7a5407617ad400a12628fe85f8c01c58baeb7d18fa89e7ab9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:a92ef8e861172a48ad448060dcf5c5c7473472d148aae2e20b586f81d51b20f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.8 MB (472782143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2d3fbb5d208e54ed9998b47ddb41c8e2af73aa43c0409b9b2ff3d1020e1da4`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:48 GMT
ARG version=21.0.13.0.11-1
# Thu, 05 Nov 2026 19:59:48 GMT
ARG resource_version=21.0.13.0.11
# Thu, 05 Nov 2026 19:59:48 GMT
ARG package_version=1
# Thu, 05 Nov 2026 19:59:48 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:59:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 05 Nov 2026 20:19:42 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 20:19:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 20:19:42 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 20:19:42 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 20:19:42 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 20:19:42 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 20:19:42 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 05 Nov 2026 20:19:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 05 Nov 2026 20:19:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 20:19:46 GMT
USER gradle
# Thu, 05 Nov 2026 20:19:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 20:19:46 GMT
USER root
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d3e70dc3985fe5155874fee927fb0d515bda360e9e1ee6a73a034c1150b051`  
		Last Modified: Thu, 05 Nov 2026 20:00:19 GMT  
		Size: 170.7 MB (170747131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df7e8c1a06caf271bed762403a89598d74a249a207547ce8757799f5b3901f1`  
		Last Modified: Thu, 05 Nov 2026 20:20:25 GMT  
		Size: 95.9 MB (95904500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb8e80acaaf0e911bfc51cb1b7aa99c539d2c7b0dc60f8814b41f9fbd490a04`  
		Last Modified: Thu, 05 Nov 2026 20:20:21 GMT  
		Size: 1.6 KB (1641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df725c6ab958e4c7c964bc954d2c2b30d3aa6ff0e36b260015790a3bfd26f53`  
		Last Modified: Thu, 05 Nov 2026 20:20:26 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335ec8ff20c5404745a97fea15591f0eff75217cd86ff2c8f73ea071766bd702`  
		Last Modified: Thu, 05 Nov 2026 20:20:21 GMT  
		Size: 25.6 KB (25610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:b8a6c69eef988d9cd346d57d24a89d9dda7b9061bc83d96463d2cfdbf4703204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12685669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e501cb5d8e8005359685c3efbaefe81991e3432ea0837db2cc0d4fb19668abc0`

```dockerfile
```

-	Layers:
	-	`sha256:d9b21408dc06154559aed070ac68ba8406c0de2076d823bb1637c4d135101bfa`  
		Last Modified: Thu, 05 Nov 2026 20:20:22 GMT  
		Size: 12.7 MB (12664019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff45eec4e25afee1e1bbdf525b048758998426d7ac6f4679c03a996c1d761c45`  
		Last Modified: Thu, 05 Nov 2026 20:20:21 GMT  
		Size: 21.6 KB (21650 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:3e83efe3e0b23e64c11b1642326b06486f2f085022230a4aa3efa279131aa6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.3 MB (469343442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d45c17d4121960fcac6a74465292041fc87ae328ded63493723edde07d19c9f4`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:10 GMT
ARG version=21.0.13.0.11-1
# Mon, 02 Nov 2026 20:11:10 GMT
ARG resource_version=21.0.13.0.11
# Mon, 02 Nov 2026 20:11:10 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:10 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 02 Nov 2026 20:44:23 GMT
CMD ["gradle"]
# Mon, 02 Nov 2026 20:44:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 02 Nov 2026 20:44:23 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 02 Nov 2026 20:44:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 02 Nov 2026 20:44:23 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 02 Nov 2026 20:44:23 GMT
WORKDIR /home/gradle
# Mon, 02 Nov 2026 20:44:23 GMT
ENV GRADLE_VERSION=9.8.2
# Mon, 02 Nov 2026 20:44:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Mon, 02 Nov 2026 20:44:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 02 Nov 2026 20:44:26 GMT
USER gradle
# Mon, 02 Nov 2026 20:44:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 02 Nov 2026 20:44:27 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bd08fd180f162c125ccf9c1674915d47bb6e31bd116c345a8c055d06e15049`  
		Last Modified: Mon, 02 Nov 2026 20:11:33 GMT  
		Size: 169.0 MB (169018987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4cbfa8e76b4a71f40cb3a19b8c30de593d0bee32626ccba931f8325d2706ec`  
		Last Modified: Mon, 02 Nov 2026 20:45:01 GMT  
		Size: 95.3 MB (95303787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50a4cf7137a919dd3bf1de30776980e5dfd00917024d4addc6364308e610d07a`  
		Last Modified: Mon, 02 Nov 2026 20:44:57 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f69d2acf77e12b1a36f8aaea098ee3011c662fbd7e65aaf7a848edc1c7d42c7`  
		Last Modified: Mon, 02 Nov 2026 20:45:02 GMT  
		Size: 151.5 MB (151533529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69d32566415777aadce7938a15d39292870d32074b24eb268e033f02380ae52`  
		Last Modified: Mon, 02 Nov 2026 20:44:57 GMT  
		Size: 29.3 KB (29342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:ddc191e2defd4f80a3d4ee40638e05e9b5595afd3a136f391f3fefe61d83c1d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12684870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5557d4a2e65b0a1e9d3e21efde381b77e28bc48a682fad01226e0cbe6e2e38`

```dockerfile
```

-	Layers:
	-	`sha256:f78c559f977b9e5d5a9799bdf83f4d9e4e4aa5aa60c09a1a95e836299db2f538`  
		Last Modified: Mon, 02 Nov 2026 20:44:58 GMT  
		Size: 12.7 MB (12663022 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a63d09e6cf8dd0c3b6b4bf1349b8be3335a223893342093d806cd68d95bd27e`  
		Last Modified: Mon, 02 Nov 2026 20:44:57 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
