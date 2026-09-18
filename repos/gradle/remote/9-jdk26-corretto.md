## `gradle:9-jdk26-corretto`

```console
$ docker pull gradle@sha256:f880cc6e210e9a3fb2a17ca635e7a4c36c7f350f008eea0410cee1fe46fadcca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk26-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:e2e49fecedc86cc66d49b0eee55899940142ccb756617914894c958372eb1664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.5 MB (486472031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409103e230f4dcc8f134f6a7396cba4c5ced1219d2ff015782753bf625bd94fb`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:23:06 GMT
ARG version=26.0.2.11-1
# Thu, 17 Sep 2026 22:23:06 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:23:06 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:23:06 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:23:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Thu, 17 Sep 2026 23:21:44 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 23:21:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 23:21:44 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 17 Sep 2026 23:21:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 17 Sep 2026 23:21:44 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 23:21:44 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 23:21:44 GMT
ENV GRADLE_VERSION=9.7.1
# Thu, 17 Sep 2026 23:21:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Thu, 17 Sep 2026 23:21:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 23:21:46 GMT
USER gradle
# Thu, 17 Sep 2026 23:21:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 17 Sep 2026 23:21:47 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c23b923e61ec3f4806134f904f3a94cc2c6b8c904e16ca208a016e003c989cb`  
		Last Modified: Thu, 17 Sep 2026 22:23:30 GMT  
		Size: 193.6 MB (193620038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f737103dffd21c8e75a26f82e5c47befc3dc3dac1409758156765d5d81ccc7ec`  
		Last Modified: Thu, 17 Sep 2026 23:22:16 GMT  
		Size: 86.9 MB (86884398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7efb090fa83a6b750efa98fdd9c03787cdaf93840d532f226c86aab1df65e309`  
		Last Modified: Thu, 17 Sep 2026 23:22:12 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1afffb2c7ea9b25d377bb5c973a74453942b80f4f588716db02f2901f44c4cd9`  
		Last Modified: Thu, 17 Sep 2026 23:22:17 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2868741762aabd79f59fd3c2b3cf678835ee9c5d2e4bffa75946b60466656b`  
		Last Modified: Thu, 17 Sep 2026 23:22:12 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:f895338a883cde08ea2dd87cb9507b8cc88d974ab4ea4a27945b0e9341171b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11423507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:760b7832a7dcf3966c3bec6acccaf272e3572b0fbbca12b5b591cd93fb877141`

```dockerfile
```

-	Layers:
	-	`sha256:5f52d38578ccbbcf12ca0af426a40e9469e4055785ff65afd9e2a0eed998521b`  
		Last Modified: Thu, 17 Sep 2026 23:22:13 GMT  
		Size: 11.4 MB (11401856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8850638d09b1bfd0dcbc3163aef78ff9f28b22abea86cb4f8bc282feda17fd3c`  
		Last Modified: Thu, 17 Sep 2026 23:22:12 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk26-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ddcc75270e38f21229079a10919ff2f17b6600495d3c86472609d21a097dacc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.5 MB (482528474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9c3b7b78b767c50e6a46e13a28326fd8cbc0012b7ccacb906d927785cd26c4`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:47:31 GMT
ARG version=26.0.2.11-1
# Thu, 17 Sep 2026 22:47:31 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:47:31 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:47:31 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:47:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Thu, 17 Sep 2026 23:24:25 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 23:24:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 23:24:25 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 17 Sep 2026 23:24:25 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 17 Sep 2026 23:24:25 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 23:24:25 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 23:24:25 GMT
ENV GRADLE_VERSION=9.7.1
# Thu, 17 Sep 2026 23:24:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Thu, 17 Sep 2026 23:24:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 23:24:28 GMT
USER gradle
# Thu, 17 Sep 2026 23:24:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 17 Sep 2026 23:24:29 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10aba0d6119291ad77dea8cbcebbfcc01841f7d757c4b284be1fa30daf1176d`  
		Last Modified: Thu, 17 Sep 2026 22:47:56 GMT  
		Size: 191.4 MB (191440964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66736e29dce8cc395695a750f63d9bfcb32c4566b7ed226592872e5ed4fb10fe`  
		Last Modified: Thu, 17 Sep 2026 23:25:01 GMT  
		Size: 86.2 MB (86249901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7057cc42b310d8765173937c66000a5eff2134cd055dd2a284d006df7ab8255`  
		Last Modified: Thu, 17 Sep 2026 23:24:58 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715f4f8ff5c5e44960739f03316b72157b4a4cc2046336b6e8aa969fc3ce87a`  
		Last Modified: Thu, 17 Sep 2026 23:25:03 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd889486de62a492ccbebcaee463b1c4e640fcea26794b6620285070eec4845`  
		Last Modified: Thu, 17 Sep 2026 23:24:58 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk26-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:a5c810c56bc9269b4ce119a9b335e1260fda421ee53f7900fb2fff8d2010f884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11422713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de75cfe08516a40d790ce70c2055e9869af42cadd98f7244e62e8681a0b8193`

```dockerfile
```

-	Layers:
	-	`sha256:365f601f72501404ce9713157a1fdd589490c46c95a348d7f7033cbe56c9adda`  
		Last Modified: Thu, 17 Sep 2026 23:24:59 GMT  
		Size: 11.4 MB (11400865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3687e6702656b563516caa85c4554d6a2b6eb2874d53e3845791f1b938c30dfa`  
		Last Modified: Thu, 17 Sep 2026 23:24:58 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
