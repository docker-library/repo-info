## `gradle:6-jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:758749833e9df06e7fab4d9b64fd2c8b5c97dbed3faefa2890ebf38d7dc95333
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:6-jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:0de7b3e10c7716268c025dcadcafb1c829bc9472be9cf0900c6521a68b089a71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.4 MB (367445493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af69ea4b4e843c90696106ce2d10119d817e55e115bfed5f5821db2a639e5e7d`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:10:47 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:10:47 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:10:47 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 24 Jul 2026 00:13:11 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:13:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:13:11 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:13:11 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:13:11 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:13:11 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:13:11 GMT
ENV GRADLE_VERSION=6.9.4
# Fri, 24 Jul 2026 00:13:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Fri, 24 Jul 2026 00:13:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:13:13 GMT
USER gradle
# Fri, 24 Jul 2026 00:13:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 24 Jul 2026 00:13:14 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe57f5f97fde731751f395e310a2724bdce42a4757204a447a89e087c3e4198`  
		Last Modified: Thu, 23 Jul 2026 23:11:06 GMT  
		Size: 118.1 MB (118079398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d431563c6524e9026da887e6b9aa727e537619a38931d5c03f34021d683ffd`  
		Last Modified: Fri, 24 Jul 2026 00:13:41 GMT  
		Size: 86.7 MB (86662206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99274254da4e521dc4c734a51d4a7df486440b1d326e76649e120306f290779b`  
		Last Modified: Fri, 24 Jul 2026 00:13:39 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b913b63e99f6bdcc135994318b054b99ac21625c54e61aba2bb5eb8fec281f8`  
		Last Modified: Fri, 24 Jul 2026 00:13:42 GMT  
		Size: 107.7 MB (107696664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343ca732acfebddb8724308a27fa8c6a59e3395bfbba9b9e8c4213d2a5bf0a45`  
		Last Modified: Fri, 24 Jul 2026 00:13:38 GMT  
		Size: 431.3 KB (431282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:ab7d7cc4828be6ae123e14bd7cf72c794bbaaf8851a4b9bf60efa2f9ed073a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11646309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:700bebda43d18d2ce0d1eac35eb10a2f7a6e70af1e84f5422b6fb8ae916b5c20`

```dockerfile
```

-	Layers:
	-	`sha256:0a38a9cbc7d7903db7d41c950b2cf0bd30664880b693edf530e36f706d6526b1`  
		Last Modified: Fri, 24 Jul 2026 00:13:39 GMT  
		Size: 11.6 MB (11625445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58aede52046b78a88f6acffb664141b27a34b58c878c8394f4a267f626ff1ad6`  
		Last Modified: Fri, 24 Jul 2026 00:13:38 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ec8477ecc8607b644c1cd7557ab95a6725a22d234c039c4753ed50f36332140b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.6 MB (365571498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acc48570953c5b7263825010198a38d95f2aa59aa29239545adea7400856692`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:25 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:12:25 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:12:25 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 24 Jul 2026 00:13:04 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:13:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:13:04 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:13:04 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:13:04 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:13:04 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:13:04 GMT
ENV GRADLE_VERSION=6.9.4
# Fri, 24 Jul 2026 00:13:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Fri, 24 Jul 2026 00:13:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:13:07 GMT
USER gradle
# Fri, 24 Jul 2026 00:13:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 24 Jul 2026 00:13:07 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e6fc3bc6b9cb04d504bc7d30c32ed9dcdcc8250eb8cff05726547a63efcbee`  
		Last Modified: Thu, 23 Jul 2026 23:12:45 GMT  
		Size: 118.0 MB (117965689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54911f139a98ca6cc99ac8f21ac74184f5195610b19f6a7fb9aa7db487040076`  
		Last Modified: Fri, 24 Jul 2026 00:13:38 GMT  
		Size: 86.0 MB (86033236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f70178a9f0cb5f1a6d5118bc04bc6537373c5bfdca47c910ab2125f1f7274b`  
		Last Modified: Fri, 24 Jul 2026 00:13:35 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffabfb31d6c9efabc6a1721f7b2e5586fc6ee7e1f4740ffd1b770f1acd7cd0a`  
		Last Modified: Fri, 24 Jul 2026 00:13:38 GMT  
		Size: 107.7 MB (107696636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c6f0fac10c59f7c74b3d562aa1e5ef6a1c6b01421e6634179f577abd84a005`  
		Last Modified: Fri, 24 Jul 2026 00:13:36 GMT  
		Size: 425.0 KB (425025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:acaba1a9dc015481a945750fb4c5df2f50ac5ba694eca547be9a4abbb49357df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11646782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26411922271cf478a63674c8ae19ff7bb50e6bb3192529a4215a4769340436b`

```dockerfile
```

-	Layers:
	-	`sha256:1f0af29ab4b29c404ae894c119d1fb97d6ef5f60953125676dbd0fef2e5aed75`  
		Last Modified: Fri, 24 Jul 2026 00:13:36 GMT  
		Size: 11.6 MB (11625744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c99a2ae13864883db9a25110d0013edf826ba1f708037133eb075ab96f2f264`  
		Last Modified: Fri, 24 Jul 2026 00:13:34 GMT  
		Size: 21.0 KB (21038 bytes)  
		MIME: application/vnd.in-toto+json
