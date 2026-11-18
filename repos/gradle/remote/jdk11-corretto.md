## `gradle:jdk11-corretto`

```console
$ docker pull gradle@sha256:1f24e4bbc5cb8d3b0742bc23b07cdfec628cd7d495b7dc7f2d7e8789696ec420
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk11-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:2b790a0687145a1254b35a9f8a86d3ed5449520f4d35446fbdea1d551a7b5405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.6 MB (443596803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9a8ee5e7d49e9142c981036e083c8c31f361fc7231cbcbc8ecd0fca1c29219`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:00 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 21:33:00 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 21:33:00 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:33:00 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 18 Nov 2026 21:58:33 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:58:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:58:33 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 18 Nov 2026 21:58:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:58:33 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:58:33 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:58:33 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 18 Nov 2026 21:58:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 18 Nov 2026 21:58:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:58:35 GMT
USER gradle
# Wed, 18 Nov 2026 21:58:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:58:36 GMT
USER root
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5c9660bde8c253ee142cba4a690993c2cc3042ec916c6ec00770dc6b0f6ac8`  
		Last Modified: Wed, 18 Nov 2026 21:33:20 GMT  
		Size: 153.5 MB (153546249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d901e48de8e41a446660ffbe8d88f11108d1ac9046291c4091bb4a4b6c4ac308`  
		Last Modified: Wed, 18 Nov 2026 21:59:07 GMT  
		Size: 96.0 MB (95992964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86e930c7d3c4619a338a960b823583e7a1af52927d8e67990c4e06d71b31ca0`  
		Last Modified: Wed, 18 Nov 2026 21:59:03 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d212dff191c1547a22361581f9d67a16d06ad27d71a39cd2571ecaea3fb4768f`  
		Last Modified: Wed, 18 Nov 2026 21:59:08 GMT  
		Size: 139.4 MB (139431918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b13e3e3e34ba1e6bce8f9d454d042c581bd3134608f2c26870a18077c144739`  
		Last Modified: Wed, 18 Nov 2026 21:59:03 GMT  
		Size: 54.9 KB (54904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:f0fa067e5d70cf3718d8ea52d2acc325933e41fd5df848e6440cd0dc320516c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12679966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47dac5719c1b24d6fe7e30a58d708e8d618477eed6a930906813ff5e3e9e4286`

```dockerfile
```

-	Layers:
	-	`sha256:776000039f6b9e3de3bb7bdb06b663b0a904489b0bdcf901c5ac6a2d4fe6bf6b`  
		Last Modified: Wed, 18 Nov 2026 21:59:04 GMT  
		Size: 12.7 MB (12658301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6e0761d58b53e1063176ee3c6529a527c2e0f8b131657a880071e6b7e81343c`  
		Last Modified: Wed, 18 Nov 2026 21:59:03 GMT  
		Size: 21.7 KB (21665 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:82c56695cd877a0c035b1398f0a49a6a4cd5d75801f0726e7279525f0e3b70c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.5 MB (440479582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4337096e718b48a671a95fb6017335175ab5aee27ed45250aca653500cd9037d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:41 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 21:33:41 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 21:33:41 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:33:41 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 18 Nov 2026 21:54:22 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:54:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:54:22 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 18 Nov 2026 21:54:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:54:23 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:54:23 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:54:23 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 18 Nov 2026 21:54:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 18 Nov 2026 21:54:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:54:26 GMT
USER gradle
# Wed, 18 Nov 2026 21:54:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:54:26 GMT
USER root
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29dde512d23b04084e430e74d8700bd2484e6073568d2b0270cfd43a8b8de212`  
		Last Modified: Wed, 18 Nov 2026 21:34:03 GMT  
		Size: 152.1 MB (152135882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc8cefe3bb4ce73f2bbd26b4a27458641ba4c61b6d4ed31642f315facf54083`  
		Last Modified: Wed, 18 Nov 2026 21:54:59 GMT  
		Size: 95.4 MB (95397016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f304372988452c61d53ae8edc233064f6a84768c9e7efa3d29360f66ff4e1e`  
		Last Modified: Wed, 18 Nov 2026 21:54:55 GMT  
		Size: 1.7 KB (1651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9cbf3bd6f7c2cbdeb1c2bbb3a20de993a700d46d7f5d8cda0763d13a4a52fe`  
		Last Modified: Wed, 18 Nov 2026 21:55:00 GMT  
		Size: 139.4 MB (139431919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d683cae22470ce2b5c2e9ab240dc85f17d6deaa9c3f296f717292dff1474df`  
		Last Modified: Wed, 18 Nov 2026 21:54:55 GMT  
		Size: 59.5 KB (59532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:136b9be293232b9f958a9e3b5492f1c37db78e5fe5ea2997c40b203f0b60d402
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12680006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7cb3e32fa25c30968d2872f70115bd5a21d8cdc408229a84b26dbcf0a2f383`

```dockerfile
```

-	Layers:
	-	`sha256:5084a967c8336a5140c1f4f3ffae441342dfdacd535e607ba261080c5c9fdc87`  
		Last Modified: Wed, 18 Nov 2026 21:54:56 GMT  
		Size: 12.7 MB (12658144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:612ea92cc3f240e5eae6fcc449cf773fd6549a3c7df139576d8e2ddca74019e7`  
		Last Modified: Wed, 18 Nov 2026 21:54:55 GMT  
		Size: 21.9 KB (21862 bytes)  
		MIME: application/vnd.in-toto+json
