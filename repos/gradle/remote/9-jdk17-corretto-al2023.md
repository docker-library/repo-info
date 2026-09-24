## `gradle:9-jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:d2bcac35f8cbc96ad9ec27efc9f42d142c21ba93557bfe42c1211437344d0a68
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:aa3525e2e13a675d7c01117072a7b6c7b832122e42ce87f9111de6f8fee3cb58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **450.2 MB (450161908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9be5b4f9bfbe86a27bf8dc01f1fb3c073c43b0842db147306173bf405d2a32f`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:08 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:22:08 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:08 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:08 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 24 Sep 2026 19:35:01 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:35:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:35:01 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:35:01 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:35:01 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:35:01 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:35:01 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:35:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:35:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:35:05 GMT
USER gradle
# Thu, 24 Sep 2026 19:35:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:35:05 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a410bbbb64f05c7a2fe656c5316d43d139e3c4f15d9616eaebc721f36de3c7b`  
		Last Modified: Thu, 17 Sep 2026 22:22:29 GMT  
		Size: 157.1 MB (157139807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1a7282c9a13f2899abe47aa431226cb7b926cb81e75326a633e95e8aad6c82`  
		Last Modified: Thu, 24 Sep 2026 19:35:37 GMT  
		Size: 86.9 MB (86884277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e530e7ef752c1ec8cda429c9d7aa96d7be98a61c9084e09770be958d4aa3064`  
		Last Modified: Thu, 24 Sep 2026 19:35:33 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd10c97b7f4f197bb888e85a60a21370159f2c3cf6cf95a6fe6e692ff476c289`  
		Last Modified: Thu, 24 Sep 2026 19:35:38 GMT  
		Size: 151.5 MB (151524260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3120df5c20b6c1fdcf8ff700afb9c0222b2cb2933b6165ae01248b6752f147a`  
		Last Modified: Thu, 24 Sep 2026 19:35:33 GMT  
		Size: 25.6 KB (25606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:fdcde985cfee1cbc7b9d2d25a67969c7d531afd922bee2580f6a33098dc4c46b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11410410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0468184d8e489fc7825a9063c683bf20532c44f762fe79777ec8994416eca1f5`

```dockerfile
```

-	Layers:
	-	`sha256:54c929c542ed46bbc990012828bd48bab103b512e2b1efa85d1135f9a8f4a5f2`  
		Last Modified: Thu, 24 Sep 2026 19:35:34 GMT  
		Size: 11.4 MB (11388914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdaee00408094b05a4dbfd003384aac850fe6abe524adc1f35d945f988737a34`  
		Last Modified: Thu, 24 Sep 2026 19:35:33 GMT  
		Size: 21.5 KB (21496 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ace41a445f96afd1f650ee10f3d643029facca7b5247b27641983249589f3f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.2 MB (447209591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb72bb7eacae98c9d9eca81b275f345a72d03dcbefb142f132b93f4c6a915bb4`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:33 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:46:33 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:46:33 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:46:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 24 Sep 2026 19:34:36 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:34:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:34:36 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:34:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:34:36 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:34:36 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:34:36 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:34:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:34:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:34:39 GMT
USER gradle
# Thu, 24 Sep 2026 19:34:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:34:40 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff79e1d5af020f98faf12385f3d8aaea81dafb18e71b354d73027f091e09984`  
		Last Modified: Thu, 17 Sep 2026 22:46:55 GMT  
		Size: 156.0 MB (155950320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e356b27b852c756150a973665ee14900821081c885ed54777f3613e684671b07`  
		Last Modified: Thu, 24 Sep 2026 19:35:11 GMT  
		Size: 86.3 MB (86251418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016da2b5fba836063b63e14ade0cedb967590bb4e8996edea1aa480dded5975b`  
		Last Modified: Thu, 24 Sep 2026 19:35:07 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221a7d4acf4193557e2efbf462a03be7ca450635feb16934d6a138685bd057b6`  
		Last Modified: Thu, 24 Sep 2026 19:35:12 GMT  
		Size: 151.5 MB (151524262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e48d70bdc03586d8a4c93dee60ae8a92e8499daacfb84f7a63d19f67b46dbda`  
		Last Modified: Thu, 24 Sep 2026 19:35:08 GMT  
		Size: 29.3 KB (29344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:1ec7e50340aaa3750854f02be68fcb0760b85d1fba2d30ffbb9dbc6ddbb3790f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11409608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3084f346c96a36ed961df1a065d4505fca0502b298f6f5558577529f785a344`

```dockerfile
```

-	Layers:
	-	`sha256:53bee455c38bb074c9661877204781c53baf6d767ff66bf22993b87af8107897`  
		Last Modified: Thu, 24 Sep 2026 19:35:08 GMT  
		Size: 11.4 MB (11387914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbccf41a4dcf37b8eed8f85fdf167c45eb6cd1a117315d807f4c773fdd21a559`  
		Last Modified: Thu, 24 Sep 2026 19:35:07 GMT  
		Size: 21.7 KB (21694 bytes)  
		MIME: application/vnd.in-toto+json
