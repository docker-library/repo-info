## `gradle:jdk27-corretto`

```console
$ docker pull gradle@sha256:b3dcb0577b693dd14e08c2a80c762b132eb68b74345761ff9ff602d5b9790101
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk27-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:75cf1a9227a5cbbac9d1a98e2d97c507c3da210cc294aa1f7b723e7b2558c489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.5 MB (477459826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16973aec044739afda9acb1492c8286497a113cea91742d77c3429eac31481ef`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:11:21 GMT
ARG version=27.0.1.0.11-1
# Mon, 16 Nov 2026 23:11:21 GMT
ARG resource_version=27.0.1.0.11
# Mon, 16 Nov 2026 23:11:21 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:11:21 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:11:21 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:11:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Tue, 17 Nov 2026 00:09:56 GMT
CMD ["gradle"]
# Tue, 17 Nov 2026 00:09:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Nov 2026 00:09:56 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 17 Nov 2026 00:09:57 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 17 Nov 2026 00:09:57 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Nov 2026 00:09:57 GMT
WORKDIR /home/gradle
# Tue, 17 Nov 2026 00:09:57 GMT
ENV GRADLE_VERSION=9.9.1
# Tue, 17 Nov 2026 00:09:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Tue, 17 Nov 2026 00:10:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 17 Nov 2026 00:10:01 GMT
USER gradle
# Tue, 17 Nov 2026 00:10:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 17 Nov 2026 00:10:02 GMT
USER root
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1351c6abd268b0d6dc722712e2f3bde252a8f56f6f6b3d4dcfad78c653b1a809`  
		Last Modified: Mon, 16 Nov 2026 23:11:47 GMT  
		Size: 192.0 MB (192029448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d444077402798c16689e986d1663e39a3606db40ef32f346cb8b5e359889324f`  
		Last Modified: Tue, 17 Nov 2026 00:10:36 GMT  
		Size: 96.0 MB (96012888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22807a20822003e1698eff997d441c02a6b816122f6ff6ccc0b32a4dbd85eea0`  
		Last Modified: Tue, 17 Nov 2026 00:10:32 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a46adfda6fcc90294fadcdb8389d964e39b3fada1d7c85c1a555bcf46c0a86`  
		Last Modified: Tue, 17 Nov 2026 00:10:37 GMT  
		Size: 134.8 MB (134820903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559eec902967a011bb1cba5e19507f043f764d36715d3c1fb9ac285076eaddd0`  
		Last Modified: Tue, 17 Nov 2026 00:10:32 GMT  
		Size: 25.6 KB (25618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:10126b6c58f44d6cae34a6dbc8735f6dee5b3502ca6fd4d1724f88b2b1f9967b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12696432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:574647548c5c28608418669327ce88d5675314ac6e091a4424dc4e2207ba882a`

```dockerfile
```

-	Layers:
	-	`sha256:f3afa1a48e10738a4986c6698a012dd697a19b81d3aacd571d4e13a2ed98278c`  
		Last Modified: Tue, 17 Nov 2026 00:10:32 GMT  
		Size: 12.7 MB (12674781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84bead0c5e222854f4b798f7b9f056791e4c35a0d34fa006959f8a34425385ff`  
		Last Modified: Tue, 17 Nov 2026 00:10:32 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d612aac1a85fd8da17b0b7f2e5a216c4fea23173aa1e33ddde323ebf0d6920fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **473.9 MB (473908534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b3ab0ca14641c0a3cdecf3a059ae7ebe6c0c11a286441d80f3ac7a083dee84`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:11:16 GMT
ARG version=27.0.1.0.11-1
# Mon, 16 Nov 2026 23:11:16 GMT
ARG resource_version=27.0.1.0.11
# Mon, 16 Nov 2026 23:11:16 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:11:16 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:11:16 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:11:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Tue, 17 Nov 2026 00:09:46 GMT
CMD ["gradle"]
# Tue, 17 Nov 2026 00:09:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Nov 2026 00:09:46 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 17 Nov 2026 00:09:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 17 Nov 2026 00:09:46 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Nov 2026 00:09:46 GMT
WORKDIR /home/gradle
# Tue, 17 Nov 2026 00:09:46 GMT
ENV GRADLE_VERSION=9.9.1
# Tue, 17 Nov 2026 00:09:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Tue, 17 Nov 2026 00:09:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 17 Nov 2026 00:09:49 GMT
USER gradle
# Tue, 17 Nov 2026 00:09:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 17 Nov 2026 00:09:50 GMT
USER root
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98eb5161dcfc1576f75a18f54b10f211c2020e137f4eea7accf50bad13fedb17`  
		Last Modified: Mon, 16 Nov 2026 23:11:42 GMT  
		Size: 190.2 MB (190190277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5e30bf985d950bfe8b3f733abffceb75a5fcd432a5bb8fb3f745179f1272d1`  
		Last Modified: Tue, 17 Nov 2026 00:10:25 GMT  
		Size: 95.4 MB (95413262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d76237e993fa23a22927fa7f650bc9b909a3c7810322ef37a7785d1e935dbc`  
		Last Modified: Tue, 17 Nov 2026 00:10:20 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68dc7eb9d3272d562966a27190867970d85e8f2f406805e5324fee6bba551da`  
		Last Modified: Tue, 17 Nov 2026 00:10:25 GMT  
		Size: 134.8 MB (134820904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05bfb10314c02aed7a5b799497b3ad1686be16383bf265e08b6c0fc631ae7aa3`  
		Last Modified: Tue, 17 Nov 2026 00:10:20 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:9233da822b43d7048efc161288a18e5d806a11ab146b5b0180ea5af2fe7dd892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12695633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465bae15ae826ec28d9fd2561bbbb043c0e5857ce739eb0c7d3e45dfaab7a442`

```dockerfile
```

-	Layers:
	-	`sha256:7af4d745cc81eaf9833db5f0bbe9b440926c15c6aeb3113ab761677e87108077`  
		Last Modified: Tue, 17 Nov 2026 00:10:21 GMT  
		Size: 12.7 MB (12673785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbc5fca8e42ba6b577e72333c0e0826437aca1fbf8b80b12b04b607af1aab6db`  
		Last Modified: Tue, 17 Nov 2026 00:10:20 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
