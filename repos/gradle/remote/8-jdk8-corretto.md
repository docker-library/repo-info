## `gradle:8-jdk8-corretto`

```console
$ docker pull gradle@sha256:f067cae356fa33d041d9549567bc1428f5d2e020261635df60463a5594c97ad2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk8-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:f79e3195868ecd4f0a78e1f8a0d35bec1356d6ba7ce3738f22995ff6842004b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.2 MB (408177672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3037a3387553143a464d0aa4fc1e81b2cb8a4f840241309c7637dfb7e47336`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:10 GMT
ARG version=1.8.0_512.b09-1
# Mon, 16 Nov 2026 23:09:10 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:09:10 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Tue, 17 Nov 2026 00:10:14 GMT
CMD ["gradle"]
# Tue, 17 Nov 2026 00:10:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Nov 2026 00:10:14 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 17 Nov 2026 00:10:14 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 17 Nov 2026 00:10:14 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Nov 2026 00:10:14 GMT
WORKDIR /home/gradle
# Tue, 17 Nov 2026 00:10:14 GMT
ENV GRADLE_VERSION=8.14.7
# Tue, 17 Nov 2026 00:10:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Tue, 17 Nov 2026 00:10:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 17 Nov 2026 00:10:17 GMT
USER gradle
# Tue, 17 Nov 2026 00:10:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 17 Nov 2026 00:10:18 GMT
USER root
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94742f6f129558b6a9a087000fce8c78bcbd04522e9041cb270a2b69bc9a9eaa`  
		Last Modified: Mon, 16 Nov 2026 23:09:28 GMT  
		Size: 118.1 MB (118117709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefe875fab0e7cc1298091314bfcb954d0c32016f7f81d3efcd83e9173f38900`  
		Last Modified: Tue, 17 Nov 2026 00:10:52 GMT  
		Size: 96.0 MB (96002165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6100b156cf9eb6dfed7ea874964927866b76aae39375bef1b71686853c3ccf88`  
		Last Modified: Tue, 17 Nov 2026 00:10:47 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a1db11264f3a94cd7ed4ecb3a6ef4c9765db154664db74158e20f0789a970e`  
		Last Modified: Tue, 17 Nov 2026 00:10:53 GMT  
		Size: 139.4 MB (139431921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44983105320486d0b83bd52edf85b3b21cd9f24075c811e7c003d68537bae1c`  
		Last Modified: Tue, 17 Nov 2026 00:10:48 GMT  
		Size: 54.9 KB (54905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:544b260d1f4ee90838ec77000cc7aeaeaef26e67e441a2e1bb2d2a3570c23f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13031683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d946a96f819bd53fe4205b17a660fee38d699d226da8bb54e394a0900b92f8`

```dockerfile
```

-	Layers:
	-	`sha256:122c2984f907f4f8c31e70b9f974c122d7c6f0f139e4d029a189b9932afcfcec`  
		Last Modified: Tue, 17 Nov 2026 00:10:48 GMT  
		Size: 13.0 MB (13010029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ff672d21fcb08e47033c940d917219d64caae0a072ce08da252b5ad525b3033`  
		Last Modified: Tue, 17 Nov 2026 00:10:47 GMT  
		Size: 21.7 KB (21654 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk8-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ea1ab0eb3d942a9d05341d2067035c4963c084997be2b3365449555e28782c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.4 MB (406364880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5425cf2e6e6721cb8fdec22bc65deb57cdd065d950ffd89790270784bf99110`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:19 GMT
ARG version=1.8.0_512.b09-1
# Mon, 16 Nov 2026 23:09:19 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:09:19 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Tue, 17 Nov 2026 00:10:29 GMT
CMD ["gradle"]
# Tue, 17 Nov 2026 00:10:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Nov 2026 00:10:29 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 17 Nov 2026 00:10:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 17 Nov 2026 00:10:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Nov 2026 00:10:29 GMT
WORKDIR /home/gradle
# Tue, 17 Nov 2026 00:10:29 GMT
ENV GRADLE_VERSION=8.14.7
# Tue, 17 Nov 2026 00:10:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Tue, 17 Nov 2026 00:10:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 17 Nov 2026 00:10:35 GMT
USER gradle
# Tue, 17 Nov 2026 00:10:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 17 Nov 2026 00:10:35 GMT
USER root
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057d2ded5785acd718c6cdac540d2635205722b4cd73898ce3a3fc9982786362`  
		Last Modified: Mon, 16 Nov 2026 23:09:39 GMT  
		Size: 118.0 MB (118011685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa2ce009c89ee1e089944feab9eb3520e6f73e71f3a43f73f13e231e8a540b0`  
		Last Modified: Tue, 17 Nov 2026 00:11:10 GMT  
		Size: 95.4 MB (95406990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2efbf5ef02199d662af79a48492c29e5c105093905eb5ec34ac75f06523701`  
		Last Modified: Tue, 17 Nov 2026 00:11:06 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a4d507c993cb305a18908625b8c0761f43f5c01104c0286e3ddeb6be95bd61`  
		Last Modified: Tue, 17 Nov 2026 00:11:11 GMT  
		Size: 139.4 MB (139431920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aca0053cb6a70ca66210f23848f6efb1b4d68b3202ab89c5158fab34576797f`  
		Last Modified: Tue, 17 Nov 2026 00:11:06 GMT  
		Size: 59.5 KB (59532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:8632bb3a212f28c7c63718d774aef79041cc1ce784d554f80b72bf79b762978e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13032203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa5a3f25208821e3a4a2505d1fd8b05da46a7c0274c8c4caf5aa36b1a737ded`

```dockerfile
```

-	Layers:
	-	`sha256:e4146e41f696b8465744eadf5674f5f03a95c0a87fb9066a94c2f0741364190a`  
		Last Modified: Tue, 17 Nov 2026 00:11:07 GMT  
		Size: 13.0 MB (13010352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50edddcb4edf71ac228f0ff86aa3d2a75ec5e7e267dbaed51a57eabbecc83631`  
		Last Modified: Tue, 17 Nov 2026 00:11:06 GMT  
		Size: 21.9 KB (21851 bytes)  
		MIME: application/vnd.in-toto+json
