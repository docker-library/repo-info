## `gradle:9-jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:dc23a481e373e252b3d55b783583edb9916f7e363d3d30e948a55340a3a79c16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:f6253a3ce70ceb7647ff6ef6ec3cc429e5059292b889f0c9cd880675b7568d7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.7 MB (472746797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d38e659e73fbd18fbe822f1620423b452b1f23c522ebbf86114b1799fb82025`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:23 GMT
ARG version=21.0.13.0.10-1
# Fri, 23 Oct 2026 18:09:23 GMT
ARG resource_version=21.0.13.0.10
# Fri, 23 Oct 2026 18:09:23 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:23 GMT
# ARGS: version=21.0.13.0.10-1 resource_version=21.0.13.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 23 Oct 2026 18:19:34 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 18:19:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 18:19:34 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 18:19:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 18:19:34 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 18:19:34 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 18:19:34 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 18:19:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 18:19:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 18:19:37 GMT
USER gradle
# Fri, 23 Oct 2026 18:19:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 18:19:37 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc896a7d1efefd988d47538a19738fa6dc91dcd9033556363e5f7bc0ac46288`  
		Last Modified: Fri, 23 Oct 2026 18:09:46 GMT  
		Size: 170.7 MB (170742693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06c158d8066fcdaea5ccdb91c36a35602869b9b1ab2b57321948eb18119b36c`  
		Last Modified: Fri, 23 Oct 2026 18:20:09 GMT  
		Size: 95.8 MB (95794285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499cb08f199f97afeb061030db7286a44a8b857cba301955d56db842cc75a8ad`  
		Last Modified: Fri, 23 Oct 2026 18:20:06 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52062f8e7b44587976aa28b39269cb230a7a4274933ebec333ece4b0b6f73d09`  
		Last Modified: Fri, 23 Oct 2026 18:20:10 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbb61451c9d6a0d2d45e6a8d9b58e24940dfb0f0532c47579a62e006fd2418a`  
		Last Modified: Fri, 23 Oct 2026 18:20:06 GMT  
		Size: 25.6 KB (25607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:1f1239d05f3fbeab306355a65796e80db56b9f860c29541c0cf3239120dfb456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12684986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3373761c3fb1e8c04e4bbdb08afc2f3d53015727d4820e1355199b930b32ba4c`

```dockerfile
```

-	Layers:
	-	`sha256:080e89595b741111cac35f2e8c06cef1f7f3100c38813807968ff5f5b1109fc5`  
		Last Modified: Fri, 23 Oct 2026 18:20:06 GMT  
		Size: 12.7 MB (12663335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a947757e959add77008ae54c9c5e7832ae0a5c2ac7967e280353ae2dbb87cc7`  
		Last Modified: Fri, 23 Oct 2026 18:20:06 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:3efa04a2d56424d53af553c29a9ff9d70302b9bcaa0191dd51373885fb99111e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.3 MB (469321832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fcde049f3bb7a9351528eaa25f2b8d746a0c8964284d55f33e8b94f5c4f2812`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:17 GMT
ARG version=21.0.13.0.10-1
# Fri, 23 Oct 2026 18:09:17 GMT
ARG resource_version=21.0.13.0.10
# Fri, 23 Oct 2026 18:09:17 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:17 GMT
# ARGS: version=21.0.13.0.10-1 resource_version=21.0.13.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:17 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 23 Oct 2026 18:19:15 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 18:19:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 18:19:15 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 18:19:16 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 18:19:16 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 18:19:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 18:19:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 18:19:19 GMT
USER gradle
# Fri, 23 Oct 2026 18:19:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 18:19:19 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15848e3476ea8155721889d8257147875c3823d4b9bf6bfebe9419373ff5281a`  
		Last Modified: Fri, 23 Oct 2026 18:09:40 GMT  
		Size: 169.0 MB (169017611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e202f08dc0329c973e2fccd7aa604c9a72ce938da16026cda7a1e4e8233f5fdf`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 95.2 MB (95210283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df94593edc499a9fda6cdc198ff3452aedd6df2d3ae6ff3626b72c581f3c503e`  
		Last Modified: Fri, 23 Oct 2026 18:19:49 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de99463f82c49708236c5dc8e84895948aab0351b18f6c0ba7181df78f22dbc`  
		Last Modified: Fri, 23 Oct 2026 18:19:55 GMT  
		Size: 151.5 MB (151533609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834af62f13c12976dd4e2b914ddf06286de97592b4d4b2080203f3beb50e7dd5`  
		Last Modified: Fri, 23 Oct 2026 18:19:49 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:0e506a7cc6339fb00502ffad66ee74ec0be292a0b0c000a9e571a23f13caf2c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12684186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed1d69364e9c1f3ef6550d689b904847f1b49cef1b1740f43f0c8c2c95d39808`

```dockerfile
```

-	Layers:
	-	`sha256:9caf48254f9c07a31ae885b40839c3fc36fde4c0c2ceb69e794ab35a46b341b2`  
		Last Modified: Fri, 23 Oct 2026 18:19:50 GMT  
		Size: 12.7 MB (12662338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4b961f074b76af145e5a090eb66af488e16df9072dd96d2a0bf35fab8ca71fd`  
		Last Modified: Fri, 23 Oct 2026 18:19:49 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
