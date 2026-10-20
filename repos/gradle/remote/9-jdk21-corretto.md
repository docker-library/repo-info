## `gradle:9-jdk21-corretto`

```console
$ docker pull gradle@sha256:10d38eaecccd24d45d8924b0ba4388deb29930d344b1fcea38e2157ead397312
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:6c35e75a772a3a61095dec29031662ea80d1ba9cc8ae627152d93151d84d1b33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.4 MB (472440474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ae8b62998566df525e675013c3da9d4bfc1cda35fca212fd81ecbded6a6ee1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:26 GMT
ARG version=21.0.12.13-1
# Wed, 14 Oct 2026 17:08:26 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:26 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:26 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 20 Oct 2026 17:52:29 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:52:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:52:29 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:52:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:52:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:52:29 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:52:29 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:52:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:52:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:52:32 GMT
USER gradle
# Tue, 20 Oct 2026 17:52:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:52:32 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6584a5c3a7909ba4c18b6d037cae759229ad37eb6e00ec036d91269a0056827`  
		Last Modified: Wed, 14 Oct 2026 17:08:48 GMT  
		Size: 170.5 MB (170461938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6e065e4f758169eb33d171416da185d8300f7853611de2e2de36b9a510b40c`  
		Last Modified: Tue, 20 Oct 2026 17:53:05 GMT  
		Size: 95.8 MB (95786863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27761d14dfa9a66590aa1987bf17d1af2442c80df96b7bdf9f437dfc9de42538`  
		Last Modified: Tue, 20 Oct 2026 17:53:01 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea58daf9ea44676aa08e18b97300404d1c052f10362ba96533d3c141633eda49`  
		Last Modified: Tue, 20 Oct 2026 17:53:07 GMT  
		Size: 151.5 MB (151533618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9131baed5ad762d633400517fa64a2aa6addfc8744b1773c5552bad2b1bf4dda`  
		Last Modified: Tue, 20 Oct 2026 17:53:02 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:2cd966e469b6f98163220a3f4c1ded9f88f55bc69a3579beaa1930d8dec5b412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12684874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057febb7629b14335ea17b3fdbbc50882fba60a27c5a4da772ea9af118a5743c`

```dockerfile
```

-	Layers:
	-	`sha256:35f9ab1051370bc4b6a09483e80794f8657ef0d9108b58058302d78e972b70e3`  
		Last Modified: Tue, 20 Oct 2026 17:53:02 GMT  
		Size: 12.7 MB (12663223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4eb8c875056f0f3c0cbde83f3c19e8dd777da91b19763b60de65baa8b3856656`  
		Last Modified: Tue, 20 Oct 2026 17:53:01 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:5e615fd7871037f486efbed30ce92d8613f38ed3ba34372a30941e1b150891a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.0 MB (469023907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb4fa020335e7881a45416294e0201ec17959c7cf5cce29e49f10b63bc73f1cd`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:25 GMT
ARG version=21.0.12.13-1
# Wed, 14 Oct 2026 17:08:25 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:25 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:25 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 20 Oct 2026 17:54:24 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:54:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:54:24 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:54:25 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:54:25 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:54:25 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:54:25 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:54:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:54:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:54:28 GMT
USER gradle
# Tue, 20 Oct 2026 17:54:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:54:28 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca7d2b9a32ce878e9a6c9c4e2beb047fcb9a3c39d653ebcc56c7e27564da16e`  
		Last Modified: Wed, 14 Oct 2026 17:08:48 GMT  
		Size: 168.7 MB (168745656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4749b077e0811e6f998a51a4dfd4e32558af35dc6df94c05e5168d7975e7b7`  
		Last Modified: Tue, 20 Oct 2026 17:55:03 GMT  
		Size: 95.2 MB (95209224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8bb6afc9a8e8727bdeaac79c398f748db1833a5498ec50054926d53ad0db40`  
		Last Modified: Tue, 20 Oct 2026 17:54:59 GMT  
		Size: 1.6 KB (1650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840b2d52e952163ed9a7da773f05e5c113e942badc3ec511d690ab7c86041747`  
		Last Modified: Tue, 20 Oct 2026 17:55:04 GMT  
		Size: 151.5 MB (151533611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95383e45a41ae29655835ab00e0ff3c403e5d9999e2bfbfb8166d4ef0a48f703`  
		Last Modified: Tue, 20 Oct 2026 17:54:59 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:233c01fc407b594ffb383daea5448092345adaf11d459a134b6a3a6c0b98a3fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12684074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d426aec72170c2b1a9305e21d3629aa1e90689df3ae6b1b8e19aee3e7cf8e6f7`

```dockerfile
```

-	Layers:
	-	`sha256:b500a4bf48a9cf4dc78679a20e58c74ad7ae793a9ad862bc0171117ae7e4dec9`  
		Last Modified: Tue, 20 Oct 2026 17:55:00 GMT  
		Size: 12.7 MB (12662226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:772939e458acea42f03754c69ff4e95fd9cfea7067388f16fa1ac17035d7d5a9`  
		Last Modified: Tue, 20 Oct 2026 17:54:59 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
