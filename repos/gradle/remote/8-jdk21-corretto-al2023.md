## `gradle:8-jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:bb1ec3a17f11e75a13aee1a41990e8e9d1e8764637e4c6aa7b3eff8788808cf5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:b971c2057decb9d65b1b6f44eef61db1c4076876e31f8fd8126a77f103e624e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **450.0 MB (450028823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0660f8da41c2fa6deb242b939343afedef802cdeb6aec6d83226e08916ddce`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:28 GMT
ARG version=21.0.12.9-1
# Tue, 15 Sep 2026 00:12:28 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:28 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:28 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 15 Sep 2026 01:11:31 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:11:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:11:31 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:11:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 01:11:31 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:11:31 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:11:31 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 15 Sep 2026 01:11:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 15 Sep 2026 01:11:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:11:33 GMT
USER gradle
# Tue, 15 Sep 2026 01:11:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 01:11:34 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aabe83a1b6f319f59d1ab8b8de8ae739cd285e3baf9391f1ec0d1cb96d5075c`  
		Last Modified: Tue, 15 Sep 2026 00:12:50 GMT  
		Size: 170.4 MB (170436461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9ae4df52e3d677d9b9d902cc5438f3001ab7578704030c76637f1488f244e9`  
		Last Modified: Tue, 15 Sep 2026 01:12:04 GMT  
		Size: 86.9 MB (86880960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1e8d7ee5c9d33e0fbd34ef85746932c4895af51dafc79da3a1323f549642cf`  
		Last Modified: Tue, 15 Sep 2026 01:12:01 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c063cea4af186ce698c7fa397b9eb59126612a10b3afd921bed7e2573dcddf`  
		Last Modified: Tue, 15 Sep 2026 01:12:05 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b723e9d9e5778f792062eb606f7cf34476620035b88402447293dd4dc7b2d8`  
		Last Modified: Tue, 15 Sep 2026 01:12:01 GMT  
		Size: 54.9 KB (54906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:60c13803fdfe1094c91f840c9f30970435c4f8b758249573eb6f8333ef71c914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11380083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745cfa6fb0d5ad3acbda9114b2616e4dc38d818be5c7d5651183befaaf6c9134`

```dockerfile
```

-	Layers:
	-	`sha256:33ddd8217e20c6b21b3953501c1d796ab944506ea96e43e44bc1f174a7ff29a3`  
		Last Modified: Tue, 15 Sep 2026 01:12:02 GMT  
		Size: 11.4 MB (11359061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acbadace2b507c0088e706c0ae2452d5c57b2661923c1c896e7b0ef18690fd7a`  
		Last Modified: Tue, 15 Sep 2026 01:12:01 GMT  
		Size: 21.0 KB (21022 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ce2dccb08721242cd9d3c5ea6c4a411699a09cfe3ed020b4c427276561941f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.5 MB (446519028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77046a29e1916bcaf83303e11ec6a5a54bb1f6790cc6c92e3b66f53061b882de`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:05 GMT
ARG version=21.0.12.9-1
# Tue, 15 Sep 2026 00:12:05 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:05 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:05 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 15 Sep 2026 01:11:14 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:11:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:11:14 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:11:14 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 01:11:14 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:11:14 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:11:14 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 15 Sep 2026 01:11:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 15 Sep 2026 01:11:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:11:17 GMT
USER gradle
# Tue, 15 Sep 2026 01:11:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 01:11:18 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5fb1f4dba5c82b104bac792d11a75a29127e69aa846bbd18b2ca5f728f655e`  
		Last Modified: Tue, 15 Sep 2026 00:12:28 GMT  
		Size: 168.7 MB (168685717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a02aef54ffafe67e3e868a46ee3b70b5fbb27dacff563e1deb8e5992b2300ea`  
		Last Modified: Tue, 15 Sep 2026 01:11:50 GMT  
		Size: 86.3 MB (86250993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9502c4d349c3be30dc67c2a73c9b419983a3ee00bb79e49653161595c0c20187`  
		Last Modified: Tue, 15 Sep 2026 01:11:46 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e6675adb46fd7c4a5ad6f8ca62d0f8c2d7c86f499c59836a2d054c37173680`  
		Last Modified: Tue, 15 Sep 2026 01:11:52 GMT  
		Size: 138.1 MB (138068536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2869f5580ff5c503ce2cf3b01279f1f3ef183aac79b5d98f47939175a9eef6a3`  
		Last Modified: Tue, 15 Sep 2026 01:11:46 GMT  
		Size: 59.5 KB (59535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:c9b1467725634f0681bba767428ae2d986e1ccd24c9943ac9c75311bf202712e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11379236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9634ad81fc99a6333a9f0b3635985d63077d00ed7157488992f2e6c69ea468c`

```dockerfile
```

-	Layers:
	-	`sha256:d1e7918fa402935f0ec9f186db1e8cf99147f93b07b7c9bb1772f6ad316f4112`  
		Last Modified: Tue, 15 Sep 2026 01:11:47 GMT  
		Size: 11.4 MB (11358040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97900b357fa8bebb7f11b7c393c8e796bcbc46f1cd671e531955c1f181018615`  
		Last Modified: Tue, 15 Sep 2026 01:11:46 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.in-toto+json
