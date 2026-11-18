## `gradle:8-jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:c67983c5c2ebb38448a168294d0ec16d310a0218ce4833eb3d8a53250572eb3c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:14e405c4219d2b6d5fc8c8b11fc37e3de4a245d67818edc9a1bcae3750ad9fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.5 MB (447484027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfb1a2dca26fc1a86c083f9a3a5ec47f3eabc61f3e9f8dea37e2805f8114afd`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:53 GMT
ARG version=17.0.21.1.2-1
# Wed, 18 Nov 2026 21:33:53 GMT
ARG resource_version=17.0.21.1.2
# Wed, 18 Nov 2026 21:33:53 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:33:53 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:33:53 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 18 Nov 2026 21:58:06 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:58:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:58:06 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 18 Nov 2026 21:58:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:58:06 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:58:06 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:58:06 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 18 Nov 2026 21:58:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 18 Nov 2026 21:58:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:58:09 GMT
USER gradle
# Wed, 18 Nov 2026 21:58:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:58:09 GMT
USER root
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643bff153a96c415a2ca214b0ee4f9f1e839eeb676ed5fa2ea4660a77aec946a`  
		Last Modified: Wed, 18 Nov 2026 21:34:12 GMT  
		Size: 157.4 MB (157432817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2d67910a30a4650774aa19ccca7b06539a36bc45eb125ec14b4b22147396842`  
		Last Modified: Wed, 18 Nov 2026 21:58:39 GMT  
		Size: 96.0 MB (95993629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce3124eb71647f61361b3c73853a1244747f13e1fa88aebb4d237d0c56b3463`  
		Last Modified: Wed, 18 Nov 2026 21:58:35 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ab8ca1eecd2c000987612b100011a0eca0129da6ebfdd5a6082bc89df879b8`  
		Last Modified: Wed, 18 Nov 2026 21:58:40 GMT  
		Size: 139.4 MB (139431922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca77990826169a89c1b6e536004946a2799cfe7f1fe2f16e7d2e7dae53e66492`  
		Last Modified: Wed, 18 Nov 2026 21:58:35 GMT  
		Size: 54.9 KB (54890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:22151f925250dcd7c455d2f11771501b8a375e2b737aad70b8dedcdc8c2db216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12653833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40833d812e4c6d031b8a46c876ea809fa5d26967afa7a07158d58c700b24dbca`

```dockerfile
```

-	Layers:
	-	`sha256:7956d5c851e6870e618dfc90890facd8e04bf0bdb698bad22ab005b84501caf7`  
		Last Modified: Wed, 18 Nov 2026 21:58:36 GMT  
		Size: 12.6 MB (12632968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6513f15eec70a7a50fa37553c8b96bbcdecf21a26fc6a363dfe496b6546908b1`  
		Last Modified: Wed, 18 Nov 2026 21:58:35 GMT  
		Size: 20.9 KB (20865 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:0ecd260c3dd677c359395d3ea99770bf478873f52d4992e8d51d10672b993425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.6 MB (444640882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5747dcfafb573b808e55c9d0be7a64d1fc9cca3cd197cfa67e0806e53310801d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:34:29 GMT
ARG version=17.0.21.1.2-1
# Wed, 18 Nov 2026 21:34:29 GMT
ARG resource_version=17.0.21.1.2
# Wed, 18 Nov 2026 21:34:29 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:34:29 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:34:29 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:34:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 18 Nov 2026 21:54:03 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:54:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:54:03 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 18 Nov 2026 21:54:03 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:54:03 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:54:03 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:54:03 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 18 Nov 2026 21:54:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 18 Nov 2026 21:54:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:54:06 GMT
USER gradle
# Wed, 18 Nov 2026 21:54:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:54:07 GMT
USER root
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f189da55103d7d58efc6eea0846301dc8a0741ca73bd452554e6d17cf0e7ca3`  
		Last Modified: Wed, 18 Nov 2026 21:34:52 GMT  
		Size: 156.3 MB (156296732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1342cb1961f97c9b90c30f003032587c1dac0abdd5603c1667d9f96106481aba`  
		Last Modified: Wed, 18 Nov 2026 21:54:41 GMT  
		Size: 95.4 MB (95397474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dceb67d36d2df1d37ec6bb6fc83baa4cd708735a34d3e35e7be5aca330e3236b`  
		Last Modified: Wed, 18 Nov 2026 21:54:36 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb38fd29bd73c5d37ed8b24c169b08272ef2d135dce4eee0a19b0d596248979`  
		Last Modified: Wed, 18 Nov 2026 21:54:42 GMT  
		Size: 139.4 MB (139431919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518d93d42e8f8d205b7c241a4ad91856dd5d0f3f7172f5a596d8f12b33ef27dc`  
		Last Modified: Wed, 18 Nov 2026 21:54:36 GMT  
		Size: 59.5 KB (59529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:e257ab2ef76bab951730d79150c9409104ec5412ab3f234f93eb83cadaf1394f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12652982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09dcf8eb88db50d895fdd371320e1d26e485d19c67b1689ad7e27ed0250bbb1`

```dockerfile
```

-	Layers:
	-	`sha256:18c3f7f631231ebb801e52d276088c4d58084d7c5f68df8a7b5b7e859bb4366a`  
		Last Modified: Wed, 18 Nov 2026 21:54:37 GMT  
		Size: 12.6 MB (12631944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c509093e68a21d7e41ad16da3644fab3767fff2ce7ce0baef0856de5ff7f5bd`  
		Last Modified: Wed, 18 Nov 2026 21:54:35 GMT  
		Size: 21.0 KB (21038 bytes)  
		MIME: application/vnd.in-toto+json
