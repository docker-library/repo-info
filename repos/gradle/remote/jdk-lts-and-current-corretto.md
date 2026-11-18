## `gradle:jdk-lts-and-current-corretto`

```console
$ docker pull gradle@sha256:4a92b914fda790b96a602000b93e0cab4a0a31cc6140e3109dde397f067619e8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk-lts-and-current-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:9038b22d279bcfee1427a0b61c1bb2f8a762d9ada5f2fd10f0cd2d79c44dc50c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.9 MB (652884112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cffd3d0c760fe76d5fe5ec3358762f16cac2e0a4be9cff02adc2f5fdbc5e9be`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:02 GMT
ARG version=25.0.5.1.2-1
# Wed, 18 Nov 2026 21:35:02 GMT
ARG resource_version=25.0.5.1.2
# Wed, 18 Nov 2026 21:35:02 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:02 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:02 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 18 Nov 2026 21:56:32 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Wed, 18 Nov 2026 21:57:04 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 18 Nov 2026 21:57:04 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Wed, 18 Nov 2026 21:57:04 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:57:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:57:04 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 18 Nov 2026 21:57:05 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Wed, 18 Nov 2026 21:57:05 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:57:05 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:57:05 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 18 Nov 2026 21:57:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 18 Nov 2026 21:57:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:57:08 GMT
USER gradle
# Wed, 18 Nov 2026 21:57:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:57:08 GMT
USER root
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7253d83a09e2ae79638b408da93783d31466366f84a741c08f5eb5067206564f`  
		Last Modified: Wed, 18 Nov 2026 21:35:26 GMT  
		Size: 189.7 MB (189652266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b79a11d1e5922e690b0a3110dc0aa19e4bf11b078fd3239fbd4eeeea62e8bec`  
		Last Modified: Wed, 18 Nov 2026 21:57:50 GMT  
		Size: 177.8 MB (177820721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519e8d1133aebab6dc6bd7e0a40b60b13e6d0e868a710af8e84aa8af0533ebd9`  
		Last Modified: Wed, 18 Nov 2026 21:57:48 GMT  
		Size: 96.0 MB (95993737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a5b48ce0ae260fde2b1108c1a912869bf6c3fa1219cb6361f8f29896759e5b`  
		Last Modified: Wed, 18 Nov 2026 21:57:42 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2ac8bf045efd24b6c1078c2399e164b21bf588ea10dd81c87bb25a9ed5475e`  
		Last Modified: Wed, 18 Nov 2026 21:57:49 GMT  
		Size: 134.8 MB (134820905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dda2cfa4e193d9addb40a6f9dfa8792d8fece8519fc09faf0aafdf8cb80dbdb`  
		Last Modified: Wed, 18 Nov 2026 21:57:43 GMT  
		Size: 25.6 KB (25605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-lts-and-current-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:9eaada2a7d3d5e9bff97ebe1213258fda1ad9879ef95753c0802ef523f3449e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12892281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fdfad931ab0cfd17473085951ecff693b7c6a337b5be8a3848d5e1411711303`

```dockerfile
```

-	Layers:
	-	`sha256:21114963a144390a10f15e1dc058788efbdfd8ff0f5f6ce646e5d132f1fe9326`  
		Last Modified: Wed, 18 Nov 2026 21:57:43 GMT  
		Size: 12.9 MB (12862771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79577520f7c2e59c260108f3f6972e919b5922174b33b67d2d381ece81607de4`  
		Last Modified: Wed, 18 Nov 2026 21:57:42 GMT  
		Size: 29.5 KB (29510 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-lts-and-current-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b3f2559126eea8c93de86ca5e950feca01fd91ba1735eccbc8e438685ae9c4e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647269547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775f6314a6b3b683840dfd1a4f1c3f8a8988785c1da224db0bc4fc2aecb451f1`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:57 GMT
ARG version=25.0.5.1.2-1
# Wed, 18 Nov 2026 21:35:57 GMT
ARG resource_version=25.0.5.1.2
# Wed, 18 Nov 2026 21:35:57 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:57 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:57 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 18 Nov 2026 21:53:18 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Wed, 18 Nov 2026 21:53:56 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 18 Nov 2026 21:53:56 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Wed, 18 Nov 2026 21:53:56 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:53:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:53:56 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 18 Nov 2026 21:53:57 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Wed, 18 Nov 2026 21:53:57 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:53:57 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:53:57 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 18 Nov 2026 21:53:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 18 Nov 2026 21:54:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:54:00 GMT
USER gradle
# Wed, 18 Nov 2026 21:54:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:54:00 GMT
USER root
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642ea915cc43453759395e7c803ccc6e101d99f76e34680e871567e6d58c01fb`  
		Last Modified: Wed, 18 Nov 2026 21:36:23 GMT  
		Size: 187.5 MB (187540189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f09656283a0bfb478ec5854f8ed2173d476b80677316fe828c4f35bf6355cf`  
		Last Modified: Wed, 18 Nov 2026 21:54:58 GMT  
		Size: 176.0 MB (176023684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ebca7e07c0fd71795812d27b472d8b6f7dc5d9860b5efb18532538c7e00ecb`  
		Last Modified: Wed, 18 Nov 2026 21:54:55 GMT  
		Size: 95.4 MB (95400107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88dbe2092d2b082fe3eb60c8a52711333dc37a00889a1a1de3c2562226ce8b74`  
		Last Modified: Wed, 18 Nov 2026 21:54:35 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e438e684f00a776860462da05f2f3b917d870a16c4f2d442aed312e1585cc0c8`  
		Last Modified: Wed, 18 Nov 2026 21:54:57 GMT  
		Size: 134.8 MB (134820899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f4984e95ae7cbe390e78898eab7866bc58fbf4e32ad887c4a615174000c048`  
		Last Modified: Wed, 18 Nov 2026 21:54:38 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-lts-and-current-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:5449f6914ab561ad8225fc40e5ce000d6a81d3c632885b5270ba7fbe48313828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12890818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f3e55d615bd82cd57bbeb8d3b2ea14e1bcbc603dec363e32a666ed3f44ae55`

```dockerfile
```

-	Layers:
	-	`sha256:9c3f56f71638e9485ba39b79a9ef9f946b76bdea1268912d44462b751b5526d0`  
		Last Modified: Wed, 18 Nov 2026 21:54:38 GMT  
		Size: 12.9 MB (12860989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe16227009c7b1ad4bf38aa2d3e16f5e3c0976c88c79d04afd80a4bbdec37838`  
		Last Modified: Wed, 18 Nov 2026 21:54:34 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
