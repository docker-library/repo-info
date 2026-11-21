## `gradle:9-jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:4234f1f7fb618c9bfdfc0121fe410f112c411d13fdab6520e99670db215d4051
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:c76147b2a3bea76664aa0ce5a7a69def4f9cfec25897d9b80a25014246278297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.9 MB (442894644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a4c9b58835fd8a9070b8ba199b87fd2661a663a69bc26c0273e526e5a784ddd`
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
# Fri, 20 Nov 2026 20:01:04 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 20:01:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 20:01:04 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 20:01:04 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 20:01:04 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 20:01:04 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 20:01:04 GMT
ENV GRADLE_VERSION=9.9.2
# Fri, 20 Nov 2026 20:01:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Fri, 20 Nov 2026 20:01:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 20:01:09 GMT
USER gradle
# Fri, 20 Nov 2026 20:01:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 20:01:09 GMT
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
	-	`sha256:e0d1bbf367aa10d8450a53f05d2fb4a8dd4fa919eee9eacde31f1bae3fe61377`  
		Last Modified: Fri, 20 Nov 2026 20:01:42 GMT  
		Size: 96.0 MB (95994706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef50ccd99b1d290a0a0466fa7ab5ffc5014315660e2334a9b3887677e91d490`  
		Last Modified: Fri, 20 Nov 2026 20:01:37 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4954b0594793b7112eaba8f800242df515e112d00a1ec3b6d9b651e69e09c8fa`  
		Last Modified: Fri, 20 Nov 2026 20:01:43 GMT  
		Size: 134.9 MB (134870750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09f83c55c739bee329cd3bb803d7b88462117d1157e740086aeaf6dd48bd50f`  
		Last Modified: Fri, 20 Nov 2026 20:01:37 GMT  
		Size: 25.6 KB (25606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:775a03526e1ce6f7c0821afccb933d419dbf8fb7a0971268bc199bbd79f167d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12690500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b11eb821d6ebcb3ada423a6f9f03a5e34ba41e50e7064cb4bc169755e6e3589`

```dockerfile
```

-	Layers:
	-	`sha256:5a8b1538ba8728ad8f5261095042900b62b4697f5b552a7341818bf7224ec713`  
		Last Modified: Fri, 20 Nov 2026 20:01:38 GMT  
		Size: 12.7 MB (12669003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:979a781a03a79e2ae83aad23e67104b0a3399f5dcaa9bba4af2daddb71b4da3f`  
		Last Modified: Fri, 20 Nov 2026 20:01:37 GMT  
		Size: 21.5 KB (21497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:2c689825446a1dad7ea8b5056dc22eebe35d4e2435d20852c0bae42b470cd837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.0 MB (440048975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:717976d2164de65278a9183430882b63db3f9e5733743ddce10ecb6086e2f527`
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
# Fri, 20 Nov 2026 19:57:59 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 19:57:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 19:57:59 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 19:58:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 19:58:00 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 19:58:00 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 19:58:00 GMT
ENV GRADLE_VERSION=9.9.2
# Fri, 20 Nov 2026 19:58:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Fri, 20 Nov 2026 19:58:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 19:58:02 GMT
USER gradle
# Fri, 20 Nov 2026 19:58:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 19:58:03 GMT
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
	-	`sha256:360d39cc37ca8a33d4cd20c883bafb03cc8af73df95b967027c568e32618de8a`  
		Last Modified: Fri, 20 Nov 2026 19:58:37 GMT  
		Size: 95.4 MB (95396931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399d64614e7b31cc758a8010094c056c6902dd9b3c73c2cf42785e26fd10f98f`  
		Last Modified: Fri, 20 Nov 2026 19:58:33 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5de23987c591146453727dae34669ceda23ef78a6c99cb8dcabae6797d8f12a`  
		Last Modified: Fri, 20 Nov 2026 19:58:37 GMT  
		Size: 134.9 MB (134870749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ad42bd365f4f0e2ba50b387d60d9fc3632f4d4bb0367b0460bbd113bf4a3b5`  
		Last Modified: Fri, 20 Nov 2026 19:58:33 GMT  
		Size: 29.3 KB (29334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:65857cc29e9f72a89b3e07e85b4f15ab8a88d18650ab2be924eeed9b99bb41f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12689696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8eb4b6f62b6620d5b72ef5a5c918b643bd0a02132ffac7a56446765acbd72c`

```dockerfile
```

-	Layers:
	-	`sha256:b03ce40050ed08c03ff691cf68d7abb6a7348323d573d70f5943455afb38ce76`  
		Last Modified: Fri, 20 Nov 2026 19:58:34 GMT  
		Size: 12.7 MB (12668003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae33f2e2b5041cd5e7f1425bb80ef9910d4c987733c9706f2957ace5152eb904`  
		Last Modified: Fri, 20 Nov 2026 19:58:33 GMT  
		Size: 21.7 KB (21693 bytes)  
		MIME: application/vnd.in-toto+json
