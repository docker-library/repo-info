## `gradle:9-jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:eaae15666398071b5f9462369f574c80550e6753b134a9cd76725b01b10c6c7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:d36bcdcef67b880088aa9a6f9b636a9736d0739fcceafd7771701180ab2c1af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **450.0 MB (449987485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31fed1769236b94fb49111817e657544813c566edba08e70f34cba4dabff178`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:20:18 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:20:18 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:20:18 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:20:18 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 20 Aug 2026 18:01:45 GMT
CMD ["gradle"]
# Thu, 20 Aug 2026 18:01:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 20 Aug 2026 18:01:45 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 20 Aug 2026 18:01:45 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 20 Aug 2026 18:01:45 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 20 Aug 2026 18:01:45 GMT
WORKDIR /home/gradle
# Thu, 20 Aug 2026 18:01:45 GMT
ENV GRADLE_VERSION=9.7.1
# Thu, 20 Aug 2026 18:01:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Thu, 20 Aug 2026 18:01:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 20 Aug 2026 18:01:48 GMT
USER gradle
# Thu, 20 Aug 2026 18:01:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 20 Aug 2026 18:01:49 GMT
USER root
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfead4a6ee7773d2dbc579b59ce8c1135ecf004db916308e9802df9eb8fe9f5a`  
		Last Modified: Thu, 20 Aug 2026 17:20:40 GMT  
		Size: 157.1 MB (157139355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3fb478127e7e50621b75b5fcfd4bf8c2b302e2980f06182189144d55ba64a60`  
		Last Modified: Thu, 20 Aug 2026 18:02:22 GMT  
		Size: 86.9 MB (86882975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:135adaedc4fa96af1eb359726c43e9f957be40f30d810cfe12adbcd1f4cd86ec`  
		Last Modified: Thu, 20 Aug 2026 18:02:18 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:877095b2e82d81a6a0dde1cd7efc2758718fcd87770786e1667a14de1bcb8699`  
		Last Modified: Thu, 20 Aug 2026 18:02:23 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b88aa4962d5e65b472f88cb51342147c1e86bf8d71e5258ac8a7e82a775e7d`  
		Last Modified: Thu, 20 Aug 2026 18:02:18 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:f3fd4edddce8535774b307d6e062d8258cabcdf39e3084b9e5aac6a30334a1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11413139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8727dc1abe0f6bc385d2725a4054bca341d4a8ee121008eedb7be0139b68d952`

```dockerfile
```

-	Layers:
	-	`sha256:7522b9d8233f9cdae23b6f04067ee55296d547b7294f11cdf658da3667e9abb6`  
		Last Modified: Thu, 20 Aug 2026 18:02:19 GMT  
		Size: 11.4 MB (11391642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a704a9b05a40c4cf335249d7ab629e784678429b658aea020020a5d4f1586c2`  
		Last Modified: Thu, 20 Aug 2026 18:02:18 GMT  
		Size: 21.5 KB (21497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:786cd500c0472186f4c5e29670e8aaf47d02fef92a71d4b0116bee2ee97e2e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.0 MB (447036358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56de9def6ca7683c1870a55f2b025d096dece9ce8b67c8396d70575a91932ab`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:00 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:17:00 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:17:00 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:17:00 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 20 Aug 2026 17:58:08 GMT
CMD ["gradle"]
# Thu, 20 Aug 2026 17:58:08 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 20 Aug 2026 17:58:08 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 20 Aug 2026 17:58:08 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 20 Aug 2026 17:58:08 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 20 Aug 2026 17:58:08 GMT
WORKDIR /home/gradle
# Thu, 20 Aug 2026 17:58:08 GMT
ENV GRADLE_VERSION=9.7.1
# Thu, 20 Aug 2026 17:58:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Thu, 20 Aug 2026 17:58:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 20 Aug 2026 17:58:11 GMT
USER gradle
# Thu, 20 Aug 2026 17:58:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 20 Aug 2026 17:58:11 GMT
USER root
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2898f49accdb0dda82fec0027f06a1977c5014ad3d546b41c09dbf32cbb1028`  
		Last Modified: Thu, 20 Aug 2026 17:17:23 GMT  
		Size: 156.0 MB (155950280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b683f41dd8288ce7aeafb5fc2037abb3564c16cf263a20b92bc69cc60e93c8`  
		Last Modified: Thu, 20 Aug 2026 17:58:44 GMT  
		Size: 86.3 MB (86250166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6413ea032fd9b3f4f510863a05f5d45fee1635041f28c4058a15e7a224b893ca`  
		Last Modified: Thu, 20 Aug 2026 17:58:40 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b14543e97c6e49d7b2698c4108d18576f7d9ac3fc7fe7a9b4693a965668387`  
		Last Modified: Thu, 20 Aug 2026 17:58:45 GMT  
		Size: 151.4 MB (151354019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f65191e881b238f741c865d91329735d87098912b5baa68973c8d89d8d9132`  
		Last Modified: Thu, 20 Aug 2026 17:58:40 GMT  
		Size: 29.3 KB (29328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:edae00c822eb0810cdc387a7f3f02424588ce27e4b988dcdf0efe807c97f293e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11412336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9fb6c5d888546a6f849a2595ce2ee419a1fd8d35508a4d3b88775f88170ee67`

```dockerfile
```

-	Layers:
	-	`sha256:dbef2110de10a0a89752b9298b10cba8daf7a6421ff77af105d4eed9f06563ce`  
		Last Modified: Thu, 20 Aug 2026 17:58:41 GMT  
		Size: 11.4 MB (11390642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d04eee4555c55775755bdeeea1d5991e16bcb14c10ffc16ec910cf6b6e601565`  
		Last Modified: Thu, 20 Aug 2026 17:58:40 GMT  
		Size: 21.7 KB (21694 bytes)  
		MIME: application/vnd.in-toto+json
