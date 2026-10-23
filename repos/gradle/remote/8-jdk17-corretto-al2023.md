## `gradle:8-jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:74b1404813e92da9ed4e2d37f7cfc0c3434b9d1cb63e1e89350700212573aced
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:241126cd9b01032c5f51f455baf926082bdc9e99c008107e68da8a09a5ad6856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.1 MB (447103595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b393f15ce96be6d023ce0658586f85efdcfb7f53be115761e0f4d8ea159035bf`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:00 GMT
ARG version=17.0.20.13-1
# Fri, 23 Oct 2026 01:10:00 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:00 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:00 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 23 Oct 2026 02:09:52 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:09:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:09:52 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:09:52 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:09:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:09:52 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:09:52 GMT
ENV GRADLE_VERSION=8.14.6
# Fri, 23 Oct 2026 02:09:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Fri, 23 Oct 2026 02:09:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:09:55 GMT
USER gradle
# Fri, 23 Oct 2026 02:09:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 02:09:55 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7b79035ffc412a6874ed4a9d4605e12bed37000174652a74018d15cccd9c7e`  
		Last Modified: Fri, 23 Oct 2026 01:10:20 GMT  
		Size: 157.2 MB (157175129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2700d4d741982711cf740033acb39598faa9ee0cb815d74ff710951e541463`  
		Last Modified: Fri, 23 Oct 2026 02:10:26 GMT  
		Size: 95.8 MB (95795628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8d0ebb4db91750902743e946253db798144d3ee96e11e1aa2a6d901bb9cd19`  
		Last Modified: Fri, 23 Oct 2026 02:10:22 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49cfd043441517d8554f93e5122f0c26f05d98301cb9cd9d094d6b2c2b0d5ed9`  
		Last Modified: Fri, 23 Oct 2026 02:10:27 GMT  
		Size: 139.4 MB (139427347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa06689fd830758a5ddd1f662603e5d5570c63676093fe0ae77f3678489d45e`  
		Last Modified: Fri, 23 Oct 2026 02:10:22 GMT  
		Size: 54.9 KB (54894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:b4b349d3741716491e0ce3b0ff8e1fb47ade4cdc2fbc532dc3c480746bccf438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12648343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1fe2732e89ba22a720ad74a9f5b3356aa6b2efe29edc0c140a553038fa3e46`

```dockerfile
```

-	Layers:
	-	`sha256:4158ccb8059e7a6797a84fcb7752e062602e5da25740b863736e06c6ec40cad7`  
		Last Modified: Fri, 23 Oct 2026 02:10:23 GMT  
		Size: 12.6 MB (12627479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d39ec38fce3dc9d9e2d703dfafb4ebfe7b2647ebf471a8670055bf71f99daaa`  
		Last Modified: Fri, 23 Oct 2026 02:10:22 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ca0e67e1acd3904b6b58c7ad32df51a23e28e027827e8c1927fc6f74048222e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.2 MB (444205450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8accbf54a6cc648e644664a8bce68a454468494d8e2db307b0e3154a86115ff5`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:08 GMT
ARG version=17.0.20.13-1
# Fri, 23 Oct 2026 01:10:08 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:08 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:08 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 23 Oct 2026 02:09:55 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:09:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:09:55 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:09:55 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:09:55 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:09:55 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:09:55 GMT
ENV GRADLE_VERSION=8.14.6
# Fri, 23 Oct 2026 02:09:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Fri, 23 Oct 2026 02:09:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:09:59 GMT
USER gradle
# Fri, 23 Oct 2026 02:10:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 02:10:00 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965bddf223d9fee8acbc70f35723cc95a5be9daab0ef3af34a23bff9da1b1d9f`  
		Last Modified: Fri, 23 Oct 2026 01:10:31 GMT  
		Size: 156.0 MB (155978532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2bc67241e67dde0cbfbafc5e383acc4387495363ac393c63015eae5a2a27b1`  
		Last Modified: Fri, 23 Oct 2026 02:10:33 GMT  
		Size: 95.2 MB (95209043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d715743ca32f8ea0326fbcd2430b558af4a92d0c34434be1e0e334f6519d0ed`  
		Last Modified: Fri, 23 Oct 2026 02:10:29 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2eb28ff14a9caa4101b9481db596971fbef57e4b38cb51eade390d34e203849`  
		Last Modified: Fri, 23 Oct 2026 02:10:34 GMT  
		Size: 139.4 MB (139427352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f7f3a4e06dd5c483b50cbab0d2f72c721fdd8527487aa580e6ebd610b773b6`  
		Last Modified: Fri, 23 Oct 2026 02:10:29 GMT  
		Size: 59.5 KB (59530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:9f30092d47d627aadb13f0a16184a81054b10efd696bb62eb1b3a808204b8369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12647492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be0f7764ba8fe0cf2bf1839c943a4256ca62bc131e4c569f130c142ee9ef224`

```dockerfile
```

-	Layers:
	-	`sha256:563fb5b28399aa5f07da4995868914d5c812ca5d1534170221b1fb24ff9eb7ed`  
		Last Modified: Fri, 23 Oct 2026 02:10:30 GMT  
		Size: 12.6 MB (12626455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e44e6ad64975f9deaae6f5e081b62158327d88e1d806a83ec30577c0dc53bb8`  
		Last Modified: Fri, 23 Oct 2026 02:10:29 GMT  
		Size: 21.0 KB (21037 bytes)  
		MIME: application/vnd.in-toto+json
