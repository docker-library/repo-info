## `gradle:8-jdk11-corretto-al2023`

```console
$ docker pull gradle@sha256:a94f512a784e4b521508fe0866c57e6a0149783b67e07739c13b6e9a81346fac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk11-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:fb2b8e0e2f2ff10a0f3cd57ad52d3a90bde2218598d969262f471f201bc879d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.5 MB (443477301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:859e0adeb7ca87acd0854c378dd2e7a2d95d07f20635e79b072304d548f16727`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:27 GMT
ARG version=11.0.33.0.10-1
# Fri, 30 Oct 2026 19:43:27 GMT
ARG resource_version=11.0.33.0.10
# Fri, 30 Oct 2026 19:43:27 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:43:27 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 30 Oct 2026 20:10:26 GMT
CMD ["gradle"]
# Fri, 30 Oct 2026 20:10:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 30 Oct 2026 20:10:26 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 30 Oct 2026 20:10:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 30 Oct 2026 20:10:26 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 30 Oct 2026 20:10:26 GMT
WORKDIR /home/gradle
# Fri, 30 Oct 2026 20:10:26 GMT
ENV GRADLE_VERSION=8.14.6
# Fri, 30 Oct 2026 20:10:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Fri, 30 Oct 2026 20:10:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 30 Oct 2026 20:10:28 GMT
USER gradle
# Fri, 30 Oct 2026 20:10:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 30 Oct 2026 20:10:29 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2149eeb03bd80d2a19e1f00ca35411e152d0c93505436b8a4d062d18357a1eb2`  
		Last Modified: Fri, 30 Oct 2026 19:43:47 GMT  
		Size: 153.5 MB (153546081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87d5ebfade321b7cfb1b37b8818966f9304a3e86b72db99a52de3ea9ccbda4fa`  
		Last Modified: Fri, 30 Oct 2026 20:11:02 GMT  
		Size: 95.8 MB (95798379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b664413cf92e805ff79a90822a0048c0b6b144b031033913734f89160b17d5`  
		Last Modified: Fri, 30 Oct 2026 20:10:57 GMT  
		Size: 1.6 KB (1641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4b3fb66775bdd66c93a24e8152c6444a778a036cac29348995b187fcadbf1c`  
		Last Modified: Fri, 30 Oct 2026 20:11:03 GMT  
		Size: 139.4 MB (139427344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3754d5f8921b1a38626a68bfc183ffdb0fec75409dcfb004088e631786d071e`  
		Last Modified: Fri, 30 Oct 2026 20:10:57 GMT  
		Size: 54.9 KB (54904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:99af406deb727cafffcb005ee1fbf01dc57091223df6cbcbc2090827573ea503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12674483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445c353729e520039c689bdfeface751e742ad2eadf74c3a123261e681347d4d`

```dockerfile
```

-	Layers:
	-	`sha256:a19129061a84488576c09a3617d432890bdce91e169d85eaaf913706dfc93144`  
		Last Modified: Fri, 30 Oct 2026 20:10:58 GMT  
		Size: 12.7 MB (12652818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d7d43154aeaac88669798fb5ff885a941ecd67de1b6372415296ed8b18b4018`  
		Last Modified: Fri, 30 Oct 2026 20:10:57 GMT  
		Size: 21.7 KB (21665 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9d7947dd3ab96fa1a38fd22b873097e428fd46790911d56d0c05632b9c4b1beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 MB (440349773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec254f0f67bc1a76c998ed1c14c33a2d2e4f27507e5e0750e9a1cfffdc62501`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:57 GMT
ARG version=11.0.33.0.10-1
# Fri, 30 Oct 2026 19:43:57 GMT
ARG resource_version=11.0.33.0.10
# Fri, 30 Oct 2026 19:43:57 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:43:57 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 30 Oct 2026 20:10:30 GMT
CMD ["gradle"]
# Fri, 30 Oct 2026 20:10:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 30 Oct 2026 20:10:30 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 30 Oct 2026 20:10:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 30 Oct 2026 20:10:30 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 30 Oct 2026 20:10:30 GMT
WORKDIR /home/gradle
# Fri, 30 Oct 2026 20:10:30 GMT
ENV GRADLE_VERSION=8.14.6
# Fri, 30 Oct 2026 20:10:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Fri, 30 Oct 2026 20:10:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 30 Oct 2026 20:10:32 GMT
USER gradle
# Fri, 30 Oct 2026 20:10:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 30 Oct 2026 20:10:33 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed1d6ce589243b7407f21188a283c22c689a80ac1631976debdd601ec38c02e9`  
		Last Modified: Fri, 30 Oct 2026 19:44:19 GMT  
		Size: 152.1 MB (152111666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a515acc93ea8c46e7e58b3cbac5f569787ac0aaa76e20985586205c83192fd2`  
		Last Modified: Fri, 30 Oct 2026 20:11:07 GMT  
		Size: 95.2 MB (95220229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac6fa174bd6b39c2c65d63cfc8793c74abee5528a20319165dce8da52f49c7d`  
		Last Modified: Fri, 30 Oct 2026 20:11:03 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2ae62eebacc48a81467280cf8ac7d2c85faeb5e4366f31e719d6cc0d0a12aa`  
		Last Modified: Fri, 30 Oct 2026 20:11:08 GMT  
		Size: 139.4 MB (139427353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bcf25cbefde5651c9246d1f497832b06294983f1094d28d4feb4f734f6c14c2`  
		Last Modified: Fri, 30 Oct 2026 20:11:03 GMT  
		Size: 59.5 KB (59531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:fbd8a0b88385f28838bd8ea82413231c64de371850425742e2f78d648c3f0707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12674522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c56aab251ec32d384860c5a61572c5efff6a0c60676013e60fcad75b8f18e8b6`

```dockerfile
```

-	Layers:
	-	`sha256:ec32898297100fb90fb47d0b9c8e920ab210e23ecd0dfe5c2270bd5a122d5952`  
		Last Modified: Fri, 30 Oct 2026 20:11:04 GMT  
		Size: 12.7 MB (12652661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e67f3e3ef524c220cc823f2792af98a7d77a651005a21beb9f89860cfc989c4`  
		Last Modified: Fri, 30 Oct 2026 20:11:03 GMT  
		Size: 21.9 KB (21861 bytes)  
		MIME: application/vnd.in-toto+json
