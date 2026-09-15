## `gradle:6-jdk11-corretto-al2023`

```console
$ docker pull gradle@sha256:3932dff5011eb2da2e1e3ae476d344bba73a1c212da15e24ee582c013fe617d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:6-jdk11-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:a669c3b3cf3419feaec322f2558a135f720dd7d2005acb542151b379bc63210a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.1 MB (403084976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef1696cc67b30f160af19f25f88782c8ea73170abae0bc44925dd500e5c3dd4`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:24 GMT
ARG version=11.0.32.10-1
# Tue, 15 Sep 2026 00:11:24 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:11:24 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 15 Sep 2026 01:12:39 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:12:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:12:39 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:12:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 01:12:39 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:12:39 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:12:39 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 15 Sep 2026 01:12:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 15 Sep 2026 01:12:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:12:41 GMT
USER gradle
# Tue, 15 Sep 2026 01:12:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 15 Sep 2026 01:12:42 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a3bedf29b20b6581e28ad3dd57aeda4f7878f82509d7bbab62c171812ba402`  
		Last Modified: Tue, 15 Sep 2026 00:11:44 GMT  
		Size: 153.5 MB (153480566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2570351836fa0810988fe579a54e00f91bed41916c01a8971cf90c39d813c4c0`  
		Last Modified: Tue, 15 Sep 2026 01:13:11 GMT  
		Size: 86.9 MB (86888512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5fecb4b63ee36c9617313125219b7499634fd9832ed9d53c1a22333cf5ae41`  
		Last Modified: Tue, 15 Sep 2026 01:13:07 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6bd05f0df30c57bc8b0378e0f009cf7fdc7ae38de15e64cd36d57d843e8b7c`  
		Last Modified: Tue, 15 Sep 2026 01:13:11 GMT  
		Size: 107.7 MB (107696664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41adf3e90c5e22e83fc86ef19da66c28ab930263c85b89b08a2a65e112913127`  
		Last Modified: Tue, 15 Sep 2026 01:13:07 GMT  
		Size: 431.3 KB (431276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:b413d28f9f35241293f246ff6cd7c3b15258023a6087b05d5caef3acbb08af64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11294965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371051676c8c879c0bb64721f65b9a47b2272d31699d7399cd7b20e10cd1be97`

```dockerfile
```

-	Layers:
	-	`sha256:1af24cbaa6be69cbaf02fb17a340dc3cc79e22a13c2184403be798aa48149e51`  
		Last Modified: Tue, 15 Sep 2026 01:13:08 GMT  
		Size: 11.3 MB (11274093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f19d046ac6ba39f827ba7c5b3e6cc84af5c6b75b2d82f7b22cef9ace11d81adf`  
		Last Modified: Tue, 15 Sep 2026 01:13:07 GMT  
		Size: 20.9 KB (20872 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9841bdcec58fb6d3ffa9567426a8c9c1142efae2f2b088d468505830564155b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.9 MB (399882581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585f441cb2614779fce7d857d56e6f3809cf2ae8703d6ebcca6f575815aed9e6`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:03 GMT
ARG version=11.0.32.10-1
# Tue, 15 Sep 2026 00:11:03 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:11:03 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 15 Sep 2026 01:12:22 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 01:12:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 01:12:22 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 15 Sep 2026 01:12:22 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 01:12:22 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 01:12:22 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 01:12:22 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 15 Sep 2026 01:12:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 15 Sep 2026 01:12:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 01:12:25 GMT
USER gradle
# Tue, 15 Sep 2026 01:12:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 15 Sep 2026 01:12:26 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8813da0db8cbbab6b67e43ca71dda60f37f0e3dda97f906a30f07cd353a658ad`  
		Last Modified: Tue, 15 Sep 2026 00:11:25 GMT  
		Size: 152.1 MB (152054999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cba8e0e6eb86a9c52fd5b50623fb72f7fb31503da57b3318a2af08c677c358f`  
		Last Modified: Tue, 15 Sep 2026 01:12:56 GMT  
		Size: 86.3 MB (86251633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273ef6fb55cc4b05f4f5aaf2ad91adcca070ea7cbfabb140146181ad33b012d5`  
		Last Modified: Tue, 15 Sep 2026 01:12:52 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77abf8d0821d2ba80a6f537ca493b596429c48db4bf8826fd260ee3be9b858f`  
		Last Modified: Tue, 15 Sep 2026 01:12:56 GMT  
		Size: 107.7 MB (107696670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8022a5e914571d6ac2c32448703da2f12ebf59ac62391900c181fd265b89b3a7`  
		Last Modified: Tue, 15 Sep 2026 01:12:53 GMT  
		Size: 425.0 KB (425032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:1f0e72d588e39c101e06a42e7edd3c9c6c4b2d35844792b43f9943915fa0c679
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11294956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c96337ef2fd67dad74f131719817664ecaab6eec3ac1ac2189de24e860445a8`

```dockerfile
```

-	Layers:
	-	`sha256:e9626297305010e675d14123f26fc8d7195fbb5c2016b102d15fe1c500a1e43e`  
		Last Modified: Tue, 15 Sep 2026 01:12:53 GMT  
		Size: 11.3 MB (11273912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:416b465d603021878fe283d6e2cff01504dbcab0c9380ea173666f0db6c27130`  
		Last Modified: Tue, 15 Sep 2026 01:12:52 GMT  
		Size: 21.0 KB (21044 bytes)  
		MIME: application/vnd.in-toto+json
