## `gradle:6-jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:206b12f8eca222289f7ecd238568ba6eaf052ae113b40f8dfe26e88ef00de905
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:6-jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:c4586c3210d0809cccbff0dbfc595f6c0328f02a6096b9e02139f3c27ddf8bcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.4 MB (367440907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de12d833d790f2c49c074dcc0185c51550d9448ec1c855942219e725ef7bb15e`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:34 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:34 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:34 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 27 Jul 2026 22:02:59 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:02:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:02:59 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:02:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:02:59 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:02:59 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:02:59 GMT
ENV GRADLE_VERSION=6.9.4
# Mon, 27 Jul 2026 22:02:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Mon, 27 Jul 2026 22:03:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:03:01 GMT
USER gradle
# Mon, 27 Jul 2026 22:03:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Mon, 27 Jul 2026 22:03:01 GMT
USER root
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e34f0458b32a0e7be86d2d43807bdd99d0ab8315ea76059ed56267a9165ea983`  
		Last Modified: Mon, 27 Jul 2026 21:35:53 GMT  
		Size: 118.1 MB (118076125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d090eb16bd5839aa43c6a67f340f7c783cea22a142192c5d480dc9ef74e0e4`  
		Last Modified: Mon, 27 Jul 2026 22:03:29 GMT  
		Size: 86.7 MB (86662485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eef445f91a630b7b8bbb8b7b80debb821aa0f74f07ccdff4af80eab3b3e9139`  
		Last Modified: Mon, 27 Jul 2026 22:03:25 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6acef878990306c26912d95a46ac40e708c08131927b135dc02f56adfacb6db2`  
		Last Modified: Mon, 27 Jul 2026 22:03:30 GMT  
		Size: 107.7 MB (107696663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5f3f7a578ca6f6a23a82bcbae8a94f18a7ad4efe4520befa9d13a7ef4c5bcc5`  
		Last Modified: Mon, 27 Jul 2026 22:03:26 GMT  
		Size: 431.3 KB (431271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:e657d715d03499bfecbd9b1eb7ce7c33483571c7ed323461d255dd49a7defef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11646385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b712f76790895690325b2d54f0b838d9d254f9276ffb5dd5cf119999f0566643`

```dockerfile
```

-	Layers:
	-	`sha256:9979da63f3fed0b41f22aa0ec884210d347dc7d406708e2b2bab8fc4e0b00c9e`  
		Last Modified: Mon, 27 Jul 2026 22:03:26 GMT  
		Size: 11.6 MB (11625521 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66d957c83e140ec65ffa1a1fba5a6e3da9f0b9af191a782c5f7be6eff59a8af7`  
		Last Modified: Mon, 27 Jul 2026 22:03:26 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:6ed7c1370fbce0ee3cb2430aa47d9665626f86e8a771be2aef339de56cab894d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.6 MB (365572043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877a17bd557c260a5873dab10aded9d2dbe2fae1d6bfa89a896be38c970466e5`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:11 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:11 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:11 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 27 Jul 2026 22:01:37 GMT
CMD ["gradle"]
# Mon, 27 Jul 2026 22:01:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 27 Jul 2026 22:01:37 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 27 Jul 2026 22:01:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 27 Jul 2026 22:01:37 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 27 Jul 2026 22:01:37 GMT
WORKDIR /home/gradle
# Mon, 27 Jul 2026 22:01:37 GMT
ENV GRADLE_VERSION=6.9.4
# Mon, 27 Jul 2026 22:01:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Mon, 27 Jul 2026 22:01:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 27 Jul 2026 22:01:39 GMT
USER gradle
# Mon, 27 Jul 2026 22:01:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Mon, 27 Jul 2026 22:01:39 GMT
USER root
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a751c274860331fcd022c968b38d60fa8d18146ef1eff3108884f678c36690c6`  
		Last Modified: Mon, 27 Jul 2026 21:35:30 GMT  
		Size: 118.0 MB (117964902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7d650aa35eeb7b754e05920554f4226b6bd95dd7473fd981d64397856d07ba`  
		Last Modified: Mon, 27 Jul 2026 22:02:10 GMT  
		Size: 86.0 MB (86034166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c6287a4b093a03116f5909b582d8cbacac86165225776f39e0d7f513a2d39c`  
		Last Modified: Mon, 27 Jul 2026 22:02:06 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238ca7f8062a40bab0e85c08397ebdf4d0edc39b35a9a310f229c7f545510a1f`  
		Last Modified: Mon, 27 Jul 2026 22:02:11 GMT  
		Size: 107.7 MB (107696663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae7e427c1724083871c1f557cda884906d375c5b6ca44b5ed12d2c15d4bfc9e`  
		Last Modified: Mon, 27 Jul 2026 22:02:07 GMT  
		Size: 425.0 KB (425020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:2f528310a4993679ce6025de3ace598362045fb5fd3aba05e55d8d74aa9031b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11646858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ceaaee0b615f89d825f462c344e65df608c01a7a2ab949206b16405e7a30f59`

```dockerfile
```

-	Layers:
	-	`sha256:e92d722f36df75a27d3e361726291a2551fcf410e97e7ec601f8bab824c3bf54`  
		Last Modified: Mon, 27 Jul 2026 22:02:07 GMT  
		Size: 11.6 MB (11625820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfeff4a36c74b9ec7e77d519401c9d9c3760f01c451593c3bffec250621c39c8`  
		Last Modified: Mon, 27 Jul 2026 22:02:06 GMT  
		Size: 21.0 KB (21038 bytes)  
		MIME: application/vnd.in-toto+json
