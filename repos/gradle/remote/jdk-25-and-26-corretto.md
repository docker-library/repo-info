## `gradle:jdk-25-and-26-corretto`

```console
$ docker pull gradle@sha256:da4f2c970a5b84dc17bba1c11950e2bbbf679fc22cebf2412efb7d2bbe9dec45
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk-25-and-26-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:096b7849ee8c9b7b22248a99e1dbd418ab2eb855d0616b3173acd84251a8c0f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **661.7 MB (661743027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54154e5f313bb86845ea8ab970fb72624146ed455f1948b336d4dc73c73b4f1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:34 GMT
ARG version=25.0.4.8-1
# Tue, 15 Sep 2026 00:12:34 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:34 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:34 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 15 Sep 2026 01:11:17 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Tue, 15 Sep 2026 01:11:41 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 15 Sep 2026 01:11:41 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Tue, 15 Sep 2026 01:11:41 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:11:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:11:41 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:11:41 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Tue, 15 Sep 2026 01:11:41 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:11:41 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:11:41 GMT
ENV GRADLE_VERSION=9.7.1
# Tue, 15 Sep 2026 01:11:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Tue, 15 Sep 2026 01:11:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:11:44 GMT
USER gradle
# Tue, 15 Sep 2026 01:11:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 01:11:44 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7beadd3fcc10a0b724f309cb11e87f40329f59e949bb53b5f14afb833e928cd9`  
		Last Modified: Tue, 15 Sep 2026 00:12:57 GMT  
		Size: 189.5 MB (189469563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce548c0fe264124c5db771db7fb52e251d44c0bc7138023acd399772a858288b`  
		Last Modified: Tue, 15 Sep 2026 01:12:26 GMT  
		Size: 179.4 MB (179421774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5073b1cc262c2f4fb271e70acef9f10ff7bf14ba83b3881ea44195270edea2`  
		Last Modified: Tue, 15 Sep 2026 01:12:23 GMT  
		Size: 86.9 MB (86883999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b91a7208b179f2d7592f6f1b9f1a5ced0b4488f2c51c5766a5735452f299c8`  
		Last Modified: Tue, 15 Sep 2026 01:12:18 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0896fbca867f4645c1a59f06f39b72569b8acd6248e35e4571427a3db23b2985`  
		Last Modified: Tue, 15 Sep 2026 01:12:25 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4215dccd9f0124738c1f158f158d1d66cf5a4c4edd0431d7ec80371f34864ec`  
		Last Modified: Tue, 15 Sep 2026 01:12:19 GMT  
		Size: 25.6 KB (25603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:6451224fa0e16e3eacabadec55041bc227aaca2dc0ab8d9c93caa9fe122a7b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11600463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:632c9aa983d941184da0021f6864534217de60f91440d4a749b53df111f80a8e`

```dockerfile
```

-	Layers:
	-	`sha256:8e70e55f68f14ac4d27451bd61c78d39f25403b2605448d8bb16eddd7df3ed0c`  
		Last Modified: Tue, 15 Sep 2026 01:12:19 GMT  
		Size: 11.6 MB (11570953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed0aa5a743bdb31d9921e3d02809abb4aef2075786831b80b1c6778a3e8645d`  
		Last Modified: Tue, 15 Sep 2026 01:12:17 GMT  
		Size: 29.5 KB (29510 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-25-and-26-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:51b64b7f9eff854bb1284769333ddc265bc688d476727ae62be9562152518675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.8 MB (655765825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8078f58d9ec85a575d7e364c292503e3841c4b92e9133ec889ce3c3152a53d`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:15 GMT
ARG version=25.0.4.8-1
# Tue, 15 Sep 2026 00:12:15 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:15 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:15 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 15 Sep 2026 01:10:54 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Tue, 15 Sep 2026 01:11:19 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 15 Sep 2026 01:11:19 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Tue, 15 Sep 2026 01:11:19 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:11:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:11:19 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:11:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Tue, 15 Sep 2026 01:11:20 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:11:20 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:11:20 GMT
ENV GRADLE_VERSION=9.7.1
# Tue, 15 Sep 2026 01:11:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Tue, 15 Sep 2026 01:11:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:11:23 GMT
USER gradle
# Tue, 15 Sep 2026 01:11:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 01:11:23 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a1eeb7885ab21f33f9fad4ca45c9e883a8727fd7fe95835c12a155856c45c53`  
		Last Modified: Tue, 15 Sep 2026 00:13:01 GMT  
		Size: 187.4 MB (187380179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e290212a33097d6b1114439286bfcfb1963f13addaeb4748859dbd30c60d594`  
		Last Modified: Tue, 15 Sep 2026 01:12:02 GMT  
		Size: 177.3 MB (177298177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc25f17b4a603e5ef6189a6332a58a8ccc7116625148aa13eb4f9e1145a39b00`  
		Last Modified: Tue, 15 Sep 2026 01:12:00 GMT  
		Size: 86.2 MB (86249760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd69b0f4e15db2072d1adffeb79b1f7501dfae81f2ef92bf0643e504cf9b06f6`  
		Last Modified: Tue, 15 Sep 2026 01:11:56 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed87f3d1f31407a3129737fb651ba995043fed7749b3ca54c8604a75cfc58323`  
		Last Modified: Tue, 15 Sep 2026 01:12:02 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde1ea61a65d3d9a8f9e0874a095b0a844b98220db96fce774b4fe88a6e6a6a0`  
		Last Modified: Tue, 15 Sep 2026 01:11:57 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:02c0dacac0289cbcad16add62c107a08cd6afa4581474ca009ef6fc4abca16fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11599252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6a59b36b82714e29601903cc6913fba0ebe72bb7fa967372832e403c915157`

```dockerfile
```

-	Layers:
	-	`sha256:2d2f5cd59bb4de05c213aa8ae26ae43beebcc0459ca5114ba469dde434e4ad64`  
		Last Modified: Tue, 15 Sep 2026 01:11:56 GMT  
		Size: 11.6 MB (11569423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06dc2e3cde41b708cbed2bce8e1a50885729d9aa0cbe817cc41922ed4f0b01e4`  
		Last Modified: Tue, 15 Sep 2026 01:11:55 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
