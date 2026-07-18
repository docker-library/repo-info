## `gradle:6-jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:0bc1523ee1445e477347a76f6620eff4dd6cc7efd590448a2f2ffce02c7783b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:6-jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:1198543952dc8e17963179f1464dd29dc05bc5e92700ac5ee57458e472e34a64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.8 MB (559803220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d213907acf492f63629fe8291a66c310e4d7af459193511403cfb47983675a7`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:08:18 GMT
ARG version=1.8.0_492.b09-2
# Sat, 18 Jul 2026 00:08:18 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:08:18 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:08:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Sat, 18 Jul 2026 01:13:04 GMT
CMD ["gradle"]
# Sat, 18 Jul 2026 01:13:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 18 Jul 2026 01:13:04 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Sat, 18 Jul 2026 01:13:04 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Sat, 18 Jul 2026 01:13:04 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 18 Jul 2026 01:13:05 GMT
WORKDIR /home/gradle
# Sat, 18 Jul 2026 01:13:05 GMT
ENV GRADLE_VERSION=6.9.4
# Sat, 18 Jul 2026 01:13:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Sat, 18 Jul 2026 01:13:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Sat, 18 Jul 2026 01:13:07 GMT
USER gradle
# Sat, 18 Jul 2026 01:13:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Sat, 18 Jul 2026 01:13:07 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:810b4352698423a8209e8062c6141a750ec367ac7973bd1c8ebac2f46e38f3ff`  
		Last Modified: Sat, 18 Jul 2026 00:09:11 GMT  
		Size: 331.5 MB (331464254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31b591607173b54704edd70b438631d808e37db3e9f13daced41fd37d004bc2`  
		Last Modified: Sat, 18 Jul 2026 01:13:49 GMT  
		Size: 65.6 MB (65634791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9eedbc2b6a4144893c42fd802936609ec90fb7d046bd9a421fa9a2d9a359c47`  
		Last Modified: Sat, 18 Jul 2026 01:13:46 GMT  
		Size: 1.9 KB (1941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb63b822f285f159b8bb7403f08cda4a3acf3f258abcb33d703a8d1833aaa795`  
		Last Modified: Sat, 18 Jul 2026 01:13:49 GMT  
		Size: 107.7 MB (107696664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ce3be2fc3d2950bd62b430b7f55243d24b16b11ca81f97674d2d5b7d1371b1`  
		Last Modified: Sat, 18 Jul 2026 01:13:46 GMT  
		Size: 431.3 KB (431274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:92ea00cff075fd914d7158b96d453445269215fa766a350bfb5bbe542cc63d97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18086875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2871ff2cf7c34fbd54df98d8d57c593e72b8963de22d9cbb70b80d17a900ec61`

```dockerfile
```

-	Layers:
	-	`sha256:5ee289789383d79af19efb750eb046e6815272bbbb1292dba27fcb8edb5b126a`  
		Last Modified: Sat, 18 Jul 2026 01:13:46 GMT  
		Size: 18.1 MB (18066010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98513424047af01c9c9a669d64e5a92eb9edfac85fd839e45443f8bd6b797aa3`  
		Last Modified: Sat, 18 Jul 2026 01:13:45 GMT  
		Size: 20.9 KB (20865 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:987bf296996d285d3c07955d80c0e1f408c085ab695dfe08099d72fa3cb95201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.6 MB (365560522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba141f7a7cbf224f8d8e1794d7baea3eb868f3c3735ea49c7c525d12a59e02b2`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:07:57 GMT
ARG version=1.8.0_492.b09-2
# Sat, 18 Jul 2026 00:07:57 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:07:57 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:07:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Sat, 18 Jul 2026 01:13:00 GMT
CMD ["gradle"]
# Sat, 18 Jul 2026 01:13:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 18 Jul 2026 01:13:00 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Sat, 18 Jul 2026 01:13:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Sat, 18 Jul 2026 01:13:00 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 18 Jul 2026 01:13:00 GMT
WORKDIR /home/gradle
# Sat, 18 Jul 2026 01:13:00 GMT
ENV GRADLE_VERSION=6.9.4
# Sat, 18 Jul 2026 01:13:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Sat, 18 Jul 2026 01:13:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Sat, 18 Jul 2026 01:13:02 GMT
USER gradle
# Sat, 18 Jul 2026 01:13:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Sat, 18 Jul 2026 01:13:03 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8031f23ad334f4a473e5c4f4d4d3eee6657372e185729071450dbb2ccd425fe3`  
		Last Modified: Sat, 18 Jul 2026 00:08:16 GMT  
		Size: 118.0 MB (117953556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e45c6c44d477cbc5a0ee16e8943d508f38fdd12399ae76d307b248ab57b0625b`  
		Last Modified: Sat, 18 Jul 2026 01:13:32 GMT  
		Size: 86.0 MB (86034362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6be6c12e34e434539ec0657031e648a7ac61caf70e5d7cde9adacfcad00c3b`  
		Last Modified: Sat, 18 Jul 2026 01:13:29 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221c63f869945e202028d881c41f29ebd460e6eaddcd0ac336b3177ba0af6591`  
		Last Modified: Sat, 18 Jul 2026 01:13:33 GMT  
		Size: 107.7 MB (107696664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0186c0fdaca1cd7d024bc2507d27b0d3924cb71576f4f8cea80c52504c8cb5de`  
		Last Modified: Sat, 18 Jul 2026 01:13:29 GMT  
		Size: 425.0 KB (425027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:fa0e6bc9c853ab2ad905ab532a3a7a8ae41fe8aedad499d88477592a8796e41f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11646781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e7becef0270542f3c05c5de1cb439d5cc22367076331bf91c35e4577faf900`

```dockerfile
```

-	Layers:
	-	`sha256:f59378520af9c155732401809b15b7107b00298658a425517cea64e3d764f971`  
		Last Modified: Sat, 18 Jul 2026 01:13:30 GMT  
		Size: 11.6 MB (11625744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0eba98e6bac822cd21f30910beb7b7b544987d549aaff2f70be7e9a5039d6a6b`  
		Last Modified: Sat, 18 Jul 2026 01:13:29 GMT  
		Size: 21.0 KB (21037 bytes)  
		MIME: application/vnd.in-toto+json
