## `gradle:9-jdk27-corretto-al2023`

```console
$ docker pull gradle@sha256:9d1ad6e2e4d5c910b91a583ffe0ef9f44a4c6f9cca47e65515aa7f6bd164e0a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk27-corretto-al2023` - linux; amd64

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

### `gradle:9-jdk27-corretto-al2023` - unknown; unknown

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

### `gradle:9-jdk27-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:1145ecff370cb4d56e5e7feebc25d68e8eae2460d9b328799f759b19856de277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.5 MB (490513578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9363e06011844c2898a9eaf74b10fe49e57f9543bf5ce6f8b64ad58bac687430`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:45 GMT
ARG version=27.0.1.0.11-1
# Mon, 02 Nov 2026 20:11:45 GMT
ARG resource_version=27.0.1.0.11
# Mon, 02 Nov 2026 20:11:45 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:45 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:45 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Mon, 02 Nov 2026 20:44:35 GMT
CMD ["gradle"]
# Mon, 02 Nov 2026 20:44:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 02 Nov 2026 20:44:35 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 02 Nov 2026 20:44:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 02 Nov 2026 20:44:35 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 02 Nov 2026 20:44:35 GMT
WORKDIR /home/gradle
# Mon, 02 Nov 2026 20:44:35 GMT
ENV GRADLE_VERSION=9.8.2
# Mon, 02 Nov 2026 20:44:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Mon, 02 Nov 2026 20:44:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 02 Nov 2026 20:44:38 GMT
USER gradle
# Mon, 02 Nov 2026 20:44:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 02 Nov 2026 20:44:39 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a555f30fafccc7b5c5f85b3e4775b393ba84b4049465ca7df320f81af6c974`  
		Last Modified: Mon, 02 Nov 2026 20:12:11 GMT  
		Size: 190.2 MB (190189464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc69e4f5cfac9b85404a465622f4a69949cbd7c00658d91536215e44ec7eeef`  
		Last Modified: Mon, 02 Nov 2026 20:45:13 GMT  
		Size: 95.3 MB (95303365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af8699f88f3ea401dc5bd4fde62c75ee683e7ddc205b76cf213ddc268f24a61`  
		Last Modified: Mon, 02 Nov 2026 20:45:09 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:073065a37280dfdd68422704838e75bc659fb8be237676f871cba8ccfaf71b52`  
		Last Modified: Mon, 02 Nov 2026 20:45:14 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4b88580a08396367453d6608d7bdcfd505f542431653c64cf997dee0959c29`  
		Last Modified: Mon, 02 Nov 2026 20:45:09 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:b6fec7fda6e90562823d997667adbb47e7c8de11c4e5acaec6fc3e66deaf1696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12688217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17641a7443cd1b017407cc31f734ab3ccb00f411d1c10afe9f777db627923d66`

```dockerfile
```

-	Layers:
	-	`sha256:1311c0712631d73f98263f4c849e3ae0df54d440d4b53644bf8a2f66fe8e1699`  
		Last Modified: Mon, 02 Nov 2026 20:45:10 GMT  
		Size: 12.7 MB (12666369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f966d3e2ec012a8143f3d3d388aff5ba0c11248b1a8955639d745452a937e6f`  
		Last Modified: Mon, 02 Nov 2026 20:45:09 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
