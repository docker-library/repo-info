## `gradle:jdk-25-and-27-corretto-al2023`

```console
$ docker pull gradle@sha256:1587a72deaf94d20e50c78815ac480bf11eae91b83e70c3e9c266e6d740fd2e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk-25-and-27-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:bfeda5c2d39fcdf0dd2218f3ab6df63d049f68817d02584e6f090ee85e1328da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.9 MB (652922861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051aeffb9c293572844a0f81a927ad97bab5569dd5b30e8a1c777b5427880621`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:25 GMT
ARG version=25.0.5.1.2-1
# Mon, 23 Nov 2026 21:11:25 GMT
ARG resource_version=25.0.5.1.2
# Mon, 23 Nov 2026 21:11:25 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:25 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:25 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 23 Nov 2026 21:29:43 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Mon, 23 Nov 2026 21:30:12 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 23 Nov 2026 21:30:12 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Mon, 23 Nov 2026 21:30:12 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 21:30:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 21:30:12 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 23 Nov 2026 21:30:12 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Mon, 23 Nov 2026 21:30:12 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 21:30:12 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 21:30:12 GMT
ENV GRADLE_VERSION=9.9.2
# Mon, 23 Nov 2026 21:30:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Mon, 23 Nov 2026 21:30:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 21:30:15 GMT
USER gradle
# Mon, 23 Nov 2026 21:30:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 21:30:15 GMT
USER root
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a1b6c2b650cdf38f05282d1aea6d2169a21b4bd145754596610ed2ce67d90c`  
		Last Modified: Mon, 23 Nov 2026 21:11:49 GMT  
		Size: 189.6 MB (189647744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2da3ca80fddfd8b21dba10c4d0e6720140299fca582b8f096effcf6ba27181`  
		Last Modified: Mon, 23 Nov 2026 21:30:54 GMT  
		Size: 177.8 MB (177820782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:599913f456fb5f143fb4e4a3ab7269d6752a4b5f5abed399472cbe431d38ebae`  
		Last Modified: Mon, 23 Nov 2026 21:30:52 GMT  
		Size: 96.0 MB (95991010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e89a35a3f0975bbbdc1f85193c33ab951638f8deaac2664ce6d04f676b245a`  
		Last Modified: Mon, 23 Nov 2026 21:30:47 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e47d9391dfc24ac63e770e2641a6c7b59f0312e9cbc5f558961fc6cfe32093`  
		Last Modified: Mon, 23 Nov 2026 21:30:54 GMT  
		Size: 134.9 MB (134870766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e57fb2f988d665ac92c6014406eeb593c8f06d859ab2f56086b4238973f31a`  
		Last Modified: Mon, 23 Nov 2026 21:30:48 GMT  
		Size: 25.6 KB (25606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:48922a9af38b2bc11f78e0c156fbca1579b1ee2e9911d7017223bcb046e7a996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12892281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b29d001d2b3d9eb22dffbc09847af444b0c5a8eb88af31f724c3a057f212811f`

```dockerfile
```

-	Layers:
	-	`sha256:4179d1cf7df5582f600d55316609471089eeca47f9499173cf040544797c5fe9`  
		Last Modified: Mon, 23 Nov 2026 21:30:48 GMT  
		Size: 12.9 MB (12862771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cafeb1de6adf130bc2e9af76094c869147e384ad2b2745f125814d841421689`  
		Last Modified: Mon, 23 Nov 2026 21:30:47 GMT  
		Size: 29.5 KB (29510 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-25-and-27-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:300ee68af68468fe49ad192c114a05e457d47fe0af2fe7856e3f0a327c2f4092
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647302654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203a6142a84b244054a26fdf049e5e3c08b1dde682fa2a2b6f8b6ecf3cb0d0ab`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:12:01 GMT
ARG version=25.0.5.1.2-1
# Mon, 23 Nov 2026 21:12:01 GMT
ARG resource_version=25.0.5.1.2
# Mon, 23 Nov 2026 21:12:01 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:12:01 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:12:01 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:12:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 23 Nov 2026 21:29:21 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Mon, 23 Nov 2026 21:29:57 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 23 Nov 2026 21:29:57 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Mon, 23 Nov 2026 21:29:57 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 21:29:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 21:29:57 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 23 Nov 2026 21:29:57 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Mon, 23 Nov 2026 21:29:57 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 21:29:57 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 21:29:57 GMT
ENV GRADLE_VERSION=9.9.2
# Mon, 23 Nov 2026 21:29:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Mon, 23 Nov 2026 21:30:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 21:30:00 GMT
USER gradle
# Mon, 23 Nov 2026 21:30:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 21:30:01 GMT
USER root
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b406688ee00fd400c56ad12e24ded075440fcfeda6a064bc506f8bca3bc1262`  
		Last Modified: Mon, 23 Nov 2026 21:12:28 GMT  
		Size: 187.5 MB (187535191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc5d356e03a087a49186f09ad323c1fef94654afbfcdbd559d42b6cea79717f`  
		Last Modified: Mon, 23 Nov 2026 21:30:40 GMT  
		Size: 176.0 MB (176023820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ccf53255eed7e7e1b517af6570be41adffd301f1f0e05025cdc5374dbb3e61`  
		Last Modified: Mon, 23 Nov 2026 21:30:38 GMT  
		Size: 95.4 MB (95392170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1c38c7db3bc321d53e484f7496c39ae0ac2075aaba6554c2151227a79d8b1f`  
		Last Modified: Mon, 23 Nov 2026 21:30:33 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71914161cf1de4fe40f2c1ebb39724ed80ddbd387d374fb89e91d614faf643ab`  
		Last Modified: Mon, 23 Nov 2026 21:30:40 GMT  
		Size: 134.9 MB (134870768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d775a9d64755f08566855aff54a780cf13d25a030515a35561576e6103d01d`  
		Last Modified: Mon, 23 Nov 2026 21:30:34 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:0d5089130427417dbbcb30b6431b42fd513abedc2bf3263d84123faeeb39adce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12890817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb0fb0bf47fdc7435e5fbb212cc2378c02e7ae1ca92bac47f8f8059f9ab0744`

```dockerfile
```

-	Layers:
	-	`sha256:05e56d63eae4b667f49c6833371ae8978721c9da66084005c4fa67562049ea9b`  
		Last Modified: Mon, 23 Nov 2026 21:30:34 GMT  
		Size: 12.9 MB (12860989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c12daf4999a3a2fd0ac32724674589f4729bf75e3dd6174c648d8d84fa715d8`  
		Last Modified: Mon, 23 Nov 2026 21:30:33 GMT  
		Size: 29.8 KB (29828 bytes)  
		MIME: application/vnd.in-toto+json
