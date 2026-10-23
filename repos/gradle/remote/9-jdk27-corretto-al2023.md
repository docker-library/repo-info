## `gradle:9-jdk27-corretto-al2023`

```console
$ docker pull gradle@sha256:0e7e898287badcb572d4f1fb4496e023184e9047c112945627e52beb3524519d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk27-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:935dfdb4e3062a3a75a30e7189adc95ad1174a7b37f2b432c55149504ccae646
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.6 MB (493622547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ffe95836acde15cbb2841c4688d18aa2bfb422590bdf1682e9ce445b8fe506`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:34 GMT
ARG version=27.0.0.36-1
# Fri, 23 Oct 2026 01:11:34 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:34 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:34 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 23 Oct 2026 02:09:27 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:09:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:09:27 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:09:27 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:09:27 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:09:27 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:09:27 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 02:09:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 02:09:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:09:30 GMT
USER gradle
# Fri, 23 Oct 2026 02:09:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 02:09:30 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7598d15fd3ba1f73c7e2b2108f8b7fd3e34ef73a36df468e3c74443639e66e21`  
		Last Modified: Fri, 23 Oct 2026 01:11:57 GMT  
		Size: 191.6 MB (191620917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfcc270f661dad571ff2f2bf4af3ec7ed9562e8fcc04263c42056d44e6cf47cd`  
		Last Modified: Fri, 23 Oct 2026 02:10:04 GMT  
		Size: 95.8 MB (95791812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8755d80bb53f78b00063b190aafeac61cabbace6e040d80ad56936b7d93de546`  
		Last Modified: Fri, 23 Oct 2026 02:10:00 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189cf506bc1cb86880d3006db4c3de2cb23996549a1bfc810e3bee57ab450bd5`  
		Last Modified: Fri, 23 Oct 2026 02:10:05 GMT  
		Size: 151.5 MB (151533612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d35f355f36c9d0315643841a867bdea850dd3df90962c121692ed3534a14833`  
		Last Modified: Fri, 23 Oct 2026 02:10:00 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:146c32d1d4eb066bb34594fe3b5b58f9604d7c7e730e98787a5ba9902d7aaa6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12688314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb5f4235be1356d5a4be9fe198c7b5a6f01c38b49ac41653beafdd125d8a6ef`

```dockerfile
```

-	Layers:
	-	`sha256:72a4fc4217d5b00007e064d7082852b4c7b9e75e1ba2d10043a5d458e58fb2d3`  
		Last Modified: Fri, 23 Oct 2026 02:10:01 GMT  
		Size: 12.7 MB (12666663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa32bb202bc360cf3276dadfd1de84c167f31fbe6267fcde6186d062cbb9fe7e`  
		Last Modified: Fri, 23 Oct 2026 02:10:00 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:0511a7c70d7d8a9931fa38c23484d052c5f1c889fa4a35f9e880b95368d19811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.8 MB (489786131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73043580a61c5fd53dae18b8133b7cce9bf5cce2b7e8d00b28588a5e7f220623`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:33 GMT
ARG version=27.0.0.36-1
# Fri, 23 Oct 2026 01:11:33 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:33 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 23 Oct 2026 02:09:22 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:09:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:09:22 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:09:22 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:09:22 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:09:22 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:09:22 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 02:09:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 02:09:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:09:26 GMT
USER gradle
# Fri, 23 Oct 2026 02:09:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 02:09:26 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcaa7febc06ac5aa9e00e0df65b7edfb7d6c39b9ab644bfe8fad1cef9de00e4`  
		Last Modified: Fri, 23 Oct 2026 01:11:58 GMT  
		Size: 189.5 MB (189483303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed1496dacc172e4fee939068194ddc35acd6cffdf179a25f0b8cd3d777e0a75a`  
		Last Modified: Fri, 23 Oct 2026 02:10:00 GMT  
		Size: 95.2 MB (95208896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354812590b7fbf39b8a7ff82669907a2b27d5052d1222c058e7142ae8cd2a8a5`  
		Last Modified: Fri, 23 Oct 2026 02:09:56 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a97acfe12f9a99f50132c9fdba3c64a02a6ccbb5fb5303957f3928f75193226`  
		Last Modified: Fri, 23 Oct 2026 02:10:01 GMT  
		Size: 151.5 MB (151533611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb942bfb5b8ad405ebe7b6d958c46278e2f2d156f846650b57b7f32db1e3b82f`  
		Last Modified: Fri, 23 Oct 2026 02:09:57 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:59aa01438a0c11f5afe0d0e323d68aecf74d827aed834b5994f03a77a3528565
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12687515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0126c0158390f1bd767148a6dd1af45f5f58a9495e5f44af61b74ccb445111`

```dockerfile
```

-	Layers:
	-	`sha256:1dd929aeb922889e5020b0e8cd1fca3272100af6eea7a82e582efae31b81ad36`  
		Last Modified: Fri, 23 Oct 2026 02:09:57 GMT  
		Size: 12.7 MB (12665667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e78af9c327c9f631007394e6abba896f994d35c887aa2f918949fabeb605592c`  
		Last Modified: Fri, 23 Oct 2026 02:09:56 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
