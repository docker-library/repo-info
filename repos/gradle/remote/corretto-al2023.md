## `gradle:corretto-al2023`

```console
$ docker pull gradle@sha256:c68db90a58d4bf1de38d22146de6c6a0152bed6737c097401a286a1d3d622c96
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:534548de403279b0d7a9695042f775771c48cf50dedfa6fe073760a671f5321d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.5 MB (491512176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1dd79e272a9522845c9c1598329e2591dd15fee931d278dc95bcfc624afdee`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:57 GMT
ARG version=25.0.4.11-1
# Fri, 23 Oct 2026 01:10:57 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:57 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:57 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 23 Oct 2026 02:09:04 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:09:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:09:04 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:09:05 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:09:05 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:09:05 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:09:05 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 02:09:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 02:09:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:09:08 GMT
USER gradle
# Fri, 23 Oct 2026 02:09:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 02:09:08 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955e4dc5d6a71085816f2103a86aefe782b4eec0bec145ca5a87057aaf28cd9d`  
		Last Modified: Fri, 23 Oct 2026 01:11:20 GMT  
		Size: 189.5 MB (189507034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd8a2bde4593475250e302d9c9afee9bf1347415d80dc985fd309ecbd853a1b`  
		Last Modified: Fri, 23 Oct 2026 02:09:42 GMT  
		Size: 95.8 MB (95795328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbdbbd618b488c8c6314a0070eea2a9de33000dab7aa7697c124394d5b370f1`  
		Last Modified: Fri, 23 Oct 2026 02:09:38 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a630b005a686ebd23a373c7b73b72673a88bdc211ee551218ad07f1370be55`  
		Last Modified: Fri, 23 Oct 2026 02:09:43 GMT  
		Size: 151.5 MB (151533613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482324dddb28a99f422ad05542024ea1d1e0dfbb002bb11fb9208166c530e0a0`  
		Last Modified: Fri, 23 Oct 2026 02:09:39 GMT  
		Size: 25.6 KB (25604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:56de57d6c251dd7b4101ada2e26a0e3f2e3f5363a5d4152ebbcebe10f21318e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12697777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9368ac2a4e905baf2134a117654b1df0d61fd698cbddf65d00e4838111486380`

```dockerfile
```

-	Layers:
	-	`sha256:b3b092479b00d0074a76021308960a659be50fb7d1b9c00d07c1d16c87dba0a7`  
		Last Modified: Fri, 23 Oct 2026 02:09:39 GMT  
		Size: 12.7 MB (12675508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d5c7b09ce837a45ab761dc83b1b388dec102adf8c4852a6599db09393efc08`  
		Last Modified: Fri, 23 Oct 2026 02:09:38 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:1a1d72cfc9d032c645edb2782f7e3d23e1060597818f84d080547bbb777e9b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.7 MB (487710641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d10ff1de29351dbacfd7f91699267802d38f0691d763c3728fee1cfb0ebfdbd`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:04 GMT
ARG version=25.0.4.11-1
# Fri, 23 Oct 2026 01:11:04 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:04 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:04 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 23 Oct 2026 02:09:02 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 02:09:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 02:09:02 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 02:09:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 02:09:02 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 02:09:02 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 02:09:02 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 02:09:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 02:09:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 02:09:05 GMT
USER gradle
# Fri, 23 Oct 2026 02:09:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 02:09:06 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ac8490b77a53d9152da1fc69e86963a7fee636c0e38eea623ca4a64eaca8c9`  
		Last Modified: Fri, 23 Oct 2026 01:11:30 GMT  
		Size: 187.4 MB (187406819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eaab75c8b43b2459ebcd8fd6c213f710fa7051dfd3d3f5d271943289ba86ef3`  
		Last Modified: Fri, 23 Oct 2026 02:09:40 GMT  
		Size: 95.2 MB (95209870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f776ebeca81d09e2a097a666d63d116cbdcbf523f43b896aee348e0f16863ec`  
		Last Modified: Fri, 23 Oct 2026 02:09:36 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9477fbe01844c9d45234b0215c076e556efaa47adc696bec4f544e24d0891dc`  
		Last Modified: Fri, 23 Oct 2026 02:09:41 GMT  
		Size: 151.5 MB (151533616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250600ba9fd3d813d4ea13a786d9034732c2e40b70b1de3666f7d7c0add1126a`  
		Last Modified: Fri, 23 Oct 2026 02:09:36 GMT  
		Size: 29.3 KB (29342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:9a68906fe801c50f3bec9047f9408feae8a8b311b730c593c0c69d1537b9f1e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12697036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae23b6603569f04fbfb1161ba20a42df1f0dd800b6f503531624e1b47c641cdc`

```dockerfile
```

-	Layers:
	-	`sha256:5307312b745e5ad38fd410aa26de807a81bc2669a585f8d80fa44ae19b63d3a2`  
		Last Modified: Fri, 23 Oct 2026 02:09:37 GMT  
		Size: 12.7 MB (12674546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:008974bfed5dbbd012e3f1facec8a594906fe910ae88f9793c8bfcb01f289b9d`  
		Last Modified: Fri, 23 Oct 2026 02:09:36 GMT  
		Size: 22.5 KB (22490 bytes)  
		MIME: application/vnd.in-toto+json
