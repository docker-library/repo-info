## `gradle:6-jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:6ac393113963f7bc1c32f4af00f4457d31facb562082a1036bc29fe7e50950e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:6-jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:444ebdc3d74eb7221feabf7685ab3622ca64f02acfc91c4b55bf4fd9cdf4c62e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.7 MB (367670474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07087a7f9620f1141b675457ffc3bfa43e35ce17de4d5392f5ecad405de135f1`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:21:16 GMT
ARG version=1.8.0_504.b01-1
# Thu, 17 Sep 2026 22:21:16 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:21:16 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:21:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 17 Sep 2026 23:22:48 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 23:22:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 23:22:48 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 17 Sep 2026 23:22:48 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 17 Sep 2026 23:22:48 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 23:22:48 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 23:22:48 GMT
ENV GRADLE_VERSION=6.9.4
# Thu, 17 Sep 2026 23:22:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Thu, 17 Sep 2026 23:22:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 23:22:50 GMT
USER gradle
# Thu, 17 Sep 2026 23:22:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 17 Sep 2026 23:22:51 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e715ef171f7dd2d91fa3e5369725e04544a8c19019fa2f85ee0bafa9209a6890`  
		Last Modified: Thu, 17 Sep 2026 22:21:34 GMT  
		Size: 118.1 MB (118089220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7053dfc21b6129d0b35779e1054730eaed5b33cf3296d7e19e65e887bb204018`  
		Last Modified: Thu, 17 Sep 2026 23:23:17 GMT  
		Size: 86.9 MB (86865348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed983813b62ff35802fe40825c0dfd7b5254637cb848fc9cb15bdf0a91befd97`  
		Last Modified: Thu, 17 Sep 2026 23:23:14 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e27af9c4374f52a8f5d0365eb43b3ed803805c3b447ffaab86b72d948e483cf`  
		Last Modified: Thu, 17 Sep 2026 23:23:18 GMT  
		Size: 107.7 MB (107696663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0cdf1c846763c464dc206ad85ec23447bd62f9793478c2ed309df18e3c0106f`  
		Last Modified: Thu, 17 Sep 2026 23:23:14 GMT  
		Size: 431.3 KB (431281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:dc0f0f4835b4762dfcaf61270442ca2bde25cdeec7a2150efd9d02f2a52783f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11646690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7a7bc11986ee34d9891802441355508af884604c0ee4fa45046d727211452a`

```dockerfile
```

-	Layers:
	-	`sha256:f8a4bbc12ced5d9149d3981471bcaf0b947fdeba13b752c8303f23999ab3e9ce`  
		Last Modified: Thu, 17 Sep 2026 23:23:15 GMT  
		Size: 11.6 MB (11625825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3743f63c1d50827ff6ed2bcb389b0e2ef623d9a86a3d560a70b871a50909f119`  
		Last Modified: Thu, 17 Sep 2026 23:23:14 GMT  
		Size: 20.9 KB (20865 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:1f593ed6d195fc96424e4eecfb94eb7aeb9a2ee630893ddf5e143a008750450d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.8 MB (365777904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32e58af055a82e04e6a41468476f3aca9a4347a1e2d0e870c0eb289a9009d8b`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:45:40 GMT
ARG version=1.8.0_504.b01-1
# Thu, 17 Sep 2026 22:45:40 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:45:40 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:45:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 17 Sep 2026 23:25:35 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 23:25:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 23:25:35 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 17 Sep 2026 23:25:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 17 Sep 2026 23:25:35 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 23:25:35 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 23:25:35 GMT
ENV GRADLE_VERSION=6.9.4
# Thu, 17 Sep 2026 23:25:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Thu, 17 Sep 2026 23:25:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 23:25:38 GMT
USER gradle
# Thu, 17 Sep 2026 23:25:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 17 Sep 2026 23:25:39 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e44be5ec76073fa5d9148cdc116fe83f9fd92191a47a8a45a43fd14f78db0d`  
		Last Modified: Thu, 17 Sep 2026 22:46:04 GMT  
		Size: 118.0 MB (117970310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1bad840560be6172f25d630a2206149bfe8bfba526bc3278ed3bb0bf40040d1`  
		Last Modified: Thu, 17 Sep 2026 23:26:10 GMT  
		Size: 86.2 MB (86231633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8414fe3f158daf94ce303e2988261574d6c4936f65dadae4e5b159c097466e36`  
		Last Modified: Thu, 17 Sep 2026 23:26:04 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3e7f52f20bd7ff1c2561bdd3760680cf5b177a604cbe415791bef2432918a2`  
		Last Modified: Thu, 17 Sep 2026 23:26:11 GMT  
		Size: 107.7 MB (107696663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d827aa4a3167405f8a2fcb1c51985575345a3e6ffcca1bfdec442493857c413`  
		Last Modified: Thu, 17 Sep 2026 23:26:06 GMT  
		Size: 425.0 KB (425046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:e32bf8fca3a16003fe4dca41a3b80fe2e41a0175b4f439462bdd0410ac8e317f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11647161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66638576aa3ddf9350cce0a7d44836bdb49c70df9093378908e8eebcc8417a8d`

```dockerfile
```

-	Layers:
	-	`sha256:0f3c3e60a6c719cbccb20cabacf95d6dd750348e04364f476175258dafcab0be`  
		Last Modified: Thu, 17 Sep 2026 23:26:06 GMT  
		Size: 11.6 MB (11626124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d678d532005e95439d26f83e31fe5d5cb2c3d04cc62fcc333f7365856e1d20a`  
		Last Modified: Thu, 17 Sep 2026 23:26:05 GMT  
		Size: 21.0 KB (21037 bytes)  
		MIME: application/vnd.in-toto+json
