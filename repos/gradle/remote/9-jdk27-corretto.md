## `gradle:9-jdk27-corretto`

```console
$ docker pull gradle@sha256:2532cf44c8e60ffa94367d291959aaa141586c95a698f0e103d7569f846ff7f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk27-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:5ccdd28a593238d3176d5e30617ecf3162999fb59f6a83c0b3a8d6f901179e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.1 MB (494081085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4dbfa56e594e099b992044578d121bc4c5752cab2fc33b7e05e5ab92994aa9d`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:00:15 GMT
ARG version=27.0.1.0.11-1
# Thu, 05 Nov 2026 20:00:15 GMT
ARG resource_version=27.0.1.0.11
# Thu, 05 Nov 2026 20:00:15 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:00:15 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:00:15 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:00:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 05 Nov 2026 20:19:49 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 20:19:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 20:19:49 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 20:19:49 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 20:19:49 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 20:19:49 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 20:19:49 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 05 Nov 2026 20:19:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 05 Nov 2026 20:19:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 20:19:53 GMT
USER gradle
# Thu, 05 Nov 2026 20:19:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 20:19:53 GMT
USER root
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6feab879a4ab6addad34c4bf88920bb189e3d3479c91f11a6b0fa836d6428f`  
		Last Modified: Thu, 05 Nov 2026 20:00:40 GMT  
		Size: 192.0 MB (192033541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54eb056e565f45a18913abcbff7faa1d05f09bfb6fddd3e9a6f53aa6e92831bb`  
		Last Modified: Thu, 05 Nov 2026 20:20:30 GMT  
		Size: 95.9 MB (95917033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ac303a74a8912fb7c46eb37c5fcdaa991f5fac242c8be2f6acc74ebb0c47d9`  
		Last Modified: Thu, 05 Nov 2026 20:20:26 GMT  
		Size: 1.6 KB (1641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:623f622c02d44cc045375a7beb5ad4edd704eb3e6f06ebfa76f1fe4669709090`  
		Last Modified: Thu, 05 Nov 2026 20:20:31 GMT  
		Size: 151.5 MB (151533616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2419f18abdbe684c4a328d35877ccc96c7049be723054f30d69db61002262260`  
		Last Modified: Thu, 05 Nov 2026 20:20:26 GMT  
		Size: 25.6 KB (25607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:1fcffe96db42ad6cc3505e6fc3fd7b1995162195425558cb581f46adc2bf6461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12689015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3254babbb3dbd6712869566a8fcefbb82d7084c08ca830b918eb537ff68cfbae`

```dockerfile
```

-	Layers:
	-	`sha256:3910377eefd513e8e1d45f2187987768da3bad78005694c1375a5373b1c4daab`  
		Last Modified: Thu, 05 Nov 2026 20:20:27 GMT  
		Size: 12.7 MB (12667365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36fa0700367d17db51937fd1681b12785014d5f51abdf60bb04ea4f18fb3fade`  
		Last Modified: Thu, 05 Nov 2026 20:20:26 GMT  
		Size: 21.6 KB (21650 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:13fac9368ac6d6cd785e6a50a5daf168d3a4057b1ece654149c28707273896be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.5 MB (490513231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0824e5edc19b1f00c47da0cdc1308c55d3315bf5a8ebc4cc3592bc01c59f2dcc`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:17:02 GMT
ARG version=27.0.1.0.11-1
# Thu, 05 Nov 2026 20:17:02 GMT
ARG resource_version=27.0.1.0.11
# Thu, 05 Nov 2026 20:17:02 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:17:02 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:17:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:17:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 05 Nov 2026 21:29:47 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 21:29:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 21:29:47 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 21:29:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 21:29:47 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 21:29:47 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 21:29:47 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 05 Nov 2026 21:29:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 05 Nov 2026 21:29:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 21:29:50 GMT
USER gradle
# Thu, 05 Nov 2026 21:29:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 21:29:51 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9373949680b28e5d232910ba302af54b76af3c7cbcd382e5257129b296d693d9`  
		Last Modified: Thu, 05 Nov 2026 20:17:27 GMT  
		Size: 190.2 MB (190189217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90701b4009d778bc2ecbe068b2e19c658b49b34ef8355d8fb4e2f989a7310f24`  
		Last Modified: Thu, 05 Nov 2026 21:30:25 GMT  
		Size: 95.3 MB (95303256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629615cd34ce52134b314f8b5ccb41cb40fca6e869d1fde36afcf9b4aeab010b`  
		Last Modified: Thu, 05 Nov 2026 21:30:21 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e710477c016b4588c285e02a3c1b6679d675c464acd787baa710245f2f1ebccb`  
		Last Modified: Thu, 05 Nov 2026 21:30:26 GMT  
		Size: 151.5 MB (151533618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e13521d43f7fda23a7922379913b0746b1a660adea671c565a530f76477bc3d`  
		Last Modified: Thu, 05 Nov 2026 21:30:22 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:01da8204d49025b4a658d60f42b2ec75fdcbd1d44a199ec16e3fbfbd63afdf49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12688217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3cd68e478358e95bf93a93c36737bef560c38040a3540302ef9f5668ac9fcd9`

```dockerfile
```

-	Layers:
	-	`sha256:5d027076602619c304bbb4bcdfe36bec8c1f44e0dc68850eb19eb99e4428a692`  
		Last Modified: Thu, 05 Nov 2026 21:30:22 GMT  
		Size: 12.7 MB (12666369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30fbe92aa79c5945df06fb0c3a1816af39a775903f9f20a91639bcc606fe071b`  
		Last Modified: Thu, 05 Nov 2026 21:30:21 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
