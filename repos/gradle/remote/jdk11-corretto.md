## `gradle:jdk11-corretto`

```console
$ docker pull gradle@sha256:bdb30c6fc39219ef1ed06ba0252ce4d1aecffed0d16b05126fd79b342e600c5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk11-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:1204ae6e3502e195bc58cf7567eaf51de4f7c684e1d3529b6aa86e18425462c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.8 MB (432844867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998d53273a9e8431c25c0183a160d37f7db1428102a35e85f595266fc27e73e2`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:11:21 GMT
ARG version=11.0.32.9-1
# Thu, 23 Jul 2026 23:11:21 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:11:21 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:11:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 24 Jul 2026 00:12:26 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:12:26 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:12:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:12:26 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:12:26 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:12:26 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 24 Jul 2026 00:12:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 24 Jul 2026 00:12:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:12:29 GMT
USER gradle
# Fri, 24 Jul 2026 00:12:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 24 Jul 2026 00:12:29 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82072a792c9182ec045378bf27c10d76531f8d35989d292837595575cc8a6c61`  
		Last Modified: Thu, 23 Jul 2026 23:11:40 GMT  
		Size: 153.5 MB (153469282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b51040ec33abb950e69aa48e718572e0be00bc1d60029aab7ee1e63c9d3902`  
		Last Modified: Fri, 24 Jul 2026 00:13:00 GMT  
		Size: 86.7 MB (86676204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2389f029c4e853c7328c301f749f0ee9c9698da0cee153f822b3f804845c01c2`  
		Last Modified: Fri, 24 Jul 2026 00:12:56 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb3c911c58d549191106575e24b5041780c08778532cadd525a8e684d7abe7c`  
		Last Modified: Fri, 24 Jul 2026 00:13:01 GMT  
		Size: 138.1 MB (138068538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b891ad0f28b4d1e2f5e35dddb8fec0c72d48495b795f0611ef95877a8149ae26`  
		Last Modified: Fri, 24 Jul 2026 00:12:57 GMT  
		Size: 54.9 KB (54901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:5d65898de4aa34b01aca425b30d343bd85d3f7ade63f64b53d1c082f7869142f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11403248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c70a0c5fe2e4ff6dfb63509cbbc4e099136898bd566217bf2f1e166620d29c`

```dockerfile
```

-	Layers:
	-	`sha256:3f2aa8e35ac4f60a71e2970c5e893098e94d0075bf0355fd92fc5e5049a7ad3e`  
		Last Modified: Fri, 24 Jul 2026 00:12:57 GMT  
		Size: 11.4 MB (11381584 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:462e7c8dbf74dc132a15fa219fcbe52079d2c139df309e5421f4e927f7a88293`  
		Last Modified: Fri, 24 Jul 2026 00:12:57 GMT  
		Size: 21.7 KB (21664 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a7391d0e1d4fd471688ac31913e3a971366c4451047c43abb75039d1d6c42d6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.7 MB (429669664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c89839cb0c80f303462160e62237230a52a3f2d256fa3faa11ba99d1d42ea158`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:08 GMT
ARG version=11.0.32.9-1
# Thu, 23 Jul 2026 23:13:08 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:08 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 24 Jul 2026 00:12:09 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:12:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:12:09 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:12:10 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:12:10 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:12:10 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:12:10 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 24 Jul 2026 00:12:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 24 Jul 2026 00:12:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:12:12 GMT
USER gradle
# Fri, 24 Jul 2026 00:12:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 24 Jul 2026 00:12:13 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8931d21061bc0c544e1a6408978501ca368fc66619cab5f2d56bf3a2ba7aa6d8`  
		Last Modified: Thu, 23 Jul 2026 23:13:32 GMT  
		Size: 152.0 MB (152046425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7ccd2c03f16a2d17e6dbf509a44c4488ecff93c268bd44602864a684c8066b`  
		Last Modified: Fri, 24 Jul 2026 00:12:45 GMT  
		Size: 86.0 MB (86044261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673510cb0fd68cef5dc16b478eea55ff5347ac36f1cf4aa5caaddf9655090a93`  
		Last Modified: Fri, 24 Jul 2026 00:12:41 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:291ac91082af4b8655f5f310a654588994f8e1ef38e6464e99d89fcaaef5dc54`  
		Last Modified: Fri, 24 Jul 2026 00:12:47 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918e409ba13a9ee8072530d32f3c0a51a176a9a398da01fd38291919af275aa0`  
		Last Modified: Fri, 24 Jul 2026 00:12:42 GMT  
		Size: 59.5 KB (59532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:f1e22f6d1966f1cb7ed6cc61f126a2b1f3b7bccd507b702a7e2383408ad70dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11403289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf145797ae5d56491729a8829e8582c65f5696c7cdde69d6ccd08d9e09cdd10`

```dockerfile
```

-	Layers:
	-	`sha256:3e63b23ca3e7e761a6c6ae47ded3d28c469ff96970865ffee733e30be557c204`  
		Last Modified: Fri, 24 Jul 2026 00:12:42 GMT  
		Size: 11.4 MB (11381427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64b64ea8f124b90ba14d7c7f61e06b426b62afb0aef82f490a3e8c1c6f05c0b3`  
		Last Modified: Fri, 24 Jul 2026 00:12:41 GMT  
		Size: 21.9 KB (21862 bytes)  
		MIME: application/vnd.in-toto+json
