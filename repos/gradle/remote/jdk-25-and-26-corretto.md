## `gradle:jdk-25-and-26-corretto`

```console
$ docker pull gradle@sha256:c0bdff0544f44a7d00a483fb45617756cc5819b9005ebc522246a31c791dc0cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk-25-and-26-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:b184f79f0e20bb9f2c941502ffbb51c891f93e52ff01d56377bc3fea589423ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.8 MB (650774617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff26bbf2787e719b3dfa27028b8615b81eafc9d1a30e674f73295e7d531d3e1`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:51 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:51 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:51 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:51 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 04 Aug 2026 01:18:09 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Tue, 04 Aug 2026 01:18:28 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 04 Aug 2026 01:18:28 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Tue, 04 Aug 2026 01:18:28 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:18:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:18:28 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:18:28 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Tue, 04 Aug 2026 01:18:28 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:18:28 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:18:28 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 04 Aug 2026 01:18:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 04 Aug 2026 01:18:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:18:31 GMT
USER gradle
# Tue, 04 Aug 2026 01:18:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 01:18:31 GMT
USER root
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2408eb84527cb80413943a5c5046a2c3ecf630ffa06142e5bc05f3767756c5da`  
		Last Modified: Tue, 04 Aug 2026 00:59:15 GMT  
		Size: 189.5 MB (189475802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc884d69205532eef22d56359f3254335f517808de557bfab3c7baab535654ee`  
		Last Modified: Tue, 04 Aug 2026 01:19:09 GMT  
		Size: 179.4 MB (179421466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b09d8c5690e2f8322b68598b944657289046b5fd1f454915fcb5eadcef7a85d`  
		Last Modified: Tue, 04 Aug 2026 01:19:06 GMT  
		Size: 86.7 MB (86681249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e76876c5f4a0008ce1df09f3c2b7fbdccd1d1c4ca8d7dd7820cb233e31bff9`  
		Last Modified: Tue, 04 Aug 2026 01:19:01 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18ccbf343a676c01d738a646beb72f9f791f29e9489b31ac319382af00787a1`  
		Last Modified: Tue, 04 Aug 2026 01:19:08 GMT  
		Size: 140.6 MB (140596022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5d50fed1af2b61b5bf2ce79c981bcf969812c6ae7ce094f4f21639502f3a56`  
		Last Modified: Tue, 04 Aug 2026 01:19:02 GMT  
		Size: 25.6 KB (25608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:a5d8247698d04626c7ac74d6a81870a8103bb7cc80e3f83e526d16728c3c4ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11591989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b588e87865dc61dca4b3c8b4de768b81e90a3606d27d2ff333b6bfca0390a539`

```dockerfile
```

-	Layers:
	-	`sha256:d33c044a1fd8ea5ccfdc08165fe4a55eee9dc60295f11e02b0200a6363edd1ad`  
		Last Modified: Tue, 04 Aug 2026 01:19:02 GMT  
		Size: 11.6 MB (11562480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35f04282432507ccf1a4fbef45c5b498e572787a80d41dafb5751a3b40c23c01`  
		Last Modified: Tue, 04 Aug 2026 01:19:01 GMT  
		Size: 29.5 KB (29509 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-25-and-26-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:73104a046254e1cb5751b05a4dd780fdfae16b8cf55d077346510e6c3d906556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.8 MB (644795831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9346cbd2926f3642a87cc6435f8d80e55a1899ee5d5b1a6fd342ee3514c4668a`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:09 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:09 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:09 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:09 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 04 Aug 2026 01:31:13 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Tue, 04 Aug 2026 01:31:38 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 04 Aug 2026 01:31:38 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Tue, 04 Aug 2026 01:31:38 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:31:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:31:38 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:31:38 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Tue, 04 Aug 2026 01:31:38 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:31:38 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:31:38 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 04 Aug 2026 01:31:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 04 Aug 2026 01:31:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:31:41 GMT
USER gradle
# Tue, 04 Aug 2026 01:31:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 01:31:42 GMT
USER root
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6b841110a2e3ff6dc4a335180c283116cb5b503434736e3a118a33f30ef0fa`  
		Last Modified: Tue, 04 Aug 2026 00:58:34 GMT  
		Size: 187.4 MB (187379559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca9028d7bc3a08311e6b8539da2e2450df22aa63072c7d8a08b2e2bfb24fc80d`  
		Last Modified: Tue, 04 Aug 2026 01:32:22 GMT  
		Size: 177.3 MB (177296379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:794b182329deb495c6d6a148df51867e4f2ce7f2b81402f177788aca41342336`  
		Last Modified: Tue, 04 Aug 2026 01:32:19 GMT  
		Size: 86.0 MB (86044095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cd6c6e4a3d4e5ab354da4eb487a88811d1e5e9f0f674ac5e5fffc1880a499f`  
		Last Modified: Tue, 04 Aug 2026 01:32:14 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23bde99182d096e835a74fd3c703384ab810ede66d63d44e9053e724dd4b33c`  
		Last Modified: Tue, 04 Aug 2026 01:32:21 GMT  
		Size: 140.6 MB (140596024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c86c59760d735730a0f65f7983a7dec10dedade87548830d5df184d0c6920b`  
		Last Modified: Tue, 04 Aug 2026 01:32:16 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:cd0a866678f2bcf5b2322dbea17f0334892422a978923b0b3140cb9b34708b8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11590779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b63579c424c274034e27f99086480094cac31a262a0c8c488f2ca99f48396c4`

```dockerfile
```

-	Layers:
	-	`sha256:e595a0794498c00a2cf24559c11c4869799f70d6028b174d5ff0e35febc28753`  
		Last Modified: Tue, 04 Aug 2026 01:32:15 GMT  
		Size: 11.6 MB (11560950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1463a4e7bf98177e989bb7c4883c843941a846cf368dcd4cba2b8610adace640`  
		Last Modified: Tue, 04 Aug 2026 01:32:14 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
