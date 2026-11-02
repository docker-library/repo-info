## `gradle:jdk-25-and-27-corretto`

```console
$ docker pull gradle@sha256:1ddf9b5e833655b5a936fd042d751acae2ae0d11c7aa72ede0599ab1acc16175
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk-25-and-27-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:40411cabd698f1cc6e1bdf67b653cdc91124022e7182b30b3a90e2511b559508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.5 MB (669474442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e737736961bda43eff3904d2b88429cd398e6f9d5f09ecd53878dee5f59d6e1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:56 GMT
ARG version=25.0.5.0.10-1
# Mon, 02 Nov 2026 20:11:56 GMT
ARG resource_version=25.0.5.0.10
# Mon, 02 Nov 2026 20:11:56 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:56 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:56 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 02 Nov 2026 20:44:25 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Mon, 02 Nov 2026 20:44:55 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 02 Nov 2026 20:44:55 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Mon, 02 Nov 2026 20:44:55 GMT
CMD ["gradle"]
# Mon, 02 Nov 2026 20:44:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 02 Nov 2026 20:44:55 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 02 Nov 2026 20:44:55 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Mon, 02 Nov 2026 20:44:55 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 02 Nov 2026 20:44:55 GMT
WORKDIR /home/gradle
# Mon, 02 Nov 2026 20:44:55 GMT
ENV GRADLE_VERSION=9.8.2
# Mon, 02 Nov 2026 20:44:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Mon, 02 Nov 2026 20:44:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 02 Nov 2026 20:44:57 GMT
USER gradle
# Mon, 02 Nov 2026 20:44:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 02 Nov 2026 20:44:58 GMT
USER root
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c3a6a331ca83d68b24cc42a5e98db1cd9f64b0f4c553267d5c6ea28ebeeb76`  
		Last Modified: Mon, 02 Nov 2026 20:12:19 GMT  
		Size: 189.6 MB (189627480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1bcb9264b955ca1c18ff1c12d5b3e10577fd08283a56825beb73b129fecfd`  
		Last Modified: Mon, 02 Nov 2026 20:45:39 GMT  
		Size: 177.8 MB (177803317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ea23ccb5117454909b552c4b1294ac899854b2f08b222f7fc2f532f2150dde`  
		Last Modified: Mon, 02 Nov 2026 20:45:37 GMT  
		Size: 95.9 MB (95913028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3554339106322ce45aa628d2389e377865cd14166e201bb28e2112914992f49b`  
		Last Modified: Mon, 02 Nov 2026 20:45:31 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd24eb668f66e9bbe7fa3aceb84b8bfc9a3169a207836fd25d7b8214aee5815d`  
		Last Modified: Mon, 02 Nov 2026 20:45:38 GMT  
		Size: 151.5 MB (151533612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d4498eb7bfe9c3d1c0150717228f6f2f9ed7463be8d51febeffcd5a34692e5`  
		Last Modified: Mon, 02 Nov 2026 20:45:33 GMT  
		Size: 25.6 KB (25605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:f3ceae26dd8f0858763231b06d1ee4cc3b7c85161f2843f4be7ea6333e11b792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12884866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf88c6d01f0585296b03475e90e3e8c4fb140acd191ecc182fd3292f6effa3c`

```dockerfile
```

-	Layers:
	-	`sha256:256a97e549e89937275846e0e98195f1507f0375468c425f5b1f08725632d048`  
		Last Modified: Mon, 02 Nov 2026 20:45:32 GMT  
		Size: 12.9 MB (12855357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bbcf15326701e05f2aea415173ba14f9707dac34ea09bcbb980d15293068307`  
		Last Modified: Mon, 02 Nov 2026 20:45:31 GMT  
		Size: 29.5 KB (29509 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-25-and-27-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b38b1147940606002901506ccc3d92f36866a8a45b3e2fd588a389796fa0d9e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **663.9 MB (663871745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e995c8b3b3601a0cfa589fc59cc89aaa844c2e0e6ac2b7984475fed3fc4b9b9`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:21 GMT
ARG version=25.0.5.0.10-1
# Mon, 02 Nov 2026 20:11:21 GMT
ARG resource_version=25.0.5.0.10
# Mon, 02 Nov 2026 20:11:21 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:21 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:21 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 02 Nov 2026 20:44:07 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Mon, 02 Nov 2026 20:44:42 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 02 Nov 2026 20:44:42 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Mon, 02 Nov 2026 20:44:42 GMT
CMD ["gradle"]
# Mon, 02 Nov 2026 20:44:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 02 Nov 2026 20:44:42 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 02 Nov 2026 20:44:42 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Mon, 02 Nov 2026 20:44:42 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 02 Nov 2026 20:44:42 GMT
WORKDIR /home/gradle
# Mon, 02 Nov 2026 20:44:42 GMT
ENV GRADLE_VERSION=9.8.2
# Mon, 02 Nov 2026 20:44:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Mon, 02 Nov 2026 20:44:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 02 Nov 2026 20:44:45 GMT
USER gradle
# Mon, 02 Nov 2026 20:44:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 02 Nov 2026 20:44:46 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa55293fe3e3a8406c108f2b07eb8eb149cb9f5968a7772bc81606bc9fd2a247`  
		Last Modified: Mon, 02 Nov 2026 20:11:46 GMT  
		Size: 187.5 MB (187523723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19fa108ae293f9318f11c07eefae0334509339c5c151bdc5b8d468eb22a5f5bc`  
		Last Modified: Mon, 02 Nov 2026 20:45:29 GMT  
		Size: 176.0 MB (176018703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e95c06bc1856124fbdfa0e978faaba3c07a309383077c1309891d4b66c14212`  
		Last Modified: Mon, 02 Nov 2026 20:45:26 GMT  
		Size: 95.3 MB (95308463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a3e28c9e117dc358433296c79c3f77b9cb774285f1f1030debf0ae16107ca0`  
		Last Modified: Mon, 02 Nov 2026 20:45:20 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa361c4316c00d1be17b6d6ac8923c01f4916daf9c269feae8956ffbd5134c64`  
		Last Modified: Mon, 02 Nov 2026 20:45:28 GMT  
		Size: 151.5 MB (151533615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5e0b778cfcb735da284abe113f474c671a9d0ef32d7c1625f4d23c139a9528`  
		Last Modified: Mon, 02 Nov 2026 20:45:21 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:e4a21c9b5960e67c0e4f11cb83072aff65d6a51cda41a8ea94b66a13bec24cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12883404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9b7fb6f94fa99e05fd65c509d5ca1c2a3976313fb16ff6e3ae09d2a1f4b243`

```dockerfile
```

-	Layers:
	-	`sha256:7885a0d5ad232d8932efbeb0b33d0dd2acaec5977cc11bcd1dd491998446b816`  
		Last Modified: Mon, 02 Nov 2026 20:45:20 GMT  
		Size: 12.9 MB (12853575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e332be32772b5a05fed561b7df44829d6cd5429ee1a339cb5b273ea07752141`  
		Last Modified: Mon, 02 Nov 2026 20:45:19 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
