## `gradle:jdk-lts-and-current-corretto`

```console
$ docker pull gradle@sha256:c6d16268e42d4f9a3b79ef4a0b99537246e120f0232f6dbefd385339b16ce014
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk-lts-and-current-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:f914d452f1f675a64255965fa6a594bd25f9d9a90c1f9a9e2c90ad1e6519de30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.8 MB (652761812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b8ff13c9f7560abe3e4ba5b426117c25f3a0fe4804bb42cb7d09e9613a1dff3`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:00:04 GMT
ARG version=25.0.5.0.10-1
# Thu, 05 Nov 2026 20:00:04 GMT
ARG resource_version=25.0.5.0.10
# Thu, 05 Nov 2026 20:00:04 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:00:04 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:00:04 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:00:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 11 Nov 2026 20:14:15 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Wed, 11 Nov 2026 20:14:46 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 11 Nov 2026 20:14:46 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Wed, 11 Nov 2026 20:14:46 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 20:14:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 20:14:46 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 20:14:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Wed, 11 Nov 2026 20:14:46 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 20:14:46 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 20:14:46 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 20:14:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 20:14:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 20:14:49 GMT
USER gradle
# Wed, 11 Nov 2026 20:14:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 20:14:49 GMT
USER root
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9334640a845dbaaf881b7f899922e1bba1bd1bc75d150d0b3e9ba0548aa0ec`  
		Last Modified: Thu, 05 Nov 2026 20:00:28 GMT  
		Size: 189.6 MB (189627364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef5c08cfc19c8dd2a2505f0dc25a88797eb08d016fd0de1ada6e036899252dcf`  
		Last Modified: Wed, 11 Nov 2026 20:15:33 GMT  
		Size: 177.8 MB (177803280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1dda917370e9c31012399845b38c6f5d99848059f38c9218b686b2c09eac69`  
		Last Modified: Wed, 11 Nov 2026 20:15:30 GMT  
		Size: 95.9 MB (95913259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57e44b1383d43d1564b736bebd384908694bb2fb6c0807c60be7ce16873fbc4`  
		Last Modified: Wed, 11 Nov 2026 20:15:24 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036b0db083c9e6338a8ba74737e080bb5cc62463ed8075b5598592431b4cc19e`  
		Last Modified: Wed, 11 Nov 2026 20:15:32 GMT  
		Size: 134.8 MB (134820905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:615ab8b817335086159d8778b3b4628450514a086e721ff3b0a7925029c2b610`  
		Last Modified: Wed, 11 Nov 2026 20:15:26 GMT  
		Size: 25.6 KB (25603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-lts-and-current-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:3e9a7344758273622f9246c17f1e811c87b73808f9554146cbd7381e48104670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12887478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcfe97849f6ec042a62e6e70ca4db13476e6c5d1c86cb00845749167d1e99a84`

```dockerfile
```

-	Layers:
	-	`sha256:423ed73602235d5ee6810e41c3b3c9b97062a000553b6e9ec3c1a608112ce7a7`  
		Last Modified: Wed, 11 Nov 2026 20:15:25 GMT  
		Size: 12.9 MB (12857968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:585122d50981a9a0aa51dab94805958f433c52f874bc8cf186f9dd64da8a15cc`  
		Last Modified: Wed, 11 Nov 2026 20:15:24 GMT  
		Size: 29.5 KB (29510 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-lts-and-current-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:4c87adda8836752f28845dcb8ee047a957a3b12d29cd50660e5025b2b88b2ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.2 MB (647159444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2667f334ef108c3d307e8022f0a65c329bc26a32267a352b4cff40e418dd4c43`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:16:45 GMT
ARG version=25.0.5.0.10-1
# Thu, 05 Nov 2026 20:16:45 GMT
ARG resource_version=25.0.5.0.10
# Thu, 05 Nov 2026 20:16:45 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:16:45 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:16:45 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:16:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 11 Nov 2026 19:54:20 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Wed, 11 Nov 2026 19:54:55 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 11 Nov 2026 19:54:55 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Wed, 11 Nov 2026 19:54:55 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 19:54:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 19:54:55 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 19:54:55 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Wed, 11 Nov 2026 19:54:55 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 19:54:56 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 19:54:56 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 19:54:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 19:54:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 19:54:58 GMT
USER gradle
# Wed, 11 Nov 2026 19:54:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 19:54:59 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12298a717fb0eb4a25b2f9a0a3e09bcfee4a6a58768458e397d2f0c023bb6dab`  
		Last Modified: Thu, 05 Nov 2026 20:17:10 GMT  
		Size: 187.5 MB (187523627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f46ed884f0506b73cbccd15913a4030e8bd874ab6f8157bfa1f2c53557395ca`  
		Last Modified: Wed, 11 Nov 2026 19:55:40 GMT  
		Size: 176.0 MB (176018605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dddab3ab73b827ee8fc7ecef1eebd749414dbfde3523b6b085f6d483835020d`  
		Last Modified: Wed, 11 Nov 2026 19:55:38 GMT  
		Size: 95.3 MB (95309077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25bf4fad0b775328871833dec1fff213113817a9f600a6999dc8a9fe3f79e454`  
		Last Modified: Wed, 11 Nov 2026 19:55:32 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455aeff12addd4122347d6d053688091569c5b2afb7ec325f8817c4bc1e10665`  
		Last Modified: Wed, 11 Nov 2026 19:55:39 GMT  
		Size: 134.8 MB (134820887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27b6a03206d413efcac8cb2c940b13609377f803cff7794f893067ecc572780`  
		Last Modified: Wed, 11 Nov 2026 19:55:33 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-lts-and-current-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:64f371c51d7e5bf216d2fb2702f2662f4a9d7b5b7797520d1359e94926b2441d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12886015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078e6a8b5f958cd4e24d96f59e235a6c67cc66422bc8d591519b65354dca0e11`

```dockerfile
```

-	Layers:
	-	`sha256:0cd47134106d8198811b6b14ae454dece38edfcb2be5015529472575e0f3a695`  
		Last Modified: Wed, 11 Nov 2026 19:55:33 GMT  
		Size: 12.9 MB (12856186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:510ebfb9fd35dfec55813870c5604779f9b3313c92a0ef55222a3d67b65e99a1`  
		Last Modified: Wed, 11 Nov 2026 19:55:32 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
