## `gradle:jdk-lts-and-current-corretto-al2023`

```console
$ docker pull gradle@sha256:f1a71af19b53dbc55d4f6dc2c8a697b0fa978112b82c8107e02d06cefe67ffce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk-lts-and-current-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:8386acd20f6d4f6fbd8226053a95e6ee5f144005f90403a3f4197e516cf50fd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **660.4 MB (660406451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201d8904ffe51fa1ecdfacc5254fc8b7c30881bece813a93214f91ba64adf4f8`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:51 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:51 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:51 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:51 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 10 Aug 2026 17:48:28 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Mon, 10 Aug 2026 17:48:49 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 10 Aug 2026 17:48:49 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Mon, 10 Aug 2026 17:48:49 GMT
CMD ["gradle"]
# Mon, 10 Aug 2026 17:48:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Aug 2026 17:48:49 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 10 Aug 2026 17:48:49 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Mon, 10 Aug 2026 17:48:49 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Aug 2026 17:48:49 GMT
WORKDIR /home/gradle
# Mon, 10 Aug 2026 17:48:49 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 10 Aug 2026 17:48:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 10 Aug 2026 17:48:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 10 Aug 2026 17:48:51 GMT
USER gradle
# Mon, 10 Aug 2026 17:48:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 10 Aug 2026 17:48:52 GMT
USER root
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2408eb84527cb80413943a5c5046a2c3ecf630ffa06142e5bc05f3767756c5da`  
		Last Modified: Tue, 04 Aug 2026 00:59:15 GMT  
		Size: 189.5 MB (189475802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3461269c249ba9479599efc73a3d872c3b789ccf8754a6bdfcdcee7f0bbd601`  
		Last Modified: Mon, 10 Aug 2026 17:49:30 GMT  
		Size: 179.4 MB (179421454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714379836108e17763dfb82ee8c55b4b23d6d180d4a8b765d97c8424e0ee6527`  
		Last Modified: Mon, 10 Aug 2026 17:49:27 GMT  
		Size: 86.7 MB (86681167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:274a2509e95199f7bd897c563c1e3275798916f522a0450c2f540b0ac6eae1d4`  
		Last Modified: Mon, 10 Aug 2026 17:49:22 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e937f5417b844794d3a8ab9d3eb1c983c5977b54a81542014efb4ff0341082`  
		Last Modified: Mon, 10 Aug 2026 17:49:29 GMT  
		Size: 150.2 MB (150227946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a6f6b17cc8afdd77a0e11f56f6f04ab43019ed5a88dd59ff6a0b38a9b3af7a`  
		Last Modified: Mon, 10 Aug 2026 17:49:23 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-lts-and-current-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:5f76fed62411022de13073173647441e423914745bd8ff2e9b2f40f49c138dac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11598731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a45b94dc00120707e1b66306196f8f252ce9829ba5d290add85c6fe98cc2c1c`

```dockerfile
```

-	Layers:
	-	`sha256:f47f27387967efcf0c966ba75abb3b38e32dde825396059160ae9ba7686845d0`  
		Last Modified: Mon, 10 Aug 2026 17:49:23 GMT  
		Size: 11.6 MB (11569222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80873b1888ef821bdbf3405a16b7a71b1980d9952b465c5f0c1508603fb78106`  
		Last Modified: Mon, 10 Aug 2026 17:49:22 GMT  
		Size: 29.5 KB (29509 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-lts-and-current-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:5f18aad9d51ebc051ea5af8dd9efbc63c19e8c71a222d5af9e7e2211a879f2df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.4 MB (654427661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e85b6076dba0ad322bf0322ae0ddfc6f7fcf77f0fabda246a2ad9f07eb86b37`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:09 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:09 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:09 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:09 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 10 Aug 2026 17:48:34 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Mon, 10 Aug 2026 17:49:00 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 10 Aug 2026 17:49:00 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Mon, 10 Aug 2026 17:49:00 GMT
CMD ["gradle"]
# Mon, 10 Aug 2026 17:49:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Aug 2026 17:49:00 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 10 Aug 2026 17:49:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Mon, 10 Aug 2026 17:49:00 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Aug 2026 17:49:00 GMT
WORKDIR /home/gradle
# Mon, 10 Aug 2026 17:49:00 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 10 Aug 2026 17:49:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 10 Aug 2026 17:49:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 10 Aug 2026 17:49:03 GMT
USER gradle
# Mon, 10 Aug 2026 17:49:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 10 Aug 2026 17:49:03 GMT
USER root
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6b841110a2e3ff6dc4a335180c283116cb5b503434736e3a118a33f30ef0fa`  
		Last Modified: Tue, 04 Aug 2026 00:58:34 GMT  
		Size: 187.4 MB (187379559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f7ed227bc17f6b598e9f4c0f18a36e8aeedea766bb62a56f97fa674b00967d`  
		Last Modified: Mon, 10 Aug 2026 17:49:41 GMT  
		Size: 177.3 MB (177296414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6d371065671e3a731f2387b690d9239024ebb44a610169d3f77c1dd80684b2`  
		Last Modified: Mon, 10 Aug 2026 17:49:40 GMT  
		Size: 86.0 MB (86043970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc25090bcc4da300621c6b48f3d07b38d6bf193ed45184da19fc3203fe52ed10`  
		Last Modified: Mon, 10 Aug 2026 17:49:36 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84885236ac8d3d133e6f67aa5d827f0c3e649ee8c2060fa450706636d4311630`  
		Last Modified: Mon, 10 Aug 2026 17:49:43 GMT  
		Size: 150.2 MB (150227942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:936f2979c0b2d6d60687ba2c3029a0962c63684bea09c61f72288da591dcc52c`  
		Last Modified: Mon, 10 Aug 2026 17:49:39 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-lts-and-current-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:55d725b5df4d2b4a375e6c109afc25c7978a94c5a87b1302a5afa8a9f6d2bd7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11597521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c45d2dd481e8bdf04d0176ad7e4f816f6c955be897104c382592168d2b8a925f`

```dockerfile
```

-	Layers:
	-	`sha256:c6564e8fbc0a71dfe7381b6c92ab7a6e1cecea776356539e992a0ad5be7e7d29`  
		Last Modified: Mon, 10 Aug 2026 17:49:35 GMT  
		Size: 11.6 MB (11567692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad0010d1c2f5310d799b08eb4bfe95283f2540939cdac0ec251c5251740af481`  
		Last Modified: Mon, 10 Aug 2026 17:49:35 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
