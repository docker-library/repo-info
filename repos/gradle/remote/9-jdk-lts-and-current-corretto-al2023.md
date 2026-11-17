## `gradle:9-jdk-lts-and-current-corretto-al2023`

```console
$ docker pull gradle@sha256:76f1d676f9664d6ae585bcae32598d3fa6462a6ee52c7ebf174c93faa921e0e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-lts-and-current-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:c1e8d9a3007870b505e43ff1be1ffd22721e4ee1dcaa8355aa7578ca78e2f505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.9 MB (652860215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a9e817b46dfb8a5f2993c7d57573fa32a766960169294131ab629ffb44cbde`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:11:09 GMT
ARG version=25.0.5.0.10-1
# Mon, 16 Nov 2026 23:11:09 GMT
ARG resource_version=25.0.5.0.10
# Mon, 16 Nov 2026 23:11:09 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:11:09 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:11:09 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:11:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 17 Nov 2026 00:09:32 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Tue, 17 Nov 2026 00:10:02 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 17 Nov 2026 00:10:02 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Tue, 17 Nov 2026 00:10:02 GMT
CMD ["gradle"]
# Tue, 17 Nov 2026 00:10:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Nov 2026 00:10:02 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 17 Nov 2026 00:10:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Tue, 17 Nov 2026 00:10:02 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Nov 2026 00:10:02 GMT
WORKDIR /home/gradle
# Tue, 17 Nov 2026 00:10:02 GMT
ENV GRADLE_VERSION=9.9.1
# Tue, 17 Nov 2026 00:10:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Tue, 17 Nov 2026 00:10:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 17 Nov 2026 00:10:05 GMT
USER gradle
# Tue, 17 Nov 2026 00:10:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 17 Nov 2026 00:10:06 GMT
USER root
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d3cf1dcce31cc16e6eaf494e61e8d542ffbd86dd4aed525d3d31e2fe10452e2`  
		Last Modified: Mon, 16 Nov 2026 23:11:36 GMT  
		Size: 189.6 MB (189625567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f2ca44c54e8e0db9d53619902bac7ab6f9dd1de1bd0531699a678baaf956c5`  
		Last Modified: Tue, 17 Nov 2026 00:10:47 GMT  
		Size: 177.8 MB (177803305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50f54f42fd3e923495df3825cb596a4c5218421dc2590065aac4b74c891d296`  
		Last Modified: Tue, 17 Nov 2026 00:10:45 GMT  
		Size: 96.0 MB (96013749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b90800fc4c7c5935f8dd4cd37d5dace0d57d69312c5c833d67f5197a5f55663`  
		Last Modified: Tue, 17 Nov 2026 00:10:39 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac310f7b4f84d40ec6e9528b8e5b47b58212d745cc194c6820e6ea2ba124388`  
		Last Modified: Tue, 17 Nov 2026 00:10:46 GMT  
		Size: 134.8 MB (134820901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6700efe3cf2272f8466db986220a91735ff08a552bbcfb0269841925dbafa3f`  
		Last Modified: Tue, 17 Nov 2026 00:10:40 GMT  
		Size: 25.6 KB (25616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:092aefb4e1d5f6b1437bfa869cea97acd03a6e9177d642d5f1b6771fcd65e453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12892283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d9a01979c97a4101a9f0f5e99e8918b71e03aa72343db5cd1f60f63ea75a2d`

```dockerfile
```

-	Layers:
	-	`sha256:e8644e8947bff987e55c31ebe958a472c94f998ec98a085cce179c55dd0360e7`  
		Last Modified: Tue, 17 Nov 2026 00:10:40 GMT  
		Size: 12.9 MB (12862773 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72484325090722d47f351b9ced24c786455158589faad872a960403118b3b0fb`  
		Last Modified: Tue, 17 Nov 2026 00:10:39 GMT  
		Size: 29.5 KB (29510 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-lts-and-current-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:200fd64a338c878f844a6eb786d9224522605fa8b3a847698e442acba55b0a20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647260517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6bf730324ae4b1144d62b634ef02f3a099c423c9375e2f64608ff6893094fb`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:11:07 GMT
ARG version=25.0.5.0.10-1
# Mon, 16 Nov 2026 23:11:07 GMT
ARG resource_version=25.0.5.0.10
# Mon, 16 Nov 2026 23:11:07 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:11:07 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:11:07 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:11:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 17 Nov 2026 00:09:26 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Tue, 17 Nov 2026 00:10:02 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 17 Nov 2026 00:10:02 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Tue, 17 Nov 2026 00:10:02 GMT
CMD ["gradle"]
# Tue, 17 Nov 2026 00:10:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Nov 2026 00:10:02 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 17 Nov 2026 00:10:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Tue, 17 Nov 2026 00:10:02 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Nov 2026 00:10:02 GMT
WORKDIR /home/gradle
# Tue, 17 Nov 2026 00:10:02 GMT
ENV GRADLE_VERSION=9.9.1
# Tue, 17 Nov 2026 00:10:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Tue, 17 Nov 2026 00:10:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 17 Nov 2026 00:10:05 GMT
USER gradle
# Tue, 17 Nov 2026 00:10:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 17 Nov 2026 00:10:06 GMT
USER root
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8587c4b97e86cf99df4416a196276fdff4c59456821567ae89ee9807783fb45c`  
		Last Modified: Mon, 16 Nov 2026 23:11:34 GMT  
		Size: 187.5 MB (187523093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7713ead0daa33ac7d3582ae4af83aae5165e367d39603868c196da0218ecb9`  
		Last Modified: Tue, 17 Nov 2026 00:10:48 GMT  
		Size: 176.0 MB (176018728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270cc9aba6e6791865899ebfb4459e9114cc9fe3e51957d5aa42fd5947bb9bfb`  
		Last Modified: Tue, 17 Nov 2026 00:10:45 GMT  
		Size: 95.4 MB (95413600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b90800fc4c7c5935f8dd4cd37d5dace0d57d69312c5c833d67f5197a5f55663`  
		Last Modified: Tue, 17 Nov 2026 00:10:39 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f53e493338cb7cc79cd1d56ae1e4627ebc64e7700bb6862aa6d24967c62f1a60`  
		Last Modified: Tue, 17 Nov 2026 00:10:47 GMT  
		Size: 134.8 MB (134820902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e067bfd9f5d96e5f06f09582ddb6f84cb8b323b54525a71a376d19d21ad8d9d7`  
		Last Modified: Tue, 17 Nov 2026 00:10:41 GMT  
		Size: 29.3 KB (29333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:eb23d4131e0e0dd0f997736e69a23ee508251c9b1646204a6229656df0a035a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12890820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b213f5c898720e9d441c7c9fa5de8f6bba1d1f3d943058d7b125730868f48929`

```dockerfile
```

-	Layers:
	-	`sha256:fd45fc6b5efdf13d6af993234b0b0e80af1ddffa35846f101b32404a388f39c2`  
		Last Modified: Tue, 17 Nov 2026 00:10:41 GMT  
		Size: 12.9 MB (12860991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97e1ce6eb45e4388d2f39c8150bf06320caf4e7d70d683009d27c1af16bb0bf9`  
		Last Modified: Tue, 17 Nov 2026 00:10:40 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
