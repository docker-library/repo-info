## `gradle:9-jdk26-corretto`

```console
$ docker pull gradle@sha256:ca72212b8c42614af5aadcff902c54ce74847b39d6bea6ef3ab9d559e4f85033
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk26-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:8b9919f75ae4c9b710084b5970b875686afedd3bf365ceda403f091266c1e78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.5 MB (475510458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953217705444dfd8091c1d9c3d6d1ade019e4c234a12156d903a32cdfa0b9640`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:53 GMT
ARG version=26.0.2.10-1
# Tue, 04 Aug 2026 00:58:53 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:53 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:53 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Tue, 04 Aug 2026 01:31:13 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:31:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:31:13 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:31:13 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:31:13 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:31:13 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:31:13 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 04 Aug 2026 01:31:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 04 Aug 2026 01:31:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:31:16 GMT
USER gradle
# Tue, 04 Aug 2026 01:31:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 01:31:16 GMT
USER root
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747d7a61250941d0983530cfa68deabbdc34bcb3058d252140997ef8b8d3c669`  
		Last Modified: Tue, 04 Aug 2026 00:59:16 GMT  
		Size: 193.6 MB (193630258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799d05429980d2d26f4befac03a77a94bf21a89a8b1d7838e86608d92fc99793`  
		Last Modified: Tue, 04 Aug 2026 01:31:47 GMT  
		Size: 86.7 MB (86684209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c467c582be54c6906e99503da934799b479b5a05cede148e99d7a8846a8ec754`  
		Last Modified: Tue, 04 Aug 2026 01:31:44 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e603fb551708dd716b10f21bd62493076ae4b633b4e74e95bce741c9411f5`  
		Last Modified: Tue, 04 Aug 2026 01:31:48 GMT  
		Size: 140.6 MB (140596023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be353c335b98f48f4d5d5dd7ac9936d6ebfefb2d33e9b9bccba69523b15dc810`  
		Last Modified: Tue, 04 Aug 2026 01:31:44 GMT  
		Size: 25.6 KB (25610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:a825188835d1ffaa8879d556b8b94b9b240e57b88686150f6e6db11274a4a80c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11415042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db95521a26a140dbcdd2e8e1f9fcb92c639c81ece28814ace7f171e002971f9`

```dockerfile
```

-	Layers:
	-	`sha256:42a5b8c4edff8d6e98a77b6ac8d942bffc6279dae3b980e73d25610b5695b3ac`  
		Last Modified: Tue, 04 Aug 2026 01:31:44 GMT  
		Size: 11.4 MB (11393391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95a86408afe84e3dd3c8af0aecce997ce222ab4fe55dde14cdb5784cb3c9d54e`  
		Last Modified: Tue, 04 Aug 2026 01:31:44 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk26-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:e0e94401baae34895b74044567d5b681d89f01c168d9f93142a57bc8e5fa450b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.6 MB (471567639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e05fd1b4155f4505275347a7736bd265d89cf8bb2705ace4c68800e73398c89`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:34 GMT
ARG version=26.0.2.10-1
# Tue, 04 Aug 2026 00:58:34 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:34 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:34 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Tue, 04 Aug 2026 01:31:22 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:31:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:31:22 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:31:22 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:31:22 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:31:22 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:31:22 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 04 Aug 2026 01:31:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 04 Aug 2026 01:31:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:31:25 GMT
USER gradle
# Tue, 04 Aug 2026 01:31:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 01:31:25 GMT
USER root
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54aa034ee269a16d2d4d65b736386b1d67bd7e775503ffdc65e6ae4d84a45742`  
		Last Modified: Tue, 04 Aug 2026 00:58:59 GMT  
		Size: 191.4 MB (191447500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8473ea17b27e6fa89366efd6fb0a8006d8007b0f2301f4c0fb2c408fc1d5f81`  
		Last Modified: Tue, 04 Aug 2026 01:31:56 GMT  
		Size: 86.0 MB (86044500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ebc75340c8c2c02471d6eb6850b7d186abbc7d61a274b40a64abbe3497a7b9`  
		Last Modified: Tue, 04 Aug 2026 01:31:53 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe31134b4ad5cbe183db8c71f5323242606bd4747e8d86bf103d3a551d3f4531`  
		Last Modified: Tue, 04 Aug 2026 01:31:57 GMT  
		Size: 140.6 MB (140595972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a17f12326bf1b4f95e61bcd076165885629369fd964473bce9f078f9460c9f`  
		Last Modified: Tue, 04 Aug 2026 01:31:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:9e319588a1638c0b7cefcb77dc6527d0c1a7d1f5a92de378d434ca01ec7dbcae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11414248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39e970e069262d30fb529120a84002aba843c436785447159622401666063c32`

```dockerfile
```

-	Layers:
	-	`sha256:31ce0e3f6f2d81175b109e1f1f1f90e484058be97822e7b27214b48d2ef3098d`  
		Last Modified: Tue, 04 Aug 2026 01:31:54 GMT  
		Size: 11.4 MB (11392400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0222a79fdefabb6e7d80cac5d4c5a5da0df2757e3a784ee27cba8ff4e3cd0907`  
		Last Modified: Tue, 04 Aug 2026 01:31:53 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
