## `gradle:8-jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:8befe13d628a71dca2c3ac90c950a93a58f99d39d412a72417fc1aa050df8ccd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:148deba88e1e622e4e7a45bf84438f0c64aefa1638ac79867be6b1cb8737025f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.1 MB (408070819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afca85baf074678fe49c715c3e031f9e64748437e7c8bb3fe77c5613728668c7`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:27 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 19:58:27 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:58:27 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 05 Nov 2026 20:21:10 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 20:21:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 20:21:10 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 20:21:10 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 20:21:10 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 20:21:10 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 20:21:10 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 05 Nov 2026 20:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 05 Nov 2026 20:21:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 20:21:13 GMT
USER gradle
# Thu, 05 Nov 2026 20:21:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 20:21:13 GMT
USER root
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ae5c96774634f9b87d1debc19483086bc2d8d90d36d7b10bbc8b69cf240666`  
		Last Modified: Thu, 05 Nov 2026 19:58:45 GMT  
		Size: 118.1 MB (118121389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad3b967caf61d1c67ab91b77bd65a19aabe30ab36d1fa19f3fcc82669db0ed70`  
		Last Modified: Thu, 05 Nov 2026 20:21:46 GMT  
		Size: 95.9 MB (95895894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdd6f9124fc39351c57c0d9073dc9830cd10af6af3ef9ab08547c8ce1d2df2a`  
		Last Modified: Thu, 05 Nov 2026 20:21:41 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ed6d441140cc846088f80c1fd51ab7479d36cee7e7d2223977243c043fb7b7`  
		Last Modified: Thu, 05 Nov 2026 20:21:47 GMT  
		Size: 139.4 MB (139427345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e94142814200c40c673629b955c1f7ea4b76c963128a84c2cb09e1b8344b2ff`  
		Last Modified: Thu, 05 Nov 2026 20:21:42 GMT  
		Size: 54.9 KB (54899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:70116431ef3b4abef7490092337b514d799f4b10b1fa96bc1450069f95fac8d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13026877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c1343349df5a868e15dd4c6cf76ed671348f38e2e8be66f077136cf851dfa4`

```dockerfile
```

-	Layers:
	-	`sha256:8799531157dcfa947664892de88125a4dd69f6c24db089ed2404dcad27753011`  
		Last Modified: Thu, 05 Nov 2026 20:21:42 GMT  
		Size: 13.0 MB (13005224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d866b98d2cfd23b1bcc3f2352661c37fd22dd0aaf18dfe4b9340004efa7380d7`  
		Last Modified: Thu, 05 Nov 2026 20:21:41 GMT  
		Size: 21.7 KB (21653 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a4bcbafadf189737c5a4dc8be13b1da1bc5a00d6c74d4aef3d12bf7d16c15db2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.3 MB (406254695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1d840d80a2a9c56dfd62ac46f2975016b649034bc655ac3ca3862f2bc1131c`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:07:55 GMT
ARG version=1.8.0_512.b09-1
# Mon, 02 Nov 2026 20:07:55 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:07:55 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:07:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 02 Nov 2026 20:44:44 GMT
CMD ["gradle"]
# Mon, 02 Nov 2026 20:44:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 02 Nov 2026 20:44:44 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 02 Nov 2026 20:44:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 02 Nov 2026 20:44:44 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 02 Nov 2026 20:44:45 GMT
WORKDIR /home/gradle
# Mon, 02 Nov 2026 20:44:45 GMT
ENV GRADLE_VERSION=8.14.6
# Mon, 02 Nov 2026 20:44:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Mon, 02 Nov 2026 20:44:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 02 Nov 2026 20:44:47 GMT
USER gradle
# Mon, 02 Nov 2026 20:44:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 02 Nov 2026 20:44:48 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94f3ff733b7626cb8c5fc7a06cc98cc9abb9375be277d01b91738cc498b2f8a`  
		Last Modified: Mon, 02 Nov 2026 20:08:14 GMT  
		Size: 118.0 MB (118013401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8816110015da54fd44e40d15d8574bc42572fa15995d278ae0339df4034a9b93`  
		Last Modified: Mon, 02 Nov 2026 20:45:21 GMT  
		Size: 95.3 MB (95296628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319556e9e5d0e39ca4fed29be09de12283455e9068ef292e3873139c47396faf`  
		Last Modified: Mon, 02 Nov 2026 20:45:17 GMT  
		Size: 1.6 KB (1641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aac3bb1e384e6b1138795418324f40aa6840a893e8efd7417bb56d98a2be625`  
		Last Modified: Mon, 02 Nov 2026 20:45:21 GMT  
		Size: 139.4 MB (139427343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30960ef5852cb141d423338877718c5d639a87da9e1c6e2d839afc7d0c43fd0d`  
		Last Modified: Mon, 02 Nov 2026 20:45:17 GMT  
		Size: 59.5 KB (59527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:bb4ed747e247f852ba548dd42b3305999e7de9d728eb046ad9d3a243e1d33516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13027397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee32985864a2674923db22c014210f3b861e49071b198f49169d91a83f35857c`

```dockerfile
```

-	Layers:
	-	`sha256:389cd5116a9aa557c040570af47be6b3c36cc5ce7e8e4f8451b8c4d0e5186605`  
		Last Modified: Mon, 02 Nov 2026 20:45:18 GMT  
		Size: 13.0 MB (13005547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d661eebafd301c70057a2ca1d5020f70c9994281ca603db68680c74c6eb4c402`  
		Last Modified: Mon, 02 Nov 2026 20:45:17 GMT  
		Size: 21.9 KB (21850 bytes)  
		MIME: application/vnd.in-toto+json
