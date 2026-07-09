## `gradle:jdk11-corretto`

```console
$ docker pull gradle@sha256:1fdb244defee34da57c0bf9c3dafb883d6958d7e295a2d3a038e2d50b33739b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk11-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:8d401fde570b9061776c75404a74311cc48cef32ca33297bb981dae23de9a9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.8 MB (432843715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d0f1c7c57fcb7a84e8bd0ce2893f1fb6d96ccf1a320e40bc02b5f8dd86407c`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:30 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:30 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:19 GMT
ARG version=11.0.31.11-1
# Wed, 08 Jul 2026 21:11:19 GMT
# ARGS: version=11.0.31.11-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:11:19 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 08 Jul 2026 22:11:33 GMT
CMD ["gradle"]
# Wed, 08 Jul 2026 22:11:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Jul 2026 22:11:33 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 08 Jul 2026 22:11:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 08 Jul 2026 22:11:33 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Jul 2026 22:11:33 GMT
WORKDIR /home/gradle
# Wed, 08 Jul 2026 22:11:33 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 08 Jul 2026 22:11:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 08 Jul 2026 22:11:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 08 Jul 2026 22:11:36 GMT
USER gradle
# Wed, 08 Jul 2026 22:11:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 08 Jul 2026 22:11:37 GMT
USER root
```

-	Layers:
	-	`sha256:7cc32cc3c75aa0d5acde5091a935996653f4e5538d4cea6ce80a19441163b9f1`  
		Last Modified: Wed, 08 Jul 2026 02:05:17 GMT  
		Size: 54.6 MB (54574155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5251d2e50e4f6f2841c23fadf29233b40c29ab4ca9b41d1fa6b2653588c5ecd5`  
		Last Modified: Wed, 08 Jul 2026 21:11:40 GMT  
		Size: 153.5 MB (153468687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a06e0011f11b0405b02070a8fd14614f9fe81a4715898c7920a5289e401175`  
		Last Modified: Wed, 08 Jul 2026 22:12:08 GMT  
		Size: 86.7 MB (86675743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a9dd57395dc512e9b6e3e2a9d44b833a292343a306506b35819d0b57526175`  
		Last Modified: Wed, 08 Jul 2026 22:12:04 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d34e3749ed8fd7755c731311420aa1ebc35efb084681adceac2f6fd42bf1b257`  
		Last Modified: Wed, 08 Jul 2026 22:12:09 GMT  
		Size: 138.1 MB (138068538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1c374707ed882f3f45e15660b15790d52cc8771902bb543274cb0dbbf41746`  
		Last Modified: Wed, 08 Jul 2026 22:12:04 GMT  
		Size: 54.9 KB (54913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:d950cb5d06d43f7cec6e218e4a4cb1fe7e7cca45674921641940117aec76c1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11403259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa92d0a3f9f190883049450e86bd8633e7e13bca82a068e6282749de119d5e66`

```dockerfile
```

-	Layers:
	-	`sha256:55c8f0a0a8ad478bc2c421251b7093e56b228f078060ecd82745a42b4acd994f`  
		Last Modified: Wed, 08 Jul 2026 22:12:05 GMT  
		Size: 11.4 MB (11381594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f4c75ac99f850ae07b695d43f8e8ed9d4a9f9d6cec94935b8a1d7535884a106`  
		Last Modified: Wed, 08 Jul 2026 22:12:04 GMT  
		Size: 21.7 KB (21665 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9f3a11895b05b0843bd6435b8b87490c6c63fa5838b7b61d1d6cbb0c5cc69f92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.7 MB (429670274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eb7d117dcd4c312abe4b64075de0dec5abaff3271661a50be2279aa24e5438a`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 08 Jul 2026 20:24:48 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:24:48 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:23 GMT
ARG version=11.0.31.11-1
# Wed, 08 Jul 2026 21:11:23 GMT
# ARGS: version=11.0.31.11-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:11:23 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 08 Jul 2026 22:11:43 GMT
CMD ["gradle"]
# Wed, 08 Jul 2026 22:11:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Jul 2026 22:11:43 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 08 Jul 2026 22:11:43 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 08 Jul 2026 22:11:43 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Jul 2026 22:11:43 GMT
WORKDIR /home/gradle
# Wed, 08 Jul 2026 22:11:43 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 08 Jul 2026 22:11:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 08 Jul 2026 22:11:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 08 Jul 2026 22:11:46 GMT
USER gradle
# Wed, 08 Jul 2026 22:11:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 08 Jul 2026 22:11:47 GMT
USER root
```

-	Layers:
	-	`sha256:d30c7cda96612bb38923feeb2e2027a5cbb8eab71cebfe3aad536791644c7ebf`  
		Last Modified: Wed, 08 Jul 2026 02:05:16 GMT  
		Size: 53.4 MB (53448934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92adc9f50b9383bd29203c64271cb87ea48e80ca2404dada76abfe1c22ef7dc4`  
		Last Modified: Wed, 08 Jul 2026 21:11:45 GMT  
		Size: 152.0 MB (152047219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f905288fc5a7ca63a14207d1213f7cecabe5cb7d8b72c9883c8e095065ca1d1a`  
		Last Modified: Wed, 08 Jul 2026 22:12:18 GMT  
		Size: 86.0 MB (86044369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44382c63d5ab34f91ce4079823d509ad3169be713086648b4d238075924347a0`  
		Last Modified: Wed, 08 Jul 2026 22:12:14 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c7668d33bde8dcd4401490abcbb128fba38a5def3bd6e1c2e440be5a0202f0`  
		Last Modified: Wed, 08 Jul 2026 22:12:20 GMT  
		Size: 138.1 MB (138068536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb13f6b655ca3239ea849cd9721fa5ea92904ba336924dbe5fb26be56898dd5`  
		Last Modified: Wed, 08 Jul 2026 22:12:15 GMT  
		Size: 59.5 KB (59538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:ee2b8f480cd06b9dde2f00e938ecefea13124a1fcebe5e03a06fa4f761b23c2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11403299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70f0afd90bcc7936fc924d452ae6bd52c69c5d28ba9ef3779a21d8a7a1bd34d`

```dockerfile
```

-	Layers:
	-	`sha256:ab633dfa71736562a4555bc2e507669a29fb915c76bf680c930735029b90d34a`  
		Last Modified: Wed, 08 Jul 2026 22:12:15 GMT  
		Size: 11.4 MB (11381437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63891504ce9e041c4edb059a3f9f4f0ed9296e9aef0a1a9d7060cb51ac64ddfc`  
		Last Modified: Wed, 08 Jul 2026 22:12:14 GMT  
		Size: 21.9 KB (21862 bytes)  
		MIME: application/vnd.in-toto+json
