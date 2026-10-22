## `gradle:7-jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:9188386a120fda05732cbb1b61a9897360700759e40dbbbc6ca1c6aaf0726ed0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:e3c4e023a8bd87e269b68dea46ee358e8f960ef6d1e05f04f2aa8a8ee74bfb77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.0 MB (397010806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:515b04be2c4a47262456c70a0d516b7ebbe4bd79382953249c761e135d1fb594`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:27:20 GMT
ARG version=1.8.0_504.b05-1
# Wed, 21 Oct 2026 23:27:20 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:27:20 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:27:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 22 Oct 2026 00:17:29 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 00:17:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 00:17:29 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 00:17:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 00:17:29 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 00:17:29 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 00:17:29 GMT
ENV GRADLE_VERSION=7.6.6
# Thu, 22 Oct 2026 00:17:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Thu, 22 Oct 2026 00:17:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 00:17:32 GMT
USER gradle
# Thu, 22 Oct 2026 00:17:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 22 Oct 2026 00:17:32 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f31515f70ed6ef2d96016e3f75a99ce85d22aaa34faa9a95e71c4a135e76bb`  
		Last Modified: Wed, 21 Oct 2026 23:27:38 GMT  
		Size: 118.1 MB (118073752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98c833430c924099ed9969e90d4f08473cd495e40aabd5c6de3c8df13d76cbd`  
		Last Modified: Thu, 22 Oct 2026 00:18:04 GMT  
		Size: 95.8 MB (95780288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a8ffd2497ac97031ffbed41039296994275d59c52f8a8812cfef84ae215580`  
		Last Modified: Thu, 22 Oct 2026 00:17:56 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266d571dd69c7f7712b79ecd92f23aaf3a5b6f6cd73e3f009864f731a841890e`  
		Last Modified: Thu, 22 Oct 2026 00:18:04 GMT  
		Size: 128.5 MB (128469417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a380b7ce29bfdd41ef4b89947b716883559641d5e5f61b17af7826f767df4b`  
		Last Modified: Thu, 22 Oct 2026 00:18:00 GMT  
		Size: 54.9 KB (54899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:751e60dd44049f5b7c599d98c1f7b050b63691902512a7dfb3fc742c0a949bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12936468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db87634a6e85a1dbaa8f11d3404070a2e570166a0f6ff789406c38b509dc4426`

```dockerfile
```

-	Layers:
	-	`sha256:d5595e48401098bafde2d9250d4c03c06977b57c09fdd46bbe28308a09f6912d`  
		Last Modified: Thu, 22 Oct 2026 00:18:00 GMT  
		Size: 12.9 MB (12915604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02291fc4bd5442a35cbe32319a806f5ccc98f6bbc7a50531203b62f3443800b2`  
		Last Modified: Thu, 22 Oct 2026 00:18:00 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:e339e54764bb19d6db4884a3c4ad654cb67f76779df31acac5655a8958cf49c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395194599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e33c39fd5f87115243f0433be2fef1672b188381a481b5b1c6f114a38cd714a`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:18:57 GMT
ARG version=1.8.0_504.b05-1
# Thu, 22 Oct 2026 00:18:57 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:18:57 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:18:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 22 Oct 2026 01:19:31 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 01:19:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 01:19:31 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 01:19:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 01:19:31 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 01:19:32 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 01:19:32 GMT
ENV GRADLE_VERSION=7.6.6
# Thu, 22 Oct 2026 01:19:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Thu, 22 Oct 2026 01:19:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 01:19:35 GMT
USER gradle
# Thu, 22 Oct 2026 01:19:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Thu, 22 Oct 2026 01:19:35 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9131c5ec9525cf33f49567994d90fc824ee05a7a1adf959fef231c6301425ebe`  
		Last Modified: Thu, 22 Oct 2026 00:19:17 GMT  
		Size: 118.0 MB (117965954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd012d7369ff9269da06863bab30900bc92aeeacc9d2d68782b979e5ca1f4a9`  
		Last Modified: Thu, 22 Oct 2026 01:20:08 GMT  
		Size: 95.2 MB (95193630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39993c0e6625b87f51d6d86cb76896f0c15656334f382b892e4cc56c928a55e`  
		Last Modified: Thu, 22 Oct 2026 01:20:04 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5601f3989b977cab7a32a435ca43ea4c8a0c7d2e7e282697a6cc5261eee2fd`  
		Last Modified: Thu, 22 Oct 2026 01:20:09 GMT  
		Size: 128.5 MB (128469417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a92774feba5c7c5422520d7989a3ccc6189390fe681b93fca2d8e1bc6ca5c46c`  
		Last Modified: Thu, 22 Oct 2026 01:20:04 GMT  
		Size: 59.5 KB (59526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:a0e4ae9811584b05ef8787fd7af4c5e3b88228c256f145f1221b8bccb9d83769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12936944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3642deb61fcf5b11867ccde0cb7193a948278b39049ad65db212f9804bbd240d`

```dockerfile
```

-	Layers:
	-	`sha256:84fffea41a1a36d791298f3f3f73b3302df5a071219f998dc4958e9de3e7f475`  
		Last Modified: Thu, 22 Oct 2026 01:20:05 GMT  
		Size: 12.9 MB (12915907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1b9c51369d5fa2380ed5dae3edb1240929e3eb7bc7606435a41dddf1e98456f`  
		Last Modified: Thu, 22 Oct 2026 01:20:04 GMT  
		Size: 21.0 KB (21037 bytes)  
		MIME: application/vnd.in-toto+json
