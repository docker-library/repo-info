## `gradle:9-jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:9db5cf34c6f4fd95c62301e19600511d17eaf26ae86a543f845b13b75657966d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:633e51bcb75057409bcf851a88b48564b367168023bf1aaceee3afc8dae00df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.2 MB (456172377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d57c7ea953e5d1b09f037442b05351feb6579b786766c7ee3e27cba6dca8a5`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:58 GMT
ARG version=21.0.13.0.11-1
# Mon, 16 Nov 2026 23:10:58 GMT
ARG resource_version=21.0.13.0.11
# Mon, 16 Nov 2026 23:10:58 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:58 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:58 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 17 Nov 2026 00:09:33 GMT
CMD ["gradle"]
# Tue, 17 Nov 2026 00:09:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Nov 2026 00:09:33 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 17 Nov 2026 00:09:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 17 Nov 2026 00:09:33 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Nov 2026 00:09:34 GMT
WORKDIR /home/gradle
# Tue, 17 Nov 2026 00:09:34 GMT
ENV GRADLE_VERSION=9.9.1
# Tue, 17 Nov 2026 00:09:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Tue, 17 Nov 2026 00:09:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 17 Nov 2026 00:09:36 GMT
USER gradle
# Tue, 17 Nov 2026 00:09:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 17 Nov 2026 00:09:37 GMT
USER root
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4c67523f8432bcce75484df2c30a8c327080dd82f76f95d82bdd0c740a8430`  
		Last Modified: Mon, 16 Nov 2026 23:11:22 GMT  
		Size: 170.7 MB (170743030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b083015b3594d87f913a213b9eb26185504af387384f438529f45c6a474f4c`  
		Last Modified: Tue, 17 Nov 2026 00:10:08 GMT  
		Size: 96.0 MB (96011866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:134bee2de761bcfb738a97eba67712683b69e800da7162a65ed9ed4f5fe5d9e1`  
		Last Modified: Tue, 17 Nov 2026 00:10:04 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21312f8f6bb6bb829f7d4215e8920750ffcb397f2d8d3b3d6e12d57b83264d8`  
		Last Modified: Tue, 17 Nov 2026 00:10:10 GMT  
		Size: 134.8 MB (134820896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68d4c39fd8c149ed7fc24eb27416c50622b44ffe17df911a906bedc1070e7e0`  
		Last Modified: Tue, 17 Nov 2026 00:10:04 GMT  
		Size: 25.6 KB (25616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:5f9ad7b7fd0c1ae4296e467a921db87759833c666bf0e9d4535a595a926167a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12693085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2e85b2b845126d8f1a5dcd7f3652c18134cbb13f27659de9d045a7fa63f34a2`

```dockerfile
```

-	Layers:
	-	`sha256:3cad0dda012bd079850e6a345bcd6cee52bc9c7fcdbf5649e1ddb0bfd25443b7`  
		Last Modified: Tue, 17 Nov 2026 00:10:05 GMT  
		Size: 12.7 MB (12671435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa53896f0dce1b794b508cc85b145e5206b5ffb7e5fc6b55c11c0c939b94fa7c`  
		Last Modified: Tue, 17 Nov 2026 00:10:04 GMT  
		Size: 21.6 KB (21650 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:bdc40b88cfc3c5647850b1806cf744a90ff6b417a8af9241be271ff4398c825e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.7 MB (452736752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03de2c71392abb12c5d400768b603a5c372b45135bcf462a262aa91b618a4003`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:46 GMT
ARG version=21.0.13.0.11-1
# Mon, 16 Nov 2026 23:10:46 GMT
ARG resource_version=21.0.13.0.11
# Mon, 16 Nov 2026 23:10:46 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:46 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:46 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 17 Nov 2026 00:09:20 GMT
CMD ["gradle"]
# Tue, 17 Nov 2026 00:09:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Nov 2026 00:09:20 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 17 Nov 2026 00:09:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 17 Nov 2026 00:09:20 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Nov 2026 00:09:20 GMT
WORKDIR /home/gradle
# Tue, 17 Nov 2026 00:09:20 GMT
ENV GRADLE_VERSION=9.9.1
# Tue, 17 Nov 2026 00:09:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Tue, 17 Nov 2026 00:09:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 17 Nov 2026 00:09:23 GMT
USER gradle
# Tue, 17 Nov 2026 00:09:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 17 Nov 2026 00:09:24 GMT
USER root
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0092060c684d3bb3c08d3629c24e7718d1d4b526405b64cce47c3aceb0695c3`  
		Last Modified: Mon, 16 Nov 2026 23:11:10 GMT  
		Size: 169.0 MB (169018937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:242ab491382cb37eca1fc7f297a85b8d5c45de6487f10377d5937e8a6a721c75`  
		Last Modified: Tue, 17 Nov 2026 00:09:59 GMT  
		Size: 95.4 MB (95412814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800ae8e1ca4390f4b8ead6f78ee0900ce95bfd7888e9c479a254b63c5d560de8`  
		Last Modified: Tue, 17 Nov 2026 00:09:54 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc25179de5e39a3519987059e7a58f8b8d21b097b58936278da61df764277971`  
		Last Modified: Tue, 17 Nov 2026 00:10:00 GMT  
		Size: 134.8 MB (134820904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc73b1e2b5806a4d2b9d9216d115c3a31fbe6bc2cf7c7768469fae535123ad03`  
		Last Modified: Tue, 17 Nov 2026 00:09:54 GMT  
		Size: 29.3 KB (29342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:31f70e658c9e77588b7c254fdaaf5f31eeae50e1ff06b4657da4502c6e1a9b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12692286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e5c2f9ff7745a7be7925b5a61fb074c2927822832fb08dc175a960237d55a9`

```dockerfile
```

-	Layers:
	-	`sha256:fcf1481528275910ca6ff20b10c11fa6037e221e59f8933263d1f86201cc260c`  
		Last Modified: Tue, 17 Nov 2026 00:09:55 GMT  
		Size: 12.7 MB (12670438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:225358d9b1e0afe7a47810b6e7d1f9d06fdc328d872b5577a0f954a81ac44cbe`  
		Last Modified: Tue, 17 Nov 2026 00:09:54 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
